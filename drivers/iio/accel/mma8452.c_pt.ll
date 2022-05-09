; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/mma8452.c_pt.bc'
source_filename = "../drivers/iio/accel/mma8452.c"
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
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.mma8452_event_regs = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.mma_chip_info = type { i8, ptr, i32, [3 x [2 x i32]], i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mma8452_data = type { ptr, %struct.mutex, i8, i8, ptr, i32, ptr, ptr, %struct.anon.87 }
%struct.anon.87 = type { [3 x i16], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_mma8452__291_1820_mma8452_driver_init6 = internal global ptr @mma8452_driver_init, section ".initcall6.init", align 4
@mma8452_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mma8452_probe, ptr @mma8452_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mma8452_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mma8452_pm_ops, ptr null, ptr null }, ptr @mma8452_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mma8452_driver_exit = internal global ptr @mma8452_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [50 x i8] c"mma8452.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [65 x i8] c"mma8452.description=Freescale / NXP MMA8452 accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"mma8452.file=drivers/iio/accel/mma8452\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"mma8452.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mma8452\00", [24 x i8] zeroinitializer }, align 32
@mma8452_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mma8451\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mma_chip_info_table }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mma8452\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mma_chip_info_table, i64 44) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mma8453\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mma_chip_info_table, i64 88) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mma8652\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mma_chip_info_table, i64 132) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mma8653\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mma_chip_info_table, i64 176) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fxls8471\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mma_chip_info_table, i64 220) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@mma8452_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mma8452_runtime_suspend, ptr @mma8452_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mma8452_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mma8451\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mma8452\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"mma8453\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"mma8652\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"mma8653\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"fxls8471\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mma8452_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1529, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown device model\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mma8452_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/mma8452.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mma8452_probe._entry_ptr = internal global ptr @mma8452_probe._entry, section ".printk_index", align 4
@mma8452_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get VDD regulator!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get VDDIO regulator!\0A\00", [32 x i8] zeroinitializer }, align 32
@mma8452_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable VDD regulator!\0A\00", [63 x i8] zeroinitializer }, align 32
@mma8452_probe._entry_ptr.13 = internal global ptr @mma8452_probe._entry.11, section ".printk_index", align 4
@mma8452_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1560, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable VDDIO regulator!\0A\00", [61 x i8] zeroinitializer }, align 32
@mma8452_probe._entry_ptr.16 = internal global ptr @mma8452_probe._entry.14, section ".printk_index", align 4
@mma8452_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1584, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"registering %s accelerometer; ID 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mma8452_probe._entry_ptr.20 = internal global ptr @mma8452_probe._entry.17, section ".printk_index", align 4
@mma8452_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @mma8452_event_attribute_group, ptr @mma8452_group, ptr @mma8452_read_raw, ptr null, ptr null, ptr @mma8452_write_raw, ptr null, ptr null, ptr @mma8452_read_event_config, ptr @mma8452_write_event_config, ptr @mma8452_read_event_value, ptr @mma8452_write_event_value, ptr null, ptr null, ptr @mma8452_reg_access_dbg, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mma8452_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INT2\00", [27 x i8] zeroinitializer }, align 32
@mma8452_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 1, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using interrupt line INT2\0A\00", [37 x i8] zeroinitializer }, align 32
@mma8452_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 1, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using interrupt line INT1\0A\00", [37 x i8] zeroinitializer }, align 32
@mma8452_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mma8452_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mma8452_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mma8452_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mma8452_event_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_accel_transient_scale, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_accel_transient_scale = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.24, %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.617742\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in_accel_scale\00", [17 x i8] zeroinitializer }, align 32
@mma8452_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_accel_scale_available, ptr @iio_dev_attr_in_accel_filter_high_pass_3db_frequency_available, ptr @iio_dev_attr_in_accel_oversampling_ratio_available, ptr null], [44 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mma8452_show_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mma8452_show_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_filter_high_pass_3db_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mma8452_show_hp_cutoff_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_oversampling_ratio_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mma8452_show_os_ratio_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@mma8452_samp_freq = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 800, i32 0], [2 x i32] [i32 400, i32 0], [2 x i32] [i32 200, i32 0], [2 x i32] [i32 100, i32 0], [2 x i32] [i32 50, i32 0], [2 x i32] [i32 12, i32 500000], [2 x i32] [i32 6, i32 250000], [2 x i32] [i32 1, i32 560000]], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06d \00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"in_accel_filter_high_pass_3db_frequency_available\00", [46 x i8] zeroinitializer }, align 32
@mma8452_hp_filter_cutoff = internal constant { [4 x [8 x [4 x [2 x i32]]]], [256 x i8] } { [4 x [8 x [4 x [2 x i32]]]] [[8 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000]], [4 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]], [4 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]], [4 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]], [4 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]]], [8 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000]], [4 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000], [2 x i32] [i32 0, i32 125000], [2 x i32] [i32 0, i32 26112]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000], [2 x i32] [i32 0, i32 125000], [2 x i32] [i32 0, i32 26112]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000], [2 x i32] [i32 0, i32 125000], [2 x i32] [i32 0, i32 26112]]], [8 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]]], [8 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] [i32 16, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 8, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0]], [4 x [2 x i32]] [[2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000]], [4 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]], [4 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000], [2 x i32] [i32 0, i32 125000]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 250000], [2 x i32] [i32 0, i32 125000], [2 x i32] [i32 0, i32 26112], [2 x i32] [i32 0, i32 12800]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 250000], [2 x i32] [i32 0, i32 125000], [2 x i32] [i32 0, i32 26112], [2 x i32] [i32 0, i32 12800]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 250000], [2 x i32] [i32 0, i32 125000], [2 x i32] [i32 0, i32 26112], [2 x i32] [i32 0, i32 12800]]]], [256 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_accel_oversampling_ratio_available\00", [58 x i8] zeroinitializer }, align 32
@mma8452_os_ratio = internal constant { [4 x [8 x i16]], [32 x i8] } { [4 x [8 x i16]] [[8 x i16] [i16 2, i16 4, i16 4, i16 4, i16 4, i16 16, i16 32, i16 128], [8 x i16] [i16 2, i16 4, i16 4, i16 4, i16 4, i16 4, i16 8, i16 32], [8 x i16] [i16 2, i16 4, i16 8, i16 16, i16 32, i16 128, i16 256, i16 1024], [8 x i16] [i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 4, i16 16]], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@mma8452_drdy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data not ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mma8452_drdy\00", [19 x i8] zeroinitializer }, align 32
@mma8452_drdy._entry_ptr = internal global ptr @mma8452_drdy._entry, section ".printk_index", align 4
@mma8452_set_runtime_pm_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to change power state to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mma8452_set_runtime_pm_state\00", [35 x i8] zeroinitializer }, align 32
@mma8452_set_runtime_pm_state._entry_ptr = internal global ptr @mma8452_set_runtime_pm_state._entry, section ".printk_index", align 4
@trans_ev_regs = internal constant { %struct.mma8452_event_regs, [25 x i8] } { %struct.mma8452_event_regs { i8 29, i8 16, i8 1, i8 30, i8 31, i8 127, i8 32 }, [25 x i8] zeroinitializer }, align 32
@ff_mt_ev_regs = internal constant { %struct.mma8452_event_regs, [25 x i8] } { %struct.mma8452_event_regs { i8 21, i8 -128, i8 3, i8 22, i8 23, i8 127, i8 24 }, [25 x i8] zeroinitializer }, align 32
@mma8452_time_step_us = internal constant { [4 x [8 x i32]], [32 x i8] } { [4 x [8 x i32]] [[8 x i32] [i32 1250, i32 2500, i32 5000, i32 10000, i32 20000, i32 20000, i32 20000, i32 20000], [8 x i32] [i32 1250, i32 2500, i32 5000, i32 10000, i32 20000, i32 80000, i32 80000, i32 80000], [8 x i32] [i32 1250, i32 2500, i32 2500, i32 2500, i32 2500, i32 2500, i32 2500, i32 2500], [8 x i32] [i32 1250, i32 2500, i32 5000, i32 10000, i32 20000, i32 80000, i32 160000, i32 160000]], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@mma8452_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @mma8452_data_rdy_trigger_set_state, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@mma_chip_info_table = internal constant { [6 x %struct.mma_chip_info], [88 x i8] } { [6 x %struct.mma_chip_info] [%struct.mma_chip_info { i8 26, ptr @mma8451_channels, i32 5, [3 x [2 x i32]] [[2 x i32] [i32 0, i32 2394], [2 x i32] [i32 0, i32 4788], [2 x i32] [i32 0, i32 9577]], i32 37, i32 36 }, %struct.mma_chip_info { i8 42, ptr @mma8452_channels, i32 5, [3 x [2 x i32]] [[2 x i32] [i32 0, i32 9577], [2 x i32] [i32 0, i32 19154], [2 x i32] [i32 0, i32 38307]], i32 37, i32 36 }, %struct.mma_chip_info { i8 58, ptr @mma8453_channels, i32 5, [3 x [2 x i32]] [[2 x i32] [i32 0, i32 38307], [2 x i32] [i32 0, i32 76614], [2 x i32] [i32 0, i32 153228]], i32 37, i32 36 }, %struct.mma_chip_info { i8 74, ptr @mma8652_channels, i32 5, [3 x [2 x i32]] [[2 x i32] [i32 0, i32 9577], [2 x i32] [i32 0, i32 19154], [2 x i32] [i32 0, i32 38307]], i32 5, i32 4 }, %struct.mma_chip_info { i8 90, ptr @mma8653_channels, i32 5, [3 x [2 x i32]] [[2 x i32] [i32 0, i32 38307], [2 x i32] [i32 0, i32 76614], [2 x i32] [i32 0, i32 153228]], i32 5, i32 4 }, %struct.mma_chip_info { i8 106, ptr @mma8451_channels, i32 5, [3 x [2 x i32]] [[2 x i32] [i32 0, i32 2394], [2 x i32] [i32 0, i32 4788], [2 x i32] [i32 0, i32 9577]], i32 37, i32 36 }], [88 x i8] zeroinitializer }, align 32
@mma8451_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.86 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.86 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 7, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_freefall_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [104 x i8] zeroinitializer }, align 32
@mma8452_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 7, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_freefall_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [104 x i8] zeroinitializer }, align 32
@mma8453_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 1 }, i32 33, i32 0, i32 33560580, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_transient_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 7, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_freefall_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [104 x i8] zeroinitializer }, align 32
@mma8652_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 33558532, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_motion_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 33558532, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_motion_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 33558532, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_motion_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 7, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8652_freefall_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [104 x i8] zeroinitializer }, align 32
@mma8653_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 1 }, i32 33, i32 0, i32 33558532, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_motion_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 1 }, i32 33, i32 0, i32 33558532, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_motion_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 1 }, i32 33, i32 0, i32 33558532, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8452_motion_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 7, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma8652_freefall_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [104 x i8] zeroinitializer }, align 32
@mma8452_transient_event = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 1, i32 1, i32 1, i32 26, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@mma8452_freefall_event = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 1, i32 2, i32 1, i32 26, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@mma8452_motion_event = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 1, i32 1, i32 1, i32 10, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@mma8652_freefall_event = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 1, i32 2, i32 1, i32 10, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@mma8452_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"powering off device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mma8452_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@mma8452_runtime_suspend._entry_ptr = internal global ptr @mma8452_runtime_suspend._entry, section ".printk_index", align 4
@mma8452_runtime_suspend._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 1740, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to disable VDDIO regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@mma8452_runtime_suspend._entry_ptr.41 = internal global ptr @mma8452_runtime_suspend._entry.39, section ".printk_index", align 4
@mma8452_runtime_suspend._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 1746, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable VDD regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@mma8452_runtime_suspend._entry_ptr.44 = internal global ptr @mma8452_runtime_suspend._entry.42, section ".printk_index", align 4
@mma8452_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1761, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable VDD regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mma8452_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@mma8452_runtime_resume._entry_ptr = internal global ptr @mma8452_runtime_resume._entry, section ".printk_index", align 4
@mma8452_runtime_resume._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 1767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable VDDIO regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@mma8452_runtime_resume._entry_ptr.49 = internal global ptr @mma8452_runtime_resume._entry.47, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 5, i64 11, i64 12, i64 25]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 5, i64 11, i64 12, i64 25]
@__sancov_gen_cov_switch_values.51 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 6, i64 12, i64 50, i64 100, i64 200, i64 400, i64 800]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"mma8452_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1810, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1812, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"mma8452_dt_ids\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1508, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"mma8452_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1793, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"mma8452_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1799, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1529, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1539, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1542, i32 51 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1545, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1547, i32 53 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1550, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1554, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1560, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1583, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"mma8452_info\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1412, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"mma8452_scan_masks\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1424, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1616, i32 49 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1619, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1627, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [30 x i8] c"mma8452_event_attribute_group\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1188, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"mma8452_group\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1408, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"mma8452_event_attributes\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1183, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [37 x i8] c"iio_const_attr_accel_transient_scale\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1181, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"mma8452_attributes\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1400, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [38 x i8] c"iio_dev_attr_in_accel_scale_available\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [63 x i8] c"iio_dev_attr_in_accel_filter_high_pass_3db_frequency_available\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [51 x i8] c"iio_dev_attr_in_accel_oversampling_ratio_available\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 430, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"mma8452_samp_freq\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 291, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 266, i32 48 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 431, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 433, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"mma8452_hp_filter_cutoff\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 305, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 435, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"mma8452_os_ratio\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 349, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 423, i32 48 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 213, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 231, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [14 x i8] c"trans_ev_regs\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 156, i32 40 }
@___asan_gen_.227 = private unnamed_addr constant [14 x i8] c"ff_mt_ev_regs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 146, i32 40 }
@___asan_gen_.230 = private unnamed_addr constant [21 x i8] c"mma8452_time_step_us\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 297, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1460, i32 52 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"mma8452_trigger_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1449, i32 37 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c"mma_chip_info_table\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1302, i32 35 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"mma8451_channels\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1253, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"mma8452_channels\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1261, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"mma8453_channels\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1269, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"mma8652_channels\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1277, i32 35 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"mma8653_channels\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1285, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant [24 x i8] c"mma8452_transient_event\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1156, i32 36 }
@___asan_gen_.260 = private unnamed_addr constant [23 x i8] c"mma8452_freefall_event\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1135, i32 36 }
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"mma8452_motion_event\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1167, i32 36 }
@___asan_gen_.266 = private unnamed_addr constant [23 x i8] c"mma8652_freefall_event\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1146, i32 36 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1734, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1740, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1746, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1761, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [31 x i8] c"../drivers/iio/accel/mma8452.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1767, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_mma8452_driver_exit, ptr @__initcall__kmod_mma8452__291_1820_mma8452_driver_init6, ptr @mma8452_drdy._entry, ptr @mma8452_drdy._entry_ptr, ptr @mma8452_driver_exit, ptr @mma8452_probe._entry, ptr @mma8452_probe._entry.11, ptr @mma8452_probe._entry.14, ptr @mma8452_probe._entry.17, ptr @mma8452_probe._entry_ptr, ptr @mma8452_probe._entry_ptr.13, ptr @mma8452_probe._entry_ptr.16, ptr @mma8452_probe._entry_ptr.20, ptr @mma8452_runtime_resume._entry, ptr @mma8452_runtime_resume._entry.47, ptr @mma8452_runtime_resume._entry_ptr, ptr @mma8452_runtime_resume._entry_ptr.49, ptr @mma8452_runtime_suspend._entry, ptr @mma8452_runtime_suspend._entry.39, ptr @mma8452_runtime_suspend._entry.42, ptr @mma8452_runtime_suspend._entry_ptr, ptr @mma8452_runtime_suspend._entry_ptr.41, ptr @mma8452_runtime_suspend._entry_ptr.44, ptr @mma8452_set_runtime_pm_state._entry, ptr @mma8452_set_runtime_pm_state._entry_ptr, ptr @mma8452_driver, ptr @.str, ptr @mma8452_dt_ids, ptr @mma8452_pm_ops, ptr @mma8452_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mma8452_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @mma8452_info, ptr @mma8452_scan_masks, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mma8452_event_attribute_group, ptr @mma8452_group, ptr @mma8452_event_attributes, ptr @iio_const_attr_accel_transient_scale, ptr @.str.24, ptr @.str.25, ptr @mma8452_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_accel_scale_available, ptr @iio_dev_attr_in_accel_filter_high_pass_3db_frequency_available, ptr @iio_dev_attr_in_accel_oversampling_ratio_available, ptr @.str.26, ptr @mma8452_samp_freq, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mma8452_hp_filter_cutoff, ptr @.str.30, ptr @mma8452_os_ratio, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @trans_ev_regs, ptr @ff_mt_ev_regs, ptr @mma8452_time_step_us, ptr @.str.36, ptr @mma8452_trigger_ops, ptr @mma_chip_info_table, ptr @mma8451_channels, ptr @mma8452_channels, ptr @mma8453_channels, ptr @mma8652_channels, ptr @mma8653_channels, ptr @mma8452_transient_event, ptr @mma8452_freefall_event, ptr @mma8452_motion_event, ptr @mma8652_freefall_event, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_event_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_accel_transient_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_filter_high_pass_3db_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_oversampling_ratio_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_samp_freq to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_hp_filter_cutoff to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_os_ratio to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_drdy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_set_runtime_pm_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_ev_regs to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_mt_ev_regs to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_time_step_us to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma_chip_info_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8451_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8453_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8652_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8653_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_transient_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_freefall_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_motion_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8652_freefall_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_runtime_suspend._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_runtime_suspend._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8452_runtime_resume._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mma8452_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mma8452_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mma8452_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @of_match_device(ptr noundef nonnull @mma8452_dt_ids, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup191

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 136) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup191_crit_edge, label %if.end6

if.end.cleanup191_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup191

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 8
  %lock = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mma8452_probe.__key) #7
  %data12 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data12, align 4
  %chip_info = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %chip_info, align 4
  %call14 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %vdd_reg = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %vdd_reg, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call14 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull @.str.8) #7
  br label %cleanup191

if.end22:                                         ; preds = %if.end6
  %call24 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  %vddio_reg = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %vddio_reg, align 8
  %cmp.i289 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call24 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @.str.10) #7
  br label %cleanup191

if.end32:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdd_reg, align 4
  %call34 = tail call i32 @regulator_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup191

if.end41:                                         ; preds = %if.end32
  %12 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vddio_reg, align 8
  %call43 = tail call i32 @regulator_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %disable_regulator_vdd

if.end50:                                         ; preds = %if.end41
  %call51 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %if.end50.disable_regulators_crit_edge, label %if.end53

if.end50.disable_regulators_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

if.end53:                                         ; preds = %if.end50
  %14 = add nsw i32 %call51, -26
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %switch = icmp ult i32 %15, 6
  br i1 %switch, label %sw.bb, label %if.end53.disable_regulators_crit_edge

if.end53.disable_regulators_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

sw.bb:                                            ; preds = %if.end53
  %16 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_info, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %conv)
  %cmp55 = icmp eq i32 %call51, %conv
  br i1 %cmp55, label %do.end61, label %sw.bb.disable_regulators_crit_edge

sw.bb.disable_regulators_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

do.end61:                                         ; preds = %sw.bb
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %compatible, i32 noundef %call51) #10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mma8452_info, ptr %info, align 8
  %name67 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %22 = ptrtoint ptr %name67 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %id, ptr %name67, align 8
  %23 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %call3, align 8
  %24 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_info, align 4
  %channels = getelementptr inbounds %struct.mma_chip_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channels, align 4
  %channels69 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %28 = ptrtoint ptr %channels69 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %channels69, align 8
  %29 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.mma_chip_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_channels, align 4
  %num_channels71 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %32 = ptrtoint ptr %num_channels71 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_channels71, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 6
  %33 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mma8452_scan_masks, ptr %available_scan_masks, align 4
  %call72 = tail call fastcc i32 @mma8452_reset(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end61.disable_regulators_crit_edge, label %if.end76

do.end61.disable_regulators_crit_edge:            ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

if.end76:                                         ; preds = %do.end61
  %data_cfg = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %data_cfg to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %data_cfg, align 1
  %call78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 14, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end76.disable_regulators_crit_edge, label %if.end82

if.end76.disable_regulators_crit_edge:            ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

if.end82:                                         ; preds = %if.end76
  %call83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 31, i8 noundef zeroext 127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end82.disable_regulators_crit_edge, label %if.end87

if.end82.disable_regulators_crit_edge:            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

if.end87:                                         ; preds = %if.end82
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool88.not = icmp eq i32 %36, 0
  br i1 %tobool88.not, label %if.end87.mma8452_calculate_sleep.exit_crit_edge, label %if.then89

if.end87.mma8452_calculate_sleep.exit_crit_edge:  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %mma8452_calculate_sleep.exit

if.then89:                                        ; preds = %if.end87
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call91 = tail call i32 @of_irq_get_byname(ptr noundef %38, ptr noundef nonnull @.str.21) #7
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call91, i32 %40)
  %cmp93 = icmp eq i32 %call91, %40
  br i1 %cmp93, label %do.body96, label %if.else

do.body96:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mma8452_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mma8452_probe, %if.then101)) #7
          to label %if.end130 [label %if.then101], !srcloc !169

if.then101:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mma8452_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  br label %if.end130

if.else:                                          ; preds = %if.then89
  %41 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_info, align 4
  %all_events = getelementptr inbounds %struct.mma_chip_info, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %all_events to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %all_events, align 4
  %conv107 = trunc i32 %44 to i8
  %call108 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 46, i8 noundef zeroext %conv107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.else.disable_regulators_crit_edge, label %do.body113

if.else.disable_regulators_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

do.body113:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mma8452_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mma8452_probe, %if.then125)) #7
          to label %if.end130 [label %if.then125], !srcloc !169

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mma8452_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %do.body113, %if.then101, %do.body96
  %45 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip_info, align 4
  %enabled_events = getelementptr inbounds %struct.mma_chip_info, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %enabled_events to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %enabled_events, align 4
  %conv132 = trunc i32 %48 to i8
  %call133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 45, i8 noundef zeroext %conv132) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.end130.disable_regulators_crit_edge, label %if.end137

if.end130.disable_regulators_crit_edge:           ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

if.end137:                                        ; preds = %if.end130
  %call138 = tail call fastcc i32 @mma8452_trigger_setup(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.end137.disable_regulators_crit_edge, label %if.end137.mma8452_calculate_sleep.exit_crit_edge

if.end137.mma8452_calculate_sleep.exit_crit_edge: ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %mma8452_calculate_sleep.exit

if.end137.disable_regulators_crit_edge:           ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

mma8452_calculate_sleep.exit:                     ; preds = %if.end137.mma8452_calculate_sleep.exit_crit_edge, %if.end87.mma8452_calculate_sleep.exit_crit_edge
  %ctrl_reg1 = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 33, ptr %ctrl_reg1, align 8
  %sleep_val = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %sleep_val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 20, ptr %sleep_val, align 8
  %call146 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 42, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %mma8452_calculate_sleep.exit.trigger_cleanup_crit_edge, label %if.end150

mma8452_calculate_sleep.exit.trigger_cleanup_crit_edge: ; preds = %mma8452_calculate_sleep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %trigger_cleanup

if.end150:                                        ; preds = %mma8452_calculate_sleep.exit
  %call151 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call3, ptr noundef null, ptr noundef nonnull @mma8452_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %if.end150.trigger_cleanup_crit_edge, label %if.end155

if.end150.trigger_cleanup_crit_edge:              ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %trigger_cleanup

if.end155:                                        ; preds = %if.end150
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool157.not = icmp eq i32 %52, 0
  br i1 %tobool157.not, label %if.end155.if.end167_crit_edge, label %if.then158

if.end155.if.end167_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then158:                                       ; preds = %if.end155
  %name161 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call163 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %52, ptr noundef null, ptr noundef nonnull @mma8452_interrupt, i32 noundef 8200, ptr noundef %name161, ptr noundef nonnull %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then158.if.end167_crit_edge, label %if.then158.buffer_cleanup_crit_edge

if.then158.buffer_cleanup_crit_edge:              ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %buffer_cleanup

if.then158.if.end167_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.end167:                                        ; preds = %if.then158.if.end167_crit_edge, %if.end155.if.end167_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp170 = icmp slt i32 %call.i, 0
  br i1 %cmp170, label %if.end167.buffer_cleanup_crit_edge, label %if.end173

if.end167.buffer_cleanup_crit_edge:               ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %buffer_cleanup

if.end173:                                        ; preds = %if.end167
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call177 = tail call i32 @__iio_device_register(ptr noundef nonnull %call3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.end173.buffer_cleanup_crit_edge, label %if.end181

if.end173.buffer_cleanup_crit_edge:               ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %buffer_cleanup

if.end181:                                        ; preds = %if.end173
  %call182 = tail call fastcc i32 @mma8452_set_freefall_mode(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %unregister_device, label %if.end181.cleanup191_crit_edge

if.end181.cleanup191_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup191

unregister_device:                                ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iio_device_unregister(ptr noundef nonnull %call3) #7
  br label %buffer_cleanup

buffer_cleanup:                                   ; preds = %unregister_device, %if.end173.buffer_cleanup_crit_edge, %if.end167.buffer_cleanup_crit_edge, %if.then158.buffer_cleanup_crit_edge
  %ret.1 = phi i32 [ %call163, %if.then158.buffer_cleanup_crit_edge ], [ %call.i, %if.end167.buffer_cleanup_crit_edge ], [ %call177, %if.end173.buffer_cleanup_crit_edge ], [ %call182, %unregister_device ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call3) #7
  br label %trigger_cleanup

trigger_cleanup:                                  ; preds = %buffer_cleanup, %if.end150.trigger_cleanup_crit_edge, %mma8452_calculate_sleep.exit.trigger_cleanup_crit_edge
  %ret.2 = phi i32 [ %call146, %mma8452_calculate_sleep.exit.trigger_cleanup_crit_edge ], [ %call151, %if.end150.trigger_cleanup_crit_edge ], [ %ret.1, %buffer_cleanup ]
  %trig.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 10
  %53 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trig.i, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %trigger_cleanup.disable_regulators_crit_edge, label %if.then.i

trigger_cleanup.disable_regulators_crit_edge:     ; preds = %trigger_cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulators

if.then.i:                                        ; preds = %trigger_cleanup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iio_trigger_unregister(ptr noundef nonnull %54) #7
  br label %disable_regulators

disable_regulators:                               ; preds = %if.then.i, %trigger_cleanup.disable_regulators_crit_edge, %if.end137.disable_regulators_crit_edge, %if.end130.disable_regulators_crit_edge, %if.else.disable_regulators_crit_edge, %if.end82.disable_regulators_crit_edge, %if.end76.disable_regulators_crit_edge, %do.end61.disable_regulators_crit_edge, %sw.bb.disable_regulators_crit_edge, %if.end53.disable_regulators_crit_edge, %if.end50.disable_regulators_crit_edge
  %ret.3 = phi i32 [ %call51, %if.end50.disable_regulators_crit_edge ], [ %call72, %do.end61.disable_regulators_crit_edge ], [ %call78, %if.end76.disable_regulators_crit_edge ], [ %call83, %if.end82.disable_regulators_crit_edge ], [ -19, %if.end53.disable_regulators_crit_edge ], [ -19, %sw.bb.disable_regulators_crit_edge ], [ %ret.2, %trigger_cleanup.disable_regulators_crit_edge ], [ %ret.2, %if.then.i ], [ %call133, %if.end130.disable_regulators_crit_edge ], [ %call108, %if.else.disable_regulators_crit_edge ], [ %call138, %if.end137.disable_regulators_crit_edge ]
  %55 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vddio_reg, align 8
  %call188 = tail call i32 @regulator_disable(ptr noundef %56) #7
  br label %disable_regulator_vdd

disable_regulator_vdd:                            ; preds = %disable_regulators, %do.end48
  %ret.4 = phi i32 [ %call43, %do.end48 ], [ %ret.3, %disable_regulators ]
  %57 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vdd_reg, align 4
  %call190 = tail call i32 @regulator_disable(ptr noundef %58) #7
  br label %cleanup191

cleanup191:                                       ; preds = %disable_regulator_vdd, %if.end181.cleanup191_crit_edge, %do.end39, %if.then27, %if.then17, %if.end.cleanup191_crit_edge, %do.end
  %retval.0 = phi i32 [ %call21, %if.then17 ], [ %call31, %if.then27 ], [ %call34, %do.end39 ], [ %ret.4, %disable_regulator_vdd ], [ -19, %do.end ], [ -12, %if.end.cleanup191_crit_edge ], [ 0, %if.end181.cleanup191_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_remove(ptr noundef %client) #2 align 64 {
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
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #7
  %trig.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mma8452_trigger_cleanup.exit_crit_edge, label %if.then.i

entry.mma8452_trigger_cleanup.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mma8452_trigger_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iio_trigger_unregister(ptr noundef nonnull %5) #7
  br label %mma8452_trigger_cleanup.exit

mma8452_trigger_cleanup.exit:                     ; preds = %if.then.i, %entry.mma8452_trigger_cleanup.exit_crit_edge
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_reg1.i, align 8
  %12 = and i8 %11, -2
  %call.i16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 42, i8 noundef zeroext %12) #7
  %vddio_reg = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vddio_reg, align 8
  %call6 = tail call i32 @regulator_disable(ptr noundef %14) #7
  %vdd_reg = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdd_reg, align 4
  %call7 = tail call i32 @regulator_disable(ptr noundef %16) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma8452_reset(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 43, i8 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call2)
  %cmp3 = icmp eq i32 %call2, -5
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp6 = icmp slt i32 %call2, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %and = and i32 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %for.inc.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call2, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma8452_trigger_setup(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #7
  %call2 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %5, i32 noundef %call1) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mma8452_trigger_ops, ptr %call2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call2, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @__iio_trigger_register(ptr noundef nonnull %call2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %call2, i32 0, i32 4
  %call.i = tail call ptr @get_device(ptr noundef %dev.i) #7
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %9) #7
  %trig8 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %10 = ptrtoint ptr %trig8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %trig8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %buffer = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 8
  %call2 = tail call fastcc i32 @mma8452_read(ptr noundef %3, ptr noundef %buffer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %call4 = tail call i64 @iio_get_time_ns(ptr noundef %1) #7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scan_timestamp.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %7, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call4, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #7
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %10) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_interrupt(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip_info = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_info, align 4
  %enabled_events = getelementptr inbounds %struct.mma_chip_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %enabled_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled_events, align 4
  %or = or i32 %7, 1
  %and = and i32 %or, %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %trig = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 10
  %8 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll_chained(ptr noundef %9) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %ret.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end3.if.end7_crit_edge ]
  %and8 = and i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end17_crit_edge, label %if.then10

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then10:                                        ; preds = %if.end7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %and.i = lshr i32 %call.i, 6
  %and.lobit.i = and i32 %and.i, 1
  %12 = xor i32 %and.lobit.i, 1
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool12.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool12.not, label %if.then10.if.end17_crit_edge, label %if.then13

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i64 @iio_get_time_ns(ptr noundef %p) #7
  %call15 = tail call i32 @iio_push_event(ptr noundef %p, i64 noundef 72628253457645568, i64 noundef %call14) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then10.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end7.if.end17_crit_edge ], [ 1, %if.then13 ], [ 1, %if.then10.if.end17_crit_edge ]
  %and18 = and i32 %call1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %call1.i = tail call i64 @iio_get_time_ns(ptr noundef %p) #7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i35 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i35, label %if.then20.cleanup_crit_edge, label %if.end.i

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then20
  %and.i36 = and i32 %call2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 @iio_push_event(ptr noundef %p, i64 noundef 72340181411168256, i64 noundef %call1.i) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %and6.i = and i32 %call2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then8.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @iio_push_event(ptr noundef %p, i64 noundef 72341280922796032, i64 noundef %call1.i) #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end10.i_crit_edge
  %and11.i = and i32 %call2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %if.then13.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 @iio_push_event(ptr noundef %p, i64 noundef 72342380434423808, i64 noundef %call1.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %if.end10.i.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.1, %if.end17.cleanup_crit_edge ], [ 1, %if.then20.cleanup_crit_edge ], [ 1, %if.end10.i.cleanup_crit_edge ], [ 1, %if.then13.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma8452_set_freefall_mode(ptr noundef %data, i1 noundef zeroext %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %and.i = lshr i32 %call.i, 6
  %and.lobit.i = and i32 %and.i, 1
  %2 = xor i32 %and.lobit.i, 1
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %state, label %land.lhs.true, label %land.lhs.true3.critedge

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3.critedge:                          ; preds = %entry
  br i1 %tobool1.not, label %land.lhs.true3.critedge.cleanup_crit_edge, label %land.lhs.true3.critedge.if.end_crit_edge

land.lhs.true3.critedge.if.end_crit_edge:         ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.critedge.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or12 = and i32 %call6, 135
  %val.0.v = select i1 %state, i32 56, i32 64
  %val.0 = or i32 %or12, %val.0.v
  %conv = trunc i32 %val.0 to i8
  %call18 = tail call fastcc i32 @mma8452_change_config(ptr noundef %data, i8 noundef zeroext 21, i8 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %land.lhs.true3.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end8 ], [ 0, %land.lhs.true3.critedge.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buffer = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buffer) #7
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buffer, align 2, !annotation !171
  %3 = getelementptr inbounds [3 x i16], ptr %buffer, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !171
  %5 = getelementptr inbounds [3 x i16], ptr %buffer, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !171
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
    i32 12, label %sw.bb18
    i32 5, label %sw.bb24
    i32 11, label %sw.bb33
    i32 25, label %sw.bb45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call2 = call fastcc i32 @mma8452_read(ptr noundef %1, ptr noundef nonnull %buffer)
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %8 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [3 x i16], ptr %buffer, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %13 to i32
  %shr = lshr i32 %conv, %conv6
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %realbits, align 1
  %16 = sub i8 32, %15
  %conv1.i = zext i8 %16 to i32
  %shl.i = shl i32 %shr, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data_cfg = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %data_cfg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_cfg, align 1
  %20 = and i8 %19, 3
  %and = zext i8 %20 to i32
  %chip_info = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip_info, align 4
  %arrayidx12 = getelementptr %struct.mma_chip_info, ptr %22, i32 0, i32 3, i32 %and
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val, align 4
  %26 = load ptr, ptr %chip_info, align 4
  %arrayidx17 = getelementptr %struct.mma_chip_info, ptr %26, i32 0, i32 3, i32 %and, i32 1
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx17, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val2, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ctrl_reg1.i, align 8
  %32 = lshr i8 %31, 3
  %33 = and i8 %32, 7
  %shr.i100 = zext i8 %33 to i32
  %arrayidx20 = getelementptr [8 x [2 x i32]], ptr @mma8452_samp_freq, i32 0, i32 %shr.i100
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx20, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val, align 4
  %arrayidx23 = getelementptr [8 x [2 x i32]], ptr @mma8452_samp_freq, i32 0, i32 %shr.i100, i32 1
  %37 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx23, align 4
  %39 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val2, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %scan_index25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %42 = ptrtoint ptr %scan_index25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_index25, align 4
  %44 = trunc i32 %43 to i8
  %conv26 = add i8 %44, 47
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext %conv26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %sw.bb24.cleanup_crit_edge, label %if.end31

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i98 = shl i32 %call27, 24
  %shr.i99 = ashr exact i32 %shl.i98, 24
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr.i99, ptr %val, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %data_cfg34 = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %data_cfg34 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data_cfg34, align 1
  %48 = and i8 %47, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool37.not = icmp eq i8 %48, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %sw.bb33
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %50, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then38.cleanup_crit_edge, label %if.end.i

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then38
  %ctrl_reg1.i.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ctrl_reg1.i.i, align 8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %54, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %mma8452_read_hp_filter.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mma8452_read_hp_filter.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = lshr i32 %call.i.i, 3
  %55 = and i32 %and.i.i, 3
  %56 = lshr i8 %52, 3
  %57 = and i8 %56, 7
  %shr.i.i = zext i8 %57 to i32
  %and.i = and i32 %call.i, 3
  %arrayidx7.i = getelementptr [4 x [8 x [4 x [2 x i32]]]], ptr @mma8452_hp_filter_cutoff, i32 0, i32 %55, i32 %shr.i.i, i32 %and.i
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx7.i, align 4
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val, align 4
  %arrayidx12.i = getelementptr [4 x [8 x [4 x [2 x i32]]]], ptr @mma8452_hp_filter_cutoff, i32 0, i32 %55, i32 %shr.i.i, i32 %and.i, i32 1
  %61 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx12.i, align 4
  %63 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %val2, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %val, align 4
  %65 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %val2, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %call.i101 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i102 = icmp slt i32 %call.i101, 0
  br i1 %cmp.i102, label %sw.bb45.cleanup_crit_edge, label %if.end50

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  %and.i103 = lshr i32 %call.i101, 3
  %68 = and i32 %and.i103, 3
  %ctrl_reg1.i105 = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %ctrl_reg1.i105 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ctrl_reg1.i105, align 8
  %71 = lshr i8 %70, 3
  %72 = and i8 %71, 7
  %shr.i106 = zext i8 %72 to i32
  %arrayidx53 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 %68, i32 %shr.i106
  %73 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx53, align 2
  %conv54 = zext i16 %74 to i32
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv54, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %sw.bb45.cleanup_crit_edge, %if.else, %mma8452_read_hp_filter.exit, %if.end.i.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end31, %sw.bb24.cleanup_crit_edge, %sw.bb18, %sw.bb10, %if.end5, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end50 ], [ 1, %if.end31 ], [ 2, %sw.bb18 ], [ 2, %sw.bb10 ], [ 1, %if.end5 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call27, %sw.bb24.cleanup_crit_edge ], [ %call.i101, %sw.bb45.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 2, %mma8452_read_hp_filter.exit ], [ 2, %if.else ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.then38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %mask, label %if.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb12
    i32 5, label %sw.bb27
    i32 11, label %sw.bb37
    i32 25, label %sw.bb59
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %val, label %sw.bb.sw.epilog_crit_edge [
    i32 1, label %land.lhs.true.i.i
    i32 6, label %land.lhs.true.i.1.i
    i32 12, label %land.lhs.true.i.2.i
    i32 50, label %land.lhs.true.i.3.i
    i32 100, label %land.lhs.true.i.4.i
    i32 200, label %land.lhs.true.i.5.i
    i32 400, label %land.lhs.true.i.6.i
    i32 800, label %land.lhs.true.i.7.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 560000, i32 %val2)
  %cmp5.i.i = icmp eq i32 %val2, 560000
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.end4_crit_edge, label %land.lhs.true.i.i.sw.epilog_crit_edge

land.lhs.true.i.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.i.if.end4_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i.1.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.i.1.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.i.1.i, label %land.lhs.true.i.1.i.if.end4_crit_edge, label %land.lhs.true.i.1.i.sw.epilog_crit_edge

land.lhs.true.i.1.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.1.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i.2.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i.2.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.i.2.i, label %land.lhs.true.i.2.i.if.end4_crit_edge, label %land.lhs.true.i.2.i.sw.epilog_crit_edge

land.lhs.true.i.2.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.2.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i.3.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.3.i, label %land.lhs.true.i.3.i.if.end4_crit_edge, label %land.lhs.true.i.3.i.sw.epilog_crit_edge

land.lhs.true.i.3.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.3.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i.4.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.4.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.4.i, label %land.lhs.true.i.4.i.if.end4_crit_edge, label %land.lhs.true.i.4.i.sw.epilog_crit_edge

land.lhs.true.i.4.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.4.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i.5.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.5.i, label %land.lhs.true.i.5.i.if.end4_crit_edge, label %land.lhs.true.i.5.i.sw.epilog_crit_edge

land.lhs.true.i.5.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.5.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i.6.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.6.i, label %land.lhs.true.i.6.i.if.end4_crit_edge, label %land.lhs.true.i.6.i.sw.epilog_crit_edge

land.lhs.true.i.6.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.6.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i.7.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.7.i, label %land.lhs.true.i.7.i.if.end4_crit_edge, label %land.lhs.true.i.7.i.sw.epilog_crit_edge

land.lhs.true.i.7.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.7.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.i.7.i.if.end4_crit_edge, %land.lhs.true.i.6.i.if.end4_crit_edge, %land.lhs.true.i.5.i.if.end4_crit_edge, %land.lhs.true.i.4.i.if.end4_crit_edge, %land.lhs.true.i.3.i.if.end4_crit_edge, %land.lhs.true.i.2.i.if.end4_crit_edge, %land.lhs.true.i.1.i.if.end4_crit_edge, %land.lhs.true.i.i.if.end4_crit_edge
  %retval.0.i.i.ph = phi i8 [ 0, %land.lhs.true.i.7.i.if.end4_crit_edge ], [ 8, %land.lhs.true.i.6.i.if.end4_crit_edge ], [ 16, %land.lhs.true.i.5.i.if.end4_crit_edge ], [ 24, %land.lhs.true.i.4.i.if.end4_crit_edge ], [ 32, %land.lhs.true.i.3.i.if.end4_crit_edge ], [ 40, %land.lhs.true.i.2.i.if.end4_crit_edge ], [ 48, %land.lhs.true.i.1.i.if.end4_crit_edge ], [ 56, %land.lhs.true.i.i.if.end4_crit_edge ]
  %ctrl_reg1 = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_reg1, align 8
  %6 = and i8 %5, -57
  %conv8 = or i8 %6, %retval.0.i.i.ph
  store i8 %conv8, ptr %ctrl_reg1, align 8
  %7 = lshr exact i8 %retval.0.i.i.ph, 3
  %shr.i.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr [8 x [2 x i32]], ptr @mma8452_samp_freq, i32 0, i32 %shr.i.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp sgt i32 %9, 0
  br i1 %cmp.i, label %if.end.i, label %if.end4.mma8452_calculate_sleep.exit_crit_edge

if.end4.mma8452_calculate_sleep.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %mma8452_calculate_sleep.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %div9.i = udiv i32 1000, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %9)
  %cmp4.i = icmp ugt i32 %9, 1000
  %spec.select.i = select i1 %cmp4.i, i32 1, i32 %div9.i
  br label %mma8452_calculate_sleep.exit

mma8452_calculate_sleep.exit:                     ; preds = %if.end.i, %if.end4.mma8452_calculate_sleep.exit_crit_edge
  %10 = phi i32 [ 1000, %if.end4.mma8452_calculate_sleep.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %sleep_val = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %sleep_val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sleep_val, align 8
  %call11 = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext 42, i8 noundef zeroext %conv8)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %chip_info.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_info.i, align 4
  %mma_scales.i = getelementptr inbounds %struct.mma_chip_info, ptr %13, i32 0, i32 3
  %arrayidx.i.i = getelementptr %struct.mma_chip_info, ptr %13, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %val)
  %cmp2.i.i = icmp eq i32 %15, %val
  br i1 %cmp2.i.i, label %land.lhs.true.i.i119, label %sw.bb12.if.end.i.i_crit_edge

sw.bb12.if.end.i.i_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i119:                             ; preds = %sw.bb12
  %arrayidx4.i.i = getelementptr %struct.mma_chip_info, ptr %13, i32 0, i32 3, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %val2)
  %cmp5.i.i118 = icmp eq i32 %17, %val2
  br i1 %cmp5.i.i118, label %land.lhs.true.i.i119.if.end17_crit_edge, label %land.lhs.true.i.i119.if.end.i.i_crit_edge

land.lhs.true.i.i119.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i119.if.end17_crit_edge:          ; preds = %land.lhs.true.i.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end.i.i:                                       ; preds = %land.lhs.true.i.i119.if.end.i.i_crit_edge, %sw.bb12.if.end.i.i_crit_edge
  %arrayidx.i.1.i = getelementptr %struct.mma_chip_info, ptr %13, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %val)
  %cmp2.i.1.i = icmp eq i32 %19, %val
  br i1 %cmp2.i.1.i, label %land.lhs.true.i.1.i121, label %if.end.i.i.if.end.i.1.i_crit_edge

if.end.i.i.if.end.i.1.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1.i

land.lhs.true.i.1.i121:                           ; preds = %if.end.i.i
  %arrayidx4.i.1.i = getelementptr %struct.mma_chip_info, ptr %13, i32 0, i32 3, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx4.i.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %val2)
  %cmp5.i.1.i120 = icmp eq i32 %21, %val2
  br i1 %cmp5.i.1.i120, label %land.lhs.true.i.1.i121.if.end17_crit_edge, label %land.lhs.true.i.1.i121.if.end.i.1.i_crit_edge

land.lhs.true.i.1.i121.if.end.i.1.i_crit_edge:    ; preds = %land.lhs.true.i.1.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1.i

land.lhs.true.i.1.i121.if.end17_crit_edge:        ; preds = %land.lhs.true.i.1.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end.i.1.i:                                     ; preds = %land.lhs.true.i.1.i121.if.end.i.1.i_crit_edge, %if.end.i.i.if.end.i.1.i_crit_edge
  %22 = ptrtoint ptr %mma_scales.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mma_scales.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %val)
  %cmp2.i.2.i = icmp eq i32 %23, %val
  br i1 %cmp2.i.2.i, label %land.lhs.true.i.2.i123, label %if.end.i.1.i.sw.epilog_crit_edge

if.end.i.1.i.sw.epilog_crit_edge:                 ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.2.i123:                           ; preds = %if.end.i.1.i
  %arrayidx4.i.2.i = getelementptr %struct.mma_chip_info, ptr %13, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx4.i.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %val2)
  %cmp5.i.2.i122 = icmp eq i32 %25, %val2
  br i1 %cmp5.i.2.i122, label %land.lhs.true.i.2.i123.if.end17_crit_edge, label %land.lhs.true.i.2.i123.sw.epilog_crit_edge

land.lhs.true.i.2.i123.sw.epilog_crit_edge:       ; preds = %land.lhs.true.i.2.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.2.i123.if.end17_crit_edge:        ; preds = %land.lhs.true.i.2.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.i.2.i123.if.end17_crit_edge, %land.lhs.true.i.1.i121.if.end17_crit_edge, %land.lhs.true.i.i119.if.end17_crit_edge
  %retval.0.i.i124.ph = phi i8 [ 0, %land.lhs.true.i.2.i123.if.end17_crit_edge ], [ 1, %land.lhs.true.i.1.i121.if.end17_crit_edge ], [ 2, %land.lhs.true.i.i119.if.end17_crit_edge ]
  %data_cfg = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %data_cfg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data_cfg, align 1
  %28 = and i8 %27, -4
  %conv24 = or i8 %28, %retval.0.i.i124.ph
  store i8 %conv24, ptr %data_cfg, align 1
  %call26 = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext %conv24)
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %29 = add i32 %val, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %29)
  %30 = icmp ult i32 %29, -256
  br i1 %30, label %sw.bb27.sw.epilog_crit_edge, label %if.end33

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end33:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %31 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_index, align 4
  %33 = trunc i32 %32 to i8
  %conv34 = add i8 %33, 47
  %conv35 = trunc i32 %val to i8
  %call36 = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext %conv34, i8 noundef zeroext %conv35)
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  %34 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  %data_cfg43 = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %data_cfg43 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data_cfg43, align 1
  br i1 %35, label %if.then42, label %if.else

if.then42:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %38 = and i8 %37, -17
  %39 = ptrtoint ptr %data_cfg43 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %data_cfg43, align 1
  br label %if.end56

if.else:                                          ; preds = %sw.bb37
  %40 = or i8 %37, 16
  %41 = ptrtoint ptr %data_cfg43 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %data_cfg43, align 1
  %call51 = tail call fastcc i32 @mma8452_set_hp_filter_frequency(ptr noundef %1, i32 noundef %val, i32 noundef %val2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.else.sw.epilog_crit_edge, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end56:                                         ; preds = %if.else.if.end56_crit_edge, %if.then42
  %data_cfg57 = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %data_cfg57 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data_cfg57, align 1
  %call58 = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext %43)
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctrl_reg1.i, align 8
  %46 = lshr i8 %45, 3
  %47 = and i8 %46, 7
  %shr.i = zext i8 %47 to i32
  %arrayidx63 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 0, i32 %shr.i
  %48 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx63, align 2
  %conv64 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64, i32 %val)
  %cmp65 = icmp eq i32 %conv64, %val
  br i1 %cmp65, label %sw.bb59.if.then67_crit_edge, label %for.inc

sw.bb59.if.then67_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.then67:                                        ; preds = %for.inc.2.if.then67_crit_edge, %for.inc.1.if.then67_crit_edge, %for.inc.if.then67_crit_edge, %sw.bb59.if.then67_crit_edge
  %i.0134.lcssa = phi i32 [ 0, %sw.bb59.if.then67_crit_edge ], [ 8, %for.inc.if.then67_crit_edge ], [ 16, %for.inc.1.if.then67_crit_edge ], [ 24, %for.inc.2.if.then67_crit_edge ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i125 = icmp slt i32 %call.i, 0
  br i1 %cmp.i125, label %if.then67.sw.epilog_crit_edge, label %if.end.i126

if.then67.sw.epilog_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i126:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i, 228
  %or.i = or i32 %and.i, %i.0134.lcssa
  %conv1.i = trunc i32 %or.i to i8
  %call2.i = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext 43, i8 noundef zeroext %conv1.i) #7
  br label %sw.epilog

for.inc:                                          ; preds = %sw.bb59
  %arrayidx63.1 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 1, i32 %shr.i
  %52 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx63.1, align 2
  %conv64.1 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64.1, i32 %val)
  %cmp65.1 = icmp eq i32 %conv64.1, %val
  br i1 %cmp65.1, label %for.inc.if.then67_crit_edge, label %for.inc.1

for.inc.if.then67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

for.inc.1:                                        ; preds = %for.inc
  %arrayidx63.2 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 2, i32 %shr.i
  %54 = ptrtoint ptr %arrayidx63.2 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx63.2, align 2
  %conv64.2 = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64.2, i32 %val)
  %cmp65.2 = icmp eq i32 %conv64.2, %val
  br i1 %cmp65.2, label %for.inc.1.if.then67_crit_edge, label %for.inc.2

for.inc.1.if.then67_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx63.3 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 3, i32 %shr.i
  %56 = ptrtoint ptr %arrayidx63.3 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx63.3, align 2
  %conv64.3 = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64.3, i32 %val)
  %cmp65.3 = icmp eq i32 %conv64.3, %val
  br i1 %cmp65.3, label %for.inc.2.if.then67_crit_edge, label %for.inc.2.sw.epilog_crit_edge

for.inc.2.sw.epilog_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc.2.if.then67_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

sw.epilog:                                        ; preds = %for.inc.2.sw.epilog_crit_edge, %if.end.i126, %if.then67.sw.epilog_crit_edge, %if.end56, %if.else.sw.epilog_crit_edge, %if.end33, %sw.bb27.sw.epilog_crit_edge, %if.end17, %land.lhs.true.i.2.i123.sw.epilog_crit_edge, %if.end.i.1.i.sw.epilog_crit_edge, %mma8452_calculate_sleep.exit, %land.lhs.true.i.7.i.sw.epilog_crit_edge, %land.lhs.true.i.6.i.sw.epilog_crit_edge, %land.lhs.true.i.5.i.sw.epilog_crit_edge, %land.lhs.true.i.4.i.sw.epilog_crit_edge, %land.lhs.true.i.3.i.sw.epilog_crit_edge, %land.lhs.true.i.2.i.sw.epilog_crit_edge, %land.lhs.true.i.1.i.sw.epilog_crit_edge, %land.lhs.true.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call58, %if.end56 ], [ %call51, %if.else.sw.epilog_crit_edge ], [ %call36, %if.end33 ], [ %call26, %if.end17 ], [ %call11, %mma8452_calculate_sleep.exit ], [ -22, %sw.bb27.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.1.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.2.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.3.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.4.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.5.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.6.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.7.i.sw.epilog_crit_edge ], [ -22, %if.end.i.1.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.2.i123.sw.epilog_crit_edge ], [ %call2.i, %if.end.i126 ], [ %call.i, %if.then67.sw.epilog_crit_edge ], [ %shr.i, %for.inc.2.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond.i = icmp eq i32 %3, 3
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %dir, label %sw.bb.i.cleanup_crit_edge [
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb
  ]

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb.i
  %chip_info.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info.i, align 4
  %all_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %all_events.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %all_events.i, align 4
  %and.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %sw.bb1.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb1.i.if.else.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i
  %enabled_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %enabled_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enabled_events.i, align 4
  %and4.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.sw.bb3_crit_edge

land.lhs.true.i.sw.bb3_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb1.i.if.else.i_crit_edge
  br label %sw.bb3

sw.bb:                                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %and.i19 = lshr i32 %call.i, 6
  %and.lobit.i = and i32 %and.i19, 1
  %13 = xor i32 %and.lobit.i, 1
  %retval.0.i20 = select i1 %cmp.i, i32 %call.i, i32 %13
  br label %cleanup

sw.bb3:                                           ; preds = %if.else.i, %land.lhs.true.i.sw.bb3_crit_edge
  %ff_mt_ev_regs.sink.i.ph = phi ptr [ @trans_ev_regs, %land.lhs.true.i.sw.bb3_crit_edge ], [ @ff_mt_ev_regs, %if.else.i ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %ff_mt_ev_regs.sink.i.ph to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ff_mt_ev_regs.sink.i.ph, align 1
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sw.bb3.cleanup_crit_edge, label %if.end6

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %18 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_index, align 4
  %ev_cfg_chan_shift = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i.ph, i32 0, i32 2
  %20 = ptrtoint ptr %ev_cfg_chan_shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ev_cfg_chan_shift, align 1
  %conv = zext i8 %21 to i32
  %add = add i32 %19, %conv
  %22 = lshr i32 %call4, %add
  %23 = and i32 %22, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %sw.bb3.cleanup_crit_edge, %sw.bb, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.end6 ], [ %retval.0.i20, %sw.bb ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond.i = icmp eq i32 %3, 3
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %dir, label %sw.bb.i.cleanup_crit_edge [
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb.i.if.end_crit_edge
  ]

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb.i
  %chip_info.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info.i, align 4
  %all_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %all_events.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %all_events.i, align 4
  %and.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %sw.bb1.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb1.i.if.else.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i
  %enabled_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %enabled_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enabled_events.i, align 4
  %and4.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb1.i.if.else.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else.i, %land.lhs.true.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge
  %ff_mt_ev_regs.sink.i = phi ptr [ @ff_mt_ev_regs, %if.else.i ], [ @trans_ev_regs, %land.lhs.true.i.if.end_crit_edge ], [ @ff_mt_ev_regs, %sw.bb.i.if.end_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool2 = icmp ne i32 %state, 0
  %call3 = tail call fastcc i32 @mma8452_set_runtime_pm_state(ptr noundef %12, i1 noundef zeroext %tobool2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %13 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %dir, label %if.end6.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %and.i.i = lshr i32 %call.i.i, 6
  %and.lobit.i.i = and i32 %and.i.i, 1
  %16 = xor i32 %and.lobit.i.i, 1
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool1.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool2, label %land.lhs.true.i80, label %land.lhs.true3.critedge.i

land.lhs.true.i80:                                ; preds = %sw.bb
  br i1 %tobool1.not.i, label %land.lhs.true.i80.if.end.i81_crit_edge, label %land.lhs.true.i80.cleanup_crit_edge

land.lhs.true.i80.cleanup_crit_edge:              ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i80.if.end.i81_crit_edge:           ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i81

land.lhs.true3.critedge.i:                        ; preds = %sw.bb
  br i1 %tobool1.not.i, label %land.lhs.true3.critedge.i.cleanup_crit_edge, label %land.lhs.true3.critedge.i.if.end.i81_crit_edge

land.lhs.true3.critedge.i.if.end.i81_crit_edge:   ; preds = %land.lhs.true3.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i81

land.lhs.true3.critedge.i.cleanup_crit_edge:      ; preds = %land.lhs.true3.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i81:                                       ; preds = %land.lhs.true3.critedge.i.if.end.i81_crit_edge, %land.lhs.true.i80.if.end.i81_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end.i81.cleanup_crit_edge, label %if.end8.i

if.end.i81.cleanup_crit_edge:                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i = and i32 %call6.i, 135
  %val.0.v.i = select i1 %tobool2, i32 56, i32 64
  %val.0.i = or i32 %or12.i, %val.0.v.i
  %conv.i = trunc i32 %val.0.i to i8
  %call18.i = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext 21, i8 noundef zeroext %conv.i) #7
  br label %cleanup

sw.bb9:                                           ; preds = %if.end6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = ptrtoint ptr %ff_mt_ev_regs.sink.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ff_mt_ev_regs.sink.i, align 1
  %call11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %sw.bb9.cleanup_crit_edge, label %if.end13

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i83 = icmp slt i32 %call.i, 0
  %and.i84 = lshr i32 %call.i, 6
  %and.lobit.i = and i32 %and.i84, 1
  %25 = xor i32 %and.lobit.i, 1
  %retval.0.i85 = select i1 %cmp.i83, i32 %call.i, i32 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i85)
  %tobool17.not = icmp eq i32 %retval.0.i85, 0
  br i1 %tobool2, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  br i1 %tobool17.not, label %if.then15.if.end31_crit_edge, label %if.then18

if.then15.if.end31_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %ev_cfg_chan_shift = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 2
  %26 = ptrtoint ptr %ev_cfg_chan_shift to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ev_cfg_chan_shift, align 1
  %conv = zext i8 %27 to i32
  %28 = shl i32 7, %conv
  %29 = xor i32 %28, -1
  %and30 = and i32 %call11, %29
  %or = or i32 %and30, 64
  br label %if.end31

if.end31:                                         ; preds = %if.then18, %if.then15.if.end31_crit_edge
  %val.0 = phi i32 [ %or, %if.then18 ], [ %call11, %if.then15.if.end31_crit_edge ]
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %30 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_index, align 4
  %ev_cfg_chan_shift32 = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 2
  %32 = ptrtoint ptr %ev_cfg_chan_shift32 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ev_cfg_chan_shift32, align 1
  %conv33 = zext i8 %33 to i32
  %add34 = add i32 %31, %conv33
  %shl35 = shl nuw i32 1, %add34
  %or36 = or i32 %shl35, %val.0
  br label %if.end48

if.else:                                          ; preds = %if.end13
  br i1 %tobool17.not, label %if.end40, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %scan_index41 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %34 = ptrtoint ptr %scan_index41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_index41, align 4
  %ev_cfg_chan_shift42 = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 2
  %36 = ptrtoint ptr %ev_cfg_chan_shift42 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ev_cfg_chan_shift42, align 1
  %conv43 = zext i8 %37 to i32
  %add44 = add i32 %35, %conv43
  %shl45 = shl nuw i32 1, %add44
  %neg46 = xor i32 %shl45, -1
  %and47 = and i32 %call11, %neg46
  br label %if.end48

if.end48:                                         ; preds = %if.end40, %if.end31
  %val.1 = phi i32 [ %or36, %if.end31 ], [ %and47, %if.end40 ]
  %ev_cfg_ele = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 1
  %38 = ptrtoint ptr %ev_cfg_ele to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ev_cfg_ele, align 1
  %40 = ptrtoint ptr %ff_mt_ev_regs.sink.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ff_mt_ev_regs.sink.i, align 1
  %42 = trunc i32 %val.1 to i8
  %conv52 = or i8 %39, %42
  %call53 = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext %41, i8 noundef zeroext %conv52)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.else.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end8.i, %if.end.i81.cleanup_crit_edge, %land.lhs.true3.critedge.i.cleanup_crit_edge, %land.lhs.true.i80.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %if.end48 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call11, %sw.bb9.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call18.i, %if.end8.i ], [ 0, %land.lhs.true3.critedge.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i80.cleanup_crit_edge ], [ %call6.i, %if.end.i81.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond.i = icmp eq i32 %3, 3
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %dir, label %sw.bb.i.cleanup_crit_edge [
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb.i.if.end_crit_edge
  ]

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb.i
  %chip_info.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info.i, align 4
  %all_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %all_events.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %all_events.i, align 4
  %and.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %sw.bb1.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb1.i.if.else.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i
  %enabled_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %enabled_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enabled_events.i, align 4
  %and4.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb1.i.if.else.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else.i, %land.lhs.true.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge
  %ff_mt_ev_regs.sink.i = phi ptr [ @ff_mt_ev_regs, %if.else.i ], [ @trans_ev_regs, %land.lhs.true.i.if.end_crit_edge ], [ @ff_mt_ev_regs, %sw.bb.i.if.end_crit_edge ]
  %11 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb5
    i32 4, label %sw.bb19
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %ev_ths = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 4
  %14 = ptrtoint ptr %ev_ths to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ev_ths, align 1
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %ev_ths_mask = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 5
  %16 = ptrtoint ptr %ev_ths_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ev_ths_mask, align 1
  %conv = zext i8 %17 to i32
  %and = and i32 %call2, %conv
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %ev_count = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 6
  %21 = ptrtoint ptr %ev_count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ev_count, align 1
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %sw.bb5.cleanup_crit_edge, label %if.end11

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %sw.bb5
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and.i65 = lshr i32 %call.i, 3
  %25 = and i32 %and.i65, 3
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrl_reg1.i, align 8
  %28 = lshr i8 %27, 3
  %29 = and i8 %28, 7
  %shr.i = zext i8 %29 to i32
  %arrayidx18 = getelementptr [4 x [8 x i32]], ptr @mma8452_time_step_us, i32 0, i32 %25, i32 %shr.i
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx18, align 4
  %mul = mul i32 %31, %call7
  %mul.frozen = freeze i32 %mul
  %div = sdiv i32 %mul.frozen, 1000000
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div, ptr %val, align 4
  %33 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %mul.frozen, %33
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %rem.decomposed, ptr %val2, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %call21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %sw.bb19.cleanup_crit_edge, label %if.end25

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %sw.bb19
  %and26 = and i32 %call21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %val, align 4
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %val2, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %call.i67 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %if.else.cleanup_crit_edge, label %if.end.i69

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i69:                                       ; preds = %if.else
  %ctrl_reg1.i.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ctrl_reg1.i.i, align 8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %44, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i69.cleanup_crit_edge, label %mma8452_read_hp_filter.exit

if.end.i69.cleanup_crit_edge:                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mma8452_read_hp_filter.exit:                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = lshr i32 %call.i.i, 3
  %45 = and i32 %and.i.i, 3
  %46 = lshr i8 %42, 3
  %47 = and i8 %46, 7
  %shr.i.i = zext i8 %47 to i32
  %and.i70 = and i32 %call.i67, 3
  %arrayidx7.i = getelementptr [4 x [8 x [4 x [2 x i32]]]], ptr @mma8452_hp_filter_cutoff, i32 0, i32 %45, i32 %shr.i.i, i32 %and.i70
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx7.i, align 4
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %val, align 4
  %arrayidx12.i = getelementptr [4 x [8 x [4 x [2 x i32]]]], ptr @mma8452_hp_filter_cutoff, i32 0, i32 %45, i32 %shr.i.i, i32 %and.i70, i32 1
  %51 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx12.i, align 4
  %53 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %mma8452_read_hp_filter.exit, %if.end.i69.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then28, %sw.bb19.cleanup_crit_edge, %if.end16, %if.end11.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %if.end4, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end16 ], [ 1, %if.end4 ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call7, %sw.bb5.cleanup_crit_edge ], [ %call.i, %if.end11.cleanup_crit_edge ], [ %call21, %sw.bb19.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 2, %mma8452_read_hp_filter.exit ], [ 2, %if.then28 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %if.end.i69.cleanup_crit_edge ], [ %call.i67, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond.i = icmp eq i32 %3, 3
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %dir, label %sw.bb.i.cleanup_crit_edge [
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb.i.if.end_crit_edge
  ]

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb.i
  %chip_info.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info.i, align 4
  %all_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %all_events.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %all_events.i, align 4
  %and.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %sw.bb1.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb1.i.if.else.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i
  %enabled_events.i = getelementptr inbounds %struct.mma_chip_info, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %enabled_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enabled_events.i, align 4
  %and4.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb1.i.if.else.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else.i, %land.lhs.true.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge
  %ff_mt_ev_regs.sink.i = phi ptr [ @ff_mt_ev_regs, %if.else.i ], [ @trans_ev_regs, %land.lhs.true.i.if.end_crit_edge ], [ @ff_mt_ev_regs, %sw.bb.i.if.end_crit_edge ]
  %11 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb8
    i32 4, label %sw.bb25
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp slt i32 %val, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %ev_ths_mask = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 5
  %12 = ptrtoint ptr %ev_ths_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ev_ths_mask, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %val)
  %cmp2 = icmp ult i32 %conv, %val
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %ev_ths = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 4
  %14 = ptrtoint ptr %ev_ths to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ev_ths, align 1
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb8.cleanup_crit_edge, label %if.end13

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sw.bb8
  %and.i75 = lshr i32 %call.i, 3
  %18 = and i32 %and.i75, 3
  %mul = mul i32 %val, 1000000
  %add = add i32 %mul, %val2
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl_reg1.i, align 8
  %21 = lshr i8 %20, 3
  %22 = and i8 %21, 7
  %shr.i = zext i8 %22 to i32
  %arrayidx15 = getelementptr [4 x [8 x i32]], ptr @mma8452_time_step_us, i32 0, i32 %18, i32 %shr.i
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15, align 4
  %div = udiv i32 %add, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div)
  %25 = icmp ugt i32 %div, 255
  br i1 %25, label %if.end13.cleanup_crit_edge, label %if.end22

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %ev_count = getelementptr inbounds %struct.mma8452_event_regs, ptr %ff_mt_ev_regs.sink.i, i32 0, i32 6
  %26 = ptrtoint ptr %ev_count to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ev_count, align 1
  br label %cleanup.sink.split

sw.bb25:                                          ; preds = %if.end
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %sw.bb25.cleanup_crit_edge, label %if.end30

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %sw.bb25
  %30 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call26, 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end30
  %and = and i32 %call26, -2
  %call36 = tail call fastcc i32 @mma8452_set_hp_filter_frequency(ptr noundef %1, i32 noundef %val, i32 noundef %val2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then35, %if.end22, %if.end5
  %reg.0.sink = phi i32 [ %div, %if.end22 ], [ %val, %if.end5 ], [ %or, %if.then35 ], [ %and, %if.else.cleanup.sink.split_crit_edge ]
  %.sink = phi i8 [ %27, %if.end22 ], [ %15, %if.end5 ], [ 29, %if.then35 ], [ 29, %if.else.cleanup.sink.split_crit_edge ]
  %conv42 = trunc i32 %reg.0.sink to i8
  %call43 = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext %.sink, i8 noundef zeroext %conv42)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i, %sw.bb8.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %call26, %sw.bb25.cleanup_crit_edge ], [ %call36, %if.else.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call43, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_reg_access_dbg(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %reg)
  %cmp = icmp ugt i32 %reg, 49
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %readval, null
  br i1 %tobool.not, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %reg to i8
  %conv2 = trunc i32 %writeval to i8
  %call3 = tail call fastcc i32 @mma8452_change_config(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv2)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %conv5 = trunc i32 %reg to i8
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6, ptr %readval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call3, %if.then1 ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_show_samp_freq_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef 560000) #7
  %add.ptr.i.1 = getelementptr i8, ptr %buf, i32 %call.i
  %sub.i.1 = sub i32 4096, %call.i
  %call.i.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.1, i32 noundef %sub.i.1, ptr noundef nonnull @.str.27, i32 noundef 6, i32 noundef 250000) #7
  %add.i.1 = add i32 %call.i.1, %call.i
  %add.ptr.i.2 = getelementptr i8, ptr %buf, i32 %add.i.1
  %sub.i.2 = sub i32 4096, %add.i.1
  %call.i.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.2, i32 noundef %sub.i.2, ptr noundef nonnull @.str.27, i32 noundef 12, i32 noundef 500000) #7
  %add.i.2 = add i32 %call.i.2, %add.i.1
  %add.ptr.i.3 = getelementptr i8, ptr %buf, i32 %add.i.2
  %sub.i.3 = sub i32 4096, %add.i.2
  %call.i.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.3, i32 noundef %sub.i.3, ptr noundef nonnull @.str.27, i32 noundef 50, i32 noundef 0) #7
  %add.i.3 = add i32 %call.i.3, %add.i.2
  %add.ptr.i.4 = getelementptr i8, ptr %buf, i32 %add.i.3
  %sub.i.4 = sub i32 4096, %add.i.3
  %call.i.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.4, i32 noundef %sub.i.4, ptr noundef nonnull @.str.27, i32 noundef 100, i32 noundef 0) #7
  %add.i.4 = add i32 %call.i.4, %add.i.3
  %add.ptr.i.5 = getelementptr i8, ptr %buf, i32 %add.i.4
  %sub.i.5 = sub i32 4096, %add.i.4
  %call.i.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.5, i32 noundef %sub.i.5, ptr noundef nonnull @.str.27, i32 noundef 200, i32 noundef 0) #7
  %add.i.5 = add i32 %call.i.5, %add.i.4
  %add.ptr.i.6 = getelementptr i8, ptr %buf, i32 %add.i.5
  %sub.i.6 = sub i32 4096, %add.i.5
  %call.i.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.6, i32 noundef %sub.i.6, ptr noundef nonnull @.str.27, i32 noundef 400, i32 noundef 0) #7
  %add.i.6 = add i32 %call.i.6, %add.i.5
  %add.ptr.i.7 = getelementptr i8, ptr %buf, i32 %add.i.6
  %sub.i.7 = sub i32 4096, %add.i.6
  %call.i.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.7, i32 noundef %sub.i.7, ptr noundef nonnull @.str.27, i32 noundef 800, i32 noundef 0) #7
  %add.i.7 = add i32 %call.i.7, %add.i.6
  %sub4.i = add i32 %add.i.7, -1
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 %sub4.i
  %0 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx5.i, align 1
  ret i32 %add.i.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_show_scale_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
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
  %chip_info = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_info, align 4
  %mma_scales = getelementptr inbounds %struct.mma_chip_info, ptr %5, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.mma_chip_info, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.mma_chip_info, ptr %5, i32 0, i32 3, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %7, i32 noundef %9) #7
  %add.ptr.i.1 = getelementptr i8, ptr %buf, i32 %call.i
  %sub.i.1 = sub i32 4096, %call.i
  %arrayidx.i.1 = getelementptr %struct.mma_chip_info, ptr %5, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.1, align 4
  %arrayidx3.i.1 = getelementptr %struct.mma_chip_info, ptr %5, i32 0, i32 3, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i.1, align 4
  %call.i.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.1, i32 noundef %sub.i.1, ptr noundef nonnull @.str.27, i32 noundef %11, i32 noundef %13) #7
  %add.i.1 = add i32 %call.i.1, %call.i
  %add.ptr.i.2 = getelementptr i8, ptr %buf, i32 %add.i.1
  %sub.i.2 = sub i32 4096, %add.i.1
  %14 = ptrtoint ptr %mma_scales to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mma_scales, align 4
  %arrayidx3.i.2 = getelementptr %struct.mma_chip_info, ptr %5, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.i.2, align 4
  %call.i.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.2, i32 noundef %sub.i.2, ptr noundef nonnull @.str.27, i32 noundef %15, i32 noundef %17) #7
  %add.i.2 = add i32 %call.i.2, %add.i.1
  %sub4.i = add i32 %add.i.2, -1
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 %sub4.i
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx5.i, align 1
  ret i32 %add.i.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_show_hp_cutoff_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_reg1.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = lshr i32 %call.i, 3
  %6 = and i32 %and.i, 3
  %7 = lshr i8 %3, 3
  %8 = and i8 %7, 7
  %shr.i = zext i8 %8 to i32
  %arrayidx4 = getelementptr [4 x [8 x [4 x [2 x i32]]]], ptr @mma8452_hp_filter_cutoff, i32 0, i32 %6, i32 %shr.i
  %arrayidx.i = getelementptr [2 x i32], ptr %arrayidx4, i32 3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [2 x i32], ptr %arrayidx4, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i, align 4
  %call.i13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %10, i32 noundef %12) #7
  %add.ptr.i12.1 = getelementptr i8, ptr %buf, i32 %call.i13
  %sub.i.1 = sub i32 4096, %call.i13
  %arrayidx.i.1 = getelementptr [2 x i32], ptr %arrayidx4, i32 2
  %13 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.1, align 4
  %arrayidx3.i.1 = getelementptr [2 x i32], ptr %arrayidx4, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx3.i.1, align 4
  %call.i13.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i12.1, i32 noundef %sub.i.1, ptr noundef nonnull @.str.27, i32 noundef %14, i32 noundef %16) #7
  %add.i.1 = add i32 %call.i13.1, %call.i13
  %add.ptr.i12.2 = getelementptr i8, ptr %buf, i32 %add.i.1
  %sub.i.2 = sub i32 4096, %add.i.1
  %arrayidx.i.2 = getelementptr [2 x i32], ptr %arrayidx4, i32 1
  %17 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.2, align 4
  %arrayidx3.i.2 = getelementptr [2 x i32], ptr %arrayidx4, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i.2, align 4
  %call.i13.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i12.2, i32 noundef %sub.i.2, ptr noundef nonnull @.str.27, i32 noundef %18, i32 noundef %20) #7
  %add.i.2 = add i32 %call.i13.2, %add.i.1
  %add.ptr.i12.3 = getelementptr i8, ptr %buf, i32 %add.i.2
  %sub.i.3 = sub i32 4096, %add.i.2
  %21 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4, align 4
  %arrayidx3.i.3 = getelementptr [2 x i32], ptr %arrayidx4, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx3.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx3.i.3, align 4
  %call.i13.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i12.3, i32 noundef %sub.i.3, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %24) #7
  %add.i.3 = add i32 %call.i13.3, %add.i.2
  %sub4.i = add i32 %add.i.3, -1
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 %sub4.i
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %arrayidx5.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add.i.3, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_show_os_ratio_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_reg1.i, align 8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 7
  %shr.i = zext i8 %5 to i32
  %arrayidx3 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 0, i32 %shr.i
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp5 = icmp eq i16 %7, 0
  br i1 %cmp5, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = zext i16 %7 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.31, i32 noundef %conv4) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %len.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ %call10, %if.end ]
  %arrayidx3.1 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 1, i32 %shr.i
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx3.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp5.1 = icmp eq i16 %7, %9
  br i1 %cmp5.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.1 = zext i16 %9 to i32
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %len.1
  %sub.1 = sub i32 4096, %len.1
  %call10.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.31, i32 noundef %conv4.1) #7
  %add.1 = add i32 %call10.1, %len.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %val.1.1 = phi i16 [ %7, %for.inc.for.inc.1_crit_edge ], [ %9, %if.end.1 ]
  %len.1.1 = phi i32 [ %len.1, %for.inc.for.inc.1_crit_edge ], [ %add.1, %if.end.1 ]
  %arrayidx3.2 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 2, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx3.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %val.1.1, i16 %11)
  %cmp5.2 = icmp eq i16 %val.1.1, %11
  br i1 %cmp5.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.2 = zext i16 %11 to i32
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %len.1.1
  %sub.2 = sub i32 4096, %len.1.1
  %call10.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.31, i32 noundef %conv4.2) #7
  %add.2 = add i32 %call10.2, %len.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %val.1.2 = phi i16 [ %val.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %11, %if.end.2 ]
  %len.1.2 = phi i32 [ %len.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %add.2, %if.end.2 ]
  %arrayidx3.3 = getelementptr [4 x [8 x i16]], ptr @mma8452_os_ratio, i32 0, i32 3, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx3.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %val.1.2, i16 %13)
  %cmp5.3 = icmp eq i16 %val.1.2, %13
  br i1 %cmp5.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.3 = zext i16 %13 to i32
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %len.1.2
  %sub.3 = sub i32 4096, %len.1.2
  %call10.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.31, i32 noundef %conv4.3) #7
  %add.3 = add i32 %call10.3, %len.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %len.1.3 = phi i32 [ %len.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %add.3, %if.end.3 ]
  %sub11 = add i32 %len.1.3, -1
  %arrayidx12 = getelementptr i8, ptr %buf, i32 %sub11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %arrayidx12, align 1
  ret i32 %len.1.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma8452_read(ptr nocapture noundef readonly %data, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_val.i = getelementptr inbounds %struct.mma8452_data, ptr %data, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry
  %dec21.i = phi i32 [ 149, %entry ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %and.i = and i32 %call.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 7
  br i1 %cmp2.i, label %if.end, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %2 = ptrtoint ptr %sleep_val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sleep_val.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %3)
  %cmp5.i = icmp slt i32 %3, 21
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul i32 %3, 250
  %mul9.i = mul i32 %3, 500
  tail call void @usleep_range_state(i32 noundef %mul.i, i32 noundef %mul9.i, i32 noundef 2) #7
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then6.i
  %dec.i = add nsw i32 %dec21.i, -1
  %cmp.not.i = icmp eq i32 %dec21.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.end.i:                                         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %dev.i15 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i15, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end3

if.then.i.i:                                      ; preds = %if.end
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !173
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.mma8452_set_runtime_pm_state.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.mma8452_set_runtime_pm_state.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mma8452_set_runtime_pm_state.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !174
  br label %mma8452_set_runtime_pm_state.exit

mma8452_set_runtime_pm_state.exit:                ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.mma8452_set_runtime_pm_state.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i15, ptr noundef nonnull @.str.34, i32 noundef 1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %call5 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 6, ptr noundef %buf) #7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %dev.i18 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %call.i13.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i13.i, ptr %last_busy.i.i, align 8
  %call.i14.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev.i18, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp.i, label %do.end.i21, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i21:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18, ptr noundef nonnull @.str.34, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i21, %if.end3.cleanup_crit_edge, %mma8452_set_runtime_pm_state.exit, %do.end.i, %while.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %mma8452_set_runtime_pm_state.exit ], [ %call.i14.i, %do.end.i21 ], [ 0, %if.end3.cleanup_crit_edge ], [ -5, %do.end.i ], [ %call.i, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma8452_set_runtime_pm_state(ptr noundef %client, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %on, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !173
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !174
  br label %do.end

if.end:                                           ; preds = %entry
  %call.i13 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 22
  %1 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store volatile i64 %call.i13, ptr %last_busy.i, align 8
  %call.i14 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp = icmp slt i32 %call.i14, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %ret.017 = phi i32 [ %call.i14, %if.end.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i1 %on to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.34, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.017, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma8452_change_config(ptr noundef %data, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mma8452_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %entry
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not = icmp eq i32 %and.i, 0
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  br i1 %cmp1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_reg1.i, align 8
  %6 = and i8 %5, -2
  %call.i31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 42, i8 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp4 = icmp slt i32 %call.i31, 0
  br i1 %cmp4, label %if.then2.fail_crit_edge, label %if.end7.thread

if.then2.fail_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg, i8 noundef zeroext %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.fail_crit_edge, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end7.thread:                                   ; preds = %if.then2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %call834 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %reg, i8 noundef zeroext %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call834)
  %cmp935 = icmp slt i32 %call834, 0
  br i1 %cmp935, label %if.end7.thread.fail_crit_edge, label %if.then13

if.end7.thread.fail_crit_edge:                    ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then13:                                        ; preds = %if.end7.thread
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %11 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl_reg1.i, align 8
  %call.i33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 42, i8 noundef zeroext %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp15 = icmp slt i32 %call.i33, 0
  br i1 %cmp15, label %if.then13.fail_crit_edge, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13.fail_crit_edge:                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  br label %fail

fail:                                             ; preds = %if.end18, %if.then13.fail_crit_edge, %if.end7.thread.fail_crit_edge, %if.end7.fail_crit_edge, %if.then2.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ %call.i31, %if.then2.fail_crit_edge ], [ %call8, %if.end7.fail_crit_edge ], [ %call.i33, %if.then13.fail_crit_edge ], [ 0, %if.end18 ], [ %call.i, %entry.fail_crit_edge ], [ %call834, %if.end7.thread.fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma8452_set_hp_filter_frequency(ptr noundef %data, i32 noundef %val, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg1.i.i = getelementptr inbounds %struct.mma8452_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_reg1.i.i, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and.i.i = lshr i32 %call.i.i, 3
  %4 = and i32 %and.i.i, 3
  %5 = lshr i8 %1, 3
  %6 = and i8 %5, 7
  %shr.i.i = zext i8 %6 to i32
  %arrayidx2.i = getelementptr [4 x [8 x [4 x [2 x i32]]]], ptr @mma8452_hp_filter_cutoff, i32 0, i32 %4, i32 %shr.i.i
  %arrayidx.i.i = getelementptr [2 x i32], ptr %arrayidx2.i, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp2.i.i = icmp eq i32 %8, %val
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %arrayidx4.i.i = getelementptr [2 x i32], ptr %arrayidx2.i, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val2)
  %cmp5.i.i = icmp eq i32 %10, %val2
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.i.if.end.i.i_crit_edge
  %arrayidx.i.1.i = getelementptr [2 x i32], ptr %arrayidx2.i, i32 2
  %11 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp2.i.1.i = icmp eq i32 %12, %val
  br i1 %cmp2.i.1.i, label %land.lhs.true.i.1.i, label %if.end.i.i.if.end.i.1.i_crit_edge

if.end.i.i.if.end.i.1.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1.i

land.lhs.true.i.1.i:                              ; preds = %if.end.i.i
  %arrayidx4.i.1.i = getelementptr [2 x i32], ptr %arrayidx2.i, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx4.i.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val2)
  %cmp5.i.1.i = icmp eq i32 %14, %val2
  br i1 %cmp5.i.1.i, label %land.lhs.true.i.1.i.if.end_crit_edge, label %land.lhs.true.i.1.i.if.end.i.1.i_crit_edge

land.lhs.true.i.1.i.if.end.i.1.i_crit_edge:       ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1.i

land.lhs.true.i.1.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.1.i:                                     ; preds = %land.lhs.true.i.1.i.if.end.i.1.i_crit_edge, %if.end.i.i.if.end.i.1.i_crit_edge
  %arrayidx.i.2.i = getelementptr [2 x i32], ptr %arrayidx2.i, i32 1
  %15 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp2.i.2.i = icmp eq i32 %16, %val
  br i1 %cmp2.i.2.i, label %land.lhs.true.i.2.i, label %if.end.i.1.i.if.end.i.2.i_crit_edge

if.end.i.1.i.if.end.i.2.i_crit_edge:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2.i

land.lhs.true.i.2.i:                              ; preds = %if.end.i.1.i
  %arrayidx4.i.2.i = getelementptr [2 x i32], ptr %arrayidx2.i, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx4.i.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val2)
  %cmp5.i.2.i = icmp eq i32 %18, %val2
  br i1 %cmp5.i.2.i, label %land.lhs.true.i.2.i.if.end_crit_edge, label %land.lhs.true.i.2.i.if.end.i.2.i_crit_edge

land.lhs.true.i.2.i.if.end.i.2.i_crit_edge:       ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2.i

land.lhs.true.i.2.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.2.i:                                     ; preds = %land.lhs.true.i.2.i.if.end.i.2.i_crit_edge, %if.end.i.1.i.if.end.i.2.i_crit_edge
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val)
  %cmp2.i.3.i = icmp eq i32 %20, %val
  br i1 %cmp2.i.3.i, label %land.lhs.true.i.3.i, label %if.end.i.2.i.cleanup_crit_edge

if.end.i.2.i.cleanup_crit_edge:                   ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.3.i:                              ; preds = %if.end.i.2.i
  %arrayidx4.i.3.i = getelementptr [2 x i32], ptr %arrayidx2.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx4.i.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %val2)
  %cmp5.i.3.i = icmp eq i32 %22, %val2
  br i1 %cmp5.i.3.i, label %land.lhs.true.i.3.i.if.end_crit_edge, label %land.lhs.true.i.3.i.cleanup_crit_edge

land.lhs.true.i.3.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.3.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.3.i.if.end_crit_edge, %land.lhs.true.i.2.i.if.end_crit_edge, %land.lhs.true.i.1.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %land.lhs.true.i.3.i.if.end_crit_edge ], [ 1, %land.lhs.true.i.2.i.if.end_crit_edge ], [ 2, %land.lhs.true.i.1.i.if.end_crit_edge ], [ 3, %land.lhs.true.i.i.if.end_crit_edge ]
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call1, 252
  %or = or i32 %and, %retval.0.i.ph
  %conv = trunc i32 %or to i8
  %call5 = tail call fastcc i32 @mma8452_change_config(ptr noundef %data, i8 noundef zeroext 15, i8 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %land.lhs.true.i.3.i.cleanup_crit_edge, %if.end.i.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.3.i.cleanup_crit_edge ], [ -22, %if.end.i.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call2 = tail call fastcc i32 @mma8452_set_runtime_pm_state(ptr noundef %5, i1 noundef zeroext %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call5, 254
  %masksel = zext i1 %state to i32
  %reg.0 = or i32 %and, %masksel
  %conv = trunc i32 %reg.0 to i8
  %call11 = tail call fastcc i32 @mma8452_change_config(ptr noundef %3, i8 noundef zeroext 45, i8 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ %call2, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_runtime_suspend(ptr noundef %dev) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_reg1.i, align 8
  %8 = and i8 %7, -2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 42, i8 noundef zeroext %8) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vddio_reg = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vddio_reg, align 8
  %call5 = tail call i32 @regulator_disable(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %vdd_reg = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdd_reg, align 4
  %call11 = tail call i32 @regulator_disable(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end10.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ %call5, %do.end9 ], [ %call11, %do.end16 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8452_runtime_resume(ptr noundef %dev) #2 align 64 {
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
  %vdd_reg = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd_reg, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vddio_reg = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vddio_reg, align 8
  %call3 = tail call i32 @regulator_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #10
  %8 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd_reg, align 4
  %call10 = tail call i32 @regulator_disable(ptr noundef %9) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mma8452_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrl_reg1.i, align 8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 42, i8 noundef zeroext %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %runtime_resume_failed, label %if.end14

if.end14:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl_reg1.i, align 8
  %16 = lshr i8 %15, 3
  %17 = and i8 %16, 7
  %shr.i = zext i8 %17 to i32
  %arrayidx = getelementptr [8 x [2 x i32]], ptr @mma8452_samp_freq, i32 0, i32 %shr.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %div = sdiv i32 1000, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %div)
  %cmp17 = icmp slt i32 %div, 20
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul nsw i32 %div, 1000
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef 20000, i32 noundef 2) #7
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 @msleep_interruptible(i32 noundef %div) #7
  br label %cleanup

runtime_resume_failed:                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vddio_reg, align 8
  %call22 = tail call i32 @regulator_disable(ptr noundef %21) #7
  %22 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdd_reg, align 4
  %call24 = tail call i32 @regulator_disable(ptr noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %runtime_resume_failed, %if.else, %if.then18, %do.end8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call3, %do.end8 ], [ %call.i, %runtime_resume_failed ], [ 0, %if.else ], [ 0, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !53, !54, !56, !58, !60, !62, !63, !64, !66, !68, !70, !71, !73, !75, !77, !78, !80, !81, !83, !85, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_mma8452__291_1820_mma8452_driver_init6, !1, !"__initcall__kmod_mma8452__291_1820_mma8452_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/mma8452.c", i32 1820, i32 1}
!2 = !{ptr @__exitcall_mma8452_driver_exit, !1, !"__exitcall_mma8452_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/mma8452.c", i32 1822, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/mma8452.c", i32 1823, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/mma8452.c", i32 1824, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/mma8452.c", i32 1812, i32 11}
!12 = !{ptr @mma8452_driver, !13, !"mma8452_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/mma8452.c", i32 1810, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/mma8452.c", i32 1529, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mma8452_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mma8452_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mma8452_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/accel/mma8452.c", i32 1539, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/mma8452.c", i32 1542, i32 51}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/mma8452.c", i32 1545, i32 10}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/mma8452.c", i32 1547, i32 53}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/accel/mma8452.c", i32 1550, i32 10}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/accel/mma8452.c", i32 1554, i32 3}
!35 = !{ptr @mma8452_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mma8452_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/accel/mma8452.c", i32 1560, i32 3}
!39 = !{ptr @mma8452_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mma8452_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/accel/mma8452.c", i32 1583, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mma8452_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mma8452_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/accel/mma8452.c", i32 1616, i32 49}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/mma8452.c", i32 1619, i32 4}
!50 = !{ptr @mma8452_probe.__UNIQUE_ID_ddebug289, !49, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/accel/mma8452.c", i32 1627, i32 4}
!53 = !{ptr @mma8452_probe.__UNIQUE_ID_ddebug290, !52, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!54 = !{ptr @mma8452_info, !55, !"mma8452_info", i1 false, i1 false}
!55 = !{!"../drivers/iio/accel/mma8452.c", i32 1412, i32 30}
!56 = !{ptr @mma8452_event_attribute_group, !57, !"mma8452_event_attribute_group", i1 false, i1 false}
!57 = !{!"../drivers/iio/accel/mma8452.c", i32 1188, i32 37}
!58 = !{ptr @mma8452_event_attributes, !59, !"mma8452_event_attributes", i1 false, i1 false}
!59 = !{!"../drivers/iio/accel/mma8452.c", i32 1183, i32 26}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/accel/mma8452.c", i32 1181, i32 8}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @iio_const_attr_accel_transient_scale, !61, !"iio_const_attr_accel_transient_scale", i1 false, i1 false}
!64 = !{ptr @mma8452_group, !65, !"mma8452_group", i1 false, i1 false}
!65 = !{!"../drivers/iio/accel/mma8452.c", i32 1408, i32 37}
!66 = !{ptr @mma8452_attributes, !67, !"mma8452_attributes", i1 false, i1 false}
!67 = !{!"../drivers/iio/accel/mma8452.c", i32 1400, i32 26}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/accel/mma8452.c", i32 430, i32 8}
!70 = !{ptr @iio_dev_attr_sampling_frequency_available, !69, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/accel/mma8452.c", i32 266, i32 48}
!73 = !{ptr @mma8452_samp_freq, !74, !"mma8452_samp_freq", i1 false, i1 false}
!74 = !{!"../drivers/iio/accel/mma8452.c", i32 291, i32 18}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/accel/mma8452.c", i32 431, i32 8}
!77 = !{ptr @iio_dev_attr_in_accel_scale_available, !76, !"iio_dev_attr_in_accel_scale_available", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/accel/mma8452.c", i32 433, i32 8}
!80 = !{ptr @iio_dev_attr_in_accel_filter_high_pass_3db_frequency_available, !79, !"iio_dev_attr_in_accel_filter_high_pass_3db_frequency_available", i1 false, i1 false}
!81 = !{ptr @mma8452_hp_filter_cutoff, !82, !"mma8452_hp_filter_cutoff", i1 false, i1 false}
!82 = !{!"../drivers/iio/accel/mma8452.c", i32 305, i32 18}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/accel/mma8452.c", i32 435, i32 8}
!85 = !{ptr @iio_dev_attr_in_accel_oversampling_ratio_available, !84, !"iio_dev_attr_in_accel_oversampling_ratio_available", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/accel/mma8452.c", i32 423, i32 48}
!88 = !{ptr @mma8452_os_ratio, !89, !"mma8452_os_ratio", i1 false, i1 false}
!89 = !{!"../drivers/iio/accel/mma8452.c", i32 349, i32 18}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/accel/mma8452.c", i32 213, i32 2}
!92 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mma8452_drdy._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mma8452_drdy._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/accel/mma8452.c", i32 231, i32 3}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mma8452_set_runtime_pm_state._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @mma8452_set_runtime_pm_state._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @trans_ev_regs, !101, !"trans_ev_regs", i1 false, i1 false}
!101 = !{!"../drivers/iio/accel/mma8452.c", i32 156, i32 40}
!102 = !{ptr @ff_mt_ev_regs, !103, !"ff_mt_ev_regs", i1 false, i1 false}
!103 = !{!"../drivers/iio/accel/mma8452.c", i32 146, i32 40}
!104 = !{ptr @mma8452_time_step_us, !105, !"mma8452_time_step_us", i1 false, i1 false}
!105 = !{!"../drivers/iio/accel/mma8452.c", i32 297, i32 27}
!106 = !{ptr @mma8452_scan_masks, !107, !"mma8452_scan_masks", i1 false, i1 false}
!107 = !{!"../drivers/iio/accel/mma8452.c", i32 1424, i32 28}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/accel/mma8452.c", i32 1460, i32 52}
!110 = !{ptr @mma8452_trigger_ops, !111, !"mma8452_trigger_ops", i1 false, i1 false}
!111 = !{!"../drivers/iio/accel/mma8452.c", i32 1449, i32 37}
!112 = !{ptr @mma8452_dt_ids, !113, !"mma8452_dt_ids", i1 false, i1 false}
!113 = !{!"../drivers/iio/accel/mma8452.c", i32 1508, i32 34}
!114 = !{ptr @mma_chip_info_table, !115, !"mma_chip_info_table", i1 false, i1 false}
!115 = !{!"../drivers/iio/accel/mma8452.c", i32 1302, i32 35}
!116 = !{ptr @mma8451_channels, !117, !"mma8451_channels", i1 false, i1 false}
!117 = !{!"../drivers/iio/accel/mma8452.c", i32 1253, i32 35}
!118 = !{ptr @mma8452_transient_event, !119, !"mma8452_transient_event", i1 false, i1 false}
!119 = !{!"../drivers/iio/accel/mma8452.c", i32 1156, i32 36}
!120 = !{ptr @mma8452_freefall_event, !121, !"mma8452_freefall_event", i1 false, i1 false}
!121 = !{!"../drivers/iio/accel/mma8452.c", i32 1135, i32 36}
!122 = !{ptr @mma8452_channels, !123, !"mma8452_channels", i1 false, i1 false}
!123 = !{!"../drivers/iio/accel/mma8452.c", i32 1261, i32 35}
!124 = !{ptr @mma8453_channels, !125, !"mma8453_channels", i1 false, i1 false}
!125 = !{!"../drivers/iio/accel/mma8452.c", i32 1269, i32 35}
!126 = !{ptr @mma8652_channels, !127, !"mma8652_channels", i1 false, i1 false}
!127 = !{!"../drivers/iio/accel/mma8452.c", i32 1277, i32 35}
!128 = !{ptr @mma8452_motion_event, !129, !"mma8452_motion_event", i1 false, i1 false}
!129 = !{!"../drivers/iio/accel/mma8452.c", i32 1167, i32 36}
!130 = !{ptr @mma8652_freefall_event, !131, !"mma8652_freefall_event", i1 false, i1 false}
!131 = !{!"../drivers/iio/accel/mma8452.c", i32 1146, i32 36}
!132 = !{ptr @mma8653_channels, !133, !"mma8653_channels", i1 false, i1 false}
!133 = !{!"../drivers/iio/accel/mma8452.c", i32 1285, i32 35}
!134 = !{ptr @mma8452_pm_ops, !135, !"mma8452_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/iio/accel/mma8452.c", i32 1793, i32 32}
!136 = !{ptr @.str.37, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/iio/accel/mma8452.c", i32 1734, i32 3}
!138 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mma8452_runtime_suspend._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @mma8452_runtime_suspend._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/accel/mma8452.c", i32 1740, i32 3}
!143 = !{ptr @mma8452_runtime_suspend._entry.39, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @mma8452_runtime_suspend._entry_ptr.41, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/accel/mma8452.c", i32 1746, i32 3}
!147 = !{ptr @mma8452_runtime_suspend._entry.42, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mma8452_runtime_suspend._entry_ptr.44, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/accel/mma8452.c", i32 1761, i32 3}
!151 = !{ptr @.str.46, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mma8452_runtime_resume._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @mma8452_runtime_resume._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/accel/mma8452.c", i32 1767, i32 3}
!156 = !{ptr @mma8452_runtime_resume._entry.47, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mma8452_runtime_resume._entry_ptr.49, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @mma8452_id, !159, !"mma8452_id", i1 false, i1 false}
!159 = !{!"../drivers/iio/accel/mma8452.c", i32 1799, i32 35}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i64 2148998896, i64 2148998901, i64 2148998914, i64 2148998958, i64 2148998992, i64 2148999013}
!170 = !{i8 0, i8 2}
!171 = !{!"auto-init"}
!172 = !{i64 2148384938}
!173 = !{i64 870558, i64 870583, i64 870605, i64 870621, i64 870633, i64 870653, i64 870677, i64 870693, i64 870705}
!174 = !{i64 2148385126}
