; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/ak8974.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/ak8974.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.ak8974 = type { ptr, %struct.iio_mount_matrix, ptr, [2 x %struct.regulator_bulk_data], ptr, i8, %struct.mutex, i8, %struct.completion, i8, %struct.anon.87 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anon.87 = type { [3 x i16], i64 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ak8974__290_1060_ak8974_driver_init6 = internal global ptr @ak8974_driver_init, section ".initcall6.init", align 4
@ak8974_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ak8974_probe, ptr @ak8974_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak8974_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak8974_dev_pm_ops, ptr null, ptr null }, ptr @ak8974_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ak8974_driver_exit = internal global ptr @ak8974_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [64 x i8] c"ak8974.description=AK8974 and AMI30x 3-axis magnetometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [26 x i8] c"ak8974.author=Samu Onkalo\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [28 x i8] c"ak8974.author=Linus Walleij\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [44 x i8] c"ak8974.file=drivers/iio/magnetometer/ak8974\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"ak8974.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak8974\00", [25 x i8] zeroinitializer }, align 32
@ak8974_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"alps,hscdtd008a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ak8974_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak8974_runtime_suspend, ptr @ak8974_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ak8974_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ami305\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ami306\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ak8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"hscdtd008a\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ak8974_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ak8974->lock\00", [18 x i8] zeroinitializer }, align 32
@ak8974_reg_avdd = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@ak8974_reg_dvdd = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get regulators\0A\00", [41 x i8] zeroinitializer }, align 32
@ak8974_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 851, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ak8974_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/magnetometer/ak8974.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr = internal global ptr @ak8974_probe._entry, section ".printk_index", align 4
@ak8974_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ak8974_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @ak8974_writeable_reg, ptr null, ptr null, ptr @ak8974_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ak8974:860:(&ak8974_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@ak8974_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 862, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.11 = internal global ptr @ak8974_probe._entry.9, section ".printk_index", align 4
@ak8974_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 870, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not power on\0A\00", [44 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.14 = internal global ptr @ak8974_probe._entry.12, section ".printk_index", align 4
@ak8974_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 876, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"neither AK8974 nor AMI30x found\0A\00", [63 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.17 = internal global ptr @ak8974_probe._entry.15, section ".printk_index", align 4
@ak8974_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 882, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"selftest failed (continuing anyway)\0A\00", [59 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.20 = internal global ptr @ak8974_probe._entry.18, section ".printk_index", align 4
@ak8974_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 886, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AK8974 reset failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.23 = internal global ptr @ak8974_probe._entry.21, section ".printk_index", align 4
@ak8974_12_bits_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8974_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 1, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8974_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 2, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8974_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@ak8974_15_bits_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 15, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8974_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 1, i32 1, %struct.anon.86 { i8 115, i8 15, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8974_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 2, i32 2, %struct.anon.86 { i8 115, i8 15, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8974_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@ak8974_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ak8974_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ak8974_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@ak8974_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 914, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"triggered buffer setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.26 = internal global ptr @ak8974_probe._entry.24, section ".printk_index", align 4
@ak8974_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 922, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable rising edge DRDY IRQ\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.30 = internal global ptr @ak8974_probe._entry.27, section ".printk_index", align 4
@ak8974_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 925, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enable falling edge DRDY IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.33 = internal global ptr @ak8974_probe._entry.31, section ".printk_index", align 4
@ak8974_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 941, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unable to request DRDY IRQ - proceeding without IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.36 = internal global ptr @ak8974_probe._entry.34, section ".printk_index", align 4
@ak8974_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 950, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ak8974_probe._entry_ptr.39 = internal global ptr @ak8974_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ami305\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ami306\00", [25 x i8] zeroinitializer }, align 32
@ak8974_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 515, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"detected %s, FW ver %02x, S/N: %04x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ak8974_detect\00", [18 x i8] zeroinitializer }, align 32
@ak8974_detect._entry_ptr = internal global ptr @ak8974_detect._entry, section ".printk_index", align 4
@ak8974_detect._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 519, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"detected AK8974\0A\00", [47 x i8] zeroinitializer }, align 32
@ak8974_detect._entry_ptr.46 = internal global ptr @ak8974_detect._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hscdtd008a\00", [21 x i8] zeroinitializer }, align 32
@ak8974_detect._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.5, i32 523, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"detected hscdtd008a\0A\00", [43 x i8] zeroinitializer }, align 32
@ak8974_detect._entry_ptr.50 = internal global ptr @ak8974_detect._entry.48, section ".printk_index", align 4
@ak8974_detect._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.43, ptr @.str.5, i32 527, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported device (%02x) \00", [37 x i8] zeroinitializer }, align 32
@ak8974_detect._entry_ptr.53 = internal global ptr @ak8974_detect._entry.51, section ".printk_index", align 4
@ak8974_detect._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.43, ptr @.str.5, i32 557, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"factory calibration for axis %c: offz=%u sens=%u fine=%u pga%c=%u pga%c=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@ak8974_detect._entry_ptr.56 = internal global ptr @ak8974_detect._entry.54, section ".printk_index", align 4
@ak8974_read_calib_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 480, ptr @.str.59, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"can't read calibration data (regs %u..%zu): %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ak8974_read_calib_data\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ak8974_read_calib_data._entry_ptr = internal global ptr @ak8974_read_calib_data._entry, section ".printk_index", align 4
@ak8974_selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 436, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"selftest not idle before test\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ak8974_selftest\00", [16 x i8] zeroinitializer }, align 32
@ak8974_selftest._entry_ptr = internal global ptr @ak8974_selftest._entry, section ".printk_index", align 4
@ak8974_selftest._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.5, i32 446, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not write CTRL3\0A\00", [41 x i8] zeroinitializer }, align 32
@ak8974_selftest._entry_ptr.64 = internal global ptr @ak8974_selftest._entry.62, section ".printk_index", align 4
@ak8974_selftest._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.5, i32 456, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"selftest result NOT OK (%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@ak8974_selftest._entry_ptr.67 = internal global ptr @ak8974_selftest._entry.65, section ".printk_index", align 4
@ak8974_selftest._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.5, i32 464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"selftest not idle after test (%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@ak8974_selftest._entry_ptr.70 = internal global ptr @ak8974_selftest._entry.68, section ".printk_index", align 4
@ak8974_selftest.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.5, ptr @.str.71, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"passed self-test\0A\00", [46 x i8] zeroinitializer }, align 32
@ak8974_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.72, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @ak8974_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@ak8974_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"faulty channel address\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ak8974_read_raw\00", [16 x i8] zeroinitializer }, align 32
@ak8974_read_raw._entry_ptr = internal global ptr @ak8974_read_raw._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ak8974_getresult._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.5, i32 382, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"range overflow in sensor\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ak8974_getresult\00", [47 x i8] zeroinitializer }, align 32
@ak8974_getresult._entry_ptr = internal global ptr @ak8974_getresult._entry, section ".printk_index", align 4
@ak8974_await_drdy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for DRDY IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ak8974_await_drdy\00", [46 x i8] zeroinitializer }, align 32
@ak8974_await_drdy._entry_ptr = internal global ptr @ak8974_await_drdy._entry, section ".printk_index", align 4
@ak8974_await_drdy._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.5, i32 363, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"timeout waiting for DRDY\0A\00", [38 x i8] zeroinitializer }, align 32
@ak8974_await_drdy._entry_ptr.82 = internal global ptr @ak8974_await_drdy._entry.80, section ".printk_index", align 4
@ak8974_fill_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 673, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error triggering measure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ak8974_fill_buffer\00", [45 x i8] zeroinitializer }, align 32
@ak8974_fill_buffer._entry_ptr = internal global ptr @ak8974_fill_buffer._entry, section ".printk_index", align 4
@ak8974_fill_buffer._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.5, i32 678, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error getting measures\0A\00", [40 x i8] zeroinitializer }, align 32
@ak8974_fill_buffer._entry_ptr.87 = internal global ptr @ak8974_fill_buffer._entry.85, section ".printk_index", align 4
@ak8974_drdy_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error reading DRDY status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ak8974_drdy_irq_thread\00", [41 x i8] zeroinitializer }, align 32
@ak8974_drdy_irq_thread._entry_ptr = internal global ptr @ak8974_drdy_irq_thread._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 70, i64 71, i64 72, i64 73]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [24 x i64] [i64 22, i64 32, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 48, i64 49, i64 92, i64 93, i64 108, i64 109, i64 114, i64 115, i64 120, i64 121]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 70, i64 71, i64 73]
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"ak8974_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1050, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1052, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"ak8974_of_match\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1043, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"ak8974_dev_pm_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1027, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"ak8974_id\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1034, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 834, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"ak8974_reg_avdd\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 204, i32 19 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"ak8974_reg_dvdd\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 205, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 847, i32 40 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 851, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"ak8974_regmap_config\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 809, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 860, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 862, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 870, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 876, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 882, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 886, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [24 x i8] c"ak8974_12_bits_channels\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 739, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [24 x i8] c"ak8974_15_bits_channels\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 750, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"ak8974_info\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 759, i32 30 }
@___asan_gen_.190 = private unnamed_addr constant [18 x i8] c"ak8974_scan_masks\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 757, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 914, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 922, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 925, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 940, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 950, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 498, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 502, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 513, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 519, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 522, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 523, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 526, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 554, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 478, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 436, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 446, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 456, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 464, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 467, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"ak8974_ext_info\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 711, i32 44 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 712, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 609, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 87, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 381, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 346, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 363, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 673, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 678, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [37 x i8] c"../drivers/iio/magnetometer/ak8974.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 413, i32 3 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ak8974_driver_exit, ptr @__initcall__kmod_ak8974__290_1060_ak8974_driver_init6, ptr @ak8974_await_drdy._entry, ptr @ak8974_await_drdy._entry.80, ptr @ak8974_await_drdy._entry_ptr, ptr @ak8974_await_drdy._entry_ptr.82, ptr @ak8974_detect._entry, ptr @ak8974_detect._entry.44, ptr @ak8974_detect._entry.48, ptr @ak8974_detect._entry.51, ptr @ak8974_detect._entry.54, ptr @ak8974_detect._entry_ptr, ptr @ak8974_detect._entry_ptr.46, ptr @ak8974_detect._entry_ptr.50, ptr @ak8974_detect._entry_ptr.53, ptr @ak8974_detect._entry_ptr.56, ptr @ak8974_drdy_irq_thread._entry, ptr @ak8974_drdy_irq_thread._entry_ptr, ptr @ak8974_driver_exit, ptr @ak8974_fill_buffer._entry, ptr @ak8974_fill_buffer._entry.85, ptr @ak8974_fill_buffer._entry_ptr, ptr @ak8974_fill_buffer._entry_ptr.87, ptr @ak8974_getresult._entry, ptr @ak8974_getresult._entry_ptr, ptr @ak8974_probe._entry, ptr @ak8974_probe._entry.12, ptr @ak8974_probe._entry.15, ptr @ak8974_probe._entry.18, ptr @ak8974_probe._entry.21, ptr @ak8974_probe._entry.24, ptr @ak8974_probe._entry.27, ptr @ak8974_probe._entry.31, ptr @ak8974_probe._entry.34, ptr @ak8974_probe._entry.37, ptr @ak8974_probe._entry.9, ptr @ak8974_probe._entry_ptr, ptr @ak8974_probe._entry_ptr.11, ptr @ak8974_probe._entry_ptr.14, ptr @ak8974_probe._entry_ptr.17, ptr @ak8974_probe._entry_ptr.20, ptr @ak8974_probe._entry_ptr.23, ptr @ak8974_probe._entry_ptr.26, ptr @ak8974_probe._entry_ptr.30, ptr @ak8974_probe._entry_ptr.33, ptr @ak8974_probe._entry_ptr.36, ptr @ak8974_probe._entry_ptr.39, ptr @ak8974_read_calib_data._entry, ptr @ak8974_read_calib_data._entry_ptr, ptr @ak8974_read_raw._entry, ptr @ak8974_read_raw._entry_ptr, ptr @ak8974_selftest._entry, ptr @ak8974_selftest._entry.62, ptr @ak8974_selftest._entry.65, ptr @ak8974_selftest._entry.68, ptr @ak8974_selftest._entry_ptr, ptr @ak8974_selftest._entry_ptr.64, ptr @ak8974_selftest._entry_ptr.67, ptr @ak8974_selftest._entry_ptr.70, ptr @ak8974_driver, ptr @.str, ptr @ak8974_of_match, ptr @ak8974_dev_pm_ops, ptr @ak8974_id, ptr @ak8974_probe.__key, ptr @.str.1, ptr @ak8974_reg_avdd, ptr @ak8974_reg_dvdd, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ak8974_probe._key, ptr @ak8974_regmap_config, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @ak8974_12_bits_channels, ptr @ak8974_15_bits_channels, ptr @ak8974_info, ptr @ak8974_scan_masks, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @ak8974_ext_info, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @init_completion.__key, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_reg_avdd to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_reg_dvdd to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_12_bits_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_15_bits_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_detect._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_detect._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_detect._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_detect._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_read_calib_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_selftest._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_selftest._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_selftest._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_getresult._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_await_drdy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_await_drdy._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_fill_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_fill_buffer._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8974_drdy_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ak8974_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ak8974_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @ak8974_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %bulk.i.i = alloca i16, align 2
  %whoami.i = alloca i32, align 4
  %fw.i = alloca i32, align 4
  %sn.i = alloca i16, align 2
  %fab_data1.i = alloca [9 x i16], align 2
  %fab_data2.i = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 248) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i2c, ptr %3, align 8
  %lock = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ak8974_probe.__key) #11
  %orientation = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 1
  %call5 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %regs = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ak8974_reg_avdd, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.ak8974, ptr %3, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ak8974_reg_dvdd, ptr %arrayidx9, align 4
  %call13 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call13, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call21 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !199
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %call33 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @ak8974_regmap_config, ptr noundef nonnull @ak8974_probe._key, ptr noundef nonnull @.str.8) #11
  %map = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call33, ptr %map, align 8
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end39, label %if.end45

do.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end28
  %call.i232 = tail call i32 @regmap_write(ptr noundef %call33, i32 noundef 27, i32 noundef 130) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i232)
  %cmp.i233 = icmp sgt i32 %call.i232, -1
  br i1 %cmp.i233, label %ak8974_set_power.exit.thread, label %do.end51

ak8974_set_power.exit.thread:                     ; preds = %if.end45
  tail call void @msleep(i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %whoami.i) #11
  %13 = ptrtoint ptr %whoami.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %whoami.i, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #11
  %14 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %fw.i, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sn.i) #11
  %15 = ptrtoint ptr %sn.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %sn.i, align 2, !annotation !200
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %call.i235 = call i32 @regmap_read(ptr noundef %17, i32 noundef 15, ptr noundef nonnull %whoami.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool.not.i = icmp eq i32 %call.i235, 0
  br i1 %tobool.not.i, label %if.end.i, label %ak8974_set_power.exit.thread.do.end59_crit_edge

ak8974_set_power.exit.thread.do.end59_crit_edge:  ; preds = %ak8974_set_power.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #14
  br label %disable_pm

if.end.i:                                         ; preds = %ak8974_set_power.exit.thread
  %18 = ptrtoint ptr %whoami.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %whoami.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.end25.i [
    i32 70, label %sw.bb.i
    i32 71, label %if.end.i.sw.bb1.i_crit_edge
    i32 72, label %sw.bb11.i
    i32 73, label %sw.bb17.i
  ]

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %if.end.i.sw.bb1.i_crit_edge
  %name.0.i = phi ptr [ @.str.40, %if.end.i.sw.bb1.i_crit_edge ], [ @.str.41, %sw.bb.i ]
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 8
  %call3.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 232, ptr noundef nonnull %fw.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %sw.bb1.i.do.end59_crit_edge

sw.bb1.i.do.end59_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

if.end6.i:                                        ; preds = %sw.bb1.i
  %23 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw.i, align 4
  %and.i = and i32 %24, 127
  store i32 %and.i, ptr %fw.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bulk.i.i) #11
  %25 = ptrtoint ptr %bulk.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %bulk.i.i, align 2, !annotation !200
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 8
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef 234, ptr noundef nonnull %bulk.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.i, label %ak8974_get_u16_val.exit.i

ak8974_get_u16_val.exit.i:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bulk.i.i) #11
  br label %do.end59

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %bulk.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bulk.i.i, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #11
  %31 = ptrtoint ptr %sn.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sn.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bulk.i.i) #11
  call void @add_device_randomness(ptr noundef nonnull %sn.i, i32 noundef 2) #11
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw.i, align 4
  %36 = ptrtoint ptr %sn.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sn.i, align 2
  %conv.i = zext i16 %37 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %name.0.i, i32 noundef %35, i32 noundef %conv.i) #14
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i, ptr noundef nonnull @.str.45) #14
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 8
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i, ptr noundef nonnull @.str.49) #14
  br label %sw.epilog.i

do.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %dev27.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.52, i32 noundef %19) #14
  br label %do.end59

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb11.i, %if.end10.i
  %name.1.i = phi ptr [ @.str.47, %sw.bb17.i ], [ @.str, %sw.bb11.i ], [ %name.0.i, %if.end10.i ]
  %name28.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %name28.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %name.1.i, ptr %name28.i, align 4
  %45 = ptrtoint ptr %whoami.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %whoami.i, align 4
  %conv29.i = trunc i32 %46 to i8
  %variant.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 5
  %47 = ptrtoint ptr %variant.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv29.i, ptr %variant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %46)
  %cmp.i236 = icmp eq i32 %46, 70
  br i1 %cmp.i236, label %if.then31.i, label %sw.epilog.i.if.end61_crit_edge

sw.epilog.i.if.end61_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then31.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %fab_data1.i) #11
  %48 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 1
  %49 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 2
  %50 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 3
  %51 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 4
  %52 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 5
  %53 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 6
  %54 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 7
  %55 = getelementptr inbounds [9 x i16], ptr %fab_data1.i, i32 0, i32 8
  %56 = call ptr @memset(ptr %fab_data1.i, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %fab_data2.i) #11
  %57 = ptrtoint ptr %fab_data2.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %fab_data2.i, align 2, !annotation !200
  %58 = getelementptr inbounds [3 x i16], ptr %fab_data2.i, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %58, align 2, !annotation !200
  %60 = getelementptr inbounds [3 x i16], ptr %fab_data2.i, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %60, align 2, !annotation !200
  call fastcc void @ak8974_read_calib_data(ptr noundef %3, i32 noundef 144, ptr noundef nonnull %fab_data1.i, i32 noundef 18) #11
  call fastcc void @ak8974_read_calib_data(ptr noundef %3, i32 noundef 248, ptr noundef nonnull %fab_data2.i, i32 noundef 6) #11
  %62 = ptrtoint ptr %fab_data2.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fab_data2.i, align 2
  %64 = lshr i16 %63, 8
  %65 = and i16 %64, 127
  %and36.i = zext i16 %65 to i32
  %66 = ptrtoint ptr %fab_data1.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %fab_data1.i, align 2
  %68 = call i16 @llvm.bswap.i16(i16 %67) #11
  %conv38.i = zext i16 %68 to i32
  %69 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %50, align 2
  %71 = call i16 @llvm.bswap.i16(i16 %70) #11
  %conv40.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %53, align 2
  %74 = call i16 @llvm.bswap.i16(i16 %73) #11
  %conv43.i = zext i16 %74 to i32
  %shr.i = lshr i32 %conv43.i, 8
  %and44.i = and i32 %conv43.i, 255
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 8
  %dev49.i = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49.i, ptr noundef nonnull @.str.55, i32 noundef 88, i32 noundef %and36.i, i32 noundef %conv40.i, i32 noundef %conv38.i, i32 noundef 90, i32 noundef %and44.i, i32 noundef 89, i32 noundef %shr.i) #14
  %77 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %58, align 2
  %79 = lshr i16 %78, 8
  %80 = and i16 %79, 127
  %and36.1.i = zext i16 %80 to i32
  %81 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %48, align 2
  %83 = call i16 @llvm.bswap.i16(i16 %82) #11
  %conv38.1.i = zext i16 %83 to i32
  %84 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %51, align 2
  %86 = call i16 @llvm.bswap.i16(i16 %85) #11
  %conv40.1.i = zext i16 %86 to i32
  %87 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %54, align 2
  %89 = call i16 @llvm.bswap.i16(i16 %88) #11
  %conv43.1.i = zext i16 %89 to i32
  %shr.1.i = lshr i32 %conv43.1.i, 8
  %and44.1.i = and i32 %conv43.1.i, 255
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 8
  %dev49.1.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49.1.i, ptr noundef nonnull @.str.55, i32 noundef 89, i32 noundef %and36.1.i, i32 noundef %conv40.1.i, i32 noundef %conv38.1.i, i32 noundef 90, i32 noundef %and44.1.i, i32 noundef 88, i32 noundef %shr.1.i) #14
  %92 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %60, align 2
  %94 = lshr i16 %93, 8
  %95 = and i16 %94, 127
  %and36.2.i = zext i16 %95 to i32
  %96 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %49, align 2
  %98 = call i16 @llvm.bswap.i16(i16 %97) #11
  %conv38.2.i = zext i16 %98 to i32
  %99 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %52, align 2
  %101 = call i16 @llvm.bswap.i16(i16 %100) #11
  %conv40.2.i = zext i16 %101 to i32
  %102 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %55, align 2
  %104 = call i16 @llvm.bswap.i16(i16 %103) #11
  %conv43.2.i = zext i16 %104 to i32
  %shr.2.i = lshr i32 %conv43.2.i, 8
  %and44.2.i = and i32 %conv43.2.i, 255
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %3, align 8
  %dev49.2.i = getelementptr inbounds %struct.i2c_client, ptr %106, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49.2.i, ptr noundef nonnull @.str.55, i32 noundef 90, i32 noundef %and36.2.i, i32 noundef %conv40.2.i, i32 noundef %conv38.2.i, i32 noundef 89, i32 noundef %and44.2.i, i32 noundef 88, i32 noundef %shr.2.i) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %fab_data2.i) #11
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %fab_data1.i) #11
  br label %if.end61

do.end59:                                         ; preds = %do.end25.i, %ak8974_get_u16_val.exit.i, %sw.bb1.i.do.end59_crit_edge, %ak8974_set_power.exit.thread.do.end59_crit_edge
  %retval.0.i237.ph = phi i32 [ %call.i.i, %ak8974_get_u16_val.exit.i ], [ %call3.i, %sw.bb1.i.do.end59_crit_edge ], [ %call.i235, %ak8974_set_power.exit.thread.do.end59_crit_edge ], [ -19, %do.end25.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sn.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %whoami.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  br label %disable_pm

if.end61:                                         ; preds = %if.then31.i, %sw.epilog.i.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sn.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %whoami.i) #11
  %call62 = call fastcc i32 @ak8974_selftest(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.if.end69_crit_edge, label %do.end67

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %if.end61.if.end69_crit_edge
  %107 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %map, align 8
  %call.i.i238 = call i32 @regmap_write(ptr noundef %108, i32 noundef 27, i32 noundef 130) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i238)
  %cmp.i.i = icmp sgt i32 %call.i.i238, -1
  br i1 %cmp.i.i, label %ak8974_set_power.exit.thread.i, label %if.end69.do.end75_crit_edge

if.end69.do.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

ak8974_set_power.exit.thread.i:                   ; preds = %if.end69
  call void @msleep(i32 noundef 1) #11
  %109 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %map, align 8
  %call1.i = call i32 @regmap_write(ptr noundef %110, i32 noundef 28, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %ak8974_set_power.exit.thread.i.do.end75_crit_edge

ak8974_set_power.exit.thread.i.do.end75_crit_edge: ; preds = %ak8974_set_power.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

if.end4.i:                                        ; preds = %ak8974_set_power.exit.thread.i
  %111 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %map, align 8
  %call6.i = call i32 @regmap_write(ptr noundef %112, i32 noundef 29, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.do.end75_crit_edge

if.end4.i.do.end75_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

if.end9.i:                                        ; preds = %if.end4.i
  %113 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %variant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %114)
  %cmp.not.i = icmp eq i8 %114, 73
  %115 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map, align 8
  br i1 %cmp.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  %call13.i = call i32 @regmap_write(ptr noundef %116, i32 noundef 30, i32 noundef 232) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then11.i.ak8974_reset.exit_crit_edge, label %if.then11.i.do.end75_crit_edge

if.then11.i.do.end75_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

if.then11.i.ak8974_reset.exit_crit_edge:          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ak8974_reset.exit

if.else.i:                                        ; preds = %if.end9.i
  %call18.i = call i32 @regmap_write(ptr noundef %116, i32 noundef 30, i32 noundef 144) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.else.i.ak8974_reset.exit_crit_edge, label %if.else.i.do.end75_crit_edge

if.else.i.do.end75_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

if.else.i.ak8974_reset.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ak8974_reset.exit

ak8974_reset.exit:                                ; preds = %if.else.i.ak8974_reset.exit_crit_edge, %if.then11.i.ak8974_reset.exit_crit_edge
  %117 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %map, align 8
  %call.i40.i = call i32 @regmap_write(ptr noundef %118, i32 noundef 27, i32 noundef 2) #11
  %119 = call i32 @llvm.smin.i32(i32 %call.i40.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i40.i)
  %tobool71.not = icmp sgt i32 %call.i40.i, -1
  br i1 %tobool71.not, label %if.end77, label %ak8974_reset.exit.do.end75_crit_edge

ak8974_reset.exit.do.end75_crit_edge:             ; preds = %ak8974_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

do.end75:                                         ; preds = %ak8974_reset.exit.do.end75_crit_edge, %if.else.i.do.end75_crit_edge, %if.then11.i.do.end75_crit_edge, %if.end4.i.do.end75_crit_edge, %ak8974_set_power.exit.thread.i.do.end75_crit_edge, %if.end69.do.end75_crit_edge
  %retval.0.i240256 = phi i32 [ %119, %ak8974_reset.exit.do.end75_crit_edge ], [ %call.i.i238, %if.end69.do.end75_crit_edge ], [ %call18.i, %if.else.i.do.end75_crit_edge ], [ %call13.i, %if.then11.i.do.end75_crit_edge ], [ %call6.i, %if.end4.i.do.end75_crit_edge ], [ %call1.i, %ak8974_set_power.exit.thread.i.do.end75_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #14
  br label %disable_pm

if.end77:                                         ; preds = %ak8974_reset.exit
  %120 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %variant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %121)
  %cond = icmp eq i8 %121, 73
  %spec.select = select i1 %cond, ptr @ak8974_15_bits_channels, ptr @ak8974_12_bits_channels
  %channels81 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %122 = ptrtoint ptr %channels81 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %spec.select, ptr %channels81, align 8
  %num_channels82 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %123 = ptrtoint ptr %num_channels82 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4, ptr %num_channels82, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %124 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @ak8974_info, ptr %info, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %125 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @ak8974_scan_masks, ptr %available_scan_masks, align 4
  %126 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %call, align 8
  %127 = ptrtoint ptr %name28.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name28.i, align 4
  %name83 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %129 = ptrtoint ptr %name83 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %name83, align 8
  %call84 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ak8974_handle_trigger, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #14
  br label %disable_pm

if.end91:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp92 = icmp sgt i32 %1, 0
  br i1 %cmp92, label %if.then94, label %if.end91.no_irq_crit_edge

if.end91.no_irq_crit_edge:                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_irq

if.then94:                                        ; preds = %if.end91
  %call95 = call ptr @irq_get_irq_data(i32 noundef %1) #11
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call95, i32 0, i32 3
  %130 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %common.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %and.i241 = and i32 %133, 15
  %134 = zext i32 %and.i241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %and.i241, label %if.then94.if.end113_crit_edge [
    i32 1, label %if.then94.if.end113.sink.split_crit_edge
    i32 2, label %if.then106
  ]

if.then94.if.end113.sink.split_crit_edge:         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.sink.split

if.then94.if.end113_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then106:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  %drdy_active_low = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 9
  %135 = ptrtoint ptr %drdy_active_low to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %drdy_active_low, align 4
  br label %if.end113.sink.split

if.end113.sink.split:                             ; preds = %if.then106, %if.then94.if.end113.sink.split_crit_edge
  %.str.32.sink = phi ptr [ @.str.32, %if.then106 ], [ @.str.28, %if.then94.if.end113.sink.split_crit_edge ]
  %irq_trig.0.ph = phi i32 [ 8322, %if.then106 ], [ 8321, %if.then94.if.end113.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.32.sink) #14
  br label %if.end113

if.end113:                                        ; preds = %if.end113.sink.split, %if.then94.if.end113_crit_edge
  %irq_trig.0 = phi i32 [ 8321, %if.then94.if.end113_crit_edge ], [ %irq_trig.0.ph, %if.end113.sink.split ]
  %136 = ptrtoint ptr %name28.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name28.i, align 4
  %call117 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull @ak8974_drdy_irq, ptr noundef nonnull @ak8974_drdy_irq_thread, i32 noundef %irq_trig.0, ptr noundef %137, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #14
  br label %no_irq

if.end124:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  %drdy_irq = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 7
  %138 = ptrtoint ptr %drdy_irq to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %drdy_irq, align 8
  br label %no_irq

no_irq:                                           ; preds = %if.end124, %do.end122, %if.end91.no_irq_crit_edge
  %call126 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end133, label %do.end131

do.end131:                                        ; preds = %no_irq
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #11
  br label %disable_pm

if.end133:                                        ; preds = %no_irq
  call void @__sanitizer_cov_trace_pc() #13
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 5000) #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i242 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #11
  br label %cleanup

disable_pm:                                       ; preds = %do.end131, %do.end89, %do.end75, %do.end59, %do.end51
  %ret.0 = phi i32 [ %call.i232, %do.end51 ], [ %retval.0.i237.ph, %do.end59 ], [ %retval.0.i240256, %do.end75 ], [ %call84, %do.end89 ], [ %call126, %do.end131 ]
  %call.i.i.i244 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %139 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !202
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %disable_pm.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

disable_pm.pm_runtime_put_noidle.exit_crit_edge:  ; preds = %disable_pm
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %disable_pm
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %disable_pm.pm_runtime_put_noidle.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %140 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map, align 8
  %call.i246 = call i32 @regmap_write(ptr noundef %141, i32 noundef 27, i32 noundef 2) #11
  %call143 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #11
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end133, %do.end39, %do.end26, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then15 ], [ %call21, %do.end26 ], [ %12, %do.end39 ], [ %ret.0, %pm_runtime_put_noidle.exit ], [ 0, %if.end133 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_remove(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #11
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !202
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %map.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 8
  %call.i13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 27, i32 noundef 2) #11
  %regs = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 3
  %call6 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #11, !srcloc !202
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ak8974_selftest(ptr nocapture noundef readonly %ak8974) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ak8974 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ak8974, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !200
  %map = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 8
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %6)
  %cmp.not = icmp eq i32 %6, 85
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 29, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @msleep(i32 noundef 1) #11
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 8
  %call13 = call i32 @regmap_read(ptr noundef %10, i32 noundef 12, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %12)
  %cmp17.not = icmp eq i32 %12, 170
  br i1 %cmp17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %12) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %call24 = call i32 @regmap_read(ptr noundef %14, i32 noundef 12, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %16)
  %cmp28.not = icmp eq i32 %16, 85
  br i1 %cmp28.not, label %do.body34, label %do.end32

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.69, i32 noundef %16) #14
  br label %cleanup

do.body34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ak8974_selftest.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ak8974_selftest, %if.then39)) #11
          to label %cleanup [label %if.then39], !srcloc !204

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ak8974_selftest.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.71) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body34, %do.end32, %if.end22.cleanup_crit_edge, %do.end21, %if.end11.cleanup_crit_edge, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call.i, %do.end10 ], [ -5, %do.end21 ], [ -5, %do.end32 ], [ %call, %entry.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %do.body34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_handle_trigger(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %5 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %lock.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %call2.i = tail call fastcc i32 @ak8974_trigmeas(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.83) #14
  br label %ak8974_fill_buffer.exit

if.end.i:                                         ; preds = %entry
  %scan.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 10
  %call5.i = tail call fastcc i32 @ak8974_getresult(ptr noundef %3, ptr noundef %scan.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end13.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.86) #14
  br label %ak8974_fill_buffer.exit

if.end13.i:                                       ; preds = %if.end.i
  %call15.i = tail call i64 @iio_get_time_ns(ptr noundef %1) #11
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scan_timestamp.i.i, align 8, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.end13.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge, label %if.then.i.i

if.end13.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iio_push_to_buffers_with_timestamp.exit.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_bytes.i.i, align 4
  %div1.i.i = lshr i32 %13, 3
  %sub.i.i = add nsw i32 %div1.i.i, -1
  %arrayidx.i.i = getelementptr i64, ptr %scan.i, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call15.i, ptr %arrayidx.i.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i

iio_push_to_buffers_with_timestamp.exit.i:        ; preds = %if.then.i.i, %if.end13.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge
  %call.i36.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan.i) #11
  br label %ak8974_fill_buffer.exit

ak8974_fill_buffer.exit:                          ; preds = %iio_push_to_buffers_with_timestamp.exit.i, %do.end10.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %call.i37.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i37.i, ptr %last_busy.i.i, align 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %call.i38.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev21.i, i32 noundef 13) #11
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %21) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ak8974_drdy_irq(i32 noundef %irq, ptr nocapture noundef readonly %d) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drdy_irq = getelementptr inbounds %struct.ak8974, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %drdy_irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drdy_irq, align 8, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_drdy_irq_thread(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !200
  %map = getelementptr inbounds %struct.ak8974, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 24, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %drdy_complete = getelementptr inbounds %struct.ak8974, ptr %d, i32 0, i32 8
  call void @complete(ptr noundef %drdy_complete) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ak8974_writeable_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %reg, label %sw.default [
    i32 27, label %entry.cleanup_crit_edge
    i32 28, label %entry.cleanup_crit_edge37
    i32 29, label %entry.cleanup_crit_edge38
    i32 30, label %entry.cleanup_crit_edge39
    i32 38, label %entry.cleanup_crit_edge40
    i32 39, label %entry.cleanup_crit_edge41
    i32 48, label %entry.sw.bb2_crit_edge
    i32 49, label %entry.sw.bb2_crit_edge42
    i32 32, label %entry.sw.bb4_crit_edge
    i32 33, label %entry.sw.bb4_crit_edge43
    i32 34, label %entry.sw.bb4_crit_edge44
    i32 35, label %entry.sw.bb4_crit_edge45
    i32 36, label %entry.sw.bb4_crit_edge46
    i32 37, label %entry.sw.bb4_crit_edge47
    i32 108, label %entry.sw.bb13_crit_edge
    i32 109, label %entry.sw.bb13_crit_edge48
    i32 114, label %entry.sw.bb13_crit_edge49
    i32 115, label %entry.sw.bb13_crit_edge50
    i32 120, label %entry.sw.bb13_crit_edge51
    i32 121, label %entry.sw.bb13_crit_edge52
    i32 92, label %entry.sw.bb24_crit_edge
    i32 93, label %entry.sw.bb24_crit_edge53
  ]

entry.sw.bb24_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

entry.sw.bb13_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb4_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb4_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb4_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb4_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb4_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb2_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.cleanup_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge42
  %variant = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %variant, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %6)
  %cmp = icmp ne i8 %6, 73
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge43, %entry.sw.bb4_crit_edge44, %entry.sw.bb4_crit_edge45, %entry.sw.bb4_crit_edge46, %entry.sw.bb4_crit_edge47
  %variant5 = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %variant5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %variant5, align 8
  %9 = and i8 %8, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %9)
  %10 = icmp eq i8 %9, 72
  br label %cleanup

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge48, %entry.sw.bb13_crit_edge49, %entry.sw.bb13_crit_edge50, %entry.sw.bb13_crit_edge51, %entry.sw.bb13_crit_edge52
  %variant14 = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %variant14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %variant14, align 8
  %13 = and i8 %12, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %13)
  %14 = icmp eq i8 %13, 70
  br label %cleanup

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge53
  %variant25 = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %variant25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %variant25, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %16)
  %cmp27 = icmp eq i8 %16, 70
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb24, %sw.bb13, %sw.bb4, %sw.bb2, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge37, %entry.cleanup_crit_edge38, %entry.cleanup_crit_edge39, %entry.cleanup_crit_edge40, %entry.cleanup_crit_edge41
  %retval.0 = phi i1 [ false, %sw.default ], [ %cmp27, %sw.bb24 ], [ %14, %sw.bb13 ], [ %10, %sw.bb4 ], [ %cmp, %sw.bb2 ], [ true, %entry.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge37 ], [ true, %entry.cleanup_crit_edge38 ], [ true, %entry.cleanup_crit_edge39 ], [ true, %entry.cleanup_crit_edge40 ], [ true, %entry.cleanup_crit_edge41 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ak8974_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %reg)
  %cmp = icmp eq i32 %reg, 26
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ak8974_read_calib_data(ptr nocapture noundef readonly %ak8974, i32 noundef %reg, ptr noundef %tab, i32 noundef %tab_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 2
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef %reg, ptr noundef %tab, i32 noundef %tab_size) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = call ptr @memset(ptr %tab, i32 255, i32 %tab_size)
  %3 = ptrtoint ptr %ak8974 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ak8974, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %add = add i32 %reg, -1
  %sub = add i32 %add, %tab_size
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %reg, i32 noundef %sub, i32 noundef %call) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @add_device_randomness(ptr noundef %tab, i32 noundef %tab_size) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ak8974_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.ak8974, ptr %1, i32 0, i32 1
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %hw_values.i = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ugt i32 %4, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %hw_values.i) #11
  %7 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %hw_values.i, align 2, !annotation !200
  %8 = getelementptr inbounds [3 x i16], ptr %hw_values.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %8, align 2, !annotation !200
  %10 = getelementptr inbounds [3 x i16], ptr %hw_values.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %10, align 2, !annotation !200
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %lock.i = getelementptr inbounds %struct.ak8974, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %call1.i = tail call fastcc i32 @ak8974_trigmeas(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ak8974_measure_channel.exit_crit_edge

if.end.ak8974_measure_channel.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ak8974_measure_channel.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = call fastcc i32 @ak8974_getresult(ptr noundef %1, ptr noundef nonnull %hw_values.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.ak8974_measure_channel.exit_crit_edge

if.end.i.ak8974_measure_channel.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ak8974_measure_channel.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [3 x i16], ptr %hw_values.i, i32 0, i32 %4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15) #11
  %conv.i = sext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %val, align 4
  br label %ak8974_measure_channel.exit

ak8974_measure_channel.exit:                      ; preds = %if.end5.i, %if.end.i.ak8974_measure_channel.exit_crit_edge, %if.end.ak8974_measure_channel.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.end.ak8974_measure_channel.exit_crit_edge ], [ %call2.i, %if.end.i.ak8974_measure_channel.exit_crit_edge ], [ 0, %if.end5.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i20.i = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i20.i, ptr %last_busy.i.i, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %call.i21.i = call i32 @__pm_runtime_suspend(ptr noundef %dev10.i, i32 noundef 13) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hw_values.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %ret.0.i
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %variant = getelementptr inbounds %struct.ak8974, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %variant to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %variant, align 8
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %24, label %sw.default [
    i8 70, label %sw.bb5.sw.bb6_crit_edge
    i8 71, label %sw.bb5.sw.bb6_crit_edge19
    i8 73, label %sw.bb7
  ]

sw.bb5.sw.bb6_crit_edge19:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

sw.bb5.sw.bb6_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb5.sw.bb6_crit_edge, %sw.bb5.sw.bb6_crit_edge19
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 12, ptr %val, align 4
  %27 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 11, ptr %val2, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 24, ptr %val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 14, ptr %val2, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12, ptr %val, align 4
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 11, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %sw.bb6, %ak8974_measure_channel.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.default ], [ 11, %sw.bb7 ], [ 11, %sw.bb6 ], [ -5, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %ak8974_measure_channel.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ak8974_trigmeas(ptr noundef %ak8974) unnamed_addr #2 align 64 {
entry:
  %clear = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clear) #11
  %0 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clear, align 4, !annotation !200
  %map = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 2
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 26, ptr noundef nonnull %clear) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %drdy_irq = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 7
  %3 = ptrtoint ptr %drdy_irq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %drdy_irq, align 8, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.if.end14_crit_edge, label %if.then2

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then2:                                         ; preds = %if.end
  %drdy_active_low = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 9
  %5 = ptrtoint ptr %drdy_active_low to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %drdy_active_low, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool3.not, i32 12, i32 8
  %drdy_complete = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 8
  %7 = ptrtoint ptr %drdy_complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %drdy_complete, align 4
  %wait.i = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @init_completion.__key) #11
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 28, i32 noundef 28, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.then2.if.end14_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %if.then2.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 8
  %call.i29 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 29, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i29, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clear) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ak8974_getresult(ptr noundef %ak8974, ptr noundef %result) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #11
  %0 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %src, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !200
  %drdy_irq.i = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 7
  %2 = ptrtoint ptr %drdy_irq.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drdy_irq.i, align 8, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body5.preheader.i, label %if.then.i

do.body5.preheader.i:                             ; preds = %entry
  %map.i = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 2
  tail call void @msleep(i32 noundef 3) #11
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %call6.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 24, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.body5.preheader.i.ak8974_await_drdy.exit.thread_crit_edge, label %if.end8.i

do.body5.preheader.i.ak8974_await_drdy.exit.thread_crit_edge: ; preds = %do.body5.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ak8974_await_drdy.exit.thread

if.then.i:                                        ; preds = %entry
  %drdy_complete.i = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 8
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %drdy_complete.i, i32 noundef 101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %ak8974 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ak8974, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.78) #14
  br label %ak8974_await_drdy.exit.thread

if.end8.i:                                        ; preds = %do.body5.preheader.i
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %and.i = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.cond12.i, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.cond12.i:                                      ; preds = %if.end8.i
  call void @msleep(i32 noundef 3) #11
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %call6.1.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 24, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %cmp.1.i = icmp slt i32 %call6.1.i, 0
  br i1 %cmp.1.i, label %do.cond12.i.ak8974_await_drdy.exit.thread_crit_edge, label %if.end8.1.i

do.cond12.i.ak8974_await_drdy.exit.thread_crit_edge: ; preds = %do.cond12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ak8974_await_drdy.exit.thread

if.end8.1.i:                                      ; preds = %do.cond12.i
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %and.1.i = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool9.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool9.not.1.i, label %do.cond12.1.i, label %if.end8.1.i.if.end_crit_edge

if.end8.1.i.if.end_crit_edge:                     ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.cond12.1.i:                                    ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ak8974 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ak8974, align 8
  %dev19.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.81) #14
  br label %ak8974_await_drdy.exit.thread

ak8974_await_drdy.exit.thread:                    ; preds = %do.cond12.1.i, %do.cond12.i.ak8974_await_drdy.exit.thread_crit_edge, %do.end.i, %do.body5.preheader.i.ak8974_await_drdy.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.1.i, %do.cond12.i.ak8974_await_drdy.exit.thread_crit_edge ], [ %call6.i, %do.body5.preheader.i.ak8974_await_drdy.exit.thread_crit_edge ], [ -110, %do.cond12.1.i ], [ -110, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end8.1.i.if.end_crit_edge, %if.end8.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %map = getelementptr inbounds %struct.ak8974, ptr %ak8974, i32 0, i32 2
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %call1 = call i32 @regmap_read(ptr noundef %17, i32 noundef 22, ptr noundef nonnull %src) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %ak8974 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ak8974, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 8
  %call8 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 16, ptr noundef %result, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %if.end.cleanup_crit_edge, %ak8974_await_drdy.exit.thread
  %retval.0 = phi i32 [ -34, %do.end ], [ %call1, %if.end.cleanup_crit_edge ], [ %call8, %if.end6 ], [ %retval.0.i.ph, %ak8974_await_drdy.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %map.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 27, i32 noundef 2) #11
  %regs = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8974_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %bulk.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 50) #11
  %map.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 27, i32 noundef 130) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %ak8974_set_power.exit.thread, label %if.end.out_regulator_disable_crit_edge

if.end.out_regulator_disable_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_regulator_disable

ak8974_set_power.exit.thread:                     ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #11
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %call.i25 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 28, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i, label %if.end.i, label %ak8974_set_power.exit.thread.out_disable_power_crit_edge

ak8974_set_power.exit.thread.out_disable_power_crit_edge: ; preds = %ak8974_set_power.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_power

if.end.i:                                         ; preds = %ak8974_set_power.exit.thread
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 29, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.out_disable_power_crit_edge

if.end.i.out_disable_power_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_power

if.end5.i:                                        ; preds = %if.end.i
  %variant.i = getelementptr inbounds %struct.ak8974, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %variant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %11)
  %cmp.i26 = icmp eq i8 %11, 70
  br i1 %cmp.i26, label %if.then7.i, label %if.end5.i.if.end12.i_crit_edge

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bulk.i.i) #11
  %12 = ptrtoint ptr %bulk.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 32416, ptr %bulk.i.i, align 2
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 8
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef 92, ptr noundef nonnull %bulk.i.i, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bulk.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %if.end12thread-pre-split.i, label %if.then7.i.out_disable_power_crit_edge

if.then7.i.out_disable_power_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_power

if.end12thread-pre-split.i:                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr.i = load i8, ptr %variant.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12thread-pre-split.i, %if.end5.i.if.end12.i_crit_edge
  %16 = phi i8 [ %.pr.i, %if.end12thread-pre-split.i ], [ %11, %if.end5.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %16)
  %cmp15.i = icmp eq i8 %16, 73
  br i1 %cmp15.i, label %if.end12.i.cleanup_crit_edge, label %if.end18.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18.i:                                       ; preds = %if.end12.i
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 8
  %call20.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 30, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %ak8974_configure.exit, label %if.end18.i.out_disable_power_crit_edge

if.end18.i.out_disable_power_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_power

ak8974_configure.exit:                            ; preds = %if.end18.i
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 8
  %call25.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 48, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool8.not = icmp eq i32 %call25.i, 0
  br i1 %tobool8.not, label %ak8974_configure.exit.cleanup_crit_edge, label %ak8974_configure.exit.out_disable_power_crit_edge

ak8974_configure.exit.out_disable_power_crit_edge: ; preds = %ak8974_configure.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_power

ak8974_configure.exit.cleanup_crit_edge:          ; preds = %ak8974_configure.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_disable_power:                                ; preds = %ak8974_configure.exit.out_disable_power_crit_edge, %if.end18.i.out_disable_power_crit_edge, %if.then7.i.out_disable_power_crit_edge, %if.end.i.out_disable_power_crit_edge, %ak8974_set_power.exit.thread.out_disable_power_crit_edge
  %retval.0.i2736 = phi i32 [ %call25.i, %ak8974_configure.exit.out_disable_power_crit_edge ], [ %call20.i, %if.end18.i.out_disable_power_crit_edge ], [ %call.i.i, %if.then7.i.out_disable_power_crit_edge ], [ %call2.i, %if.end.i.out_disable_power_crit_edge ], [ %call.i25, %ak8974_set_power.exit.thread.out_disable_power_crit_edge ]
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 8
  %call.i29 = call i32 @regmap_write(ptr noundef %22, i32 noundef 27, i32 noundef 2) #11
  br label %out_regulator_disable

out_regulator_disable:                            ; preds = %out_disable_power, %if.end.out_regulator_disable_crit_edge
  %ret.0 = phi i32 [ %retval.0.i2736, %out_disable_power ], [ %call.i, %if.end.out_regulator_disable_crit_edge ]
  %call14 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #11
  br label %cleanup

cleanup:                                          ; preds = %out_regulator_disable, %ak8974_configure.exit.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_regulator_disable ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %ak8974_configure.exit.cleanup_crit_edge ], [ 0, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__initcall__kmod_ak8974__290_1060_ak8974_driver_init6, !1, !"__initcall__kmod_ak8974__290_1060_ak8974_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1060, i32 1}
!2 = !{ptr @__exitcall_ak8974_driver_exit, !1, !"__exitcall_ak8974_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1062, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1063, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1064, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1065, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1052, i32 11}
!14 = !{ptr @ak8974_driver, !15, !"ak8974_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1050, i32 26}
!16 = !{ptr @ak8974_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 834, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 847, i32 40}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 851, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ak8974_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ak8974_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ak8974_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 860, i32 16}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 862, i32 3}
!34 = !{ptr @ak8974_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ak8974_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 870, i32 3}
!38 = !{ptr @ak8974_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ak8974_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 876, i32 3}
!42 = !{ptr @ak8974_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ak8974_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 882, i32 3}
!46 = !{ptr @ak8974_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ak8974_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 886, i32 3}
!50 = !{ptr @ak8974_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ak8974_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 914, i32 3}
!54 = !{ptr @ak8974_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ak8974_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 922, i32 4}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ak8974_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ak8974_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 925, i32 4}
!63 = !{ptr @ak8974_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ak8974_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 940, i32 4}
!67 = !{ptr @ak8974_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ak8974_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 950, i32 3}
!71 = !{ptr @ak8974_probe._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ak8974_probe._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ak8974_reg_avdd, !74, !"ak8974_reg_avdd", i1 false, i1 false}
!74 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 204, i32 19}
!75 = !{ptr @ak8974_reg_dvdd, !76, !"ak8974_reg_dvdd", i1 false, i1 false}
!76 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 205, i32 19}
!77 = !{ptr @ak8974_regmap_config, !78, !"ak8974_regmap_config", i1 false, i1 false}
!78 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 809, i32 35}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 498, i32 9}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 502, i32 10}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 513, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ak8974_detect._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ak8974_detect._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 519, i32 3}
!90 = !{ptr @ak8974_detect._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ak8974_detect._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 522, i32 10}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 523, i32 3}
!96 = !{ptr @ak8974_detect._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ak8974_detect._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 526, i32 3}
!100 = !{ptr @ak8974_detect._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ak8974_detect._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"axis", i1 false, i1 false}
!103 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 544, i32 22}
!104 = distinct !{null, !105, !"pgaxis", i1 false, i1 false}
!105 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 545, i32 22}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 554, i32 4}
!108 = !{ptr @ak8974_detect._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ak8974_detect._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 478, i32 3}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ak8974_read_calib_data._entry, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @ak8974_read_calib_data._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 436, i32 3}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ak8974_selftest._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ak8974_selftest._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 446, i32 3}
!123 = !{ptr @ak8974_selftest._entry.62, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ak8974_selftest._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 456, i32 3}
!127 = !{ptr @ak8974_selftest._entry.65, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ak8974_selftest._entry_ptr.67, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 464, i32 3}
!131 = !{ptr @ak8974_selftest._entry.68, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ak8974_selftest._entry_ptr.70, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 467, i32 2}
!135 = !{ptr @ak8974_selftest.__UNIQUE_ID_ddebug289, !134, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!136 = !{ptr @ak8974_12_bits_channels, !137, !"ak8974_12_bits_channels", i1 false, i1 false}
!137 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 739, i32 35}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 712, i32 2}
!140 = !{ptr @ak8974_ext_info, !141, !"ak8974_ext_info", i1 false, i1 false}
!141 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 711, i32 44}
!142 = !{ptr @ak8974_15_bits_channels, !143, !"ak8974_15_bits_channels", i1 false, i1 false}
!143 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 750, i32 35}
!144 = !{ptr @ak8974_info, !145, !"ak8974_info", i1 false, i1 false}
!145 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 759, i32 30}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 609, i32 4}
!148 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ak8974_read_raw._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @ak8974_read_raw._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @init_completion.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../include/linux/completion.h", i32 87, i32 2}
!153 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 381, i32 3}
!156 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ak8974_getresult._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @ak8974_getresult._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 346, i32 4}
!161 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ak8974_await_drdy._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @ak8974_await_drdy._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 363, i32 2}
!166 = !{ptr @ak8974_await_drdy._entry.80, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ak8974_await_drdy._entry_ptr.82, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @ak8974_scan_masks, !169, !"ak8974_scan_masks", i1 false, i1 false}
!169 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 757, i32 28}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 673, i32 3}
!172 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ak8974_fill_buffer._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ak8974_fill_buffer._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 678, i32 3}
!177 = !{ptr @ak8974_fill_buffer._entry.85, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ak8974_fill_buffer._entry_ptr.87, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 413, i32 3}
!181 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @ak8974_drdy_irq_thread._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @ak8974_drdy_irq_thread._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @ak8974_of_match, !185, !"ak8974_of_match", i1 false, i1 false}
!185 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1043, i32 34}
!186 = !{ptr @ak8974_dev_pm_ops, !187, !"ak8974_dev_pm_ops", i1 false, i1 false}
!187 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1027, i32 32}
!188 = !{ptr @ak8974_id, !189, !"ak8974_id", i1 false, i1 false}
!189 = !{!"../drivers/iio/magnetometer/ak8974.c", i32 1034, i32 35}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i64 2148365471, i64 2148365497, i64 2148365526, i64 2148365560, i64 2148365591, i64 2148365614}
!200 = !{!"auto-init"}
!201 = !{i64 2148364890}
!202 = !{i64 850510, i64 850535, i64 850557, i64 850573, i64 850585, i64 850605, i64 850629, i64 850645, i64 850657}
!203 = !{i64 2148365078}
!204 = !{i64 2148978848, i64 2148978853, i64 2148978866, i64 2148978910, i64 2148978944, i64 2148978965}
!205 = !{i8 0, i8 2}
