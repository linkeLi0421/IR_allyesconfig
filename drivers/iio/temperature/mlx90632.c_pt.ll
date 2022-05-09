; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/mlx90632.c_pt.bc'
source_filename = "../drivers/iio/temperature/mlx90632.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.mlx90632_data = type { ptr, %struct.mutex, ptr, i16, i8, i32 }

@__initcall__kmod_mlx90632__295_984_mlx90632_driver_init6 = internal global ptr @mlx90632_driver_init, section ".initcall6.init", align 4
@mlx90632_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mlx90632_probe, ptr @mlx90632_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mlx90632_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx90632_pm_ops, ptr null, ptr null }, ptr @mlx90632_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mlx90632_driver_exit = internal global ptr @mlx90632_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [43 x i8] c"mlx90632.author=Crt Mori <cmo@melexis.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [86 x i8] c"mlx90632.description=Melexis MLX90632 contactless Infra Red temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [47 x i8] c"mlx90632.file=drivers/iio/temperature/mlx90632\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [24 x i8] c"mlx90632.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlx90632\00", [23 x i8] zeroinitializer }, align 32
@mlx90632_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melexis,mlx90632\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mlx90632_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mlx90632_pm_suspend, ptr @mlx90632_pm_resume, ptr @mlx90632_pm_suspend, ptr @mlx90632_pm_resume, ptr @mlx90632_pm_suspend, ptr @mlx90632_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx90632_pm_suspend, ptr @mlx90632_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlx90632_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mlx90632\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 855, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx90632_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/temperature/mlx90632.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry_ptr = internal global ptr @mlx90632_probe._entry, section ".printk_index", align 4
@mlx90632_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mlx90632_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mlx90632_writeable_regs_tbl, ptr @mlx90632_readable_regs_tbl, ptr @mlx90632_volatile_regs_tbl, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlx90632:859:(&mlx90632_regmap)->lock\00", [58 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry_ptr.9 = internal global ptr @mlx90632_probe._entry.7, section ".printk_index", align 4
@mlx90632_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mlx90632->lock\00", [16 x i8] zeroinitializer }, align 32
@mlx90632_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mlx90632_read_raw, ptr null, ptr null, ptr @mlx90632_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mlx90632_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 21, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 22, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 150994946, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wakeup failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry_ptr.13 = internal global ptr @mlx90632_probe._entry.11, section ".printk_index", align 4
@mlx90632_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 887, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"read of version failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry_ptr.16 = internal global ptr @mlx90632_probe._entry.14, section ".printk_index", align 4
@mlx90632_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Detected Medical EEPROM calibration %x\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx90632_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Detected Consumer EEPROM calibration %x\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx90632_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Detected Extended range EEPROM calibration %x\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx90632_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.20, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Detected Unknown EEPROM calibration %x\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Wrong DSP version %x (expected %x)\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx90632_probe._entry_ptr.23 = internal global ptr @mlx90632_probe._entry.21, section ".printk_index", align 4
@mlx90632_writeable_regs_tbl = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @mlx90632_no_write_reg_range, i32 2 }, [16 x i8] zeroinitializer }, align 32
@mlx90632_readable_regs_tbl = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mlx90632_read_reg_range, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mlx90632_volatile_regs_tbl = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mlx90632_volatile_reg_range, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mlx90632_no_write_reg_range = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 9227, i32 9263 }, %struct.regmap_range { i32 16384, i32 16479 }], [16 x i8] zeroinitializer }, align 32
@mlx90632_read_reg_range = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range { i32 9227, i32 9263 }, %struct.regmap_range { i32 9428, i32 9429 }, %struct.regmap_range { i32 9345, i32 9346 }, %struct.regmap_range { i32 12288, i32 12289 }, %struct.regmap_range { i32 12293, i32 12293 }, %struct.regmap_range { i32 16383, i32 16383 }, %struct.regmap_range { i32 16384, i32 16479 }], [40 x i8] zeroinitializer }, align 32
@mlx90632_volatile_reg_range = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 12288, i32 12289 }, %struct.regmap_range { i32 12293, i32 12293 }, %struct.regmap_range { i32 16383, i32 16383 }, %struct.regmap_range { i32 16384, i32 16479 }], [32 x i8] zeroinitializer }, align 32
@mlx90632_perform_measurement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data not ready\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx90632_perform_measurement\00", [35 x i8] zeroinitializer }, align 32
@mlx90632_perform_measurement._entry_ptr = internal global ptr @mlx90632_perform_measurement._entry, section ".printk_index", align 4
@mlx90632_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to sync regmap registers: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx90632_wakeup\00", [16 x i8] zeroinitializer }, align 32
@mlx90632_wakeup._entry_ptr = internal global ptr @mlx90632_wakeup._entry, section ".printk_index", align 4
@mlx90632_wakeup.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Requesting wake-up\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx90632_sleep.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx90632_sleep\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Requesting sleep\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 261, i64 517, i64 1285]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 24, i64 27]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 27]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"mlx90632_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 974, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 976, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"mlx90632_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 949, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"mlx90632_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 971, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"mlx90632_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 943, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 855, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"mlx90632_regmap\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 181, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 859, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 862, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 872, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"mlx90632_info\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 816, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"mlx90632_channels\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 800, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 881, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 887, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 892, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 895, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 898, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 902, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 905, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"mlx90632_writeable_regs_tbl\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 176, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"mlx90632_readable_regs_tbl\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 165, i32 41 }
@___asan_gen_.131 = private unnamed_addr constant [27 x i8] c"mlx90632_volatile_regs_tbl\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 149, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"mlx90632_no_write_reg_range\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 170, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"mlx90632_read_reg_range\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 154, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"mlx90632_volatile_reg_range\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 141, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 233, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 835, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 840, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [38 x i8] c"../drivers/iio/temperature/mlx90632.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 825, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_mlx90632_driver_exit, ptr @__initcall__kmod_mlx90632__295_984_mlx90632_driver_init6, ptr @mlx90632_driver_exit, ptr @mlx90632_perform_measurement._entry, ptr @mlx90632_perform_measurement._entry_ptr, ptr @mlx90632_probe._entry, ptr @mlx90632_probe._entry.11, ptr @mlx90632_probe._entry.14, ptr @mlx90632_probe._entry.21, ptr @mlx90632_probe._entry.7, ptr @mlx90632_probe._entry_ptr, ptr @mlx90632_probe._entry_ptr.13, ptr @mlx90632_probe._entry_ptr.16, ptr @mlx90632_probe._entry_ptr.23, ptr @mlx90632_probe._entry_ptr.9, ptr @mlx90632_wakeup._entry, ptr @mlx90632_wakeup._entry_ptr, ptr @mlx90632_driver, ptr @.str, ptr @mlx90632_of_match, ptr @mlx90632_pm_ops, ptr @mlx90632_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mlx90632_probe._key, ptr @mlx90632_regmap, ptr @.str.6, ptr @.str.8, ptr @mlx90632_probe.__key, ptr @.str.10, ptr @mlx90632_info, ptr @mlx90632_channels, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @mlx90632_writeable_regs_tbl, ptr @mlx90632_readable_regs_tbl, ptr @mlx90632_volatile_regs_tbl, ptr @mlx90632_no_write_reg_range, ptr @mlx90632_read_reg_range, ptr @mlx90632_volatile_reg_range, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_writeable_regs_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_readable_regs_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_volatile_regs_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_no_write_reg_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_read_reg_range to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_volatile_reg_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_perform_measurement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90632_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90632_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mlx90632_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlx90632_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mlx90632_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90632_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read) #7
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read, align 4, !annotation !106
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 108) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mlx90632_regmap, ptr noundef nonnull @mlx90632_probe._key, ptr noundef nonnull @.str.6) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %1) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %3, align 4
  %regmap13 = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %regmap13, align 4
  %mtyp = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %mtyp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mtyp, align 2
  %lock = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlx90632_probe.__key) #7
  %name17 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %id, ptr %name17, align 8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlx90632_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlx90632_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %num_channels, align 4
  %13 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap13, align 4
  %call.i = tail call i32 @regcache_sync(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i186 = icmp slt i32 %call.i, 0
  br i1 %cmp.i186, label %mlx90632_wakeup.exit.thread, label %do.body1.i

mlx90632_wakeup.exit.thread:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %call.i) #10
  br label %do.end22

do.body1.i:                                       ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_wakeup.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_probe, %if.then5.i)) #7
          to label %mlx90632_wakeup.exit [label %if.then5.i], !srcloc !107

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_wakeup.__UNIQUE_ID_ddebug290, ptr noundef %dev7.i, ptr noundef nonnull @.str.28) #7
  br label %mlx90632_wakeup.exit

mlx90632_wakeup.exit:                             ; preds = %if.then5.i, %do.body1.i
  %19 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap13, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 12289, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %mlx90632_wakeup.exit.do.end22_crit_edge, label %if.end24

mlx90632_wakeup.exit.do.end22_crit_edge:          ; preds = %mlx90632_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end22:                                         ; preds = %mlx90632_wakeup.exit.do.end22_crit_edge, %mlx90632_wakeup.exit.thread
  %retval.0.i187195 = phi i32 [ %call.i, %mlx90632_wakeup.exit.thread ], [ %call.i.i.i, %mlx90632_wakeup.exit.do.end22_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i187195) #10
  br label %cleanup

if.end24:                                         ; preds = %mlx90632_wakeup.exit
  %21 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap13, align 4
  %call26 = call i32 @regmap_read(ptr noundef %22, i32 noundef 9227, ptr noundef nonnull %read) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call26) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %23 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read, align 4
  %and = and i32 %24, 32767
  store i32 %and, ptr %read, align 4
  %25 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.else87 [
    i32 261, label %do.body36
    i32 517, label %do.body49
    i32 1285, label %do.body69
  ]

do.body36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_probe, %if.then42)) #7
          to label %if.end116 [label %if.then42], !srcloc !107

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %27) #7
  br label %if.end116

do.body49:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_probe, %if.then61)) #7
          to label %if.end116 [label %if.then61], !srcloc !107

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %read, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %29) #7
  br label %if.end116

do.body69:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_probe, %if.then81)) #7
          to label %do.end85 [label %if.then81], !srcloc !107

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %read, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %31) #7
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %32 = ptrtoint ptr %mtyp to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 17, ptr %mtyp, align 2
  br label %if.end116

if.else87:                                        ; preds = %if.end33
  %and88 = and i32 %24, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and88)
  %cmp89 = icmp eq i32 %and88, 5
  br i1 %cmp89, label %do.body91, label %do.end111

do.body91:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_probe, %if.then103)) #7
          to label %if.end116 [label %if.then103], !srcloc !107

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %read, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %34) #7
  br label %if.end116

do.end111:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %and, i32 noundef 5) #10
  br label %cleanup

if.end116:                                        ; preds = %if.then103, %do.body91, %do.end85, %if.then61, %do.body49, %if.then42, %do.body36
  %emissivity = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %emissivity to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1000, ptr %emissivity, align 4
  %object_ambient_temperature = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %object_ambient_temperature to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 25000, ptr %object_ambient_temperature, align 4
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i188 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp120 = icmp slt i32 %call.i188, 0
  br i1 %cmp120, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end116
  %37 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap13, align 4
  call void @regcache_mark_dirty(ptr noundef %38) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_sleep.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_probe, %if.then.i)) #7
          to label %mlx90632_sleep.exit [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %dev.i190 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_sleep.__UNIQUE_ID_ddebug289, ptr noundef %dev.i190, ptr noundef nonnull @.str.30) #7
  br label %mlx90632_sleep.exit

mlx90632_sleep.exit:                              ; preds = %if.then.i, %if.then121
  %41 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap13, align 4
  %call.i.i.i191 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 12289, i32 noundef 6, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  call void @pm_runtime_enable(ptr noundef %dev) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call127 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %mlx90632_sleep.exit, %do.end111, %do.end31, %do.end22, %if.then4, %do.end
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %retval.0.i187195, %do.end22 ], [ %call26, %do.end31 ], [ %call.i188, %mlx90632_sleep.exit ], [ %call127, %if.end123 ], [ -93, %do.end111 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90632_remove(ptr noundef %client) #2 align 64 {
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
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !110
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %regmap.i = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_sleep.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_remove, %if.then.i)) #7
          to label %mlx90632_sleep.exit [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_sleep.__UNIQUE_ID_ddebug289, ptr noundef %dev.i, ptr noundef nonnull @.str.30) #7
  br label %mlx90632_sleep.exit

mlx90632_sleep.exit:                              ; preds = %if.then.i, %pm_runtime_put_noidle.exit
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 12289, i32 noundef 6, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90632_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %read.i167.i = alloca i32, align 4
  %read.i155.i = alloca i32, align 4
  %read.i143.i = alloca i32, align 4
  %read.i131.i = alloca i32, align 4
  %read.i.i30 = alloca i32, align 4
  %read_tmp.i31 = alloca i32, align 4
  %ambient_new_raw.i = alloca i16, align 2
  %ambient_old_raw.i = alloca i16, align 2
  %object_new_raw.i = alloca i16, align 2
  %object_old_raw.i = alloca i16, align 2
  %read_tmp.i.i = alloca i32, align 4
  %read.i77.i = alloca i32, align 4
  %read.i65.i = alloca i32, align 4
  %read.i53.i = alloca i32, align 4
  %read.i.i = alloca i32, align 4
  %read_tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 24, label %sw.bb8
    i32 27, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 2
  %3 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 21, label %sw.bb1
    i32 22, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_tmp.i) #7
  %6 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %read_tmp.i, align 4, !annotation !106
  %regmap.i = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i.i) #7
  %9 = ptrtoint ptr %read.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %read.i.i, align 4, !annotation !106
  %call.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 9228, ptr noundef nonnull %read.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb1.mlx90632_read_ee_register.exit.thread.i_crit_edge, label %if.end.i.i

sw.bb1.mlx90632_read_ee_register.exit.thread.i_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb1
  %10 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read.i.i, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 9229, ptr noundef nonnull %read.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.mlx90632_read_ee_register.exit.thread.i_crit_edge, label %if.end.i

if.end.i.i.mlx90632_read_ee_register.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit.thread.i

mlx90632_read_ee_register.exit.thread.i:          ; preds = %if.end.i.i.mlx90632_read_ee_register.exit.thread.i_crit_edge, %sw.bb1.mlx90632_read_ee_register.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call3.i.i, %if.end.i.i.mlx90632_read_ee_register.exit.thread.i_crit_edge ], [ %call.i.i, %sw.bb1.mlx90632_read_ee_register.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i) #7
  br label %mlx90632_calc_ambient_dsp105.exit

if.end.i:                                         ; preds = %if.end.i.i
  %12 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read.i.i, align 4
  %shl.i.i = shl i32 %13, 16
  %and.i.i = and i32 %11, 65535
  %or.i.i = or i32 %shl.i.i, %and.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i) #7
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i53.i) #7
  %16 = ptrtoint ptr %read.i53.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %read.i53.i, align 4, !annotation !106
  %call.i54.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 9230, ptr noundef nonnull %read.i53.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp.i55.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp.i55.i, label %if.end.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge, label %if.end.i58.i

if.end.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit64.thread.i

if.end.i58.i:                                     ; preds = %if.end.i
  %17 = ptrtoint ptr %read.i53.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read.i53.i, align 4
  %call3.i56.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 9231, ptr noundef nonnull %read.i53.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i56.i)
  %cmp4.i57.i = icmp slt i32 %call3.i56.i, 0
  br i1 %cmp4.i57.i, label %if.end.i58.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge, label %if.end5.i

if.end.i58.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge: ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit64.thread.i

mlx90632_read_ee_register.exit64.thread.i:        ; preds = %if.end.i58.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge, %if.end.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge
  %retval.0.i63.ph.i = phi i32 [ %call3.i56.i, %if.end.i58.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge ], [ %call.i54.i, %if.end.i.mlx90632_read_ee_register.exit64.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i53.i) #7
  br label %mlx90632_calc_ambient_dsp105.exit

if.end5.i:                                        ; preds = %if.end.i58.i
  %19 = ptrtoint ptr %read.i53.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read.i53.i, align 4
  %shl.i59.i = shl i32 %20, 16
  %and.i60.i = and i32 %18, 65535
  %or.i61.i = or i32 %shl.i59.i, %and.i60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i53.i) #7
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i65.i) #7
  %23 = ptrtoint ptr %read.i65.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %read.i65.i, align 4, !annotation !106
  %call.i66.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 9232, ptr noundef nonnull %read.i65.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp.i67.i = icmp slt i32 %call.i66.i, 0
  br i1 %cmp.i67.i, label %if.end5.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge, label %if.end.i70.i

if.end5.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit76.thread.i

if.end.i70.i:                                     ; preds = %if.end5.i
  %24 = ptrtoint ptr %read.i65.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read.i65.i, align 4
  %call3.i68.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 9233, ptr noundef nonnull %read.i65.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i68.i)
  %cmp4.i69.i = icmp slt i32 %call3.i68.i, 0
  br i1 %cmp4.i69.i, label %if.end.i70.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge, label %if.end10.i

if.end.i70.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge: ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit76.thread.i

mlx90632_read_ee_register.exit76.thread.i:        ; preds = %if.end.i70.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge, %if.end5.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge
  %retval.0.i75.ph.i = phi i32 [ %call3.i68.i, %if.end.i70.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge ], [ %call.i66.i, %if.end5.i.mlx90632_read_ee_register.exit76.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i65.i) #7
  br label %mlx90632_calc_ambient_dsp105.exit

if.end10.i:                                       ; preds = %if.end.i70.i
  %26 = ptrtoint ptr %read.i65.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read.i65.i, align 4
  %shl.i71.i = shl i32 %27, 16
  %and.i72.i = and i32 %25, 65535
  %or.i73.i = or i32 %shl.i71.i, %and.i72.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i65.i) #7
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i77.i) #7
  %30 = ptrtoint ptr %read.i77.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %read.i77.i, align 4, !annotation !106
  %call.i78.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 9234, ptr noundef nonnull %read.i77.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp.i79.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp.i79.i, label %if.end10.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge, label %if.end.i82.i

if.end10.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit88.thread.i

if.end.i82.i:                                     ; preds = %if.end10.i
  %31 = ptrtoint ptr %read.i77.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %read.i77.i, align 4
  %call3.i80.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 9235, ptr noundef nonnull %read.i77.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i80.i)
  %cmp4.i81.i = icmp slt i32 %call3.i80.i, 0
  br i1 %cmp4.i81.i, label %if.end.i82.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge, label %if.end15.i

if.end.i82.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge: ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit88.thread.i

mlx90632_read_ee_register.exit88.thread.i:        ; preds = %if.end.i82.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge, %if.end10.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge
  %retval.0.i87.ph.i = phi i32 [ %call3.i80.i, %if.end.i82.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge ], [ %call.i78.i, %if.end10.i.mlx90632_read_ee_register.exit88.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i77.i) #7
  br label %mlx90632_calc_ambient_dsp105.exit

if.end15.i:                                       ; preds = %if.end.i82.i
  %33 = ptrtoint ptr %read.i77.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %read.i77.i, align 4
  %shl.i83.i = shl i32 %34, 16
  %and.i84.i = and i32 %32, 65535
  %or.i85.i = or i32 %shl.i83.i, %and.i84.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i77.i) #7
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 9262, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.mlx90632_calc_ambient_dsp105.exit_crit_edge, label %if.end20.i

if.end15.i.mlx90632_calc_ambient_dsp105.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_calc_ambient_dsp105.exit

if.end20.i:                                       ; preds = %if.end15.i
  %37 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %read_tmp.i, align 4
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_tmp.i.i) #7
  %41 = ptrtoint ptr %read_tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %read_tmp.i.i, align 4, !annotation !106
  %call.i89.i = call i32 @regmap_read(ptr noundef %40, i32 noundef 16389, ptr noundef nonnull %read_tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %cmp.i90.i = icmp slt i32 %call.i89.i, 0
  br i1 %cmp.i90.i, label %if.end20.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge, label %if.end.i91.i

if.end20.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ambient_raw.exit.thread.i

if.end.i91.i:                                     ; preds = %if.end20.i
  %42 = ptrtoint ptr %read_tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %read_tmp.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %40, i32 noundef 16392, ptr noundef nonnull %read_tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i91.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge, label %if.end26.i

if.end.i91.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge: ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ambient_raw.exit.thread.i

mlx90632_read_ambient_raw.exit.thread.i:          ; preds = %if.end.i91.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge, %if.end20.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge
  %retval.0.i92.ph.i = phi i32 [ %call1.i.i, %if.end.i91.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge ], [ %call.i89.i, %if.end20.i.mlx90632_read_ambient_raw.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i.i) #7
  br label %mlx90632_calc_ambient_dsp105.exit

if.end26.i:                                       ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = trunc i32 %43 to i16
  %44 = ptrtoint ptr %read_tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_tmp.i.i, align 4
  %conv6.i.i = trunc i32 %45 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i.i) #7
  %conv.i = trunc i32 %38 to i16
  %conv.i.i.i = sext i16 %conv.i to i64
  %mul.i.i.i = mul nsw i64 %conv.i.i.i, 1000
  %shr.i.i.i = ashr i64 %mul.i.i.i, 10
  %conv1.i.i.i = sext i16 %conv6.i.i to i64
  %mul2.i.i.i = mul nsw i64 %conv1.i.i.i, 1000000
  %conv3.i.i.i = sext i16 %conv.i.i to i64
  %mul4.i.i.i = mul nsw i64 %conv3.i.i.i, 1000
  %call.i.i.i = call i64 @div64_s64(i64 noundef %mul4.i.i.i, i64 noundef 12) #7
  %mul5.i.i.i = mul i64 %call.i.i.i, %shr.i.i.i
  %add.i.i.i = add i64 %mul5.i.i.i, %mul2.i.i.i
  %mul7.i.i.i = mul nsw i64 %conv3.i.i.i, 1000000000000
  %call8.i.i.i = call i64 @div64_s64(i64 noundef %mul7.i.i.i, i64 noundef 12) #7
  %call9.i.i.i = call i64 @div64_s64(i64 noundef %call8.i.i.i, i64 noundef %add.i.i.i) #7
  %shl.i.i.i = shl i64 %call9.i.i.i, 19
  %call10.i.i.i = call i64 @div64_s64(i64 noundef %shl.i.i.i, i64 noundef 1000) #7
  %conv.i93.i = sext i32 %or.i73.i to i64
  %mul.i.i = mul i64 %conv.i93.i, 10000000000
  %shr.i.i = ashr i64 %mul.i.i, 44
  %conv1.i.i = sext i32 %or.i.i to i64
  %mul2.i.i = mul nsw i64 %conv1.i.i, 1000
  %shr3.i.i = ashr i64 %mul2.i.i, 8
  %sub.i.i = sub i64 %call10.i.i.i, %shr3.i.i
  %mul4.i.i = mul i64 %sub.i.i, %shr.i.i
  %mul5.i.i = mul i64 %mul4.i.i, %sub.i.i
  %mul6.i.i = mul i64 %sub.i.i, 10000000
  %conv7.i.i = sext i32 %or.i61.i to i64
  %call8.i.i = call i64 @div64_s64(i64 noundef %mul6.i.i, i64 noundef %conv7.i.i) #7
  %shl.i94.i = shl i64 %call8.i.i, 20
  %conv9.i.i = sext i32 %or.i85.i to i64
  %mul10.i.i = mul i64 %conv9.i.i, 10000000000
  %shr11.i.i = ashr exact i64 %mul10.i.i, 8
  %call12.i.i = call i64 @div64_s64(i64 noundef %mul5.i.i, i64 noundef 1000000) #7
  %add.i.i = add i64 %shl.i94.i, %shr11.i.i
  %add13.i.i = add i64 %add.i.i, %call12.i.i
  %call14.i.i = call i64 @div64_s64(i64 noundef %add13.i.i, i64 noundef 10000000) #7
  %conv15.i.i = trunc i64 %call14.i.i to i32
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv15.i.i, ptr %val, align 4
  br label %mlx90632_calc_ambient_dsp105.exit

mlx90632_calc_ambient_dsp105.exit:                ; preds = %if.end26.i, %mlx90632_read_ambient_raw.exit.thread.i, %if.end15.i.mlx90632_calc_ambient_dsp105.exit_crit_edge, %mlx90632_read_ee_register.exit88.thread.i, %mlx90632_read_ee_register.exit76.thread.i, %mlx90632_read_ee_register.exit64.thread.i, %mlx90632_read_ee_register.exit.thread.i
  %retval.0.i = phi i32 [ %call1.i.i, %if.end26.i ], [ %call17.i, %if.end15.i.mlx90632_calc_ambient_dsp105.exit_crit_edge ], [ %retval.0.i.ph.i, %mlx90632_read_ee_register.exit.thread.i ], [ %retval.0.i63.ph.i, %mlx90632_read_ee_register.exit64.thread.i ], [ %retval.0.i75.ph.i, %mlx90632_read_ee_register.exit76.thread.i ], [ %retval.0.i87.ph.i, %mlx90632_read_ee_register.exit88.thread.i ], [ %retval.0.i92.ph.i, %mlx90632_read_ambient_raw.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %call2. = select i1 %cmp, i32 %retval.0.i, i32 1
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_tmp.i31) #7
  %47 = ptrtoint ptr %read_tmp.i31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %read_tmp.i31, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ambient_new_raw.i) #7
  %48 = ptrtoint ptr %ambient_new_raw.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %ambient_new_raw.i, align 2, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ambient_old_raw.i) #7
  %49 = ptrtoint ptr %ambient_old_raw.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %ambient_old_raw.i, align 2, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %object_new_raw.i) #7
  %50 = ptrtoint ptr %object_new_raw.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %object_new_raw.i, align 2, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %object_old_raw.i) #7
  %51 = ptrtoint ptr %object_old_raw.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %object_old_raw.i, align 2, !annotation !106
  %regmap.i32 = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i.i30) #7
  %54 = ptrtoint ptr %read.i.i30 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %read.i.i30, align 4, !annotation !106
  %call.i.i33 = call i32 @regmap_read(ptr noundef %53, i32 noundef 9252, ptr noundef nonnull %read.i.i30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %cmp.i.i34 = icmp slt i32 %call.i.i33, 0
  br i1 %cmp.i.i34, label %sw.bb3.mlx90632_read_ee_register.exit.thread.i39_crit_edge, label %if.end.i.i37

sw.bb3.mlx90632_read_ee_register.exit.thread.i39_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit.thread.i39

if.end.i.i37:                                     ; preds = %sw.bb3
  %55 = ptrtoint ptr %read.i.i30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %read.i.i30, align 4
  %call3.i.i35 = call i32 @regmap_read(ptr noundef %53, i32 noundef 9253, ptr noundef nonnull %read.i.i30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i35)
  %cmp4.i.i36 = icmp slt i32 %call3.i.i35, 0
  br i1 %cmp4.i.i36, label %if.end.i.i37.mlx90632_read_ee_register.exit.thread.i39_crit_edge, label %if.end.i43

if.end.i.i37.mlx90632_read_ee_register.exit.thread.i39_crit_edge: ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit.thread.i39

mlx90632_read_ee_register.exit.thread.i39:        ; preds = %if.end.i.i37.mlx90632_read_ee_register.exit.thread.i39_crit_edge, %sw.bb3.mlx90632_read_ee_register.exit.thread.i39_crit_edge
  %retval.0.i.ph.i38 = phi i32 [ %call3.i.i35, %if.end.i.i37.mlx90632_read_ee_register.exit.thread.i39_crit_edge ], [ %call.i.i33, %sw.bb3.mlx90632_read_ee_register.exit.thread.i39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i30) #7
  br label %126

if.end.i43:                                       ; preds = %if.end.i.i37
  %57 = ptrtoint ptr %read.i.i30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %read.i.i30, align 4
  %shl.i.i40 = shl i32 %58, 16
  %and.i.i41 = and i32 %56, 65535
  %or.i.i42 = or i32 %shl.i.i40, %and.i.i41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i30) #7
  %59 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i131.i) #7
  %61 = ptrtoint ptr %read.i131.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %read.i131.i, align 4, !annotation !106
  %call.i132.i = call i32 @regmap_read(ptr noundef %60, i32 noundef 9254, ptr noundef nonnull %read.i131.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %cmp.i133.i = icmp slt i32 %call.i132.i, 0
  br i1 %cmp.i133.i, label %if.end.i43.mlx90632_read_ee_register.exit142.thread.i_crit_edge, label %if.end.i136.i

if.end.i43.mlx90632_read_ee_register.exit142.thread.i_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit142.thread.i

if.end.i136.i:                                    ; preds = %if.end.i43
  %62 = ptrtoint ptr %read.i131.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %read.i131.i, align 4
  %call3.i134.i = call i32 @regmap_read(ptr noundef %60, i32 noundef 9255, ptr noundef nonnull %read.i131.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i134.i)
  %cmp4.i135.i = icmp slt i32 %call3.i134.i, 0
  br i1 %cmp4.i135.i, label %if.end.i136.i.mlx90632_read_ee_register.exit142.thread.i_crit_edge, label %if.end5.i44

if.end.i136.i.mlx90632_read_ee_register.exit142.thread.i_crit_edge: ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit142.thread.i

mlx90632_read_ee_register.exit142.thread.i:       ; preds = %if.end.i136.i.mlx90632_read_ee_register.exit142.thread.i_crit_edge, %if.end.i43.mlx90632_read_ee_register.exit142.thread.i_crit_edge
  %retval.0.i141.ph.i = phi i32 [ %call3.i134.i, %if.end.i136.i.mlx90632_read_ee_register.exit142.thread.i_crit_edge ], [ %call.i132.i, %if.end.i43.mlx90632_read_ee_register.exit142.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i131.i) #7
  br label %126

if.end5.i44:                                      ; preds = %if.end.i136.i
  %64 = ptrtoint ptr %read.i131.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %read.i131.i, align 4
  %shl.i137.i = shl i32 %65, 16
  %and.i138.i = and i32 %63, 65535
  %or.i139.i = or i32 %shl.i137.i, %and.i138.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i131.i) #7
  %66 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i143.i) #7
  %68 = ptrtoint ptr %read.i143.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %read.i143.i, align 4, !annotation !106
  %call.i144.i = call i32 @regmap_read(ptr noundef %67, i32 noundef 9256, ptr noundef nonnull %read.i143.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i)
  %cmp.i145.i = icmp slt i32 %call.i144.i, 0
  br i1 %cmp.i145.i, label %if.end5.i44.mlx90632_read_ee_register.exit154.thread.i_crit_edge, label %if.end.i148.i

if.end5.i44.mlx90632_read_ee_register.exit154.thread.i_crit_edge: ; preds = %if.end5.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit154.thread.i

if.end.i148.i:                                    ; preds = %if.end5.i44
  %69 = ptrtoint ptr %read.i143.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %read.i143.i, align 4
  %call3.i146.i = call i32 @regmap_read(ptr noundef %67, i32 noundef 9257, ptr noundef nonnull %read.i143.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i146.i)
  %cmp4.i147.i = icmp slt i32 %call3.i146.i, 0
  br i1 %cmp4.i147.i, label %if.end.i148.i.mlx90632_read_ee_register.exit154.thread.i_crit_edge, label %if.end10.i45

if.end.i148.i.mlx90632_read_ee_register.exit154.thread.i_crit_edge: ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit154.thread.i

mlx90632_read_ee_register.exit154.thread.i:       ; preds = %if.end.i148.i.mlx90632_read_ee_register.exit154.thread.i_crit_edge, %if.end5.i44.mlx90632_read_ee_register.exit154.thread.i_crit_edge
  %retval.0.i153.ph.i = phi i32 [ %call3.i146.i, %if.end.i148.i.mlx90632_read_ee_register.exit154.thread.i_crit_edge ], [ %call.i144.i, %if.end5.i44.mlx90632_read_ee_register.exit154.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i143.i) #7
  br label %126

if.end10.i45:                                     ; preds = %if.end.i148.i
  %71 = ptrtoint ptr %read.i143.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %read.i143.i, align 4
  %shl.i149.i = shl i32 %72, 16
  %and.i150.i = and i32 %70, 65535
  %or.i151.i = or i32 %shl.i149.i, %and.i150.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i143.i) #7
  %73 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i155.i) #7
  %75 = ptrtoint ptr %read.i155.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %read.i155.i, align 4, !annotation !106
  %call.i156.i = call i32 @regmap_read(ptr noundef %74, i32 noundef 9258, ptr noundef nonnull %read.i155.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156.i)
  %cmp.i157.i = icmp slt i32 %call.i156.i, 0
  br i1 %cmp.i157.i, label %if.end10.i45.mlx90632_read_ee_register.exit166.thread.i_crit_edge, label %if.end.i160.i

if.end10.i45.mlx90632_read_ee_register.exit166.thread.i_crit_edge: ; preds = %if.end10.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit166.thread.i

if.end.i160.i:                                    ; preds = %if.end10.i45
  %76 = ptrtoint ptr %read.i155.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %read.i155.i, align 4
  %call3.i158.i = call i32 @regmap_read(ptr noundef %74, i32 noundef 9259, ptr noundef nonnull %read.i155.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i158.i)
  %cmp4.i159.i = icmp slt i32 %call3.i158.i, 0
  br i1 %cmp4.i159.i, label %if.end.i160.i.mlx90632_read_ee_register.exit166.thread.i_crit_edge, label %if.end15.i46

if.end.i160.i.mlx90632_read_ee_register.exit166.thread.i_crit_edge: ; preds = %if.end.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit166.thread.i

mlx90632_read_ee_register.exit166.thread.i:       ; preds = %if.end.i160.i.mlx90632_read_ee_register.exit166.thread.i_crit_edge, %if.end10.i45.mlx90632_read_ee_register.exit166.thread.i_crit_edge
  %retval.0.i165.ph.i = phi i32 [ %call3.i158.i, %if.end.i160.i.mlx90632_read_ee_register.exit166.thread.i_crit_edge ], [ %call.i156.i, %if.end10.i45.mlx90632_read_ee_register.exit166.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i155.i) #7
  br label %126

if.end15.i46:                                     ; preds = %if.end.i160.i
  %78 = ptrtoint ptr %read.i155.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %read.i155.i, align 4
  %shl.i161.i = shl i32 %79, 16
  %and.i162.i = and i32 %77, 65535
  %or.i163.i = or i32 %shl.i161.i, %and.i162.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i155.i) #7
  %80 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i167.i) #7
  %82 = ptrtoint ptr %read.i167.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %read.i167.i, align 4, !annotation !106
  %call.i168.i = call i32 @regmap_read(ptr noundef %81, i32 noundef 9260, ptr noundef nonnull %read.i167.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168.i)
  %cmp.i169.i = icmp slt i32 %call.i168.i, 0
  br i1 %cmp.i169.i, label %if.end15.i46.mlx90632_read_ee_register.exit178.thread.i_crit_edge, label %if.end.i172.i

if.end15.i46.mlx90632_read_ee_register.exit178.thread.i_crit_edge: ; preds = %if.end15.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit178.thread.i

if.end.i172.i:                                    ; preds = %if.end15.i46
  %83 = ptrtoint ptr %read.i167.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %read.i167.i, align 4
  %call3.i170.i = call i32 @regmap_read(ptr noundef %81, i32 noundef 9261, ptr noundef nonnull %read.i167.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i170.i)
  %cmp4.i171.i = icmp slt i32 %call3.i170.i, 0
  br i1 %cmp4.i171.i, label %if.end.i172.i.mlx90632_read_ee_register.exit178.thread.i_crit_edge, label %if.end20.i47

if.end.i172.i.mlx90632_read_ee_register.exit178.thread.i_crit_edge: ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ee_register.exit178.thread.i

mlx90632_read_ee_register.exit178.thread.i:       ; preds = %if.end.i172.i.mlx90632_read_ee_register.exit178.thread.i_crit_edge, %if.end15.i46.mlx90632_read_ee_register.exit178.thread.i_crit_edge
  %retval.0.i177.ph.i = phi i32 [ %call3.i170.i, %if.end.i172.i.mlx90632_read_ee_register.exit178.thread.i_crit_edge ], [ %call.i168.i, %if.end15.i46.mlx90632_read_ee_register.exit178.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i167.i) #7
  br label %126

if.end20.i47:                                     ; preds = %if.end.i172.i
  %85 = ptrtoint ptr %read.i167.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %read.i167.i, align 4
  %shl.i173.i = shl i32 %86, 16
  %and.i174.i = and i32 %84, 65535
  %or.i175.i = or i32 %shl.i173.i, %and.i174.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i167.i) #7
  %87 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i32, align 4
  %call22.i = call i32 @regmap_read(ptr noundef %88, i32 noundef 9345, ptr noundef nonnull %read_tmp.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end20.i47._crit_edge, label %if.end25.i

if.end20.i47._crit_edge:                          ; preds = %if.end20.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %126

if.end25.i:                                       ; preds = %if.end20.i47
  %89 = ptrtoint ptr %read_tmp.i31 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %read_tmp.i31, align 4
  %conv.i48 = trunc i32 %90 to i16
  %91 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i32, align 4
  %call27.i = call i32 @regmap_read(ptr noundef %92, i32 noundef 9346, ptr noundef nonnull %read_tmp.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end25.i._crit_edge, label %if.end31.i

if.end25.i._crit_edge:                            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %126

if.end31.i:                                       ; preds = %if.end25.i
  %93 = ptrtoint ptr %read_tmp.i31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %read_tmp.i31, align 4
  %conv32.i = trunc i32 %94 to i16
  %95 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i32, align 4
  %call34.i = call i32 @regmap_read(ptr noundef %96, i32 noundef 9262, ptr noundef nonnull %read_tmp.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end31.i._crit_edge, label %if.end38.i

if.end31.i._crit_edge:                            ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %126

if.end38.i:                                       ; preds = %if.end31.i
  %97 = ptrtoint ptr %read_tmp.i31 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %read_tmp.i31, align 4
  %conv39.i = trunc i32 %98 to i16
  %99 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i32, align 4
  %call41.i = call i32 @regmap_read(ptr noundef %100, i32 noundef 9263, ptr noundef nonnull %read_tmp.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.end38.i._crit_edge, label %if.end45.i

if.end38.i._crit_edge:                            ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %126

if.end45.i:                                       ; preds = %if.end38.i
  %101 = ptrtoint ptr %read_tmp.i31 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %read_tmp.i31, align 4
  %conv46.i = trunc i32 %102 to i16
  %call47.i = call fastcc i32 @mlx90632_read_all_channel(ptr noundef %1, ptr noundef nonnull %ambient_new_raw.i, ptr noundef nonnull %ambient_old_raw.i, ptr noundef nonnull %object_new_raw.i, ptr noundef nonnull %object_old_raw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.end45.i._crit_edge, label %if.end51.i

if.end45.i._crit_edge:                            ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %126

if.end51.i:                                       ; preds = %if.end45.i
  %103 = ptrtoint ptr %object_new_raw.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %object_new_raw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 27000, i16 %104)
  %cmp53.i = icmp sgt i16 %104, 27000
  br i1 %cmp53.i, label %land.lhs.true.i, label %if.end51.i.if.end68.i_crit_edge

if.end51.i.if.end68.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

land.lhs.true.i:                                  ; preds = %if.end51.i
  %mtyp.i = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 4
  %105 = ptrtoint ptr %mtyp.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %mtyp.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %106)
  %cmp56.i = icmp eq i8 %106, 17
  br i1 %cmp56.i, label %if.then58.i, label %land.lhs.true.i.if.end68.i_crit_edge

land.lhs.true.i.if.end68.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

if.then58.i:                                      ; preds = %land.lhs.true.i
  %call59.i = call fastcc i32 @mlx90632_read_all_channel_extended(ptr noundef %1, ptr noundef nonnull %object_new_raw.i, ptr noundef nonnull %ambient_new_raw.i, ptr noundef nonnull %ambient_old_raw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.then58.i._crit_edge, label %if.end63.i

if.then58.i._crit_edge:                           ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %126

if.end63.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %ambient_new_raw.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %ambient_new_raw.i, align 2
  %109 = ptrtoint ptr %ambient_old_raw.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %ambient_old_raw.i, align 2
  %call64.i = call fastcc i64 @mlx90632_preprocess_temp_amb(i16 noundef signext %108, i16 noundef signext %110, i16 noundef signext %conv39.i) #7
  %111 = ptrtoint ptr %object_new_raw.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %object_new_raw.i, align 2
  %call65.i = call fastcc i64 @mlx90632_preprocess_temp_obj_extended(i16 noundef signext %112, i16 noundef signext %108, i16 noundef signext %110, i16 noundef signext %conv46.i) #7
  %object_ambient_temperature.i = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 5
  %113 = ptrtoint ptr %object_ambient_temperature.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %object_ambient_temperature.i, align 4
  %conv66.i = zext i32 %114 to i64
  %emissivity.i = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 3
  %115 = ptrtoint ptr %emissivity.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %emissivity.i, align 4
  %call67.i = call fastcc i32 @mlx90632_calc_temp_object_extended(i64 noundef %call65.i, i64 noundef %call64.i, i64 noundef %conv66.i, i32 noundef %or.i.i42, i32 noundef %or.i139.i, i32 noundef %or.i151.i, i32 noundef %or.i163.i, i32 noundef %or.i175.i, i16 noundef signext %conv.i48, i16 noundef signext %conv32.i, i16 noundef zeroext %116) #7
  br label %mlx90632_calc_object_dsp105.exit

if.end68.i:                                       ; preds = %land.lhs.true.i.if.end68.i_crit_edge, %if.end51.i.if.end68.i_crit_edge
  %117 = ptrtoint ptr %ambient_new_raw.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %ambient_new_raw.i, align 2
  %119 = ptrtoint ptr %ambient_old_raw.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %ambient_old_raw.i, align 2
  %call69.i = call fastcc i64 @mlx90632_preprocess_temp_amb(i16 noundef signext %118, i16 noundef signext %120, i16 noundef signext %conv39.i) #7
  %121 = ptrtoint ptr %object_old_raw.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %object_old_raw.i, align 2
  %call70.i = call fastcc i64 @mlx90632_preprocess_temp_obj(i16 noundef signext %104, i16 noundef signext %122, i16 noundef signext %118, i16 noundef signext %120, i16 noundef signext %conv46.i) #7
  %emissivity71.i = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 3
  %123 = ptrtoint ptr %emissivity71.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %emissivity71.i, align 4
  %call72.i = call fastcc i32 @mlx90632_calc_temp_object(i64 noundef %call70.i, i64 noundef %call69.i, i32 noundef %or.i.i42, i32 noundef %or.i139.i, i32 noundef %or.i151.i, i32 noundef %or.i163.i, i32 noundef %or.i175.i, i16 noundef signext %conv.i48, i16 noundef signext %conv32.i, i16 noundef zeroext %124) #7
  br label %mlx90632_calc_object_dsp105.exit

mlx90632_calc_object_dsp105.exit:                 ; preds = %if.end68.i, %if.end63.i
  %storemerge53 = phi i32 [ %call72.i, %if.end68.i ], [ %call67.i, %if.end63.i ]
  %125 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %storemerge53, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %object_old_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %object_new_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ambient_old_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ambient_new_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i31) #7
  br label %cleanup

126:                                              ; preds = %if.then58.i._crit_edge, %if.end45.i._crit_edge, %if.end38.i._crit_edge, %if.end31.i._crit_edge, %if.end25.i._crit_edge, %if.end20.i47._crit_edge, %mlx90632_read_ee_register.exit178.thread.i, %mlx90632_read_ee_register.exit166.thread.i, %mlx90632_read_ee_register.exit154.thread.i, %mlx90632_read_ee_register.exit142.thread.i, %mlx90632_read_ee_register.exit.thread.i39
  %retval.0.i49.ph = phi i32 [ %retval.0.i177.ph.i, %mlx90632_read_ee_register.exit178.thread.i ], [ %retval.0.i165.ph.i, %mlx90632_read_ee_register.exit166.thread.i ], [ %retval.0.i153.ph.i, %mlx90632_read_ee_register.exit154.thread.i ], [ %retval.0.i141.ph.i, %mlx90632_read_ee_register.exit142.thread.i ], [ %retval.0.i.ph.i38, %mlx90632_read_ee_register.exit.thread.i39 ], [ %call59.i, %if.then58.i._crit_edge ], [ %call47.i, %if.end45.i._crit_edge ], [ %call41.i, %if.end38.i._crit_edge ], [ %call34.i, %if.end31.i._crit_edge ], [ %call27.i, %if.end25.i._crit_edge ], [ %call22.i, %if.end20.i47._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %object_old_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %object_new_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ambient_old_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ambient_new_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i31) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %emissivity = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 3
  %127 = ptrtoint ptr %emissivity to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %emissivity, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %128)
  %cmp9 = icmp eq i16 %128, 1000
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %val, align 4
  br label %if.end14

if.else:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %val, align 4
  %131 = ptrtoint ptr %emissivity to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %emissivity, align 4
  %conv13 = zext i16 %132 to i32
  %mul = mul nuw nsw i32 %conv13, 1000
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %storemerge = phi i32 [ %mul, %if.else ], [ 0, %if.then11 ]
  %133 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %storemerge, ptr %val2, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %object_ambient_temperature = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 5
  %134 = ptrtoint ptr %object_ambient_temperature to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %object_ambient_temperature, align 4
  %136 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %if.end14, %126, %mlx90632_calc_object_dsp105.exit, %mlx90632_calc_ambient_dsp105.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb15 ], [ 2, %if.end14 ], [ %call2., %mlx90632_calc_ambient_dsp105.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i49.ph, %126 ], [ 1, %mlx90632_calc_object_dsp105.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx90632_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %channel, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 24, label %sw.bb
    i32 27, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp3 = icmp sgt i32 %val, 1
  %or.cond15 = or i1 %cmp3, %4
  br i1 %or.cond15, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp5 = icmp ne i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.not = icmp eq i32 %val2, 0
  %or.cond16 = or i1 %cmp5, %cmp6.not
  br i1 %or.cond16, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul nuw nsw i32 %val, 1000
  %div17 = udiv i32 %val2, 1000
  %add = add nuw nsw i32 %div17, %mul
  %conv = trunc i32 %add to i16
  %emissivity = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %emissivity to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %emissivity, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %object_ambient_temperature = getelementptr inbounds %struct.mlx90632_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %object_ambient_temperature to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %object_ambient_temperature, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %if.end, %lor.lhs.false4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb7 ], [ 0, %if.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mlx90632_preprocess_temp_amb(i16 noundef signext %ambient_new_raw, i16 noundef signext %ambient_old_raw, i16 noundef signext %Gb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i16 %Gb to i64
  %mul = mul nsw i64 %conv, 1000
  %shr = ashr i64 %mul, 10
  %conv1 = sext i16 %ambient_old_raw to i64
  %mul2 = mul nsw i64 %conv1, 1000000
  %conv3 = sext i16 %ambient_new_raw to i64
  %mul4 = mul nsw i64 %conv3, 1000
  %call = tail call i64 @div64_s64(i64 noundef %mul4, i64 noundef 12) #7
  %mul5 = mul i64 %call, %shr
  %add = add i64 %mul5, %mul2
  %mul7 = mul nsw i64 %conv3, 1000000000000
  %call8 = tail call i64 @div64_s64(i64 noundef %mul7, i64 noundef 12) #7
  %call9 = tail call i64 @div64_s64(i64 noundef %call8, i64 noundef %add) #7
  %shl = shl i64 %call9, 19
  %call10 = tail call i64 @div64_s64(i64 noundef %shl, i64 noundef 1000) #7
  ret i64 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90632_read_all_channel(ptr noundef %data, ptr nocapture noundef writeonly %ambient_new_raw, ptr nocapture noundef writeonly %ambient_old_raw, ptr nocapture noundef writeonly %object_new_raw, ptr nocapture noundef writeonly %object_old_raw) unnamed_addr #2 align 64 {
entry:
  %read_tmp.i15 = alloca i32, align 4
  %read_tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx90632_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @mlx90632_perform_measurement(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.read_unlock_crit_edge, label %if.end

entry.read_unlock_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_unlock

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.mlx90632_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_tmp.i) #7
  %2 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %read_tmp.i, align 4, !annotation !106
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 16389, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.mlx90632_read_ambient_raw.exit.thread_crit_edge, label %if.end.i

if.end.mlx90632_read_ambient_raw.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ambient_raw.exit.thread

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_tmp.i, align 4
  %conv.i = trunc i32 %4 to i16
  %5 = ptrtoint ptr %ambient_new_raw to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %ambient_new_raw, align 2
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 16392, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.mlx90632_read_ambient_raw.exit.thread_crit_edge, label %if.end4

if.end.i.mlx90632_read_ambient_raw.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ambient_raw.exit.thread

mlx90632_read_ambient_raw.exit.thread:            ; preds = %if.end.i.mlx90632_read_ambient_raw.exit.thread_crit_edge, %if.end.mlx90632_read_ambient_raw.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.mlx90632_read_ambient_raw.exit.thread_crit_edge ], [ %call.i, %if.end.mlx90632_read_ambient_raw.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i) #7
  br label %read_unlock

if.end4:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_tmp.i, align 4
  %conv6.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %ambient_old_raw to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6.i, ptr %ambient_old_raw, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_tmp.i15) #7
  %11 = ptrtoint ptr %read_tmp.i15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %read_tmp.i15, align 4, !annotation !106
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call, label %if.end4.mlx90632_read_object_raw.exit_crit_edge [
    i32 1, label %if.end4.if.end.i16_crit_edge
    i32 2, label %sw.bb1.i.i
  ]

if.end4.if.end.i16_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16

if.end4.mlx90632_read_object_raw.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw.exit

sw.bb1.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16

if.end.i16:                                       ; preds = %sw.bb1.i.i, %if.end4.if.end.i16_crit_edge
  %storemerge.i.i = phi i32 [ 3, %sw.bb1.i.i ], [ 6, %if.end4.if.end.i16_crit_edge ]
  %mul.i = mul nuw nsw i32 %call, 3
  %add1.i = add nuw nsw i32 %mul.i, 16385
  %call2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add1.i, ptr noundef nonnull %read_tmp.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i16.mlx90632_read_object_raw.exit_crit_edge, label %if.end6.i

if.end.i16.mlx90632_read_object_raw.exit_crit_edge: ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw.exit

if.end6.i:                                        ; preds = %if.end.i16
  %13 = ptrtoint ptr %read_tmp.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_tmp.i15, align 4
  %add10.i = or i32 %mul.i, 16384
  %call11.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add10.i, ptr noundef nonnull %read_tmp.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end6.i.mlx90632_read_object_raw.exit_crit_edge, label %if.end15.i

if.end6.i.mlx90632_read_object_raw.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw.exit

if.end15.i:                                       ; preds = %if.end6.i
  %sext.i = shl i32 %14, 16
  %conv16.i = ashr exact i32 %sext.i, 16
  %15 = ptrtoint ptr %read_tmp.i15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_tmp.i15, align 4
  %sext63.i = shl i32 %16, 16
  %conv18.i = ashr exact i32 %sext63.i, 16
  %add19.i = add nsw i32 %conv18.i, %conv16.i
  %div.i = sdiv i32 %add19.i, 2
  %conv20.i = trunc i32 %div.i to i16
  %17 = ptrtoint ptr %object_new_raw to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv20.i, ptr %object_new_raw, align 2
  %add24.i = add nuw nsw i32 %storemerge.i.i, 16385
  %call25.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add24.i, ptr noundef nonnull %read_tmp.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end15.i.mlx90632_read_object_raw.exit_crit_edge, label %if.end29.i

if.end15.i.mlx90632_read_object_raw.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw.exit

if.end29.i:                                       ; preds = %if.end15.i
  %18 = ptrtoint ptr %read_tmp.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read_tmp.i15, align 4
  %add33.i = or i32 %storemerge.i.i, 16384
  %call34.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add33.i, ptr noundef nonnull %read_tmp.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end29.i.mlx90632_read_object_raw.exit_crit_edge, label %if.end38.i

if.end29.i.mlx90632_read_object_raw.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw.exit

if.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %sext64.i = shl i32 %19, 16
  %conv39.i = ashr exact i32 %sext64.i, 16
  %20 = ptrtoint ptr %read_tmp.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_tmp.i15, align 4
  %sext65.i = shl i32 %21, 16
  %conv41.i = ashr exact i32 %sext65.i, 16
  %add42.i = add nsw i32 %conv41.i, %conv39.i
  %div43.i = sdiv i32 %add42.i, 2
  %conv44.i = trunc i32 %div43.i to i16
  %22 = ptrtoint ptr %object_old_raw to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv44.i, ptr %object_old_raw, align 2
  br label %mlx90632_read_object_raw.exit

mlx90632_read_object_raw.exit:                    ; preds = %if.end38.i, %if.end29.i.mlx90632_read_object_raw.exit_crit_edge, %if.end15.i.mlx90632_read_object_raw.exit_crit_edge, %if.end6.i.mlx90632_read_object_raw.exit_crit_edge, %if.end.i16.mlx90632_read_object_raw.exit_crit_edge, %if.end4.mlx90632_read_object_raw.exit_crit_edge
  %retval.0.i17 = phi i32 [ %call34.i, %if.end38.i ], [ %call2.i, %if.end.i16.mlx90632_read_object_raw.exit_crit_edge ], [ %call11.i, %if.end6.i.mlx90632_read_object_raw.exit_crit_edge ], [ %call25.i, %if.end15.i.mlx90632_read_object_raw.exit_crit_edge ], [ %call34.i, %if.end29.i.mlx90632_read_object_raw.exit_crit_edge ], [ -22, %if.end4.mlx90632_read_object_raw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i15) #7
  br label %read_unlock

read_unlock:                                      ; preds = %mlx90632_read_object_raw.exit, %mlx90632_read_ambient_raw.exit.thread, %entry.read_unlock_crit_edge
  %ret.0 = phi i32 [ %retval.0.i17, %mlx90632_read_object_raw.exit ], [ %call, %entry.read_unlock_crit_edge ], [ %retval.0.i.ph, %mlx90632_read_ambient_raw.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90632_read_all_channel_extended(ptr noundef %data, ptr nocapture noundef writeonly %object_new_raw, ptr nocapture noundef writeonly %ambient_new_raw, ptr nocapture noundef writeonly %ambient_old_raw) unnamed_addr #2 align 64 {
entry:
  %read_tmp.i60 = alloca i32, align 4
  %read_tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx90632_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mlx90632_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12293, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %entry.read_unlock_crit_edge, label %if.end8.i

entry.read_unlock_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_unlock

if.end8.i:                                        ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #7
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12289, i32 noundef 502, i32 noundef 272, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp11.i, label %if.end8.i.read_unlock_crit_edge, label %mlx90632_set_meas_type.exit

if.end8.i.read_unlock_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_unlock

mlx90632_set_meas_type.exit:                      ; preds = %if.end8.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12289, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %mlx90632_set_meas_type.exit.read_unlock_crit_edge, label %if.end

mlx90632_set_meas_type.exit.read_unlock_crit_edge: ; preds = %mlx90632_set_meas_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_unlock

if.end:                                           ; preds = %mlx90632_set_meas_type.exit
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 800000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 441) #7
  %call1281 = tail call fastcc i32 @mlx90632_perform_measurement(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call1281)
  %cmp1382 = icmp eq i32 %call1281, 19
  br i1 %cmp1382, label %if.end.if.end28_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then23

if.then19:                                        ; preds = %land.lhs.true
  %call20 = tail call fastcc i32 @mlx90632_perform_measurement(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call20)
  %phi.cmp = icmp eq i32 %call20, 19
  br i1 %phi.cmp, label %if.then19.if.end28_crit_edge, label %if.then19.read_unlock_crit_edge

if.then19.read_unlock_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_unlock

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #7
  %call12 = tail call fastcc i32 @mlx90632_perform_measurement(ptr noundef %data)
  %cmp13 = icmp eq i32 %call12, 19
  br i1 %cmp13, label %if.then23.if.end28_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.then19.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_tmp.i) #7
  %4 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %read_tmp.i, align 4, !annotation !106
  %call.i55 = call i32 @regmap_read(ptr noundef %3, i32 noundef 16435, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %if.end28.mlx90632_read_object_raw_extended.exit.thread_crit_edge, label %if.end.i

if.end28.mlx90632_read_object_raw_extended.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw_extended.exit.thread

if.end.i:                                         ; preds = %if.end28
  %5 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_tmp.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16436, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i57 = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i57, label %if.end.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, label %if.end6.i

if.end.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw_extended.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_tmp.i, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16438, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end6.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, label %if.end13.i

if.end6.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw_extended.exit.thread

if.end13.i:                                       ; preds = %if.end6.i
  %9 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read_tmp.i, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16439, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end13.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, label %if.end21.i

if.end13.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw_extended.exit.thread

if.end21.i:                                       ; preds = %if.end13.i
  %11 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_tmp.i, align 4
  %call24.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16441, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end21.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, label %if.end28.i

if.end21.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw_extended.exit.thread

if.end28.i:                                       ; preds = %if.end21.i
  %13 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_tmp.i, align 4
  %call32.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16442, ptr noundef nonnull %read_tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end28.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, label %if.end36.i

if.end28.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw_extended.exit.thread

if.end36.i:                                       ; preds = %if.end28.i
  %sext.i = shl i32 %6, 16
  %conv1.i = ashr exact i32 %sext.i, 16
  %sext72.i = shl i32 %8, 16
  %conv8.i = ashr exact i32 %sext72.i, 16
  %sext73.i = shl i32 %10, 16
  %conv15.i = ashr exact i32 %sext73.i, 16
  %sext74.i = shl i32 %12, 16
  %conv23.i = ashr exact i32 %sext74.i, 16
  %15 = add nsw i32 %conv8.i, %conv15.i
  %sub16.i = sub nsw i32 %conv1.i, %15
  %add.i58 = add nsw i32 %sub16.i, %conv23.i
  %div.i = sdiv i32 %add.i58, 2
  %sext75.i = shl i32 %14, 16
  %conv30.i = ashr exact i32 %sext75.i, 16
  %add31.i = add nsw i32 %conv30.i, %div.i
  %16 = ptrtoint ptr %read_tmp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_tmp.i, align 4
  %sext76.i = shl i32 %17, 16
  %conv38.i = ashr exact i32 %sext76.i, 16
  %add39.i = add nsw i32 %add31.i, %conv38.i
  %18 = add nsw i32 %add39.i, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %18)
  %19 = icmp ult i32 %18, -65536
  br i1 %19, label %if.end36.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, label %if.end33

if.end36.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_object_raw_extended.exit.thread

mlx90632_read_object_raw_extended.exit.thread:    ; preds = %if.end36.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, %if.end28.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, %if.end21.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, %if.end13.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, %if.end6.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, %if.end.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge, %if.end28.mlx90632_read_object_raw_extended.exit.thread_crit_edge
  %retval.0.i59.ph = phi i32 [ -34, %if.end36.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge ], [ %call32.i, %if.end28.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge ], [ %call24.i, %if.end21.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge ], [ %call17.i, %if.end13.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge ], [ %call9.i, %if.end6.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge ], [ %call2.i, %if.end.i.mlx90632_read_object_raw_extended.exit.thread_crit_edge ], [ %call.i55, %if.end28.mlx90632_read_object_raw_extended.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i) #7
  br label %read_unlock

if.end33:                                         ; preds = %if.end36.i
  %conv46.i = trunc i32 %add39.i to i16
  %20 = ptrtoint ptr %object_new_raw to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv46.i, ptr %object_new_raw, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i) #7
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_tmp.i60) #7
  %23 = ptrtoint ptr %read_tmp.i60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %read_tmp.i60, align 4, !annotation !106
  %call.i61 = call i32 @regmap_read(ptr noundef %22, i32 noundef 16437, ptr noundef nonnull %read_tmp.i60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp.i62, label %if.end33.mlx90632_read_ambient_raw_extended.exit_crit_edge, label %if.end.i63

if.end33.mlx90632_read_ambient_raw_extended.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ambient_raw_extended.exit

if.end.i63:                                       ; preds = %if.end33
  %24 = ptrtoint ptr %read_tmp.i60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_tmp.i60, align 4
  %conv.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %ambient_new_raw to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %ambient_new_raw, align 2
  %call1.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 16440, ptr noundef nonnull %read_tmp.i60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i63.mlx90632_read_ambient_raw_extended.exit_crit_edge, label %if.end5.i

if.end.i63.mlx90632_read_ambient_raw_extended.exit_crit_edge: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_read_ambient_raw_extended.exit

if.end5.i:                                        ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %read_tmp.i60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_tmp.i60, align 4
  %conv6.i = trunc i32 %28 to i16
  %29 = ptrtoint ptr %ambient_old_raw to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv6.i, ptr %ambient_old_raw, align 2
  br label %mlx90632_read_ambient_raw_extended.exit

mlx90632_read_ambient_raw_extended.exit:          ; preds = %if.end5.i, %if.end.i63.mlx90632_read_ambient_raw_extended.exit_crit_edge, %if.end33.mlx90632_read_ambient_raw_extended.exit_crit_edge
  %retval.0.i64 = phi i32 [ 0, %if.end5.i ], [ %call.i61, %if.end33.mlx90632_read_ambient_raw_extended.exit_crit_edge ], [ %call1.i, %if.end.i63.mlx90632_read_ambient_raw_extended.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_tmp.i60) #7
  br label %read_unlock

read_unlock:                                      ; preds = %mlx90632_read_ambient_raw_extended.exit, %mlx90632_read_object_raw_extended.exit.thread, %if.then19.read_unlock_crit_edge, %mlx90632_set_meas_type.exit.read_unlock_crit_edge, %if.end8.i.read_unlock_crit_edge, %entry.read_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i.i.i, %mlx90632_set_meas_type.exit.read_unlock_crit_edge ], [ %retval.0.i64, %mlx90632_read_ambient_raw_extended.exit ], [ -110, %if.then19.read_unlock_crit_edge ], [ %retval.0.i59.ph, %mlx90632_read_object_raw_extended.exit.thread ], [ %call.i.i, %if.end8.i.read_unlock_crit_edge ], [ %call.i, %entry.read_unlock_crit_edge ]
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i65 = call i32 @regmap_write(ptr noundef %31, i32 noundef 12293, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp5.i66 = icmp slt i32 %call.i65, 0
  br i1 %cmp5.i66, label %read_unlock.mlx90632_set_meas_type.exit74_crit_edge, label %if.end8.i70

read_unlock.mlx90632_set_meas_type.exit74_crit_edge: ; preds = %read_unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_set_meas_type.exit74

if.end8.i70:                                      ; preds = %read_unlock
  call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #7
  %call.i.i68 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 12289, i32 noundef 502, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp11.i69 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp11.i69, label %if.end8.i70.mlx90632_set_meas_type.exit74_crit_edge, label %if.end14.i72

if.end8.i70.mlx90632_set_meas_type.exit74_crit_edge: ; preds = %if.end8.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90632_set_meas_type.exit74

if.end14.i72:                                     ; preds = %if.end8.i70
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i71 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 12289, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %mlx90632_set_meas_type.exit74

mlx90632_set_meas_type.exit74:                    ; preds = %if.end14.i72, %if.end8.i70.mlx90632_set_meas_type.exit74_crit_edge, %read_unlock.mlx90632_set_meas_type.exit74_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mlx90632_preprocess_temp_obj_extended(i16 noundef signext %object_new_raw, i16 noundef signext %ambient_new_raw, i16 noundef signext %ambient_old_raw, i16 noundef signext %Ka) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i16 %Ka to i64
  %mul = mul nsw i64 %conv, 1000
  %shr = ashr i64 %mul, 10
  %conv1 = sext i16 %ambient_old_raw to i64
  %mul2 = mul nsw i64 %conv1, 1000000
  %conv3 = sext i16 %ambient_new_raw to i64
  %mul4 = mul nsw i64 %conv3, 1000
  %call = tail call i64 @div64_s64(i64 noundef %mul4, i64 noundef 12) #7
  %mul5 = mul i64 %call, %shr
  %add = add i64 %mul5, %mul2
  %conv6 = sext i16 %object_new_raw to i64
  %mul7 = mul nsw i64 %conv6, 1000000000000
  %call8 = tail call i64 @div64_s64(i64 noundef %mul7, i64 noundef 12) #7
  %call9 = tail call i64 @div64_s64(i64 noundef %call8, i64 noundef %add) #7
  %shl = shl i64 %call9, 19
  %call10 = tail call i64 @div64_s64(i64 noundef %shl, i64 noundef 1000) #7
  ret i64 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90632_calc_temp_object_extended(i64 noundef %object, i64 noundef %ambient, i64 noundef %reflected, i32 noundef %Ea, i32 noundef %Eb, i32 noundef %Fa, i32 noundef %Fb, i32 noundef %Ga, i16 noundef signext %Ha, i16 noundef signext %Hb, i16 noundef zeroext %tmp_emi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %Ea to i64
  %mul = mul nsw i64 %conv, 1000
  %shr = ashr i64 %mul, 16
  %conv1 = sext i32 %Eb to i64
  %mul2 = mul nsw i64 %conv1, 1000
  %shr3 = ashr i64 %mul2, 8
  %sub = sub i64 %ambient, %shr3
  %mul4 = mul i64 %sub, 1000000
  %call = tail call i64 @div64_s64(i64 noundef %mul4, i64 noundef %shr) #7
  %add = add i64 %call, 25000000
  %call.i = tail call i64 @div64_s64(i64 noundef %reflected, i64 noundef 10) #7
  %add.i = add i64 %call.i, 27315
  %call1.i = tail call i64 @div64_s64(i64 noundef %reflected, i64 noundef 10) #7
  %add2.i = add i64 %call1.i, 27315
  %mul.i = mul i64 %add2.i, %add.i
  %call3.i = tail call i64 @div64_s64(i64 noundef %reflected, i64 noundef 10) #7
  %add4.i = add i64 %call3.i, 27315
  %mul5.i = mul i64 %mul.i, %add4.i
  %call6.i = tail call i64 @div64_s64(i64 noundef %reflected, i64 noundef 10) #7
  %add7.i = add i64 %call6.i, 27315
  %mul8.i = mul i64 %mul5.i, %add7.i
  %call.i23 = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add.i24 = add i64 %call.i23, 27315
  %call1.i25 = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add2.i26 = add i64 %call1.i25, 27315
  %mul.i27 = mul i64 %add2.i26, %add.i24
  %call3.i28 = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add4.i29 = add i64 %call3.i28, 27315
  %mul5.i30 = mul i64 %mul.i27, %add4.i29
  %call6.i31 = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add7.i32 = add i64 %call6.i31, 27315
  %mul8.i33 = mul i64 %mul5.i30, %add7.i32
  %sub7 = sub i64 %mul8.i, %mul8.i33
  %conv8 = zext i16 %tmp_emi to i64
  %call9 = tail call i64 @div64_s64(i64 noundef %sub7, i64 noundef %conv8) #7
  %mul10.neg = mul i64 %call9, -1000
  %sub11 = add i64 %mul10.neg, %mul8.i
  %div = sdiv i32 %Fa, 2
  %conv.i = sext i16 %Ha to i64
  %mul.i34 = mul nsw i64 %conv.i, 1000000
  %shr.i = ashr i64 %mul.i34, 14
  %conv1.i = sext i16 %Hb to i32
  %mul2.i = mul nsw i32 %conv1.i, 100
  %shr3.i = ashr i32 %mul2.i, 10
  %conv4.i = sext i32 %Ga to i64
  %conv9.i = sext i32 %Fb to i64
  %mul11.i = mul i64 %call, %conv9.i
  %shr12.i = ashr i64 %mul11.i, 36
  %conv13.i = sext i32 %div to i64
  %mul14.i = mul i64 %conv13.i, 10000000000
  %shr15.i = ashr i64 %mul14.i, 46
  %mul16.i = mul nsw i64 %shr.i, %shr15.i
  %add.i36 = add nsw i64 %shr12.i, 1000000
  %mul23.i = mul i64 %object, 10000000
  %sub30.i = sub nsw i32 -27315, %shr3.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.038 = phi i8 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %temp.0.off037 = phi i32 [ 25000, %entry ], [ %mul33.i, %for.body.for.body_crit_edge ]
  %conv5.i = sext i32 %temp.0.off037 to i64
  %0 = mul nsw i64 %conv5.i, 1000
  %mul6.i = add nsw i64 %0, -25000000
  %mul7.i = mul i64 %mul6.i, %conv4.i
  %shr8.i = ashr i64 %mul7.i, 36
  %call.i35 = tail call i64 @div64_s64(i64 noundef %mul16.i, i64 noundef 1000) #7
  %add17.i = add nsw i64 %add.i36, %shr8.i
  %mul18.i = mul i64 %call.i35, %add17.i
  %call20.i = tail call i64 @div64_s64(i64 noundef %mul18.i, i64 noundef 100000) #7
  %mul21.i = mul i64 %call20.i, %conv8
  %call22.i = tail call i64 @div64_s64(i64 noundef %mul21.i, i64 noundef 1000) #7
  %call24.i = tail call i64 @div64_s64(i64 noundef %mul23.i, i64 noundef %call22.i) #7
  %mul25.i = mul i64 %call24.i, 1000000000000
  %add26.i = add i64 %sub11, %mul25.i
  %call27.i = tail call i32 @int_sqrt64(i64 noundef %add26.i) #7
  %conv28.i = zext i32 %call27.i to i64
  %call29.i = tail call i32 @int_sqrt64(i64 noundef %conv28.i) #7
  %sub32.i = add i32 %sub30.i, %call29.i
  %mul33.i = mul i32 %sub32.i, 10
  %inc = add nuw nsw i8 %i.038, 1
  %cmp = icmp ult i8 %i.038, 4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %mul33.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mlx90632_preprocess_temp_obj(i16 noundef signext %object_new_raw, i16 noundef signext %object_old_raw, i16 noundef signext %ambient_new_raw, i16 noundef signext %ambient_old_raw, i16 noundef signext %Ka) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i16 %Ka to i64
  %mul = mul nsw i64 %conv, 1000
  %shr = ashr i64 %mul, 10
  %conv1 = sext i16 %ambient_old_raw to i64
  %mul2 = mul nsw i64 %conv1, 1000000
  %conv3 = sext i16 %ambient_new_raw to i64
  %mul4 = mul nsw i64 %conv3, 1000
  %call = tail call i64 @div64_s64(i64 noundef %mul4, i64 noundef 12) #7
  %mul5 = mul i64 %call, %shr
  %add = add i64 %mul5, %mul2
  %conv6 = sext i16 %object_new_raw to i32
  %conv7 = sext i16 %object_old_raw to i32
  %add8 = add nsw i32 %conv7, %conv6
  %div = sdiv i32 %add8, 2
  %conv9 = sext i32 %div to i64
  %mul10 = mul nsw i64 %conv9, 1000000000000
  %call11 = tail call i64 @div64_s64(i64 noundef %mul10, i64 noundef 12) #7
  %call12 = tail call i64 @div64_s64(i64 noundef %call11, i64 noundef %add) #7
  %shl = shl i64 %call12, 19
  %call13 = tail call i64 @div64_s64(i64 noundef %shl, i64 noundef 1000) #7
  ret i64 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90632_calc_temp_object(i64 noundef %object, i64 noundef %ambient, i32 noundef %Ea, i32 noundef %Eb, i32 noundef %Fa, i32 noundef %Fb, i32 noundef %Ga, i16 noundef signext %Ha, i16 noundef signext %Hb, i16 noundef zeroext %tmp_emi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %Ea to i64
  %mul = mul nsw i64 %conv, 1000
  %shr = ashr i64 %mul, 16
  %conv1 = sext i32 %Eb to i64
  %mul2 = mul nsw i64 %conv1, 1000
  %shr3 = ashr i64 %mul2, 8
  %sub = sub i64 %ambient, %shr3
  %mul4 = mul i64 %sub, 1000000
  %call = tail call i64 @div64_s64(i64 noundef %mul4, i64 noundef %shr) #7
  %add = add i64 %call, 25000000
  %call.i = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add.i = add i64 %call.i, 27315
  %call1.i = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add2.i = add i64 %call1.i, 27315
  %mul.i = mul i64 %add2.i, %add.i
  %call3.i = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add4.i = add i64 %call3.i, 27315
  %mul5.i = mul i64 %mul.i, %add4.i
  %call6.i = tail call i64 @div64_s64(i64 noundef %add, i64 noundef 10000) #7
  %add7.i = add i64 %call6.i, 27315
  %mul8.i = mul i64 %mul5.i, %add7.i
  %conv.i = sext i16 %Ha to i64
  %mul.i15 = mul nsw i64 %conv.i, 1000000
  %shr.i = ashr i64 %mul.i15, 14
  %conv1.i = sext i16 %Hb to i32
  %mul2.i = mul nsw i32 %conv1.i, 100
  %shr3.i = ashr i32 %mul2.i, 10
  %conv4.i = sext i32 %Ga to i64
  %conv9.i = sext i32 %Fb to i64
  %mul11.i = mul i64 %call, %conv9.i
  %shr12.i = ashr i64 %mul11.i, 36
  %conv13.i = sext i32 %Fa to i64
  %mul14.i = mul i64 %conv13.i, 10000000000
  %shr15.i = ashr i64 %mul14.i, 46
  %mul16.i = mul nsw i64 %shr.i, %shr15.i
  %add.i17 = add nsw i64 %shr12.i, 1000000
  %conv19.i = zext i16 %tmp_emi to i64
  %mul23.i = mul i64 %object, 10000000
  %sub30.i = sub nsw i32 -27315, %shr3.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.019 = phi i8 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %temp.0.off018 = phi i32 [ 25000, %entry ], [ %mul33.i, %for.body.for.body_crit_edge ]
  %conv5.i = sext i32 %temp.0.off018 to i64
  %0 = mul nsw i64 %conv5.i, 1000
  %mul6.i = add nsw i64 %0, -25000000
  %mul7.i = mul i64 %mul6.i, %conv4.i
  %shr8.i = ashr i64 %mul7.i, 36
  %call.i16 = tail call i64 @div64_s64(i64 noundef %mul16.i, i64 noundef 1000) #7
  %add17.i = add nsw i64 %add.i17, %shr8.i
  %mul18.i = mul i64 %call.i16, %add17.i
  %call20.i = tail call i64 @div64_s64(i64 noundef %mul18.i, i64 noundef 100000) #7
  %mul21.i = mul i64 %call20.i, %conv19.i
  %call22.i = tail call i64 @div64_s64(i64 noundef %mul21.i, i64 noundef 1000) #7
  %call24.i = tail call i64 @div64_s64(i64 noundef %mul23.i, i64 noundef %call22.i) #7
  %mul25.i = mul i64 %call24.i, 1000000000000
  %add26.i = add i64 %mul25.i, %mul8.i
  %call27.i = tail call i32 @int_sqrt64(i64 noundef %add26.i) #7
  %conv28.i = zext i32 %call27.i to i64
  %call29.i = tail call i32 @int_sqrt64(i64 noundef %conv28.i) #7
  %sub32.i = add i32 %sub30.i, %call29.i
  %mul33.i = mul i32 %sub32.i, 10
  %inc = add nuw nsw i8 %i.019, 1
  %cmp = icmp ult i8 %i.019, 4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %mul33.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90632_perform_measurement(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %reg_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_status) #7
  %0 = ptrtoint ptr %reg_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_status, align 4, !annotation !106
  %regmap = getelementptr inbounds %struct.mlx90632_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 16383, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 230) #7
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1365 = call i32 @regmap_read(ptr noundef %4, i32 noundef 16383, ptr noundef nonnull %reg_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1365)
  %tobool.not66 = icmp eq i32 %call1365, 0
  br i1 %tobool.not66, label %if.end.lor.lhs.false_crit_edge, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_status, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call18 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %8, i32 noundef 16383, ptr noundef nonnull %reg_status) #7
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then26.lor.lhs.false_crit_edge, label %if.then26.lor.end_crit_edge

if.then26.lor.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.then26.lor.lhs.false_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_read(ptr noundef %10, i32 noundef 16383, ptr noundef nonnull %reg_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool28.not = icmp eq i32 %call23, 0
  br i1 %tobool28.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %11 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_status, align 4
  %and29 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %lor.rhs.if.end39_crit_edge, label %lor.rhs.do.end38_crit_edge

lor.rhs.do.end38_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

lor.rhs.if.end39_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then26.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %tobool28.not58 = phi i32 [ %call23, %for.end.lor.end_crit_edge ], [ %call1365, %if.end.lor.end_crit_edge ], [ %call13, %if.then26.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool28.not58)
  %cmp34 = icmp slt i32 %tobool28.not58, 0
  br i1 %cmp34, label %lor.end.do.end38_crit_edge, label %lor.end.if.end39_crit_edge

lor.end.if.end39_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

lor.end.do.end38_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.end38:                                         ; preds = %lor.end.do.end38_crit_edge, %lor.rhs.do.end38_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end39:                                         ; preds = %lor.end.if.end39_crit_edge, %lor.rhs.if.end39_crit_edge
  %15 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_status, align 4
  %and40 = lshr i32 %16, 2
  %shr41 = and i32 %and40, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end38 ], [ %shr41, %if.end39 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt64(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90632_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_sleep.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_pm_suspend, %if.then.i)) #7
          to label %mlx90632_sleep.exit [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_sleep.__UNIQUE_ID_ddebug289, ptr noundef %dev.i, ptr noundef nonnull @.str.30) #7
  br label %mlx90632_sleep.exit

mlx90632_sleep.exit:                              ; preds = %if.then.i, %entry
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12289, i32 noundef 6, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90632_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.mlx90632_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regcache_sync(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.body1.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %call.i) #10
  br label %mlx90632_wakeup.exit

do.body1.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90632_wakeup.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90632_pm_resume, %if.then5.i)) #7
          to label %do.end10.i [label %if.then5.i], !srcloc !107

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90632_wakeup.__UNIQUE_ID_ddebug290, ptr noundef %dev7.i, ptr noundef nonnull @.str.28) #7
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i, %do.body1.i
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 12289, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %mlx90632_wakeup.exit

mlx90632_wakeup.exit:                             ; preds = %do.end10.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i.i.i, %do.end10.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_mlx90632__295_984_mlx90632_driver_init6, !1, !"__initcall__kmod_mlx90632__295_984_mlx90632_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/mlx90632.c", i32 984, i32 1}
!2 = !{ptr @__exitcall_mlx90632_driver_exit, !1, !"__exitcall_mlx90632_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/mlx90632.c", i32 986, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/mlx90632.c", i32 987, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/mlx90632.c", i32 988, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/temperature/mlx90632.c", i32 976, i32 11}
!12 = !{ptr @mlx90632_driver, !13, !"mlx90632_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/mlx90632.c", i32 974, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/mlx90632.c", i32 855, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx90632_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx90632_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mlx90632_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/iio/temperature/mlx90632.c", i32 859, i32 11}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/temperature/mlx90632.c", i32 862, i32 3}
!27 = !{ptr @mlx90632_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlx90632_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mlx90632_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/iio/temperature/mlx90632.c", i32 872, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/temperature/mlx90632.c", i32 881, i32 3}
!34 = !{ptr @mlx90632_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mlx90632_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/temperature/mlx90632.c", i32 887, i32 3}
!38 = !{ptr @mlx90632_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlx90632_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/temperature/mlx90632.c", i32 892, i32 3}
!42 = !{ptr @mlx90632_probe.__UNIQUE_ID_ddebug291, !41, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/temperature/mlx90632.c", i32 895, i32 3}
!45 = !{ptr @mlx90632_probe.__UNIQUE_ID_ddebug292, !44, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/temperature/mlx90632.c", i32 898, i32 3}
!48 = !{ptr @mlx90632_probe.__UNIQUE_ID_ddebug293, !47, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/temperature/mlx90632.c", i32 902, i32 3}
!51 = !{ptr @mlx90632_probe.__UNIQUE_ID_ddebug294, !50, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/temperature/mlx90632.c", i32 905, i32 3}
!54 = !{ptr @mlx90632_probe._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mlx90632_probe._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @mlx90632_regmap, !57, !"mlx90632_regmap", i1 false, i1 false}
!57 = !{!"../drivers/iio/temperature/mlx90632.c", i32 181, i32 35}
!58 = !{ptr @mlx90632_writeable_regs_tbl, !59, !"mlx90632_writeable_regs_tbl", i1 false, i1 false}
!59 = !{!"../drivers/iio/temperature/mlx90632.c", i32 176, i32 41}
!60 = !{ptr @mlx90632_no_write_reg_range, !61, !"mlx90632_no_write_reg_range", i1 false, i1 false}
!61 = !{!"../drivers/iio/temperature/mlx90632.c", i32 170, i32 34}
!62 = !{ptr @mlx90632_readable_regs_tbl, !63, !"mlx90632_readable_regs_tbl", i1 false, i1 false}
!63 = !{!"../drivers/iio/temperature/mlx90632.c", i32 165, i32 41}
!64 = !{ptr @mlx90632_read_reg_range, !65, !"mlx90632_read_reg_range", i1 false, i1 false}
!65 = !{!"../drivers/iio/temperature/mlx90632.c", i32 154, i32 34}
!66 = !{ptr @mlx90632_volatile_regs_tbl, !67, !"mlx90632_volatile_regs_tbl", i1 false, i1 false}
!67 = !{!"../drivers/iio/temperature/mlx90632.c", i32 149, i32 41}
!68 = !{ptr @mlx90632_volatile_reg_range, !69, !"mlx90632_volatile_reg_range", i1 false, i1 false}
!69 = !{!"../drivers/iio/temperature/mlx90632.c", i32 141, i32 34}
!70 = !{ptr @mlx90632_info, !71, !"mlx90632_info", i1 false, i1 false}
!71 = !{!"../drivers/iio/temperature/mlx90632.c", i32 816, i32 30}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/temperature/mlx90632.c", i32 233, i32 3}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mlx90632_perform_measurement._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mlx90632_perform_measurement._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mlx90632_channels, !78, !"mlx90632_channels", i1 false, i1 false}
!78 = !{!"../drivers/iio/temperature/mlx90632.c", i32 800, i32 35}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/temperature/mlx90632.c", i32 835, i32 3}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mlx90632_wakeup._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mlx90632_wakeup._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/temperature/mlx90632.c", i32 840, i32 2}
!86 = !{ptr @mlx90632_wakeup.__UNIQUE_ID_ddebug290, !85, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/temperature/mlx90632.c", i32 825, i32 2}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mlx90632_sleep.__UNIQUE_ID_ddebug289, !88, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!91 = !{ptr @mlx90632_of_match, !92, !"mlx90632_of_match", i1 false, i1 false}
!92 = !{!"../drivers/iio/temperature/mlx90632.c", i32 949, i32 34}
!93 = !{ptr @mlx90632_pm_ops, !94, !"mlx90632_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/iio/temperature/mlx90632.c", i32 971, i32 8}
!95 = !{ptr @mlx90632_id, !96, !"mlx90632_id", i1 false, i1 false}
!96 = !{!"../drivers/iio/temperature/mlx90632.c", i32 943, i32 35}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i64 2148784252, i64 2148784257, i64 2148784270, i64 2148784314, i64 2148784348, i64 2148784369}
!108 = !{i64 2148216006}
!109 = !{i64 700829, i64 700854, i64 700876, i64 700892, i64 700904, i64 700924, i64 700948, i64 700964, i64 700976}
!110 = !{i64 2148216194}
