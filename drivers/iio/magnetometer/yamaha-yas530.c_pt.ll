; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/yamaha-yas530.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/yamaha-yas530.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.yas5xx = type { ptr, i32, i32, [16 x i8], %struct.yas5xx_calibration, [3 x i8], %struct.iio_mount_matrix, ptr, [2 x %struct.regulator_bulk_data], ptr, %struct.mutex, %struct.anon.87 }
%struct.yas5xx_calibration = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anon.87 = type { [4 x i32], i64 }

@__initcall__kmod_yamaha_yas530__442_1047_yas5xx_driver_init6 = internal global ptr @yas5xx_driver_init, section ".initcall6.init", align 4
@yas5xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @yas5xx_probe, ptr @yas5xx_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @yas5xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yas5xx_dev_pm_ops, ptr null, ptr null }, ptr @yas5xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_yas5xx_driver_exit = internal global ptr @yas5xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description443 = internal constant [67 x i8] c"yamaha_yas530.description=Yamaha YAS53x 3-axis magnetometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author444 = internal constant [35 x i8] c"yamaha_yas530.author=Linus Walleij\00", section ".modinfo", align 1
@__UNIQUE_ID_file445 = internal constant [58 x i8] c"yamaha_yas530.file=drivers/iio/magnetometer/yamaha-yas530\00", section ".modinfo", align 1
@__UNIQUE_ID_license446 = internal constant [29 x i8] c"yamaha_yas530.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"yas5xx\00", [25 x i8] zeroinitializer }, align 32
@yas5xx_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"yamaha,yas530\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"yamaha,yas532\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"yamaha,yas533\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@yas5xx_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yas5xx_runtime_suspend, ptr @yas5xx_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@yas5xx_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"yas530\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"yas532\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"yas533\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@yas5xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&yas5xx->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovdd\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get regulators\0A\00", [41 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 847, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"yas5xx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/iio/magnetometer/yamaha-yas530.c\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry_ptr = internal global ptr @yas5xx_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset line\0A\00", [38 x i8] zeroinitializer }, align 32
@yas5xx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@yas5xx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @yas5xx_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"yamaha_yas530:862:(&yas5xx_regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 864, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry_ptr.15 = internal global ptr @yas5xx_probe._entry.13, section ".printk_index", align 4
@yas5xx_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 879, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"detected YAS530 MS-3E %s\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry_ptr.19 = internal global ptr @yas5xx_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.6, ptr @.str.7, i32 887, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"detected YAS532/YAS533 MS-3R/F %s\00", [62 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry_ptr.25 = internal global ptr @yas5xx_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AC\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AB\00", [29 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.6, ptr @.str.7, i32 892, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unhandled device ID %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry_ptr.31 = internal global ptr @yas5xx_probe._entry.29, section ".printk_index", align 4
@yas5xx_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @yas5xx_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@yas5xx_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 0], [24 x i8] zeroinitializer }, align 32
@yas5xx_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 1, i32 1, %struct.anon.86 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @yas5xx_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 2, i32 2, %struct.anon.86 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @yas5xx_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 3, i32 3, %struct.anon.86 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @yas5xx_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.6, ptr @.str.7, i32 915, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"triggered buffer setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry_ptr.34 = internal global ptr @yas5xx_probe._entry.32, section ".printk_index", align 4
@yas5xx_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.6, ptr @.str.7, i32 921, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@yas5xx_probe._entry_ptr.37 = internal global ptr @yas5xx_probe._entry.35, section ".printk_index", align 4
@yas530_get_calibration_data.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.7, ptr @.str.40, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yamaha_yas530\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"yas530_get_calibration_data\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calibration data: %*ph\0A\00", [40 x i8] zeroinitializer }, align 32
@yas532_get_calibration_data.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.41, ptr @.str.7, ptr @.str.40, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"yas532_get_calibration_data\00", [36 x i8] zeroinitializer }, align 32
@yas532_get_calibration_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.41, ptr @.str.7, i32 644, ptr @.str.43, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"calibration is blank!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@yas532_get_calibration_data._entry_ptr = internal global ptr @yas532_get_calibration_data._entry, section ".printk_index", align 4
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.45, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"yas5xx_dump_calibration\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f[] = [%d, %d, %d]\0A\00", [44 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.46, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"r[] = [%d, %d, %d]\0A\00", [44 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.47, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Cx = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.48, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Cy1 = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.49, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Cy2 = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.50, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a2 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.51, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a3 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.52, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a4 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.53, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a5 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.54, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a6 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.55, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a7 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.56, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a8 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.57, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a9 = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.58, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"k = %d\0A\00", [24 x i8] zeroinitializer }, align 32
@yas5xx_dump_calibration.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.7, ptr @.str.59, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dck = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@yas5xx_meaure_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.7, i32 745, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown device type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"yas5xx_meaure_offsets\00", [42 x i8] zeroinitializer }, align 32
@yas5xx_meaure_offsets._entry_ptr = internal global ptr @yas5xx_meaure_offsets._entry, section ".printk_index", align 4
@yas5xx_meaure_offsets.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.61, ptr @.str.7, ptr @.str.62, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"measurement %d: x=%d, y1=%d, y2=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@yas5xx_meaure_offsets._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.7, i32 790, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"discovered hard offsets: x=%d, y1=%d, y2=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@yas5xx_meaure_offsets._entry_ptr.65 = internal global ptr @yas5xx_meaure_offsets._entry.63, section ".printk_index", align 4
@yas5xx_measure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.7, i32 211, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout waiting for measurement\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"yas5xx_measure\00", [17 x i8] zeroinitializer }, align 32
@yas5xx_measure._entry_ptr = internal global ptr @yas5xx_measure._entry, section ".printk_index", align 4
@yas5xx_measure._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.7, i32 252, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown data format\0A\00", [43 x i8] zeroinitializer }, align 32
@yas5xx_measure._entry_ptr.70 = internal global ptr @yas5xx_measure._entry.68, section ".printk_index", align 4
@yas5xx_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.7, i32 410, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown channel\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"yas5xx_read_raw\00", [16 x i8] zeroinitializer }, align 32
@yas5xx_read_raw._entry_ptr = internal global ptr @yas5xx_read_raw._entry, section ".printk_index", align 4
@yas5xx_linearize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.73, ptr @.str.7, i32 290, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"yas5xx_linearize\00", [47 x i8] zeroinitializer }, align 32
@yas5xx_linearize._entry_ptr = internal global ptr @yas5xx_linearize._entry, section ".printk_index", align 4
@yas5xx_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.74, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @yas5xx_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@yas5xx_fill_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.7, i32 446, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error refilling buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yas5xx_fill_buffer\00", [45 x i8] zeroinitializer }, align 32
@yas5xx_fill_buffer._entry_ptr = internal global ptr @yas5xx_fill_buffer._entry, section ".printk_index", align 4
@yas5xx_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.77, ptr @.str.7, i32 987, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"yas5xx_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@yas5xx_runtime_resume._entry_ptr = internal global ptr @yas5xx_runtime_resume._entry, section ".printk_index", align 4
@yas5xx_runtime_resume._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.7, i32 1001, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot power on\0A\00", [47 x i8] zeroinitializer }, align 32
@yas5xx_runtime_resume._entry_ptr.80 = internal global ptr @yas5xx_runtime_resume._entry.78, section ".printk_index", align 4
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"yas532\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"yas530\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"yas5xx_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1037, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1039, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"yas5xx_of_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1029, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"yas5xx_dev_pm_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1014, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant [10 x i8] c"yas5xx_id\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1021, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 832, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 838, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 839, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 843, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 847, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 855, i32 47 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 858, i32 9 }
@___asan_gen_.143 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [21 x i8] c"yas5xx_regmap_config\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 534, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 862, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 864, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 878, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 886, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 892, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"yas5xx_info\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 522, i32 30 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"yas5xx_scan_masks\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 520, i32 28 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"yas5xx_channels\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 501, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 915, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 921, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 592, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 639, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 644, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 682, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 684, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 686, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 687, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 688, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 689, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 690, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 691, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 692, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 693, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 694, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 695, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 696, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 697, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 698, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 745, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 773, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 789, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 211, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 252, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 410, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 290, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [16 x i8] c"yas5xx_ext_info\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 478, i32 44 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 479, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 446, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 987, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [44 x i8] c"../drivers/iio/magnetometer/yamaha-yas530.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1001, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [7 x i8] c"str.81\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author444, ptr @__UNIQUE_ID_description443, ptr @__UNIQUE_ID_file445, ptr @__UNIQUE_ID_license446, ptr @__exitcall_yas5xx_driver_exit, ptr @__initcall__kmod_yamaha_yas530__442_1047_yas5xx_driver_init6, ptr @yas532_get_calibration_data._entry, ptr @yas532_get_calibration_data._entry_ptr, ptr @yas5xx_driver_exit, ptr @yas5xx_fill_buffer._entry, ptr @yas5xx_fill_buffer._entry_ptr, ptr @yas5xx_linearize._entry, ptr @yas5xx_linearize._entry_ptr, ptr @yas5xx_measure._entry, ptr @yas5xx_measure._entry.68, ptr @yas5xx_measure._entry_ptr, ptr @yas5xx_measure._entry_ptr.70, ptr @yas5xx_meaure_offsets._entry, ptr @yas5xx_meaure_offsets._entry.63, ptr @yas5xx_meaure_offsets._entry_ptr, ptr @yas5xx_meaure_offsets._entry_ptr.65, ptr @yas5xx_probe._entry, ptr @yas5xx_probe._entry.13, ptr @yas5xx_probe._entry.16, ptr @yas5xx_probe._entry.23, ptr @yas5xx_probe._entry.29, ptr @yas5xx_probe._entry.32, ptr @yas5xx_probe._entry.35, ptr @yas5xx_probe._entry_ptr, ptr @yas5xx_probe._entry_ptr.15, ptr @yas5xx_probe._entry_ptr.19, ptr @yas5xx_probe._entry_ptr.25, ptr @yas5xx_probe._entry_ptr.31, ptr @yas5xx_probe._entry_ptr.34, ptr @yas5xx_probe._entry_ptr.37, ptr @yas5xx_read_raw._entry, ptr @yas5xx_read_raw._entry_ptr, ptr @yas5xx_runtime_resume._entry, ptr @yas5xx_runtime_resume._entry.78, ptr @yas5xx_runtime_resume._entry_ptr, ptr @yas5xx_runtime_resume._entry_ptr.80, ptr @yas5xx_driver, ptr @.str, ptr @yas5xx_of_match, ptr @yas5xx_dev_pm_ops, ptr @yas5xx_id, ptr @yas5xx_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @yas5xx_probe._key, ptr @yas5xx_regmap_config, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @yas5xx_info, ptr @yas5xx_scan_masks, ptr @yas5xx_channels, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @yas5xx_ext_info, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @str, ptr @str.81], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas532_get_calibration_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_meaure_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_meaure_offsets._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_measure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_measure._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_linearize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_fill_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yas5xx_runtime_resume._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @yas5xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @yas5xx_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @yas5xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @yas5xx_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yas5xx_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 296) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %1, align 8
  %lock = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @yas5xx_probe.__key) #8
  %orientation = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev1, ptr noundef %orientation) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %regs = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.yas5xx, ptr %1, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %arrayidx9, align 4
  %call12 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call19 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  tail call void @usleep_range_state(i32 noundef 31000, i32 noundef 40000, i32 noundef 2) #8
  %call26 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 3) #8
  %reset = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call26, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call26 to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.11) #8
  br label %reg_off

if.end33:                                         ; preds = %if.end25
  %call34 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @yas5xx_regmap_config, ptr noundef nonnull @yas5xx_probe._key, ptr noundef nonnull @.str.12) #8
  %map = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call34, ptr %map, align 8
  %cmp.i185 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 8
  %11 = ptrtoint ptr %10 to i32
  br label %assert_reset

if.end43:                                         ; preds = %if.end33
  %devid = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 1
  %call45 = tail call i32 @regmap_read(ptr noundef %call34, i32 noundef 128, ptr noundef %devid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.assert_reset_crit_edge

if.end43.assert_reset_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_reset

if.end48:                                         ; preds = %if.end43
  %12 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devid, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end48
  %call50 = tail call fastcc i32 @yas530_get_calibration_data(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end56, label %sw.bb.assert_reset_crit_edge

sw.bb.assert_reset_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_reset

do.end56:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %version = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool57.not = icmp eq i32 %16, 0
  %cond = select i1 %tobool57.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond) #11
  %name = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %name, ptr @str.81, i32 16)
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end48
  %call61 = tail call fastcc i32 @yas532_get_calibration_data(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.end67, label %sw.bb60.assert_reset_crit_edge

sw.bb60.assert_reset_crit_edge:                   ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_reset

do.end67:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  %version68 = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %version68 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool69.not = icmp eq i32 %19, 0
  %cond70 = select i1 %tobool69.not, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond70) #11
  %name71 = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %name71, ptr @str, i32 16)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %13) #11
  br label %assert_reset

sw.epilog:                                        ; preds = %do.end67, %do.end56
  tail call fastcc void @yas5xx_dump_calibration(ptr noundef %1)
  %call78 = tail call fastcc i32 @yas5xx_power_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %sw.epilog.assert_reset_crit_edge

sw.epilog.assert_reset_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_reset

if.end81:                                         ; preds = %sw.epilog
  %call82 = tail call fastcc i32 @yas5xx_meaure_offsets(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.assert_reset_crit_edge

if.end81.assert_reset_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_reset

if.end85:                                         ; preds = %if.end81
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @yas5xx_info, ptr %info, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @yas5xx_scan_masks, ptr %available_scan_masks, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %call, align 8
  %name86 = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 3
  %name88 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %24 = ptrtoint ptr %name88 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %name86, ptr %name88, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @yas5xx_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %26 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %num_channels, align 4
  %call89 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @yas5xx_handle_trigger, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end95, label %do.end94

do.end94:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #11
  br label %assert_reset

if.end95:                                         ; preds = %if.end85
  %call96 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end102, label %do.end101

do.end101:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #11
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #8
  br label %assert_reset

if.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !202
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 5000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call.i186 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  br label %cleanup

assert_reset:                                     ; preds = %do.end101, %do.end94, %if.end81.assert_reset_crit_edge, %sw.epilog.assert_reset_crit_edge, %sw.default, %sw.bb60.assert_reset_crit_edge, %sw.bb.assert_reset_crit_edge, %if.end43.assert_reset_crit_edge, %do.end40
  %ret.0 = phi i32 [ %11, %do.end40 ], [ %call45, %if.end43.assert_reset_crit_edge ], [ -19, %sw.default ], [ %call61, %sw.bb60.assert_reset_crit_edge ], [ %call78, %sw.epilog.assert_reset_crit_edge ], [ %call82, %if.end81.assert_reset_crit_edge ], [ %call89, %do.end94 ], [ %call96, %do.end101 ], [ %call50, %sw.bb.assert_reset_crit_edge ]
  %28 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 1) #8
  br label %reg_off

reg_off:                                          ; preds = %assert_reset, %if.then29
  %ret.1 = phi i32 [ %call32, %if.then29 ], [ %ret.0, %assert_reset ]
  %call108 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #8
  br label %cleanup

cleanup:                                          ; preds = %reg_off, %if.end102, %do.end24, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %call19, %do.end24 ], [ %ret.1, %reg_off ], [ 0, %if.end102 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yas5xx_remove(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void @iio_device_unregister(ptr noundef %1) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #8
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !204
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !205
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #8
  %reset = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 1) #8
  %regs = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 8
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #8
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
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yas530_get_calibration_data(ptr nocapture noundef %yas5xx) unnamed_addr #2 align 64 {
entry:
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %calibration = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #8
  %0 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 11
  %4 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 15
  %map = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 7
  %5 = call ptr @memset(ptr %data, i32 255, i32 16)
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %call = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 144, ptr noundef nonnull %data, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 8
  %call3 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 144, ptr noundef nonnull %data, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas530_get_calibration_data.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas530_get_calibration_data, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !206

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %yas5xx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas530_get_calibration_data.__UNIQUE_ID_ddebug359, ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef 14, ptr noundef nonnull %data) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  call void @add_device_randomness(ptr noundef nonnull %data, i32 noundef 16) #8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %4, align 1
  %14 = and i8 %13, 3
  %and = zext i8 %14 to i32
  %version = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %version, align 8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  %conv16 = zext i8 %17 to i32
  %mul = mul nuw nsw i32 %conv16, 6
  %sub = add nsw i32 %mul, -768
  %Cx = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %Cx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %Cx, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 1
  %conv18 = zext i8 %20 to i32
  %mul19 = mul nuw nsw i32 %conv18, 6
  %sub20 = add nsw i32 %mul19, -768
  %Cy1 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %Cy1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub20, ptr %Cy1, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %conv22 = zext i8 %23 to i32
  %mul23 = mul nuw nsw i32 %conv22, 6
  %sub24 = add nsw i32 %mul23, -768
  %Cy2 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %Cy2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub24, ptr %Cy2, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %2, align 1
  %shr.i176 = lshr i64 %26, 58
  %27 = trunc i64 %shr.i176 to i32
  %conv.i = add nsw i32 %27, -32
  %a2.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %a2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %a2.i, align 4
  %and29.i = lshr i64 %26, 54
  %29 = trunc i64 %and29.i to i32
  %30 = and i32 %29, 15
  %conv32.i = add nsw i32 %30, -8
  %a3.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %a3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv32.i, ptr %a3.i, align 4
  %and49.i = lshr i64 %26, 48
  %32 = trunc i64 %and49.i to i32
  %33 = and i32 %32, 63
  %conv52.i = add nsw i32 %33, -32
  %a4.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 7
  %34 = ptrtoint ptr %a4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv52.i, ptr %a4.i, align 4
  %and69.i = lshr i64 %26, 42
  %35 = trunc i64 %and69.i to i32
  %36 = and i32 %35, 63
  %conv71.i = add nuw nsw i32 %36, 38
  %a5.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %a5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv71.i, ptr %a5.i, align 4
  %and88.i = lshr i64 %26, 36
  %38 = trunc i64 %and88.i to i32
  %39 = and i32 %38, 63
  %conv91.i = add nsw i32 %39, -32
  %a6.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 9
  %40 = ptrtoint ptr %a6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv91.i, ptr %a6.i, align 4
  %and108.i = lshr i64 %26, 29
  %41 = trunc i64 %and108.i to i32
  %42 = and i32 %41, 127
  %conv111.i = add nsw i32 %42, -64
  %a7.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 10
  %43 = ptrtoint ptr %a7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv111.i, ptr %a7.i, align 4
  %44 = trunc i64 %26 to i32
  %45 = lshr i32 %44, 23
  %46 = and i32 %45, 63
  %conv131.i = add nsw i32 %46, -32
  %a8.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 11
  %47 = ptrtoint ptr %a8.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv131.i, ptr %a8.i, align 4
  %48 = lshr i32 %44, 15
  %conv150.i = and i32 %48, 255
  %a9.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 12
  %49 = ptrtoint ptr %a9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv150.i, ptr %a9.i, align 4
  %50 = lshr i32 %44, 10
  %51 = and i32 %50, 31
  %conv170.i = add nuw nsw i32 %51, 10
  %k.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 13
  %52 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv170.i, ptr %k.i, align 4
  %and187.i = lshr i64 %26, 7
  %53 = trunc i64 %and187.i to i8
  %conv189.i = and i8 %53, 7
  %dck.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 14
  %54 = ptrtoint ptr %dck.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv189.i, ptr %dck.i, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %3, align 1
  %and44 = lshr i32 %56, 21
  %shr = and i32 %and44, 3
  %f = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr, ptr %f, align 4
  %and62 = lshr i32 %56, 13
  %shr63 = and i32 %and62, 3
  %arrayidx65 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 1
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shr63, ptr %arrayidx65, align 4
  %and82 = lshr i32 %56, 5
  %shr83 = and i32 %and82, 3
  %arrayidx85 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shr83, ptr %arrayidx85, align 4
  %60 = shl i32 %56, 3
  %shr103 = ashr i32 %60, 26
  %61 = ptrtoint ptr %calibration to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr103, ptr %calibration, align 4
  %62 = shl i32 %56, 11
  %shr123 = ashr i32 %62, 26
  %arrayidx126 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shr123, ptr %arrayidx126, align 4
  %64 = shl i32 %56, 19
  %shr144 = ashr i32 %64, 26
  %arrayidx147 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shr144, ptr %arrayidx147, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yas532_get_calibration_data(ptr nocapture noundef %yas5xx) unnamed_addr #2 align 64 {
entry:
  %data = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %calibration = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data) #8
  %0 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 10
  %4 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 13
  %map = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 7
  %5 = call ptr @memset(ptr %data, i32 255, i32 14)
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %call = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 144, ptr noundef nonnull %data, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 8
  %call3 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 144, ptr noundef nonnull %data, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas532_get_calibration_data.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas532_get_calibration_data, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !206

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %yas5xx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas532_get_calibration_data.__UNIQUE_ID_ddebug390, ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef 14, ptr noundef nonnull %data) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %call15 = call ptr @memchr_inv(ptr noundef nonnull %data, i32 noundef 0, i32 noundef 13) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end.if.end25_crit_edge, label %if.then17

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then17:                                        ; preds = %do.end
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool18.not = icmp sgt i8 %13, -1
  br i1 %tobool18.not, label %do.end22, label %if.then17.if.end25_crit_edge

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end22:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %yas5xx, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.42) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.then17.if.end25_crit_edge, %do.end.if.end25_crit_edge
  call void @add_device_randomness(ptr noundef nonnull %data, i32 noundef 14) #8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %18 = and i8 %17, 1
  %and29 = zext i8 %18 to i32
  %version = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %19 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and29, ptr %version, align 8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  %conv31 = zext i8 %21 to i32
  %mul = mul nuw nsw i32 %conv31, 10
  %sub = add nsw i32 %mul, -1280
  %Cx = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %Cx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %Cx, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 1
  %conv33 = zext i8 %24 to i32
  %mul34 = mul nuw nsw i32 %conv33, 10
  %sub35 = add nsw i32 %mul34, -1280
  %Cy1 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %Cy1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub35, ptr %Cy1, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 1
  %conv37 = zext i8 %27 to i32
  %mul38 = mul nuw nsw i32 %conv37, 10
  %sub39 = add nsw i32 %mul38, -1280
  %Cy2 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %Cy2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub39, ptr %Cy2, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %2, align 1
  %shr.i192 = lshr i64 %30, 58
  %31 = trunc i64 %shr.i192 to i32
  %conv.i = add nsw i32 %31, -32
  %a2.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %a2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %a2.i, align 4
  %and29.i = lshr i64 %30, 54
  %33 = trunc i64 %and29.i to i32
  %34 = and i32 %33, 15
  %conv32.i = add nsw i32 %34, -8
  %a3.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %a3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv32.i, ptr %a3.i, align 4
  %and49.i = lshr i64 %30, 48
  %36 = trunc i64 %and49.i to i32
  %37 = and i32 %36, 63
  %conv52.i = add nsw i32 %37, -32
  %a4.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 7
  %38 = ptrtoint ptr %a4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv52.i, ptr %a4.i, align 4
  %and69.i = lshr i64 %30, 42
  %39 = trunc i64 %and69.i to i32
  %40 = and i32 %39, 63
  %conv71.i = add nuw nsw i32 %40, 38
  %a5.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 8
  %41 = ptrtoint ptr %a5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv71.i, ptr %a5.i, align 4
  %and88.i = lshr i64 %30, 36
  %42 = trunc i64 %and88.i to i32
  %43 = and i32 %42, 63
  %conv91.i = add nsw i32 %43, -32
  %a6.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 9
  %44 = ptrtoint ptr %a6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv91.i, ptr %a6.i, align 4
  %and108.i = lshr i64 %30, 29
  %45 = trunc i64 %and108.i to i32
  %46 = and i32 %45, 127
  %conv111.i = add nsw i32 %46, -64
  %a7.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 10
  %47 = ptrtoint ptr %a7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv111.i, ptr %a7.i, align 4
  %48 = trunc i64 %30 to i32
  %49 = lshr i32 %48, 23
  %50 = and i32 %49, 63
  %conv131.i = add nsw i32 %50, -32
  %a8.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 11
  %51 = ptrtoint ptr %a8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv131.i, ptr %a8.i, align 4
  %52 = lshr i32 %48, 15
  %conv150.i = and i32 %52, 255
  %a9.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 12
  %53 = ptrtoint ptr %a9.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv150.i, ptr %a9.i, align 4
  %54 = lshr i32 %48, 10
  %55 = and i32 %54, 31
  %conv170.i = add nuw nsw i32 %55, 10
  %k.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 13
  %56 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv170.i, ptr %k.i, align 4
  %and187.i = lshr i64 %30, 7
  %57 = trunc i64 %and187.i to i8
  %conv189.i = and i8 %57, 7
  %dck.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 14
  %58 = ptrtoint ptr %dck.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv189.i, ptr %dck.i, align 4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %3, align 1
  %and59 = lshr i32 %60, 23
  %shr = and i32 %and59, 3
  %f = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr, ptr %f, align 4
  %and77 = lshr i32 %60, 15
  %shr78 = and i32 %and77, 3
  %arrayidx80 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr78, ptr %arrayidx80, align 4
  %and97 = lshr i32 %60, 7
  %shr98 = and i32 %and97, 3
  %arrayidx100 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 2
  %63 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shr98, ptr %arrayidx100, align 4
  %64 = shl i32 %60, 1
  %shr118 = ashr i32 %64, 26
  %65 = ptrtoint ptr %calibration to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shr118, ptr %calibration, align 4
  %66 = shl i32 %60, 9
  %shr138 = ashr i32 %66, 26
  %arrayidx141 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr138, ptr %arrayidx141, align 4
  %shl.i190 = shl i32 %and97, 26
  %shr.i191 = ashr exact i32 %shl.i190, 26
  %arrayidx162 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shr.i191, ptr %arrayidx162, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yas5xx_dump_calibration(ptr noundef readonly %yas5xx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %calibration = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then)) #8
          to label %do.body7 [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %yas5xx, align 8
  %f = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %arrayidx4 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug421, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then19)) #8
          to label %do.body29 [label %if.then19], !srcloc !206

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %yas5xx, align 8
  %10 = ptrtoint ptr %calibration to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %calibration, align 4
  %arrayidx23 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug422, ptr noundef %9, ptr noundef nonnull @.str.46, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %do.body29

do.body29:                                        ; preds = %if.then19, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then41)) #8
          to label %do.body46 [label %if.then41], !srcloc !206

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %yas5xx, align 8
  %Cx = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %Cx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %Cx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug423, ptr noundef %17, ptr noundef nonnull @.str.47, i32 noundef %19) #8
  br label %do.body46

do.body46:                                        ; preds = %if.then41, %do.body29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then58)) #8
          to label %do.body63 [label %if.then58], !srcloc !206

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %yas5xx, align 8
  %Cy1 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %Cy1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Cy1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug424, ptr noundef %21, ptr noundef nonnull @.str.48, i32 noundef %23) #8
  br label %do.body63

do.body63:                                        ; preds = %if.then58, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then75)) #8
          to label %do.body80 [label %if.then75], !srcloc !206

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %yas5xx, align 8
  %Cy2 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %Cy2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %Cy2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug425, ptr noundef %25, ptr noundef nonnull @.str.49, i32 noundef %27) #8
  br label %do.body80

do.body80:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then92)) #8
          to label %do.body97 [label %if.then92], !srcloc !206

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %yas5xx, align 8
  %a2 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %a2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %a2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug426, ptr noundef %29, ptr noundef nonnull @.str.50, i32 noundef %31) #8
  br label %do.body97

do.body97:                                        ; preds = %if.then92, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then109)) #8
          to label %do.body114 [label %if.then109], !srcloc !206

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %yas5xx, align 8
  %a3 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %a3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %a3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug427, ptr noundef %33, ptr noundef nonnull @.str.51, i32 noundef %35) #8
  br label %do.body114

do.body114:                                       ; preds = %if.then109, %do.body97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then126)) #8
          to label %do.body131 [label %if.then126], !srcloc !206

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %yas5xx, align 8
  %a4 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 7
  %38 = ptrtoint ptr %a4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %a4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug428, ptr noundef %37, ptr noundef nonnull @.str.52, i32 noundef %39) #8
  br label %do.body131

do.body131:                                       ; preds = %if.then126, %do.body114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then143)) #8
          to label %do.body148 [label %if.then143], !srcloc !206

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %yas5xx, align 8
  %a5 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %a5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %a5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug429, ptr noundef %41, ptr noundef nonnull @.str.53, i32 noundef %43) #8
  br label %do.body148

do.body148:                                       ; preds = %if.then143, %do.body131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then160)) #8
          to label %do.body165 [label %if.then160], !srcloc !206

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %yas5xx, align 8
  %a6 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 9
  %46 = ptrtoint ptr %a6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %a6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug430, ptr noundef %45, ptr noundef nonnull @.str.54, i32 noundef %47) #8
  br label %do.body165

do.body165:                                       ; preds = %if.then160, %do.body148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then177)) #8
          to label %do.body182 [label %if.then177], !srcloc !206

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %yas5xx, align 8
  %a7 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 10
  %50 = ptrtoint ptr %a7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %a7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug431, ptr noundef %49, ptr noundef nonnull @.str.55, i32 noundef %51) #8
  br label %do.body182

do.body182:                                       ; preds = %if.then177, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then194)) #8
          to label %do.body199 [label %if.then194], !srcloc !206

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %yas5xx, align 8
  %a8 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 11
  %54 = ptrtoint ptr %a8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %a8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug432, ptr noundef %53, ptr noundef nonnull @.str.56, i32 noundef %55) #8
  br label %do.body199

do.body199:                                       ; preds = %if.then194, %do.body182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then211)) #8
          to label %do.body216 [label %if.then211], !srcloc !206

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %yas5xx, align 8
  %a9 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 12
  %58 = ptrtoint ptr %a9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %a9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug433, ptr noundef %57, ptr noundef nonnull @.str.57, i32 noundef %59) #8
  br label %do.body216

do.body216:                                       ; preds = %if.then211, %do.body199
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then228)) #8
          to label %do.body233 [label %if.then228], !srcloc !206

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %yas5xx, align 8
  %k = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 13
  %62 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %k, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug434, ptr noundef %61, ptr noundef nonnull @.str.58, i32 noundef %63) #8
  br label %do.body233

do.body233:                                       ; preds = %if.then228, %do.body216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_dump_calibration, %if.then245)) #8
          to label %do.end249 [label %if.then245], !srcloc !206

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %yas5xx, align 8
  %dck = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 14
  %66 = ptrtoint ptr %dck to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dck, align 4
  %conv = zext i8 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_dump_calibration.__UNIQUE_ID_ddebug435, ptr noundef %65, ptr noundef nonnull @.str.59, i32 noundef %conv) #8
  br label %do.end249

do.end249:                                        ; preds = %if.then245, %do.body233
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yas5xx_power_on(ptr nocapture noundef readonly %yas5xx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 7
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 137, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end22:                                         ; preds = %if.end
  %dck = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 14
  %4 = ptrtoint ptr %dck to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dck, align 4
  %conv25 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv25, 2
  %and26 = and i32 %shl, 28
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %call28 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 131, i32 noundef %and26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 8
  %call33 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 132, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end31 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call28, %do.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yas5xx_meaure_offsets(ptr noundef %yas5xx) unnamed_addr #2 align 64 {
entry:
  %t = alloca i16, align 2
  %x = alloca i16, align 2
  %y1 = alloca i16, align 2
  %y2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %t) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x) #8
  %0 = ptrtoint ptr %x to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %x, align 2, !annotation !207
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %y1) #8
  %1 = ptrtoint ptr %y1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %y1, align 2, !annotation !207
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %y2) #8
  %2 = ptrtoint ptr %y2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %y2, align 2, !annotation !207
  %map = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 7
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 8
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 129, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %devid = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 1
  %5 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devid, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %6, label %do.end [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %yas5xx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.60) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %center.0 = phi i16 [ 4096, %sw.bb1 ], [ 2048, %if.end.sw.epilog_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %yas5xx_adjust_offset.exit109.for.body_crit_edge, %sw.epilog
  %i.0134 = phi i32 [ 4, %sw.epilog ], [ %dec, %yas5xx_adjust_offset.exit109.for.body_crit_edge ]
  %oy2.0133 = phi i8 [ 0, %sw.epilog ], [ %retval.0.i108, %yas5xx_adjust_offset.exit109.for.body_crit_edge ]
  %oy1.0132 = phi i8 [ 0, %sw.epilog ], [ %retval.0.i97, %yas5xx_adjust_offset.exit109.for.body_crit_edge ]
  %ox.0131 = phi i8 [ 0, %sw.epilog ], [ %retval.0.i87, %yas5xx_adjust_offset.exit109.for.body_crit_edge ]
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 8
  %conv.i = sext i8 %ox.0131 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 133, i32 noundef %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 8
  %conv2.i = sext i8 %oy1.0132 to i32
  %call3.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 134, i32 noundef %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %yas5xx_set_offsets.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

yas5xx_set_offsets.exit:                          ; preds = %if.end.i
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 8
  %conv8.i = sext i8 %oy2.0133 to i32
  %call9.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 135, i32 noundef %conv8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool3.not = icmp eq i32 %call9.i, 0
  br i1 %tobool3.not, label %if.end5, label %yas5xx_set_offsets.exit.cleanup_crit_edge

yas5xx_set_offsets.exit.cleanup_crit_edge:        ; preds = %yas5xx_set_offsets.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %yas5xx_set_offsets.exit
  %call6 = call fastcc i32 @yas5xx_measure(ptr noundef %yas5xx, ptr noundef nonnull %t, ptr noundef nonnull %x, ptr noundef nonnull %y1, ptr noundef nonnull %y2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body10:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yas5xx_meaure_offsets.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yas5xx_meaure_offsets, %if.then15)) #8
          to label %do.end21 [label %if.then15], !srcloc !206

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %yas5xx, align 8
  %sub = sub nuw nsw i32 5, %i.0134
  %18 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %x, align 2
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %y1, align 2
  %conv17 = zext i16 %21 to i32
  %22 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %y2, align 2
  %conv18 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yas5xx_meaure_offsets.__UNIQUE_ID_ddebug436, ptr noundef %17, ptr noundef nonnull @.str.62, i32 noundef %sub, i32 noundef %conv, i32 noundef %conv17, i32 noundef %conv18) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then15, %do.body10
  %24 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %x, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %center.0)
  %cmp.i = icmp ugt i16 %25, %center.0
  br i1 %cmp.i, label %if.then.i, label %if.end.i86

if.then.i:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %i.0134
  %26 = trunc i32 %shl.i to i8
  %conv4.i = add i8 %ox.0131, %26
  br label %yas5xx_adjust_offset.exit

if.end.i86:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %center.0)
  %cmp7.i = icmp ult i16 %25, %center.0
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i86.yas5xx_adjust_offset.exit_crit_edge

if.end.i86.yas5xx_adjust_offset.exit_crit_edge:   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %yas5xx_adjust_offset.exit

if.then9.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  %shl11.neg.i = shl nsw i32 -1, %i.0134
  %27 = trunc i32 %shl11.neg.i to i8
  %conv12.i = add i8 %ox.0131, %27
  br label %yas5xx_adjust_offset.exit

yas5xx_adjust_offset.exit:                        ; preds = %if.then9.i, %if.end.i86.yas5xx_adjust_offset.exit_crit_edge, %if.then.i
  %retval.0.i87 = phi i8 [ %conv4.i, %if.then.i ], [ %conv12.i, %if.then9.i ], [ %ox.0131, %if.end.i86.yas5xx_adjust_offset.exit_crit_edge ]
  %28 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %y1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %center.0)
  %cmp.i88 = icmp ugt i16 %29, %center.0
  br i1 %cmp.i88, label %if.then.i91, label %if.end.i93

if.then.i91:                                      ; preds = %yas5xx_adjust_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i89 = shl nuw i32 1, %i.0134
  %30 = trunc i32 %shl.i89 to i8
  %conv4.i90 = add i8 %oy1.0132, %30
  br label %yas5xx_adjust_offset.exit98

if.end.i93:                                       ; preds = %yas5xx_adjust_offset.exit
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %center.0)
  %cmp7.i92 = icmp ult i16 %29, %center.0
  br i1 %cmp7.i92, label %if.then9.i96, label %if.end.i93.yas5xx_adjust_offset.exit98_crit_edge

if.end.i93.yas5xx_adjust_offset.exit98_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %yas5xx_adjust_offset.exit98

if.then9.i96:                                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  %shl11.neg.i94 = shl nsw i32 -1, %i.0134
  %31 = trunc i32 %shl11.neg.i94 to i8
  %conv12.i95 = add i8 %oy1.0132, %31
  br label %yas5xx_adjust_offset.exit98

yas5xx_adjust_offset.exit98:                      ; preds = %if.then9.i96, %if.end.i93.yas5xx_adjust_offset.exit98_crit_edge, %if.then.i91
  %retval.0.i97 = phi i8 [ %conv4.i90, %if.then.i91 ], [ %conv12.i95, %if.then9.i96 ], [ %oy1.0132, %if.end.i93.yas5xx_adjust_offset.exit98_crit_edge ]
  %32 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %y2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %center.0)
  %cmp.i99 = icmp ugt i16 %33, %center.0
  br i1 %cmp.i99, label %if.then.i102, label %if.end.i104

if.then.i102:                                     ; preds = %yas5xx_adjust_offset.exit98
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i100 = shl nuw i32 1, %i.0134
  %34 = trunc i32 %shl.i100 to i8
  %conv4.i101 = add i8 %oy2.0133, %34
  br label %yas5xx_adjust_offset.exit109

if.end.i104:                                      ; preds = %yas5xx_adjust_offset.exit98
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %center.0)
  %cmp7.i103 = icmp ult i16 %33, %center.0
  br i1 %cmp7.i103, label %if.then9.i107, label %if.end.i104.yas5xx_adjust_offset.exit109_crit_edge

if.end.i104.yas5xx_adjust_offset.exit109_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %yas5xx_adjust_offset.exit109

if.then9.i107:                                    ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  %shl11.neg.i105 = shl nsw i32 -1, %i.0134
  %35 = trunc i32 %shl11.neg.i105 to i8
  %conv12.i106 = add i8 %oy2.0133, %35
  br label %yas5xx_adjust_offset.exit109

yas5xx_adjust_offset.exit109:                     ; preds = %if.then9.i107, %if.end.i104.yas5xx_adjust_offset.exit109_crit_edge, %if.then.i102
  %retval.0.i108 = phi i8 [ %conv4.i101, %if.then.i102 ], [ %conv12.i106, %if.then9.i107 ], [ %oy2.0133, %if.end.i104.yas5xx_adjust_offset.exit109_crit_edge ]
  %dec = add nsw i32 %i.0134, -1
  %cmp.not = icmp eq i32 %i.0134, 0
  br i1 %cmp.not, label %for.end, label %yas5xx_adjust_offset.exit109.for.body_crit_edge

yas5xx_adjust_offset.exit109.for.body_crit_edge:  ; preds = %yas5xx_adjust_offset.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %yas5xx_adjust_offset.exit109
  %hard_offsets = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 5
  %36 = ptrtoint ptr %hard_offsets to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i87, ptr %hard_offsets, align 8
  %arrayidx26 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %retval.0.i97, ptr %arrayidx26, align 1
  %arrayidx28 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %retval.0.i108, ptr %arrayidx28, align 2
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 8
  %conv.i111 = sext i8 %retval.0.i87 to i32
  %call.i112 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 133, i32 noundef %conv.i111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %if.end.i117, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i117:                                      ; preds = %for.end
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 8
  %conv2.i114 = sext i8 %retval.0.i97 to i32
  %call3.i115 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 134, i32 noundef %conv2.i114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i115)
  %tobool4.not.i116 = icmp eq i32 %call3.i115, 0
  br i1 %tobool4.not.i116, label %yas5xx_set_offsets.exit122, label %if.end.i117.cleanup_crit_edge

if.end.i117.cleanup_crit_edge:                    ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

yas5xx_set_offsets.exit122:                       ; preds = %if.end.i117
  %43 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map, align 8
  %conv8.i118 = sext i8 %retval.0.i108 to i32
  %call9.i119 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 135, i32 noundef %conv8.i118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i119)
  %tobool30.not = icmp eq i32 %call9.i119, 0
  br i1 %tobool30.not, label %do.end35, label %yas5xx_set_offsets.exit122.cleanup_crit_edge

yas5xx_set_offsets.exit122.cleanup_crit_edge:     ; preds = %yas5xx_set_offsets.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %yas5xx_set_offsets.exit122
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %yas5xx, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.64, i32 noundef %conv.i111, i32 noundef %conv2.i114, i32 noundef %conv8.i118) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %yas5xx_set_offsets.exit122.cleanup_crit_edge, %if.end.i117.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %yas5xx_set_offsets.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end35 ], [ %call, %entry.cleanup_crit_edge ], [ %call9.i119, %yas5xx_set_offsets.exit122.cleanup_crit_edge ], [ %call3.i115, %if.end.i117.cleanup_crit_edge ], [ %call.i112, %for.end.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call9.i, %yas5xx_set_offsets.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %t) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yas5xx_handle_trigger(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %t.i = alloca i32, align 4
  %x.i = alloca i32, align 4
  %y.i = alloca i32, align 4
  %z.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #8
  %4 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %t.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #8
  %5 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %x.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i) #8
  %6 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %y.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %z.i) #8
  %7 = ptrtoint ptr %z.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %z.i, align 4, !annotation !207
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %call2.i = call fastcc i32 @yas5xx_get_measure(ptr noundef %3, ptr noundef nonnull %t.i, ptr noundef nonnull %x.i, ptr noundef nonnull %y.i, ptr noundef nonnull %z.i) #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call.i35.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i35.i, ptr %last_busy.i.i, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %call.i36.i = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.75) #11
  br label %yas5xx_fill_buffer.exit

if.end.i:                                         ; preds = %entry
  %17 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t.i, align 4
  %scan.i = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %scan.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %scan.i, align 8
  %20 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x.i, align 4
  %arrayidx9.i = getelementptr %struct.yas5xx, ptr %3, i32 0, i32 11, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx9.i, align 4
  %23 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y.i, align 4
  %arrayidx12.i = getelementptr %struct.yas5xx, ptr %3, i32 0, i32 11, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx12.i, align 8
  %26 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %z.i, align 4
  %arrayidx15.i = getelementptr %struct.yas5xx, ptr %3, i32 0, i32 11, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx15.i, align 4
  %call17.i = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scan_timestamp.i.i, align 8, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %if.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge, label %if.then.i.i

if.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_bytes.i.i, align 4
  %div1.i.i = lshr i32 %32, 3
  %sub.i.i = add nsw i32 %div1.i.i, -1
  %arrayidx.i.i = getelementptr i64, ptr %scan.i, i32 %sub.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call17.i, ptr %arrayidx.i.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i

iio_push_to_buffers_with_timestamp.exit.i:        ; preds = %if.then.i.i, %if.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge
  %call.i37.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan.i) #8
  br label %yas5xx_fill_buffer.exit

yas5xx_fill_buffer.exit:                          ; preds = %iio_push_to_buffers_with_timestamp.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %z.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %35) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @yas5xx_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 2
  %0 = add i32 %reg, -176
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %1 = icmp ult i32 %0, 9
  %2 = or i1 %switch, %1
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yas5xx_measure(ptr noundef %yas5xx, ptr nocapture noundef writeonly %t, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y1, ptr nocapture noundef writeonly %y2) unnamed_addr #2 align 64 {
entry:
  %busy = alloca i32, align 4
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busy) #8
  %0 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %busy, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %lock = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %data, align 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %map = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 7
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 8
  %call = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 130, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call1, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 209) #8
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 8
  %call13146 = call i32 @regmap_read(ptr noundef %8, i32 noundef 176, ptr noundef nonnull %busy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13146)
  %tobool.not147 = icmp eq i32 %call13146, 0
  br i1 %tobool.not147, label %if.end.lor.lhs.false_crit_edge, label %if.end.do.end38_crit_edge

if.end.do.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %9 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %busy, align 4
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call18 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #8
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 8
  %call13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 176, ptr noundef nonnull %busy) #8
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then26.lor.lhs.false_crit_edge, label %if.then26.do.end38_crit_edge

if.then26.do.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

if.then26.lor.lhs.false_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %call23 = call i32 @regmap_read(ptr noundef %14, i32 noundef 176, ptr noundef nonnull %busy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool28.not = icmp eq i32 %call23, 0
  br i1 %tobool28.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end38_crit_edge

for.end.do.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %15 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busy, align 4
  %and29 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end39, label %lor.rhs.do.end38_crit_edge

lor.rhs.do.end38_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

do.end38:                                         ; preds = %lor.rhs.do.end38_crit_edge, %for.end.do.end38_crit_edge, %if.then26.do.end38_crit_edge, %if.end.do.end38_crit_edge
  %tobool28.not139.ph = phi i32 [ %call13146, %if.end.do.end38_crit_edge ], [ -110, %lor.rhs.do.end38_crit_edge ], [ %call23, %for.end.do.end38_crit_edge ], [ %call13, %if.then26.do.end38_crit_edge ]
  %17 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %yas5xx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.66) #11
  br label %out_unlock

if.end39:                                         ; preds = %lor.rhs
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 8
  %call41 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 176, ptr noundef nonnull %data, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.out_unlock_crit_edge

if.end39.out_unlock_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end44:                                         ; preds = %if.end39
  call void @mutex_unlock(ptr noundef %lock) #8
  %devid = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 1
  %21 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devid, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %22, label %do.end103 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data, align 8
  %26 = lshr i16 %25, 6
  %27 = and i16 %26, 511
  %28 = ptrtoint ptr %t to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %t, align 2
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 2
  %31 = lshr i16 %30, 3
  %32 = and i16 %31, 4095
  %33 = ptrtoint ptr %x to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %x, align 2
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %2, align 4
  %36 = lshr i16 %35, 3
  %37 = and i16 %36, 4095
  %38 = ptrtoint ptr %y1 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %y1, align 2
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %3, align 2
  %41 = lshr i16 %40, 3
  %42 = and i16 %41, 4095
  %43 = ptrtoint ptr %y2 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %y2, align 2
  br label %cleanup

sw.bb72:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %data, align 8
  %46 = lshr i16 %45, 5
  %47 = and i16 %46, 1023
  %48 = ptrtoint ptr %t to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %t, align 2
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %1, align 2
  %51 = lshr i16 %50, 2
  %52 = and i16 %51, 8191
  %53 = ptrtoint ptr %x to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %x, align 2
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %2, align 4
  %56 = lshr i16 %55, 2
  %57 = and i16 %56, 8191
  %58 = ptrtoint ptr %y1 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %y1, align 2
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %3, align 2
  %61 = lshr i16 %60, 2
  %62 = and i16 %61, 8191
  %63 = ptrtoint ptr %y2 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %y2, align 2
  br label %cleanup

do.end103:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %yas5xx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.69) #11
  br label %cleanup

out_unlock:                                       ; preds = %if.end39.out_unlock_crit_edge, %do.end38, %entry.out_unlock_crit_edge
  %ret.1 = phi i32 [ %call, %entry.out_unlock_crit_edge ], [ %tobool28.not139.ph, %do.end38 ], [ %call41, %if.end39.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end103, %sw.bb72, %sw.bb
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -22, %do.end103 ], [ 0, %sw.bb72 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busy) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yas5xx_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %t = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #8
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %t, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #8
  %3 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %x, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #8
  %4 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %y, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %z) #8
  %5 = ptrtoint ptr %z to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %z, align 4, !annotation !207
  %6 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  %call2 = call fastcc i32 @yas5xx_get_measure(ptr noundef %1, ptr noundef nonnull %t, ptr noundef nonnull %x, ptr noundef nonnull %y, ptr noundef nonnull %z)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i32 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i32, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i33 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %14 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %15, label %do.end [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
  ]

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %z, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.71) #11
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %address12 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %31 = ptrtoint ptr %address12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %address12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp = icmp eq i32 %32, 0
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %val, align 4
  br i1 %cmp, label %sw.bb11.cleanup_crit_edge, label %if.end14

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 100000000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sw.bb11.cleanup_crit_edge, %do.end, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.end14 ], [ -22, %do.end ], [ %call2, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb9 ], [ 1, %sw.bb8 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ -22, %entry.cleanup_crit_edge ], [ 1, %sw.bb11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %z) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yas5xx_get_measure(ptr noundef %yas5xx, ptr nocapture noundef writeonly %to, ptr nocapture noundef writeonly %xo, ptr nocapture noundef writeonly %yo, ptr nocapture noundef writeonly %zo) unnamed_addr #2 align 64 {
entry:
  %t = alloca i16, align 2
  %x = alloca i16, align 2
  %y1 = alloca i16, align 2
  %y2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %t) #8
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %t, align 2, !annotation !207
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x) #8
  %1 = ptrtoint ptr %x to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %x, align 2, !annotation !207
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %y1) #8
  %2 = ptrtoint ptr %y1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %y1, align 2, !annotation !207
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %y2) #8
  %3 = ptrtoint ptr %y2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %y2, align 2, !annotation !207
  %call = call fastcc i32 @yas5xx_measure(ptr noundef %yas5xx, ptr noundef nonnull %t, ptr noundef nonnull %x, ptr noundef nonnull %y1, ptr noundef nonnull %y2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %x, align 2
  %calibration.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4
  %devid.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 1
  %6 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devid.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %7, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %version.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %..i = select i1 %cmp.i, i32 380, i32 550
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %version2.i = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %11 = ptrtoint ptr %version2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.i = icmp eq i32 %12, 0
  %spec.select = select i1 %cmp3.i, i32 1800, i32 850
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %yas5xx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.60) #11
  %conv.i = zext i16 %5 to i32
  br label %yas5xx_linearize.exit

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %coef.0.i = phi i32 [ %..i, %sw.bb.i ], [ %spec.select, %sw.bb1.i ]
  %conv7.i = zext i16 %5 to i32
  %arrayidx8.i = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8.i, align 4
  %mul.neg.i = mul i32 %16, -50
  %arrayidx9.i = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 5, i32 0
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %calibration.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %calibration.i, align 4
  %sub12.i = sub i32 %conv10.i, %20
  %mul13.i = mul i32 %sub12.i, %coef.0.i
  %add.neg.i = add nsw i32 %conv7.i, -3721
  %sub.i = add i32 %add.neg.i, %mul.neg.i
  %add14.i = add i32 %sub.i, %mul13.i
  br label %yas5xx_linearize.exit

yas5xx_linearize.exit:                            ; preds = %sw.epilog.i, %do.end.i
  %retval.0.i = phi i32 [ %conv.i, %do.end.i ], [ %add14.i, %sw.epilog.i ]
  %21 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %y1, align 2
  %23 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devid.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %24, label %do.end.i89 [
    i32 1, label %sw.bb.i83
    i32 2, label %sw.bb1.i86
  ]

sw.bb.i83:                                        ; preds = %yas5xx_linearize.exit
  call void @__sanitizer_cov_trace_pc() #10
  %version.i80 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %26 = ptrtoint ptr %version.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version.i80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i81 = icmp eq i32 %27, 0
  %..i82 = select i1 %cmp.i81, i32 380, i32 550
  br label %sw.epilog.i101

sw.bb1.i86:                                       ; preds = %yas5xx_linearize.exit
  call void @__sanitizer_cov_trace_pc() #10
  %version2.i84 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %28 = ptrtoint ptr %version2.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %version2.i84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.i85 = icmp eq i32 %29, 0
  %spec.select131 = select i1 %cmp3.i85, i32 1800, i32 750
  br label %sw.epilog.i101

do.end.i89:                                       ; preds = %yas5xx_linearize.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %yas5xx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.60) #11
  %conv.i88 = zext i16 %22 to i32
  br label %yas5xx_linearize.exit103

sw.epilog.i101:                                   ; preds = %sw.bb1.i86, %sw.bb.i83
  %coef.0.i90 = phi i32 [ %..i82, %sw.bb.i83 ], [ %spec.select131, %sw.bb1.i86 ]
  %conv7.i91 = zext i16 %22 to i32
  %arrayidx8.i92 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx8.i92 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx8.i92, align 4
  %mul.neg.i93 = mul i32 %33, -50
  %arrayidx9.i94 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx9.i94 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx9.i94, align 1
  %conv10.i95 = zext i8 %35 to i32
  %arrayidx11.i = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx11.i, align 4
  %sub12.i96 = sub i32 %conv10.i95, %37
  %mul13.i97 = mul i32 %sub12.i96, %coef.0.i90
  %add.neg.i98 = add nsw i32 %conv7.i91, -3721
  %sub.i99 = add i32 %add.neg.i98, %mul.neg.i93
  %add14.i100 = add i32 %sub.i99, %mul13.i97
  br label %yas5xx_linearize.exit103

yas5xx_linearize.exit103:                         ; preds = %sw.epilog.i101, %do.end.i89
  %retval.0.i102 = phi i32 [ %conv.i88, %do.end.i89 ], [ %add14.i100, %sw.epilog.i101 ]
  %38 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %y2, align 2
  %40 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %devid.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %41, label %do.end.i115 [
    i32 1, label %sw.bb.i109
    i32 2, label %sw.bb1.i112
  ]

sw.bb.i109:                                       ; preds = %yas5xx_linearize.exit103
  call void @__sanitizer_cov_trace_pc() #10
  %version.i106 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %43 = ptrtoint ptr %version.i106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %version.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i107 = icmp eq i32 %44, 0
  %..i108 = select i1 %cmp.i107, i32 380, i32 550
  br label %sw.epilog.i128

sw.bb1.i112:                                      ; preds = %yas5xx_linearize.exit103
  call void @__sanitizer_cov_trace_pc() #10
  %version2.i110 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 2
  %45 = ptrtoint ptr %version2.i110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %version2.i110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp3.i111 = icmp eq i32 %46, 0
  %spec.select132 = select i1 %cmp3.i111, i32 1800, i32 750
  br label %sw.epilog.i128

do.end.i115:                                      ; preds = %yas5xx_linearize.exit103
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %yas5xx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %yas5xx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.60) #11
  %conv.i114 = zext i16 %39 to i32
  br label %yas5xx_linearize.exit130

sw.epilog.i128:                                   ; preds = %sw.bb1.i112, %sw.bb.i109
  %coef.0.i116 = phi i32 [ %..i108, %sw.bb.i109 ], [ %spec.select132, %sw.bb1.i112 ]
  %conv7.i117 = zext i16 %39 to i32
  %arrayidx8.i118 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 1, i32 2
  %49 = ptrtoint ptr %arrayidx8.i118 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx8.i118, align 4
  %mul.neg.i119 = mul i32 %50, -50
  %arrayidx9.i120 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 5, i32 2
  %51 = ptrtoint ptr %arrayidx9.i120 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx9.i120, align 1
  %conv10.i121 = zext i8 %52 to i32
  %arrayidx11.i122 = getelementptr %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx11.i122 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx11.i122, align 4
  %sub12.i123 = sub i32 %conv10.i121, %54
  %mul13.i124 = mul i32 %sub12.i123, %coef.0.i116
  %add.neg.i125 = add nsw i32 %conv7.i117, -3721
  %sub.i126 = add i32 %add.neg.i125, %mul.neg.i119
  %add14.i127 = add i32 %sub.i126, %mul13.i124
  br label %yas5xx_linearize.exit130

yas5xx_linearize.exit130:                         ; preds = %sw.epilog.i128, %do.end.i115
  %retval.0.i129 = phi i32 [ %conv.i114, %do.end.i115 ], [ %add14.i127, %sw.epilog.i128 ]
  %Cx = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 2
  %55 = ptrtoint ptr %Cx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %Cx, align 4
  %57 = ptrtoint ptr %t to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %t, align 2
  %conv = zext i16 %58 to i32
  %mul = mul i32 %56, %conv
  %div.neg = sdiv i32 %mul, -100
  %sub = add i32 %div.neg, %retval.0.i
  %Cy1 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %Cy1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %Cy1, align 4
  %mul5 = mul i32 %60, %conv
  %div6.neg = sdiv i32 %mul5, -100
  %sub7 = add i32 %div6.neg, %retval.0.i102
  %Cy2 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 4
  %61 = ptrtoint ptr %Cy2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %Cy2, align 4
  %mul9 = mul i32 %62, %conv
  %div10.neg = sdiv i32 %mul9, -100
  %sub11 = add i32 %div10.neg, %retval.0.i129
  %sub12 = sub i32 %sub7, %sub11
  %63 = add i32 %sub7, %sub11
  %sub14 = sub i32 0, %63
  %mul16 = mul nuw nsw i32 %conv, 100
  %64 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul16, ptr %to, align 4
  %k = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 13
  %65 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %k, align 4
  %mul17 = mul i32 %sub, 100
  %a2 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 5
  %67 = ptrtoint ptr %a2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %a2, align 4
  %mul18 = mul i32 %sub12, %68
  %add = add i32 %mul18, %mul17
  %a3 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 6
  %69 = ptrtoint ptr %a3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %a3, align 4
  %mul19 = mul i32 %70, %sub14
  %add20 = add i32 %add, %mul19
  %div21 = sdiv i32 %add20, 10
  %mul22 = mul i32 %div21, %66
  %71 = ptrtoint ptr %xo to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul22, ptr %xo, align 4
  %72 = load i32, ptr %k, align 4
  %a4 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 7
  %73 = ptrtoint ptr %a4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %a4, align 4
  %mul24 = mul i32 %74, %sub
  %a5 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 8
  %75 = ptrtoint ptr %a5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %a5, align 4
  %mul25 = mul i32 %76, %sub12
  %add26 = add i32 %mul25, %mul24
  %a6 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 9
  %77 = ptrtoint ptr %a6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %a6, align 4
  %mul27 = mul i32 %78, %sub14
  %add28 = add i32 %add26, %mul27
  %div29 = sdiv i32 %add28, 10
  %mul30 = mul i32 %div29, %72
  %79 = ptrtoint ptr %yo to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul30, ptr %yo, align 4
  %80 = load i32, ptr %k, align 4
  %a7 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 10
  %81 = ptrtoint ptr %a7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %a7, align 4
  %mul32 = mul i32 %82, %sub
  %a8 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 11
  %83 = ptrtoint ptr %a8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %a8, align 4
  %mul33 = mul i32 %84, %sub12
  %add34 = add i32 %mul33, %mul32
  %a9 = getelementptr inbounds %struct.yas5xx, ptr %yas5xx, i32 0, i32 4, i32 12
  %85 = ptrtoint ptr %a9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %a9, align 4
  %mul35 = mul i32 %86, %sub14
  %add36 = add i32 %add34, %mul35
  %div37 = sdiv i32 %add36, 10
  %mul38 = mul i32 %div37, %80
  %87 = ptrtoint ptr %zo to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul38, ptr %zo, align 4
  br label %cleanup

cleanup:                                          ; preds = %yas5xx_linearize.exit130, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %t) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @yas5xx_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.yas5xx, ptr %1, i32 0, i32 6
  ret ptr %orientation
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yas5xx_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %reset = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  %regs = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 8
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yas5xx_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 8
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 31000, i32 noundef 40000, i32 noundef 2) #8
  %reset = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #8
  %map.i = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 137, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end22.i, label %if.end.i.do.end8_crit_edge

if.end.i.do.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end22.i:                                       ; preds = %if.end.i
  %dck.i = getelementptr inbounds %struct.yas5xx, ptr %3, i32 0, i32 4, i32 14
  %10 = ptrtoint ptr %dck.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dck.i, align 4
  %conv25.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv25.i, 2
  %and26.i = and i32 %shl.i, 28
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 8
  %call28.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 131, i32 noundef %and26.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %yas5xx_power_on.exit, label %do.end22.i.do.end8_crit_edge

do.end22.i.do.end8_crit_edge:                     ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

yas5xx_power_on.exit:                             ; preds = %do.end22.i
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 8
  %call33.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 132, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool4.not = icmp eq i32 %call33.i, 0
  br i1 %tobool4.not, label %yas5xx_power_on.exit.cleanup_crit_edge, label %yas5xx_power_on.exit.do.end8_crit_edge

yas5xx_power_on.exit.do.end8_crit_edge:           ; preds = %yas5xx_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

yas5xx_power_on.exit.cleanup_crit_edge:           ; preds = %yas5xx_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end8:                                          ; preds = %yas5xx_power_on.exit.do.end8_crit_edge, %do.end22.i.do.end8_crit_edge, %if.end.i.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %retval.0.i27 = phi i32 [ %call33.i, %yas5xx_power_on.exit.do.end8_crit_edge ], [ %call28.i, %do.end22.i.do.end8_crit_edge ], [ %call2.i, %if.end.i.do.end8_crit_edge ], [ %call.i, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79) #11
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 1) #8
  %call13 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %yas5xx_power_on.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.0.i27, %do.end8 ], [ 0, %yas5xx_power_on.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !49, !51, !53, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !157, !158, !159, !160, !162, !164, !165, !166, !168, !170, !172, !174, !176, !177, !178, !179, !181, !183, !185, !186, !187, !189, !190, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @__initcall__kmod_yamaha_yas530__442_1047_yas5xx_driver_init6, !1, !"__initcall__kmod_yamaha_yas530__442_1047_yas5xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1047, i32 1}
!2 = !{ptr @__exitcall_yas5xx_driver_exit, !1, !"__exitcall_yas5xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description443, !4, !"__UNIQUE_ID_description443", i1 false, i1 false}
!4 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1049, i32 1}
!5 = !{ptr @__UNIQUE_ID_author444, !6, !"__UNIQUE_ID_author444", i1 false, i1 false}
!6 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1050, i32 1}
!7 = !{ptr @__UNIQUE_ID_file445, !8, !"__UNIQUE_ID_file445", i1 false, i1 false}
!8 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1051, i32 1}
!9 = !{ptr @__UNIQUE_ID_license446, !8, !"__UNIQUE_ID_license446", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1039, i32 11}
!12 = !{ptr @yas5xx_driver, !13, !"yas5xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1037, i32 26}
!14 = !{ptr @yas5xx_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 832, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 838, i32 27}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 839, i32 27}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 843, i32 34}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 847, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @yas5xx_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @yas5xx_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 855, i32 47}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 858, i32 9}
!35 = !{ptr @yas5xx_probe._key, !36, !"_key", i1 false, i1 false}
!36 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 862, i32 16}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 864, i32 3}
!40 = !{ptr @yas5xx_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @yas5xx_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 878, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @yas5xx_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @yas5xx_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 880, i32 25}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 886, i32 3}
!53 = !{ptr @yas5xx_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @yas5xx_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 888, i32 25}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 892, i32 3}
!61 = !{ptr @yas5xx_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @yas5xx_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 915, i32 3}
!65 = !{ptr @yas5xx_probe._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @yas5xx_probe._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 921, i32 3}
!69 = !{ptr @yas5xx_probe._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @yas5xx_probe._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @yas5xx_regmap_config, !72, !"yas5xx_regmap_config", i1 false, i1 false}
!72 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 534, i32 35}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 592, i32 2}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @yas530_get_calibration_data.__UNIQUE_ID_ddebug359, !74, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 639, i32 2}
!80 = !{ptr @yas532_get_calibration_data.__UNIQUE_ID_ddebug390, !79, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 644, i32 4}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @yas532_get_calibration_data._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @yas532_get_calibration_data._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 682, i32 2}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug421, !87, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 684, i32 2}
!92 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug422, !91, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 686, i32 2}
!95 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug423, !94, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 687, i32 2}
!98 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug424, !97, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 688, i32 2}
!101 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug425, !100, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 689, i32 2}
!104 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug426, !103, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 690, i32 2}
!107 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug427, !106, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 691, i32 2}
!110 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug428, !109, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 692, i32 2}
!113 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug429, !112, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 693, i32 2}
!116 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug430, !115, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 694, i32 2}
!119 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug431, !118, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 695, i32 2}
!122 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug432, !121, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 696, i32 2}
!125 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug433, !124, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 697, i32 2}
!128 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug434, !127, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 698, i32 2}
!131 = !{ptr @yas5xx_dump_calibration.__UNIQUE_ID_ddebug435, !130, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 745, i32 3}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @yas5xx_meaure_offsets._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @yas5xx_meaure_offsets._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 773, i32 3}
!139 = !{ptr @yas5xx_meaure_offsets.__UNIQUE_ID_ddebug436, !138, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 789, i32 2}
!142 = !{ptr @yas5xx_meaure_offsets._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @yas5xx_meaure_offsets._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 211, i32 3}
!146 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @yas5xx_measure._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @yas5xx_measure._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 252, i32 3}
!151 = !{ptr @yas5xx_measure._entry.68, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @yas5xx_measure._entry_ptr.70, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @yas5xx_info, !154, !"yas5xx_info", i1 false, i1 false}
!154 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 522, i32 30}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 410, i32 4}
!157 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @yas5xx_read_raw._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @yas5xx_read_raw._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = distinct !{null, !161, !"yas532ac_coef", i1 false, i1 false}
!161 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 267, i32 19}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 290, i32 3}
!164 = !{ptr @yas5xx_linearize._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @yas5xx_linearize._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @yas5xx_scan_masks, !167, !"yas5xx_scan_masks", i1 false, i1 false}
!167 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 520, i32 28}
!168 = !{ptr @yas5xx_channels, !169, !"yas5xx_channels", i1 false, i1 false}
!169 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 501, i32 35}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 479, i32 2}
!172 = !{ptr @yas5xx_ext_info, !173, !"yas5xx_ext_info", i1 false, i1 false}
!173 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 478, i32 44}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 446, i32 3}
!176 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @yas5xx_fill_buffer._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @yas5xx_fill_buffer._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @yas5xx_of_match, !180, !"yas5xx_of_match", i1 false, i1 false}
!180 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1029, i32 34}
!181 = !{ptr @yas5xx_dev_pm_ops, !182, !"yas5xx_dev_pm_ops", i1 false, i1 false}
!182 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1014, i32 32}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 987, i32 3}
!185 = !{ptr @yas5xx_runtime_resume._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @yas5xx_runtime_resume._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1001, i32 3}
!189 = !{ptr @yas5xx_runtime_resume._entry.78, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @yas5xx_runtime_resume._entry_ptr.80, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @yas5xx_id, !192, !"yas5xx_id", i1 false, i1 false}
!192 = !{!"../drivers/iio/magnetometer/yamaha-yas530.c", i32 1021, i32 35}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i64 2148248239, i64 2148248265, i64 2148248294, i64 2148248328, i64 2148248359, i64 2148248382}
!203 = !{i64 2148247658}
!204 = !{i64 732481, i64 732506, i64 732528, i64 732544, i64 732556, i64 732576, i64 732600, i64 732616, i64 732628}
!205 = !{i64 2148247846}
!206 = !{i64 2148815020, i64 2148815025, i64 2148815038, i64 2148815082, i64 2148815116, i64 2148815137}
!207 = !{!"auto-init"}
!208 = !{i8 0, i8 2}
