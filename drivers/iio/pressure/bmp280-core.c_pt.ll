; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/bmp280-core.c_pt.bc'
source_filename = "../drivers/iio/pressure/bmp280-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bmp280_common_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bmp280_common_probe\09\09\09\09"
module asm "\09.long\09__crc_bmp280_common_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmp280_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bmp280_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bmp280_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bmp280_dev_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bmp280_dev_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_bmp280_dev_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmp280_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bmp280_dev_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bmp280_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bmp280_chip_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bmp280_data = type { ptr, %struct.mutex, ptr, %struct.completion, i8, ptr, %union.anon.85, [2 x %struct.regulator_bulk_data], i32, i8, i8, i8, i32 }
%union.anon.85 = type { %struct.bmp280_calib }
%struct.bmp280_calib = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i16, i16, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.bmp180_calib = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@bmp280_common_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@bmp280_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 33554434, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 33554434, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 33554434, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@bmp280_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @bmp280_read_raw, ptr null, ptr @bmp280_read_avail, ptr @bmp280_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bmp180_chip_info = internal constant { %struct.bmp280_chip_info, [56 x i8] } { %struct.bmp280_chip_info { ptr @bmp180_oversampling_temp_avail, i32 1, ptr @bmp180_oversampling_press_avail, i32 4, ptr null, i32 0, ptr @bmp180_chip_config, ptr @bmp180_read_temp, ptr @bmp180_read_press, ptr null }, [56 x i8] zeroinitializer }, align 32
@bmp280_chip_info = internal constant { %struct.bmp280_chip_info, [56 x i8] } { %struct.bmp280_chip_info { ptr @bmp280_oversampling_avail, i32 5, ptr @bmp280_oversampling_avail, i32 5, ptr null, i32 0, ptr @bmp280_chip_config, ptr @bmp280_read_temp, ptr @bmp280_read_press, ptr null }, [56 x i8] zeroinitializer }, align 32
@bme280_chip_info = internal constant { %struct.bmp280_chip_info, [56 x i8] } { %struct.bmp280_chip_info { ptr @bmp280_oversampling_avail, i32 5, ptr @bmp280_oversampling_avail, i32 5, ptr @bmp280_oversampling_avail, i32 5, ptr @bme280_chip_config, ptr @bmp280_read_temp, ptr @bmp280_read_press, ptr @bmp280_read_humid }, [56 x i8] zeroinitializer }, align 32
@bmp280_supply_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.44, ptr @.str.45], [24 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1047, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bmp280_common_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/pressure/bmp280-core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry_ptr = internal global ptr @bmp280_common_probe._entry, section ".printk_index", align 4
@bmp280_common_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1053, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry_ptr.8 = internal global ptr @bmp280_common_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1069, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"release reset\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry_ptr.13 = internal global ptr @bmp280_common_probe._entry.10, section ".printk_index", align 4
@bmp280_common_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad chip id: expected %x got %x\0A\00", [63 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry_ptr.16 = internal global ptr @bmp280_common_probe._entry.14, section ".printk_index", align 4
@bmp280_common_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1098, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read calibration coefficients\0A\00", [55 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry_ptr.19 = internal global ptr @bmp280_common_probe._entry.17, section ".printk_index", align 4
@bmp280_common_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bmp280_common_probe._entry_ptr.21 = internal global ptr @bmp280_common_probe._entry.20, section ".printk_index", align 4
@__kstrtab_bmp280_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmp280_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bmp280_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmp280_common_probe to i32), ptr @__kstrtab_bmp280_common_probe, ptr @__kstrtabns_bmp280_common_probe }, section "___ksymtab+bmp280_common_probe", align 4
@bmp280_dev_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bmp280_runtime_suspend, ptr @bmp280_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bmp280_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmp280_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bmp280_dev_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmp280_dev_pm_ops to i32), ptr @__kstrtab_bmp280_dev_pm_ops, ptr @__kstrtabns_bmp280_dev_pm_ops }, section "___ksymtab+bmp280_dev_pm_ops", align 4
@__UNIQUE_ID_author293 = internal constant [50 x i8] c"bmp280.author=Vlad Dogaru <vlad.dogaru@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [92 x i8] c"bmp280.description=Driver for Bosch Sensortec BMP180/BMP280 pressure and temperature sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [40 x i8] c"bmp280.file=drivers/iio/pressure/bmp280\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"bmp280.license=GPL v2\00", section ".modinfo", align 1
@bmp180_oversampling_temp_avail = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@bmp180_oversampling_press_avail = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__const.bmp180_measure.conversion_time_max = private unnamed_addr constant [4 x i32] [i32 4500, i32 7500, i32 13500, i32 25500], align 4
@bmp180_measure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout waiting for completion\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bmp180_measure\00", [17 x i8] zeroinitializer }, align 32
@bmp180_measure._entry_ptr = internal global ptr @bmp180_measure._entry, section ".printk_index", align 4
@bmp280_oversampling_avail = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16], [44 x i8] zeroinitializer }, align 32
@bmp280_chip_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to write ctrl_meas register\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bmp280_chip_config\00", [45 x i8] zeroinitializer }, align 32
@bmp280_chip_config._entry_ptr = internal global ptr @bmp280_chip_config._entry, section ".printk_index", align 4
@bmp280_chip_config._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 633, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write config register\0A\00", [63 x i8] zeroinitializer }, align 32
@bmp280_chip_config._entry_ptr.28 = internal global ptr @bmp280_chip_config._entry.26, section ".printk_index", align 4
@bmp280_read_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read temperature\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmp280_read_temp\00", [47 x i8] zeroinitializer }, align 32
@bmp280_read_temp._entry_ptr = internal global ptr @bmp280_read_temp._entry, section ".printk_index", align 4
@bmp280_read_temp._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reading temperature skipped\0A\00", [35 x i8] zeroinitializer }, align 32
@bmp280_read_temp._entry_ptr.33 = internal global ptr @bmp280_read_temp._entry.31, section ".printk_index", align 4
@bmp280_read_press._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read pressure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmp280_read_press\00", [46 x i8] zeroinitializer }, align 32
@bmp280_read_press._entry_ptr = internal global ptr @bmp280_read_press._entry, section ".printk_index", align 4
@bmp280_read_press._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading pressure skipped\0A\00", [38 x i8] zeroinitializer }, align 32
@bmp280_read_press._entry_ptr.38 = internal global ptr @bmp280_read_press._entry.36, section ".printk_index", align 4
@bmp280_read_humid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read humidity\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmp280_read_humid\00", [46 x i8] zeroinitializer }, align 32
@bmp280_read_humid._entry_ptr = internal global ptr @bmp280_read_humid._entry, section ".printk_index", align 4
@bmp280_read_humid._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading humidity skipped\0A\00", [38 x i8] zeroinitializer }, align 32
@bmp280_read_humid._entry_ptr.43 = internal global ptr @bmp280_read_humid._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddd\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to read temperature calibration parameters\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmp280_read_calib\00", [46 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr = internal global ptr @bmp280_read_calib._entry, section ".printk_index", align 4
@bmp280_read_calib._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to read pressure calibration parameters\0A\00", [48 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr.50 = internal global ptr @bmp280_read_calib._entry.48, section ".printk_index", align 4
@bmp280_read_calib._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read H1 comp value\0A\00", [34 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr.53 = internal global ptr @bmp280_read_calib._entry.51, section ".printk_index", align 4
@bmp280_read_calib._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read H2 comp value\0A\00", [34 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr.56 = internal global ptr @bmp280_read_calib._entry.54, section ".printk_index", align 4
@bmp280_read_calib._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read H3 comp value\0A\00", [34 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr.59 = internal global ptr @bmp280_read_calib._entry.57, section ".printk_index", align 4
@bmp280_read_calib._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read H4 comp value\0A\00", [34 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr.62 = internal global ptr @bmp280_read_calib._entry.60, section ".printk_index", align 4
@bmp280_read_calib._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read H5 comp value\0A\00", [34 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr.65 = internal global ptr @bmp280_read_calib._entry.63, section ".printk_index", align 4
@bmp280_read_calib._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.47, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read H6 comp value\0A\00", [34 x i8] zeroinitializer }, align 32
@bmp280_read_calib._entry_ptr.68 = internal global ptr @bmp280_read_calib._entry.66, section ".printk_index", align 4
@bmp085_fetch_eoc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 948, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"non-rising trigger given for EOC interrupt, trying to enforce it\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bmp085_fetch_eoc_irq\00", [43 x i8] zeroinitializer }, align 32
@bmp085_fetch_eoc_irq._entry_ptr = internal global ptr @bmp085_fetch_eoc_irq._entry, section ".printk_index", align 4
@bmp085_fetch_eoc_irq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to request DRDY IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@bmp085_fetch_eoc_irq._entry_ptr.73 = internal global ptr @bmp085_fetch_eoc_irq._entry.71, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 85, i64 88, i64 96]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 85, i64 88, i64 96]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 25]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 17, i64 18]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 17, i64 18]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 17, i64 18]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1004, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"bmp280_channels\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 132, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"bmp280_info\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 605, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"bmp180_chip_info\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 915, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"bmp280_chip_info\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 642, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"bme280_chip_info\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 672, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"bmp280_supply_names\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 77, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1047, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1053, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1066, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1069, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1078, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1097, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1104, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"bmp280_dev_pm_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1162, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant [31 x i8] c"bmp180_oversampling_temp_avail\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 912, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant [32 x i8] c"bmp180_oversampling_press_avail\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 913, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 711, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"bmp280_oversampling_avail\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 640, i32 18 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 623, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 632, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 344, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 351, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 383, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 390, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 415, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 422, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 78, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 78, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 166, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 182, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 212, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 219, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 226, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 233, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 241, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 248, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 948, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private constant [38 x i8] c"../drivers/iio/pressure/bmp280-core.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 963, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 87, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__ksymtab_bmp280_common_probe, ptr @__ksymtab_bmp280_dev_pm_ops, ptr @bmp085_fetch_eoc_irq._entry, ptr @bmp085_fetch_eoc_irq._entry.71, ptr @bmp085_fetch_eoc_irq._entry_ptr, ptr @bmp085_fetch_eoc_irq._entry_ptr.73, ptr @bmp180_measure._entry, ptr @bmp180_measure._entry_ptr, ptr @bmp280_chip_config._entry, ptr @bmp280_chip_config._entry.26, ptr @bmp280_chip_config._entry_ptr, ptr @bmp280_chip_config._entry_ptr.28, ptr @bmp280_common_probe._entry, ptr @bmp280_common_probe._entry.10, ptr @bmp280_common_probe._entry.14, ptr @bmp280_common_probe._entry.17, ptr @bmp280_common_probe._entry.20, ptr @bmp280_common_probe._entry.6, ptr @bmp280_common_probe._entry_ptr, ptr @bmp280_common_probe._entry_ptr.13, ptr @bmp280_common_probe._entry_ptr.16, ptr @bmp280_common_probe._entry_ptr.19, ptr @bmp280_common_probe._entry_ptr.21, ptr @bmp280_common_probe._entry_ptr.8, ptr @bmp280_read_calib._entry, ptr @bmp280_read_calib._entry.48, ptr @bmp280_read_calib._entry.51, ptr @bmp280_read_calib._entry.54, ptr @bmp280_read_calib._entry.57, ptr @bmp280_read_calib._entry.60, ptr @bmp280_read_calib._entry.63, ptr @bmp280_read_calib._entry.66, ptr @bmp280_read_calib._entry_ptr, ptr @bmp280_read_calib._entry_ptr.50, ptr @bmp280_read_calib._entry_ptr.53, ptr @bmp280_read_calib._entry_ptr.56, ptr @bmp280_read_calib._entry_ptr.59, ptr @bmp280_read_calib._entry_ptr.62, ptr @bmp280_read_calib._entry_ptr.65, ptr @bmp280_read_calib._entry_ptr.68, ptr @bmp280_read_humid._entry, ptr @bmp280_read_humid._entry.41, ptr @bmp280_read_humid._entry_ptr, ptr @bmp280_read_humid._entry_ptr.43, ptr @bmp280_read_press._entry, ptr @bmp280_read_press._entry.36, ptr @bmp280_read_press._entry_ptr, ptr @bmp280_read_press._entry_ptr.38, ptr @bmp280_read_temp._entry, ptr @bmp280_read_temp._entry.31, ptr @bmp280_read_temp._entry_ptr, ptr @bmp280_read_temp._entry_ptr.33, ptr @bmp280_common_probe.__key, ptr @.str, ptr @bmp280_channels, ptr @bmp280_info, ptr @bmp180_chip_info, ptr @bmp280_chip_info, ptr @bme280_chip_info, ptr @bmp280_supply_names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @bmp280_dev_pm_ops, ptr @bmp180_oversampling_temp_avail, ptr @bmp180_oversampling_press_avail, ptr @.str.22, ptr @.str.23, ptr @bmp280_oversampling_avail, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @init_completion.__key, ptr @.str.74], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_common_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp180_chip_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_chip_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme280_chip_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_supply_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_common_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_common_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_common_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_common_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_common_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_common_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp180_oversampling_temp_avail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp180_oversampling_press_avail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp180_measure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_oversampling_avail to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_chip_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_chip_config._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_temp._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_press._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_press._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_humid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_humid._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_read_calib._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp085_fetch_eoc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp085_fetch_eoc_irq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmp280_common_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %chip, ptr noundef %name, i32 noundef %irq) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %l16.i = alloca i16, align 2
  %b16.i = alloca i16, align 2
  %t_buf.i = alloca [3 x i16], align 2
  %p_buf.i = alloca [9 x i16], align 2
  %chip_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id) #8
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chip_id, align 4, !annotation !162
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 236) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @bmp280_common_probe.__key) #8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %2, align 4
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %name3, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bmp280_channels, ptr %channels, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bmp280_info, ptr %info, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %8 = zext i32 %chip to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %chip, label %if.end.cleanup_crit_edge [
    i32 85, label %sw.bb
    i32 88, label %sw.bb4
    i32 96, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_channels, align 4
  %chip_info = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bmp180_chip_info, ptr %chip_info, align 4
  %oversampling_press = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 9
  %11 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %oversampling_press, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_channels5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %num_channels5, align 4
  %chip_info6 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %chip_info6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bmp280_chip_info, ptr %chip_info6, align 4
  %oversampling_press7 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 9
  %14 = ptrtoint ptr %oversampling_press7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %oversampling_press7, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_channels11 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %num_channels11, align 4
  %chip_info12 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 5
  %16 = ptrtoint ptr %chip_info12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bme280_chip_info, ptr %chip_info12, align 4
  %oversampling_press13 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 9
  %17 = ptrtoint ptr %oversampling_press13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %oversampling_press13, align 4
  %oversampling_humid = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 11
  %18 = ptrtoint ptr %oversampling_humid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %oversampling_humid, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb4, %sw.bb
  %.sink209 = phi i8 [ 1, %sw.bb10 ], [ 1, %sw.bb4 ], [ 0, %sw.bb ]
  %.sink = phi i32 [ 2000, %sw.bb10 ], [ 2000, %sw.bb4 ], [ 10000, %sw.bb ]
  %oversampling_temp14 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 10
  %19 = ptrtoint ptr %oversampling_temp14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink209, ptr %oversampling_temp14, align 1
  %start_up_time15 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 8
  %20 = ptrtoint ptr %start_up_time15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %start_up_time15, align 4
  %supplies = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 7
  tail call void @regulator_bulk_set_supply_names(ptr noundef %supplies, ptr noundef nonnull @bmp280_supply_names, i32 noundef 2) #8
  %call18 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %call27 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @bmp280_regulators_disable, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end39, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call.i205 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %start_up_time40 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 8
  %21 = ptrtoint ptr %start_up_time40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_up_time40, align 4
  %add = add i32 %22, 100
  tail call void @usleep_range_state(i32 noundef %22, i32 noundef %add, i32 noundef 2) #8
  %call42 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 7) #8
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end39.if.end48_crit_edge, label %do.end47

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  tail call void @gpiod_set_value(ptr noundef nonnull %call42, i32 noundef 0) #8
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end39.if.end48_crit_edge
  %regmap49 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 2
  %23 = ptrtoint ptr %regmap49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %regmap, ptr %regmap49, align 4
  %call50 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 208, ptr noundef nonnull %chip_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp = icmp slt i32 %call50, 0
  br i1 %cmp, label %if.end48.cleanup_crit_edge, label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %24 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %chip)
  %cmp53.not = icmp eq i32 %25, %chip
  br i1 %cmp53.not, label %if.end58, label %do.end57

do.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %chip, i32 noundef %25) #11
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %chip_info59 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 5
  %26 = ptrtoint ptr %chip_info59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip_info59, align 4
  %chip_config = getelementptr inbounds %struct.bmp280_chip_info, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %chip_config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip_config, align 4
  %call60 = call i32 %29(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end58.cleanup_crit_edge, label %if.end63

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %driver_data.i, align 4
  %31 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_id, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %32, label %if.end63.if.end87_crit_edge [
    i32 85, label %if.then65
    i32 88, label %if.end63.if.then76_crit_edge
    i32 96, label %if.end63.if.then76_crit_edge210
  ]

if.end63.if.then76_crit_edge210:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end63.if.then76_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end63.if.end87_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then65:                                        ; preds = %if.end63
  %calib = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6
  %call66 = call fastcc i32 @bmp180_read_calib(ptr noundef %2, ptr noundef %calib)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.then65.if.end87_crit_edge

if.then65.if.end87_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

do.end71:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.then76:                                        ; preds = %if.end63.if.then76_crit_edge, %if.end63.if.then76_crit_edge210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %tmp.i, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %l16.i) #8
  %37 = ptrtoint ptr %l16.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %l16.i, align 2, !annotation !162
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b16.i) #8
  %38 = ptrtoint ptr %b16.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %b16.i, align 2, !annotation !162
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %t_buf.i) #8
  %41 = ptrtoint ptr %t_buf.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %t_buf.i, align 2, !annotation !162
  %42 = getelementptr inbounds [3 x i16], ptr %t_buf.i, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %42, align 2, !annotation !162
  %44 = getelementptr inbounds [3 x i16], ptr %t_buf.i, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %44, align 2, !annotation !162
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %p_buf.i) #8
  %46 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 1
  %47 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 2
  %48 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 3
  %49 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 4
  %50 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 5
  %51 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 6
  %52 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 7
  %53 = getelementptr inbounds [9 x i16], ptr %p_buf.i, i32 0, i32 8
  %54 = call ptr @memset(ptr %p_buf.i, i32 255, i32 18)
  %55 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap49, align 4
  %call.i193 = call i32 @regmap_bulk_read(ptr noundef %56, i32 noundef 136, ptr noundef nonnull %t_buf.i, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp.i = icmp slt i32 %call.i193, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.46) #11
  br label %do.end83

if.end.i:                                         ; preds = %if.then76
  %calib77 = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6
  call void @add_device_randomness(ptr noundef nonnull %t_buf.i, i32 noundef 6) #8
  %59 = ptrtoint ptr %t_buf.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %t_buf.i, align 2
  %61 = call i16 @llvm.bswap.i16(i16 %60) #8
  %62 = ptrtoint ptr %calib77 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %calib77, align 2
  %63 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %42, align 2
  %65 = call i16 @llvm.bswap.i16(i16 %64) #8
  %T2.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 1
  %66 = ptrtoint ptr %T2.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %T2.i, align 2
  %67 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %44, align 2
  %69 = call i16 @llvm.bswap.i16(i16 %68) #8
  %T3.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 2
  %70 = ptrtoint ptr %T3.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %T3.i, align 2
  %71 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap49, align 4
  %call8.i = call i32 @regmap_bulk_read(ptr noundef %72, i32 noundef 142, ptr noundef nonnull %p_buf.i, i32 noundef 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %if.end15.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.49) #11
  br label %do.end83

if.end15.i:                                       ; preds = %if.end.i
  call void @add_device_randomness(ptr noundef nonnull %p_buf.i, i32 noundef 18) #8
  %75 = ptrtoint ptr %p_buf.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %p_buf.i, align 2
  %77 = call i16 @llvm.bswap.i16(i16 %76) #8
  %P1.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 3
  %78 = ptrtoint ptr %P1.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %P1.i, align 2
  %79 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %46, align 2
  %81 = call i16 @llvm.bswap.i16(i16 %80) #8
  %P2.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 4
  %82 = ptrtoint ptr %P2.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %P2.i, align 2
  %83 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %47, align 2
  %85 = call i16 @llvm.bswap.i16(i16 %84) #8
  %P3.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 5
  %86 = ptrtoint ptr %P3.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %P3.i, align 2
  %87 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %48, align 2
  %89 = call i16 @llvm.bswap.i16(i16 %88) #8
  %P4.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 6
  %90 = ptrtoint ptr %P4.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %P4.i, align 2
  %91 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %49, align 2
  %93 = call i16 @llvm.bswap.i16(i16 %92) #8
  %P5.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 7
  %94 = ptrtoint ptr %P5.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %P5.i, align 2
  %95 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %50, align 2
  %97 = call i16 @llvm.bswap.i16(i16 %96) #8
  %P6.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 8
  %98 = ptrtoint ptr %P6.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %P6.i, align 2
  %99 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %51, align 2
  %101 = call i16 @llvm.bswap.i16(i16 %100) #8
  %P7.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 9
  %102 = ptrtoint ptr %P7.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %P7.i, align 2
  %103 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %52, align 2
  %105 = call i16 @llvm.bswap.i16(i16 %104) #8
  %P8.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 10
  %106 = ptrtoint ptr %P8.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %P8.i, align 2
  %107 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %53, align 2
  %109 = call i16 @llvm.bswap.i16(i16 %108) #8
  %P9.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 11
  %110 = ptrtoint ptr %P9.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %P9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %32)
  %cmp26.not.i = icmp eq i32 %32, 96
  br i1 %cmp26.not.i, label %if.end28.i, label %if.end15.i.bmp280_read_calib.exit_crit_edge

if.end15.i.bmp280_read_calib.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp280_read_calib.exit

if.end28.i:                                       ; preds = %if.end15.i
  %111 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap49, align 4
  %call30.i = call i32 @regmap_read(ptr noundef %112, i32 noundef 161, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end35.i, label %if.end36.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.52) #11
  br label %do.end83

if.end36.i:                                       ; preds = %if.end28.i
  %113 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tmp.i, align 4
  %conv.i = trunc i32 %114 to i8
  %H1.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 12
  %115 = ptrtoint ptr %H1.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i, ptr %H1.i, align 2
  %116 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap49, align 4
  %call38.i = call i32 @regmap_bulk_read(ptr noundef %117, i32 noundef 225, ptr noundef nonnull %l16.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %do.end44.i, label %if.end45.i

do.end44.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.55) #11
  br label %do.end83

if.end45.i:                                       ; preds = %if.end36.i
  %118 = ptrtoint ptr %l16.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %l16.i, align 2
  %120 = call i16 @llvm.bswap.i16(i16 %119) #8
  %H2.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 13
  %121 = ptrtoint ptr %H2.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %H2.i, align 2
  %122 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap49, align 4
  %call50.i = call i32 @regmap_read(ptr noundef %123, i32 noundef 227, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %do.end56.i, label %if.end57.i

do.end56.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.58) #11
  br label %do.end83

if.end57.i:                                       ; preds = %if.end45.i
  %124 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tmp.i, align 4
  %conv58.i = trunc i32 %125 to i8
  %H3.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 14
  %126 = ptrtoint ptr %H3.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv58.i, ptr %H3.i, align 2
  %127 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap49, align 4
  %call60.i = call i32 @regmap_bulk_read(ptr noundef %128, i32 noundef 228, ptr noundef nonnull %b16.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %do.end66.i, label %if.end67.i

do.end66.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.61) #11
  br label %do.end83

if.end67.i:                                       ; preds = %if.end57.i
  %129 = ptrtoint ptr %b16.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %b16.i, align 2
  %conv68.i = zext i16 %130 to i32
  %131 = lshr i32 %conv68.i, 4
  %and.i = and i32 %131, 4080
  %and70.i = and i32 %conv68.i, 15
  %or.i = or i32 %and.i, %and70.i
  %shl.i151.i = shl nuw i32 %or.i, 20
  %shr.i152.i = ashr exact i32 %shl.i151.i, 20
  %conv72.i = trunc i32 %shr.i152.i to i16
  %H4.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 15
  %132 = ptrtoint ptr %H4.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv72.i, ptr %H4.i, align 2
  %133 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regmap49, align 4
  %call74.i = call i32 @regmap_bulk_read(ptr noundef %134, i32 noundef 229, ptr noundef nonnull %l16.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %cmp75.i = icmp slt i32 %call74.i, 0
  br i1 %cmp75.i, label %do.end80.i, label %if.end81.i

do.end80.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.64) #11
  br label %do.end83

if.end81.i:                                       ; preds = %if.end67.i
  %135 = ptrtoint ptr %l16.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %l16.i, align 2
  %137 = call i16 @llvm.bswap.i16(i16 %136) #8
  %138 = lshr i16 %137, 4
  %139 = zext i16 %138 to i32
  %shl.i153.i = shl nuw i32 %139, 20
  %shr.i154.i = ashr exact i32 %shl.i153.i, 20
  %conv86.i = trunc i32 %shr.i154.i to i16
  %H5.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 16
  %140 = ptrtoint ptr %H5.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv86.i, ptr %H5.i, align 2
  %141 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap49, align 4
  %call88.i = call i32 @regmap_read(ptr noundef %142, i32 noundef 231, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %do.end94.i, label %if.end95.i

do.end94.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.67) #11
  br label %do.end83

if.end95.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tmp.i, align 4
  %conv97.i = trunc i32 %144 to i8
  %H6.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 6, i32 0, i32 17
  %145 = ptrtoint ptr %H6.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv97.i, ptr %H6.i, align 2
  br label %bmp280_read_calib.exit

bmp280_read_calib.exit:                           ; preds = %if.end95.i, %if.end15.i.bmp280_read_calib.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %p_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %t_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b16.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %l16.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %if.end87

do.end83:                                         ; preds = %do.end94.i, %do.end80.i, %do.end66.i, %do.end56.i, %do.end44.i, %do.end35.i, %do.end13.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call88.i, %do.end94.i ], [ %call74.i, %do.end80.i ], [ %call60.i, %do.end66.i ], [ %call50.i, %do.end56.i ], [ %call38.i, %do.end44.i ], [ %call30.i, %do.end35.i ], [ %call8.i, %do.end13.i ], [ %call.i193, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %p_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %t_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b16.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %l16.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %146 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end87:                                         ; preds = %bmp280_read_calib.exit, %if.then65.if.end87_crit_edge, %if.end63.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp88 = icmp sgt i32 %irq, 0
  br i1 %cmp88, label %if.end87.if.then91_crit_edge, label %lor.lhs.false89

if.end87.if.then91_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91

lor.lhs.false89:                                  ; preds = %if.end87
  %148 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %149)
  %cmp90 = icmp eq i32 %149, 85
  br i1 %cmp90, label %lor.lhs.false89.if.then91_crit_edge, label %lor.lhs.false89.if.end96_crit_edge

lor.lhs.false89.if.end96_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

lor.lhs.false89.if.then91_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91

if.then91:                                        ; preds = %lor.lhs.false89.if.then91_crit_edge, %if.end87.if.then91_crit_edge
  %call.i194 = call ptr @irq_get_irq_data(i32 noundef %irq) #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i194, i32 0, i32 3
  %150 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %common.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %and.i.i = and i32 %153, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.not.i, label %if.then91.if.end.i197_crit_edge, label %do.end.i195

if.then91.if.end.i197_crit_edge:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i197

do.end.i195:                                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #11
  br label %if.end.i197

if.end.i197:                                      ; preds = %do.end.i195, %if.then91.if.end.i197_crit_edge
  %done.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 3
  %154 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_completion.__key) #8
  %call2.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef nonnull @bmp085_eoc_irq, ptr noundef null, i32 noundef 1, ptr noundef %name, ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i196 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i196, label %if.end7.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #11
  br label %if.end96

if.end7.i:                                        ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #10
  %use_eoc.i = getelementptr inbounds %struct.bmp280_data, ptr %2, i32 0, i32 4
  %155 = ptrtoint ptr %use_eoc.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %use_eoc.i, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end7.i, %do.end6.i, %lor.lhs.false89.if.end96_crit_edge
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %156 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !163
  %call.i198 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %157 = ptrtoint ptr %start_up_time40 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %start_up_time40, align 4
  %div = udiv i32 %158, 10
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef %div) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i199 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  %call.i200 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @bmp280_pm_disable, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool.not.i201 = icmp eq i32 %call.i200, 0
  br i1 %tobool.not.i201, label %if.end103, label %if.then.i202

if.then.i202:                                     ; preds = %if.end96
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %159 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !165
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i202.devm_add_action_or_reset.exit204_crit_edge, label %do.end11.i.i.i.i.i

if.then.i202.devm_add_action_or_reset.exit204_crit_edge: ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_add_action_or_reset.exit204

do.end11.i.i.i.i.i:                               ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  br label %devm_add_action_or_reset.exit204

devm_add_action_or_reset.exit204:                 ; preds = %do.end11.i.i.i.i.i, %if.then.i202.devm_add_action_or_reset.exit204_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

if.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %call104 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %devm_add_action_or_reset.exit204, %do.end83, %do.end71, %if.end58.cleanup_crit_edge, %do.end57, %if.end48.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end32, %do.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ %call27, %do.end32 ], [ -22, %do.end57 ], [ %call66, %do.end71 ], [ %call104, %if.end103 ], [ %retval.0.i.ph, %do.end83 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call60, %if.end58.cleanup_crit_edge ], [ %call.i200, %devm_add_action_or_reset.exit204 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_set_supply_names(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bmp280_regulators_disable(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmp180_read_calib(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %calib) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [11 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [11 x i16], ptr %buf, i32 0, i32 10
  %regmap = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %10 = call ptr @memset(ptr %buf, i32 255, i32 22)
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 170, ptr noundef nonnull %buf, i32 noundef 22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buf, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %14, label %for.inc [
    i16 0, label %for.body.preheader.cleanup_crit_edge
    i16 -1, label %for.body.preheader.cleanup_crit_edge39
  ]

for.body.preheader.cleanup_crit_edge39:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %0, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %17, label %for.inc.1 [
    i16 0, label %for.inc.cleanup_crit_edge
    i16 -1, label %for.inc.cleanup_crit_edge40
  ]

for.inc.cleanup_crit_edge40:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %20, label %for.inc.2 [
    i16 0, label %for.inc.1.cleanup_crit_edge
    i16 -1, label %for.inc.1.cleanup_crit_edge41
  ]

for.inc.1.cleanup_crit_edge41:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %2, align 2
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %23, label %for.inc.3 [
    i16 0, label %for.inc.2.cleanup_crit_edge
    i16 -1, label %for.inc.2.cleanup_crit_edge42
  ]

for.inc.2.cleanup_crit_edge42:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %3, align 2
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %26, label %for.inc.4 [
    i16 0, label %for.inc.3.cleanup_crit_edge
    i16 -1, label %for.inc.3.cleanup_crit_edge43
  ]

for.inc.3.cleanup_crit_edge43:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %4, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %29, label %for.inc.5 [
    i16 0, label %for.inc.4.cleanup_crit_edge
    i16 -1, label %for.inc.4.cleanup_crit_edge44
  ]

for.inc.4.cleanup_crit_edge44:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %5, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %32, label %for.inc.6 [
    i16 0, label %for.inc.5.cleanup_crit_edge
    i16 -1, label %for.inc.5.cleanup_crit_edge45
  ]

for.inc.5.cleanup_crit_edge45:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %6, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %35, label %for.inc.7 [
    i16 0, label %for.inc.6.cleanup_crit_edge
    i16 -1, label %for.inc.6.cleanup_crit_edge46
  ]

for.inc.6.cleanup_crit_edge46:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %7, align 2
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %38, label %for.inc.8 [
    i16 0, label %for.inc.7.cleanup_crit_edge
    i16 -1, label %for.inc.7.cleanup_crit_edge47
  ]

for.inc.7.cleanup_crit_edge47:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %8, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %41, label %for.inc.9 [
    i16 0, label %for.inc.8.cleanup_crit_edge
    i16 -1, label %for.inc.8.cleanup_crit_edge48
  ]

for.inc.8.cleanup_crit_edge48:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %9, align 2
  %45 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %44, label %for.inc.10 [
    i16 0, label %for.inc.9.cleanup_crit_edge
    i16 -1, label %for.inc.9.cleanup_crit_edge49
  ]

for.inc.9.cleanup_crit_edge49:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef nonnull %buf, i32 noundef 22) #8
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %buf, align 2
  %48 = ptrtoint ptr %calib to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %calib, align 2
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %0, align 2
  %AC2 = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 1
  %51 = ptrtoint ptr %AC2 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %AC2, align 2
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %1, align 2
  %AC3 = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 2
  %54 = ptrtoint ptr %AC3 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %AC3, align 2
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %2, align 2
  %AC4 = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 3
  %57 = ptrtoint ptr %AC4 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %AC4, align 2
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %3, align 2
  %AC5 = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 4
  %60 = ptrtoint ptr %AC5 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %AC5, align 2
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %4, align 2
  %AC6 = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 5
  %63 = ptrtoint ptr %AC6 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %AC6, align 2
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %5, align 2
  %B1 = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 6
  %66 = ptrtoint ptr %B1 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %B1, align 2
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %6, align 2
  %B2 = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 7
  %69 = ptrtoint ptr %B2 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %B2, align 2
  %70 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %7, align 2
  %MB = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 8
  %72 = ptrtoint ptr %MB to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %MB, align 2
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %8, align 2
  %MC = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 9
  %75 = ptrtoint ptr %MC to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %MC, align 2
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %9, align 2
  %MD = getelementptr inbounds %struct.bmp180_calib, ptr %calib, i32 0, i32 10
  %78 = ptrtoint ptr %MD to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %MD, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.inc.10, %for.inc.9.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge49, %for.inc.8.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge48, %for.inc.7.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge47, %for.inc.6.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge46, %for.inc.5.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge45, %for.inc.4.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge44, %for.inc.3.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge43, %for.inc.2.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge42, %for.inc.1.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge41, %for.inc.cleanup_crit_edge, %for.inc.cleanup_crit_edge40, %for.body.preheader.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.10 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %for.inc.9.cleanup_crit_edge ], [ -5, %for.inc.9.cleanup_crit_edge49 ], [ -5, %for.inc.8.cleanup_crit_edge ], [ -5, %for.inc.8.cleanup_crit_edge48 ], [ -5, %for.inc.7.cleanup_crit_edge ], [ -5, %for.inc.7.cleanup_crit_edge47 ], [ -5, %for.inc.6.cleanup_crit_edge ], [ -5, %for.inc.6.cleanup_crit_edge46 ], [ -5, %for.inc.5.cleanup_crit_edge ], [ -5, %for.inc.5.cleanup_crit_edge45 ], [ -5, %for.inc.4.cleanup_crit_edge ], [ -5, %for.inc.4.cleanup_crit_edge44 ], [ -5, %for.inc.3.cleanup_crit_edge ], [ -5, %for.inc.3.cleanup_crit_edge43 ], [ -5, %for.inc.2.cleanup_crit_edge ], [ -5, %for.inc.2.cleanup_crit_edge42 ], [ -5, %for.inc.1.cleanup_crit_edge ], [ -5, %for.inc.1.cleanup_crit_edge41 ], [ -5, %for.inc.cleanup_crit_edge ], [ -5, %for.inc.cleanup_crit_edge40 ], [ -5, %for.body.preheader.cleanup_crit_edge ], [ -5, %for.body.preheader.cleanup_crit_edge39 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bmp280_pm_disable(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %data, i32 noundef 4) #8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !165
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %supplies = getelementptr inbounds %struct.bmp280_data, ptr %3, i32 0, i32 7
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %supplies = getelementptr inbounds %struct.bmp280_data, ptr %3, i32 0, i32 7
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %start_up_time = getelementptr inbounds %struct.bmp280_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %start_up_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_up_time, align 4
  %add = add i32 %5, 100
  tail call void @usleep_range_state(i32 noundef %5, i32 noundef %add, i32 noundef 2) #8
  %chip_info = getelementptr inbounds %struct.bmp280_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info, align 4
  %chip_config = getelementptr inbounds %struct.bmp280_chip_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %chip_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_config, align 4
  %call4 = tail call i32 %9(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %lock = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %mask, label %entry.sw.epilog22_crit_edge [
    i32 1, label %sw.bb
    i32 25, label %sw.bb10
  ]

entry.sw.epilog22_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %6, label %sw.bb.sw.epilog22_crit_edge [
    i32 18, label %sw.bb2
    i32 17, label %sw.bb4
    i32 9, label %sw.bb7
  ]

sw.bb.sw.epilog22_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %chip_info = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info, align 4
  %read_humid = getelementptr inbounds %struct.bmp280_chip_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read_humid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_humid, align 4
  %call3 = tail call i32 %11(ptr noundef %1, ptr noundef %val, ptr noundef %val2) #8
  br label %sw.epilog22

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %chip_info5 = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %chip_info5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_info5, align 4
  %read_press = getelementptr inbounds %struct.bmp280_chip_info, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %read_press to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_press, align 4
  %call6 = tail call i32 %15(ptr noundef %1, ptr noundef %val, ptr noundef %val2) #8
  br label %sw.epilog22

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %chip_info8 = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_info8, align 4
  %read_temp = getelementptr inbounds %struct.bmp280_chip_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %read_temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_temp, align 4
  %call9 = tail call i32 %19(ptr noundef %1, ptr noundef %val) #8
  br label %sw.epilog22

sw.bb10:                                          ; preds = %entry
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %21, label %sw.bb10.sw.epilog22_crit_edge [
    i32 18, label %sw.bb12
    i32 17, label %sw.bb13
    i32 9, label %sw.bb16
  ]

sw.bb10.sw.epilog22_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb12:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %oversampling_humid = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %oversampling_humid to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %oversampling_humid, align 2
  %conv = zext i8 %24 to i32
  %shl = shl nuw i32 1, %conv
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %val, align 4
  br label %sw.epilog22

sw.bb13:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %oversampling_press = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %oversampling_press, align 4
  %conv14 = zext i8 %27 to i32
  %shl15 = shl nuw i32 1, %conv14
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl15, ptr %val, align 4
  br label %sw.epilog22

sw.bb16:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %oversampling_temp = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %oversampling_temp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %oversampling_temp, align 1
  %conv17 = zext i8 %30 to i32
  %shl18 = shl nuw i32 1, %conv17
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl18, ptr %val, align 4
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb16, %sw.bb13, %sw.bb12, %sw.bb10.sw.epilog22_crit_edge, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb.sw.epilog22_crit_edge, %entry.sw.epilog22_crit_edge
  %ret.0 = phi i32 [ 1, %sw.bb16 ], [ 1, %sw.bb13 ], [ 1, %sw.bb12 ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb2 ], [ -22, %sw.bb.sw.epilog22_crit_edge ], [ -22, %sw.bb10.sw.epilog22_crit_edge ], [ -22, %entry.sw.epilog22_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i47 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i47, ptr %last_busy.i, align 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i48 = tail call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmp280_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cond = icmp eq i32 %mask, 25
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %sw.bb.cleanup_crit_edge [
    i32 17, label %sw.bb2
    i32 9, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %chip_info = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info, align 4
  %oversampling_press_avail = getelementptr inbounds %struct.bmp280_chip_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %oversampling_press_avail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %oversampling_press_avail, align 4
  %9 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %vals, align 4
  %10 = load ptr, ptr %chip_info, align 4
  %num_oversampling_press_avail = getelementptr inbounds %struct.bmp280_chip_info, ptr %10, i32 0, i32 3
  br label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %chip_info5 = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %chip_info5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %vals, align 4
  %16 = load ptr, ptr %chip_info5, align 4
  %num_oversampling_temp_avail = getelementptr inbounds %struct.bmp280_chip_info, ptr %16, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2
  %storemerge.in = phi ptr [ %num_oversampling_temp_avail, %sw.bb4 ], [ %num_oversampling_press_avail, %sw.bb2 ]
  %17 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %length, align 4
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cond = icmp eq i32 %mask, 25
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %lock = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %5, label %sw.bb.sw.epilog_crit_edge [
    i32 18, label %sw.bb2
    i32 17, label %sw.bb4
    i32 9, label %sw.bb6
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %sw.bb
  %chip_info.i = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info.i, align 4
  %oversampling_humid_avail.i = getelementptr inbounds %struct.bmp280_chip_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %oversampling_humid_avail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oversampling_humid_avail.i, align 4
  %num_oversampling_humid_avail.i = getelementptr inbounds %struct.bmp280_chip_info, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %num_oversampling_humid_avail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_oversampling_humid_avail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp24.i = icmp sgt i32 %12, 0
  br i1 %cmp24.i, label %sw.bb2.for.body.i_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2.for.body.i_crit_edge:                      ; preds = %sw.bb2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.cond.i.sw.epilog_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb2.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %10, i32 %i.025.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp2.i = icmp eq i32 %14, %val
  br i1 %cmp2.i, label %cond.end6.i, label %for.cond.i

cond.end6.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i = icmp eq i32 %val, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #8, !range !167
  %16 = trunc i32 %15 to i8
  %17 = xor i8 %16, 31
  %conv8.i = select i1 %tobool.not.i.i.i, i8 -1, i8 %17
  %oversampling_humid.i = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %oversampling_humid.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8.i, ptr %oversampling_humid.i, align 2
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %sw.bb
  %chip_info.i24 = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %chip_info.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info.i24, align 4
  %oversampling_press_avail.i = getelementptr inbounds %struct.bmp280_chip_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %oversampling_press_avail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %oversampling_press_avail.i, align 4
  %num_oversampling_press_avail.i = getelementptr inbounds %struct.bmp280_chip_info, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %num_oversampling_press_avail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_oversampling_press_avail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24.i25 = icmp sgt i32 %24, 0
  br i1 %cmp24.i25, label %sw.bb4.for.body.i32_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4.for.body.i32_crit_edge:                    ; preds = %sw.bb4
  br label %for.body.i32

for.cond.i28:                                     ; preds = %for.body.i32
  %inc.i26 = add nuw nsw i32 %i.025.i29, 1
  %exitcond.not.i27 = icmp eq i32 %inc.i26, %24
  br i1 %exitcond.not.i27, label %for.cond.i28.sw.epilog_crit_edge, label %for.cond.i28.for.body.i32_crit_edge

for.cond.i28.for.body.i32_crit_edge:              ; preds = %for.cond.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i32

for.cond.i28.sw.epilog_crit_edge:                 ; preds = %for.cond.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i32:                                     ; preds = %for.cond.i28.for.body.i32_crit_edge, %sw.bb4.for.body.i32_crit_edge
  %i.025.i29 = phi i32 [ %inc.i26, %for.cond.i28.for.body.i32_crit_edge ], [ 0, %sw.bb4.for.body.i32_crit_edge ]
  %arrayidx.i30 = getelementptr i32, ptr %22, i32 %i.025.i29
  %25 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %val)
  %cmp2.i31 = icmp eq i32 %26, %val
  br i1 %cmp2.i31, label %cond.end6.i46, label %for.cond.i28

cond.end6.i46:                                    ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i38 = icmp eq i32 %val, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #8, !range !167
  %28 = trunc i32 %27 to i8
  %29 = xor i8 %28, 31
  %conv8.i43 = select i1 %tobool.not.i.i.i38, i8 -1, i8 %29
  %oversampling_press.i = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %oversampling_press.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv8.i43, ptr %oversampling_press.i, align 4
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %sw.bb
  %chip_info.i48 = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %chip_info.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip_info.i48, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %num_oversampling_temp_avail.i = getelementptr inbounds %struct.bmp280_chip_info, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %num_oversampling_temp_avail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_oversampling_temp_avail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp24.i49 = icmp sgt i32 %36, 0
  br i1 %cmp24.i49, label %sw.bb6.for.body.i56_crit_edge, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6.for.body.i56_crit_edge:                    ; preds = %sw.bb6
  br label %for.body.i56

for.cond.i52:                                     ; preds = %for.body.i56
  %inc.i50 = add nuw nsw i32 %i.025.i53, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i50, %36
  br i1 %exitcond.not.i51, label %for.cond.i52.sw.epilog_crit_edge, label %for.cond.i52.for.body.i56_crit_edge

for.cond.i52.for.body.i56_crit_edge:              ; preds = %for.cond.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i56

for.cond.i52.sw.epilog_crit_edge:                 ; preds = %for.cond.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i56:                                     ; preds = %for.cond.i52.for.body.i56_crit_edge, %sw.bb6.for.body.i56_crit_edge
  %i.025.i53 = phi i32 [ %inc.i50, %for.cond.i52.for.body.i56_crit_edge ], [ 0, %sw.bb6.for.body.i56_crit_edge ]
  %arrayidx.i54 = getelementptr i32, ptr %34, i32 %i.025.i53
  %37 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %val)
  %cmp2.i55 = icmp eq i32 %38, %val
  br i1 %cmp2.i55, label %cond.end6.i70, label %for.cond.i52

cond.end6.i70:                                    ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i62 = icmp eq i32 %val, 0
  %39 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #8, !range !167
  %40 = trunc i32 %39 to i8
  %41 = xor i8 %40, 31
  %conv8.i67 = select i1 %tobool.not.i.i.i62, i8 -1, i8 %41
  %oversampling_temp.i = getelementptr inbounds %struct.bmp280_data, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %oversampling_temp.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv8.i67, ptr %oversampling_temp.i, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cond.end6.i70, %cond.end6.i46, %cond.end6.i
  %.sink = phi ptr [ %32, %cond.end6.i70 ], [ %20, %cond.end6.i46 ], [ %8, %cond.end6.i ]
  %chip_config.i68 = getelementptr inbounds %struct.bmp280_chip_info, ptr %.sink, i32 0, i32 6
  %43 = ptrtoint ptr %chip_config.i68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip_config.i68, align 4
  %call10.i69 = tail call i32 %44(ptr noundef %1) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.cond.i52.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %for.cond.i28.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %sw.bb2.sw.epilog_crit_edge ], [ -22, %sw.bb4.sw.epilog_crit_edge ], [ -22, %sw.bb6.sw.epilog_crit_edge ], [ %call10.i69, %sw.epilog.sink.split ], [ -22, %for.cond.i.sw.epilog_crit_edge ], [ -22, %for.cond.i28.sw.epilog_crit_edge ], [ -22, %for.cond.i52.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i72 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 12, i32 22
  %47 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store volatile i64 %call.i72, ptr %last_busy.i, align 8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i73 = tail call i32 @__pm_runtime_suspend(ptr noundef %49, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmp180_chip_config(ptr nocapture noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp180_read_temp(ptr noundef %data, ptr noundef writeonly %val) #0 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #8
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp.i, align 2, !annotation !162
  %call.i = tail call fastcc i32 @bmp180_measure(ptr noundef %data, i8 noundef zeroext 46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bmp180_read_adc_temp.exit.thread_crit_edge

entry.bmp180_read_adc_temp.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp180_read_adc_temp.exit.thread

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 246, ptr noundef nonnull %tmp.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.bmp180_read_adc_temp.exit.thread_crit_edge

if.end.i.bmp180_read_adc_temp.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp180_read_adc_temp.exit.thread

bmp180_read_adc_temp.exit.thread:                 ; preds = %if.end.i.bmp180_read_adc_temp.exit.thread_crit_edge, %entry.bmp180_read_adc_temp.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.bmp180_read_adc_temp.exit.thread_crit_edge ], [ %call.i, %entry.bmp180_read_adc_temp.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tmp.i, align 2
  %conv.i = zext i16 %4 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  %AC6.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 5
  %5 = ptrtoint ptr %AC6.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %AC6.i, align 2
  %conv.i10 = zext i16 %6 to i32
  %sub.i = sub nsw i32 %conv.i, %conv.i10
  %AC5.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 4
  %7 = ptrtoint ptr %AC5.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %AC5.i, align 2
  %conv2.i = zext i16 %8 to i32
  %mul.i = mul i32 %sub.i, %conv2.i
  %shr.i = ashr i32 %mul.i, 15
  %MC.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 9
  %9 = ptrtoint ptr %MC.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %MC.i, align 2
  %conv3.i = sext i16 %10 to i32
  %shl.i = shl nsw i32 %conv3.i, 11
  %MD.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 10
  %11 = ptrtoint ptr %MD.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %MD.i, align 2
  %conv4.i = sext i16 %12 to i32
  %add.i = add nsw i32 %shr.i, %conv4.i
  %div.i = sdiv i32 %shl.i, %add.i
  %add5.i = add i32 %shr.i, %div.i
  %t_fine.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %t_fine.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5.i, ptr %t_fine.i, align 4
  %tobool2.not = icmp eq ptr %val, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i = add i32 %add5.i, 8
  %shr8.i = ashr i32 %add7.i, 4
  %mul = mul i32 %shr8.i, 100
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %bmp180_read_adc_temp.exit.thread
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %bmp180_read_adc_temp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp180_read_press(ptr noundef %data, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #8
  %0 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp.i.i, align 2, !annotation !162
  %call.i.i = tail call fastcc i32 @bmp180_measure(ptr noundef %data, i8 noundef zeroext 46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.bmp180_read_temp.exit_crit_edge

entry.bmp180_read_temp.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp180_read_temp.exit

if.end.i.i:                                       ; preds = %entry
  %regmap.i.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 246, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.end.i.i.bmp180_read_temp.exit_crit_edge

if.end.i.i.bmp180_read_temp.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp180_read_temp.exit

bmp180_read_temp.exit:                            ; preds = %if.end.i.i.bmp180_read_temp.exit_crit_edge, %entry.bmp180_read_temp.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.end.i.i.bmp180_read_temp.exit_crit_edge ], [ %call.i.i, %entry.bmp180_read_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %3 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tmp.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #8
  %AC6.i.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 5
  %5 = ptrtoint ptr %AC6.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %AC6.i.i, align 2
  %conv.i10.i = zext i16 %6 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv.i10.i
  %AC5.i.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 4
  %7 = ptrtoint ptr %AC5.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %AC5.i.i, align 2
  %conv2.i.i = zext i16 %8 to i32
  %mul.i.i = mul i32 %sub.i.i, %conv2.i.i
  %shr.i.i = ashr i32 %mul.i.i, 15
  %MC.i.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 9
  %9 = ptrtoint ptr %MC.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %MC.i.i, align 2
  %conv3.i.i = sext i16 %10 to i32
  %shl.i.i = shl nsw i32 %conv3.i.i, 11
  %MD.i.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 10
  %11 = ptrtoint ptr %MD.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %MD.i.i, align 2
  %conv4.i.i = sext i16 %12 to i32
  %add.i.i = add nsw i32 %shr.i.i, %conv4.i.i
  %div.i.i = sdiv i32 %shl.i.i, %add.i.i
  %add5.i.i = add i32 %shr.i.i, %div.i.i
  %t_fine.i.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %t_fine.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5.i.i, ptr %t_fine.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tmp.i, align 4
  %oversampling_press.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 9
  %15 = ptrtoint ptr %oversampling_press.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %oversampling_press.i, align 4
  %conv.i = zext i8 %16 to i32
  %shl.i = shl i8 %16, 6
  %or1.i = or i8 %shl.i, 52
  %call.i = call fastcc i32 @bmp180_measure(ptr noundef %data, i8 noundef zeroext %or1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i13, label %if.end.bmp180_read_adc_press.exit.thread_crit_edge

if.end.bmp180_read_adc_press.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp180_read_adc_press.exit.thread

if.end.i13:                                       ; preds = %if.end
  %17 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i, align 4
  %call3.i = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 246, ptr noundef nonnull %tmp.i, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end4, label %if.end.i13.bmp180_read_adc_press.exit.thread_crit_edge

if.end.i13.bmp180_read_adc_press.exit.thread_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp180_read_adc_press.exit.thread

bmp180_read_adc_press.exit.thread:                ; preds = %if.end.i13.bmp180_read_adc_press.exit.thread_crit_edge, %if.end.bmp180_read_adc_press.exit.thread_crit_edge
  %retval.0.i14.ph = phi i32 [ %call3.i, %if.end.i13.bmp180_read_adc_press.exit.thread_crit_edge ], [ %call.i, %if.end.bmp180_read_adc_press.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.i13
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp.i, align 4
  %shr.i = lshr i32 %20, 8
  %sub.i = sub nsw i32 8, %conv.i
  %shr8.i = lshr i32 %shr.i, %sub.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %21 = ptrtoint ptr %oversampling_press.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %oversampling_press.i, align 4
  %conv.i16 = zext i8 %22 to i32
  %calib1.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6
  %23 = ptrtoint ptr %t_fine.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t_fine.i.i, align 4
  %sub.i17 = add i32 %24, -4000
  %B2.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 7
  %25 = ptrtoint ptr %B2.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %B2.i, align 2
  %conv2.i = sext i16 %26 to i32
  %mul.i = mul i32 %sub.i17, %sub.i17
  %shr.i18 = ashr i32 %mul.i, 12
  %mul3.i = mul i32 %shr.i18, %conv2.i
  %shr4.i = ashr i32 %mul3.i, 11
  %AC2.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 1
  %27 = ptrtoint ptr %AC2.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %AC2.i, align 2
  %conv5.i = sext i16 %28 to i32
  %mul6.i = mul i32 %sub.i17, %conv5.i
  %shr7.i = ashr i32 %mul6.i, 11
  %add.i = add nsw i32 %shr4.i, %shr7.i
  %29 = ptrtoint ptr %calib1.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %calib1.i, align 2
  %conv8.i = sext i16 %30 to i32
  %mul9.i = shl nsw i32 %conv8.i, 2
  %add10.i = add nsw i32 %add.i, %mul9.i
  %shl.i19 = shl i32 %add10.i, %conv.i16
  %add11.i = add i32 %shl.i19, 2
  %div.neg.i = sdiv i32 %add11.i, -4
  %AC3.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 2
  %31 = ptrtoint ptr %AC3.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %AC3.i, align 2
  %conv12.i = sext i16 %32 to i32
  %mul13.i = mul i32 %sub.i17, %conv12.i
  %shr14.i = ashr i32 %mul13.i, 13
  %B1.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 6
  %33 = ptrtoint ptr %B1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %B1.i, align 2
  %conv15.i = sext i16 %34 to i32
  %mul18.i = mul i32 %shr.i18, %conv15.i
  %shr19.i = ashr i32 %mul18.i, 16
  %add20.i = add nsw i32 %shr14.i, 2
  %add21.i = add nsw i32 %add20.i, %shr19.i
  %shr22.i = ashr i32 %add21.i, 2
  %AC4.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 3
  %35 = ptrtoint ptr %AC4.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %AC4.i, align 2
  %conv23.i = zext i16 %36 to i32
  %add24.i = add nsw i32 %shr22.i, 32768
  %mul25.i = mul i32 %add24.i, %conv23.i
  %shr26.i = lshr i32 %mul25.i, 15
  %sub27.i = add nsw i32 %div.neg.i, %shr8.i
  %shr28.i = lshr i32 50000, %conv.i16
  %mul29.i = mul i32 %sub27.i, %shr28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul29.i)
  %cmp.i = icmp sgt i32 %mul29.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %mul31.i = shl nuw i32 %mul29.i, 1
  %div32.i = udiv i32 %mul31.i, %shr26.i
  br label %bmp180_compensate_press.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %div33.i = udiv i32 %mul29.i, %shr26.i
  %mul34.i = shl i32 %div33.i, 1
  br label %bmp180_compensate_press.exit

bmp180_compensate_press.exit:                     ; preds = %if.else.i, %if.then.i
  %p.0.i = phi i32 [ %div32.i, %if.then.i ], [ %mul34.i, %if.else.i ]
  %shr35.i = ashr i32 %p.0.i, 8
  %mul37.i = mul i32 %shr35.i, 3038
  %mul38.i = mul i32 %mul37.i, %shr35.i
  %shr39.i = ashr i32 %mul38.i, 16
  %mul40.i = mul i32 %p.0.i, -7357
  %shr41.i = ashr i32 %mul40.i, 16
  %add42.i = add nsw i32 %shr41.i, 3791
  %add43.i = add nsw i32 %add42.i, %shr39.i
  %shr44.i = ashr i32 %add43.i, 4
  %add45.i = add i32 %shr44.i, %p.0.i
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add45.i, ptr %val, align 4
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %bmp180_compensate_press.exit, %bmp180_read_adc_press.exit.thread, %bmp180_read_temp.exit
  %retval.0 = phi i32 [ 10, %bmp180_compensate_press.exit ], [ %retval.0.i.ph.i, %bmp180_read_temp.exit ], [ %retval.0.i14.ph, %bmp180_read_adc_press.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmp180_measure(ptr noundef %data, i8 noundef zeroext %ctrl_meas) unnamed_addr #0 align 64 {
entry:
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #8
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ctrl, align 4, !annotation !162
  %use_eoc = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %use_eoc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use_eoc, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %ctrl_meas to i32
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 244, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %use_eoc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_eoc, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %done7 = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 3
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %done7, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end, label %if.then6.if.end19_crit_edge

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22) #11
  br label %if.end19

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %ctrl_meas)
  %cmp = icmp eq i8 %ctrl_meas, 46
  br i1 %cmp, label %if.else.if.end17_crit_edge, label %if.else16

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %oversampling_press = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 9
  %10 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %oversampling_press, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__const.bmp180_measure.conversion_time_max, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.else.if.end17_crit_edge
  %delay_us.0 = phi i32 [ %13, %if.else16 ], [ 4500, %if.else.if.end17_crit_edge ]
  %add18 = add i32 %delay_us.0, 1000
  tail call void @usleep_range_state(i32 noundef %delay_us.0, i32 noundef %add18, i32 noundef 2) #8
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %do.end, %if.then6.if.end19_crit_edge
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %15, i32 noundef 244, ptr noundef nonnull %ctrl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctrl, align 4
  %and = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  %. = select i1 %tobool25.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %., %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_chip_config(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %oversampling_temp = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %oversampling_temp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oversampling_temp, align 1
  %add = shl i8 %1, 5
  %shl = add i8 %add, 32
  %oversampling_press = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oversampling_press, align 4
  %add2 = shl i8 %3, 2
  %shl3 = add i8 %add2, 4
  %regmap = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %or = or i8 %shl, %shl3
  %6 = or i8 %or, 3
  %or6 = zext i8 %6 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 244, i32 noundef 255, i32 noundef %or6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 245, i32 noundef 28, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp10 = icmp slt i32 %call.i28, 0
  br i1 %cmp10, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.24, %entry.cleanup.sink.split_crit_edge ], [ @.str.27, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i28, %if.end.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull %.str.27.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i28, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_read_temp(ptr nocapture noundef %data, ptr noundef writeonly %val) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %regmap = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 250, ptr noundef nonnull %tmp, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %shr.mask = and i32 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp1 = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp1, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %calib1.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6
  %shr.i20 = lshr i32 %6, 15
  %9 = ptrtoint ptr %calib1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %calib1.i, align 2
  %conv.i = zext i16 %10 to i32
  %shl.neg.i = mul nsw i32 %conv.i, -2
  %sub.i = add nsw i32 %shl.neg.i, %shr.i20
  %T2.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 1
  %11 = ptrtoint ptr %T2.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %T2.i, align 2
  %conv2.i = sext i16 %12 to i32
  %mul.i = mul i32 %sub.i, %conv2.i
  %shr3.i = ashr i32 %mul.i, 11
  %shr4.i21 = lshr i32 %6, 16
  %sub7.i = sub nsw i32 %shr4.i21, %conv.i
  %mul12.i = mul i32 %sub7.i, %sub7.i
  %shr13.i = ashr i32 %mul12.i, 12
  %T3.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 2
  %13 = ptrtoint ptr %T3.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %T3.i, align 2
  %conv14.i = sext i16 %14 to i32
  %mul15.i = mul i32 %shr13.i, %conv14.i
  %shr16.i = ashr i32 %mul15.i, 14
  %add.i = add nsw i32 %shr16.i, %shr3.i
  %t_fine.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 12
  %15 = ptrtoint ptr %t_fine.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %t_fine.i, align 4
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %mul18.i = mul nsw i32 %add.i, 5
  %add19.i = add nsw i32 %mul18.i, 128
  %shr20.i = ashr i32 %add19.i, 8
  %mul = mul nsw i32 %shr20.i, 10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -5, %do.end5 ], [ 1, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_read_press(ptr nocapture noundef %data, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %call = tail call i32 @bmp280_read_temp(ptr noundef %data, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 247, ptr noundef nonnull %tmp, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.34) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %shr = lshr i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shr)
  %cmp5 = icmp eq i32 %shr, 524288
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.37) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %t_fine.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 12
  %9 = ptrtoint ptr %t_fine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_fine.i, align 4
  %conv.i = sext i32 %10 to i64
  %sub.i = add nsw i64 %conv.i, -128000
  %mul.i = mul nsw i64 %sub.i, %sub.i
  %P3.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 5
  %11 = ptrtoint ptr %P3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %P3.i, align 2
  %conv10.i = sext i16 %12 to i64
  %mul11.i = mul i64 %mul.i, %conv10.i
  %shr.i = ashr i64 %mul11.i, 8
  %P2.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 4
  %13 = ptrtoint ptr %P2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %P2.i, align 2
  %conv12.i = sext i16 %14 to i64
  %mul13.i = shl nsw i64 %sub.i, 12
  %shl14.i = mul nsw i64 %mul13.i, %conv12.i
  %add15.i = add nsw i64 %shl14.i, 140737488355328
  %add16.i = add nsw i64 %add15.i, %shr.i
  %P1.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 3
  %15 = ptrtoint ptr %P1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %P1.i, align 2
  %conv17.i = zext i16 %16 to i64
  %mul18.i = mul i64 %add16.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %mul18.i)
  %cmp.i = icmp ult i64 %mul18.i, 8589934592
  br i1 %cmp.i, label %if.end11.bmp280_compensate_press.exit_crit_edge, label %if.end.i

if.end11.bmp280_compensate_press.exit_crit_edge:  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmp280_compensate_press.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %shr19.i = ashr i64 %mul18.i, 33
  %P6.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 8
  %17 = ptrtoint ptr %P6.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %P6.i, align 2
  %conv2.i = sext i16 %18 to i64
  %mul3.i = mul i64 %mul.i, %conv2.i
  %P5.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 7
  %19 = ptrtoint ptr %P5.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %P5.i, align 2
  %conv4.i = sext i16 %20 to i64
  %P4.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 6
  %21 = ptrtoint ptr %P4.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %P4.i, align 2
  %conv6.i = sext i16 %22 to i64
  %conv21.i24 = zext i32 %shr to i64
  %.neg.i = mul nsw i64 %conv21.i24, -2147483648
  %shl.i = mul nsw i64 %sub.i, -131072
  %shl.neg.i = mul i64 %shl.i, %conv4.i
  %shl7.neg.i = mul nsw i64 %conv6.i, -34359738368
  %add.neg.i = add nsw i64 %.neg.i, 2251799813685248
  %add8.neg.i = sub i64 %add.neg.i, %mul3.i
  %shl23.i = add i64 %add8.neg.i, %shl.neg.i
  %sub24.i = add i64 %shl23.i, %shl7.neg.i
  %mul25.i = mul i64 %sub24.i, 3125
  %call.i = call i64 @div64_s64(i64 noundef %mul25.i, i64 noundef %shr19.i) #8
  %P9.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 11
  %23 = ptrtoint ptr %P9.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %P9.i, align 2
  %conv26.i = sext i16 %24 to i64
  %shr27.i = ashr i64 %call.i, 13
  %mul28.i = mul i64 %shr27.i, %shr27.i
  %mul30.i = mul i64 %mul28.i, %conv26.i
  %shr31.i = ashr i64 %mul30.i, 25
  %P8.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 10
  %25 = ptrtoint ptr %P8.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %P8.i, align 2
  %conv32.i = sext i16 %26 to i64
  %mul33.i = mul i64 %call.i, %conv32.i
  %27 = lshr i64 %mul33.i, 19
  %add35.i = add i64 %shr31.i, %call.i
  %add36.i = add i64 %add35.i, %27
  %28 = lshr i64 %add36.i, 8
  %P7.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 9
  %29 = ptrtoint ptr %P7.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %P7.i, align 2
  %conv38.i = sext i16 %30 to i64
  %shl39.i = shl nsw i64 %conv38.i, 4
  %add40.i = add nsw i64 %28, %shl39.i
  %conv41.i = trunc i64 %add40.i to i32
  br label %bmp280_compensate_press.exit

bmp280_compensate_press.exit:                     ; preds = %if.end.i, %if.end11.bmp280_compensate_press.exit_crit_edge
  %retval.0.i = phi i32 [ %conv41.i, %if.end.i ], [ 0, %if.end11.bmp280_compensate_press.exit_crit_edge ]
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i, ptr %val, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 256000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %bmp280_compensate_press.exit, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -5, %do.end9 ], [ 10, %bmp280_compensate_press.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bme280_chip_config(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %oversampling_humid = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %oversampling_humid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oversampling_humid, align 2
  %add = add i8 %1, 1
  %regmap = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %conv2 = zext i8 %add to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 242, i32 noundef 7, i32 noundef %conv2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %oversampling_temp.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %oversampling_temp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oversampling_temp.i, align 1
  %add.i = shl i8 %5, 5
  %shl.i = add i8 %add.i, 32
  %oversampling_press.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 9
  %6 = ptrtoint ptr %oversampling_press.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %oversampling_press.i, align 4
  %add2.i = shl i8 %7, 2
  %shl3.i = add i8 %add2.i, 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %or.i = or i8 %shl.i, %shl3.i
  %10 = or i8 %or.i, 3
  %or6.i = zext i8 %10 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 244, i32 noundef 255, i32 noundef %or6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 245, i32 noundef 28, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp10.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp10.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %.str.27.sink.i = phi ptr [ @.str.24, %if.end.cleanup.sink.split.i_crit_edge ], [ @.str.27, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %if.end.cleanup.sink.split.i_crit_edge ], [ %call.i28.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull %.str.27.sink.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i28.i, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp280_read_humid(ptr nocapture noundef %data, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #0 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp, align 2, !annotation !162
  %call = tail call i32 @bmp280_read_temp(ptr noundef %data, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 253, ptr noundef nonnull %tmp, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tmp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp5 = icmp eq i16 %6, -32768
  br i1 %cmp5, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %6 to i32
  %t_fine.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 12
  %9 = ptrtoint ptr %t_fine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_fine.i, align 4
  %sub.i = add i32 %10, -76800
  %shl.i = shl nuw nsw i32 %conv, 14
  %H4.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 15
  %11 = ptrtoint ptr %H4.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %H4.i, align 2
  %conv55.i = zext i16 %12 to i32
  %shl2.neg.i = mul i32 %conv55.i, -1048576
  %H5.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 16
  %13 = ptrtoint ptr %H5.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %H5.i, align 2
  %conv4.i = sext i16 %14 to i32
  %mul.i = mul i32 %sub.i, %conv4.i
  %sub3.i = add nuw nsw i32 %shl.i, 16384
  %sub5.i = add i32 %sub3.i, %shl2.neg.i
  %add.i = sub i32 %sub5.i, %mul.i
  %shr.i = ashr i32 %add.i, 15
  %H6.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 17
  %15 = ptrtoint ptr %H6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %H6.i, align 2
  %conv6.i = sext i8 %16 to i32
  %mul7.i = mul i32 %sub.i, %conv6.i
  %shr8.i = ashr i32 %mul7.i, 10
  %H3.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 14
  %17 = ptrtoint ptr %H3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %H3.i, align 2
  %conv9.i = zext i8 %18 to i32
  %mul10.i = mul i32 %sub.i, %conv9.i
  %shr11.i = ashr i32 %mul10.i, 11
  %add12.i = add nsw i32 %shr11.i, 32768
  %mul13.i = mul i32 %add12.i, %shr8.i
  %shr14.i = ashr i32 %mul13.i, 10
  %add15.i = add nsw i32 %shr14.i, 2097152
  %H2.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 13
  %19 = ptrtoint ptr %H2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %H2.i, align 2
  %conv16.i = sext i16 %20 to i32
  %mul17.i = mul i32 %add15.i, %conv16.i
  %add18.i = add i32 %mul17.i, 8192
  %shr19.i = ashr i32 %add18.i, 14
  %mul20.i = mul i32 %shr19.i, %shr.i
  %shr21.i = ashr i32 %mul20.i, 15
  %mul23.i = mul i32 %shr21.i, %shr21.i
  %shr24.i = ashr i32 %mul23.i, 7
  %H1.i = getelementptr inbounds %struct.bmp280_data, ptr %data, i32 0, i32 6, i32 0, i32 12
  %21 = ptrtoint ptr %H1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %H1.i, align 2
  %conv25.i = zext i8 %22 to i32
  %mul26.i = mul i32 %shr24.i, %conv25.i
  %shr27.i = ashr i32 %mul26.i, 4
  %sub28.i = sub i32 %mul20.i, %shr27.i
  %23 = call i32 @llvm.smax.i32(i32 %sub28.i, i32 0) #8
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 419430400) #8
  %shr3756.i = lshr i32 %24, 12
  %mul = mul nuw nsw i32 %shr3756.i, 1000
  %div25 = lshr i32 %mul, 10
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div25, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -5, %do.end10 ], [ 1, %if.end12 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmp085_eoc_irq(i32 noundef %irq, ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.bmp280_data, ptr %d, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @bmp280_common_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1004, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1047, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @bmp280_common_probe._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @bmp280_common_probe._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1053, i32 3}
!13 = !{ptr @bmp280_common_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @bmp280_common_probe._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1066, i32 39}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1069, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bmp280_common_probe._entry.10, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bmp280_common_probe._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1078, i32 3}
!24 = !{ptr @bmp280_common_probe._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bmp280_common_probe._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1097, i32 4}
!28 = !{ptr @bmp280_common_probe._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bmp280_common_probe._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @bmp280_common_probe._entry.20, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1104, i32 4}
!32 = !{ptr @bmp280_common_probe._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_bmp280_common_probe, !34, !"__ksymtab_bmp280_common_probe", i1 false, i1 false}
!34 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1139, i32 1}
!35 = !{ptr @bmp280_dev_pm_ops, !36, !"bmp280_dev_pm_ops", i1 false, i1 false}
!36 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1162, i32 1}
!37 = !{ptr @__ksymtab_bmp280_dev_pm_ops, !36, !"__ksymtab_bmp280_dev_pm_ops", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_author293, !39, !"__UNIQUE_ID_author293", i1 false, i1 false}
!39 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1165, i32 1}
!40 = !{ptr @__UNIQUE_ID_description294, !41, !"__UNIQUE_ID_description294", i1 false, i1 false}
!41 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1166, i32 1}
!42 = !{ptr @__UNIQUE_ID_file295, !43, !"__UNIQUE_ID_file295", i1 false, i1 false}
!43 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 1167, i32 1}
!44 = !{ptr @__UNIQUE_ID_license296, !43, !"__UNIQUE_ID_license296", i1 false, i1 false}
!45 = !{ptr @bmp280_channels, !46, !"bmp280_channels", i1 false, i1 false}
!46 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 132, i32 35}
!47 = !{ptr @bmp280_info, !48, !"bmp280_info", i1 false, i1 false}
!48 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 605, i32 30}
!49 = !{ptr @bmp180_chip_info, !50, !"bmp180_chip_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 915, i32 38}
!51 = !{ptr @bmp180_oversampling_temp_avail, !52, !"bmp180_oversampling_temp_avail", i1 false, i1 false}
!52 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 912, i32 18}
!53 = !{ptr @bmp180_oversampling_press_avail, !54, !"bmp180_oversampling_press_avail", i1 false, i1 false}
!54 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 913, i32 18}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 711, i32 4}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @bmp180_measure._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @bmp180_measure._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @bmp280_chip_info, !61, !"bmp280_chip_info", i1 false, i1 false}
!61 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 642, i32 38}
!62 = !{ptr @bmp280_oversampling_avail, !63, !"bmp280_oversampling_avail", i1 false, i1 false}
!63 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 640, i32 18}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 623, i32 3}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @bmp280_chip_config._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @bmp280_chip_config._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 632, i32 3}
!71 = !{ptr @bmp280_chip_config._entry.26, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @bmp280_chip_config._entry_ptr.28, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 344, i32 3}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @bmp280_read_temp._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @bmp280_read_temp._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 351, i32 3}
!80 = !{ptr @bmp280_read_temp._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bmp280_read_temp._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 383, i32 3}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bmp280_read_press._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @bmp280_read_press._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 390, i32 3}
!89 = !{ptr @bmp280_read_press._entry.36, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @bmp280_read_press._entry_ptr.38, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @bme280_chip_info, !92, !"bme280_chip_info", i1 false, i1 false}
!92 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 672, i32 38}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 415, i32 3}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @bmp280_read_humid._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @bmp280_read_humid._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 422, i32 3}
!100 = !{ptr @bmp280_read_humid._entry.41, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @bmp280_read_humid._entry_ptr.43, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 78, i32 2}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 78, i32 10}
!106 = !{ptr @bmp280_supply_names, !107, !"bmp280_supply_names", i1 false, i1 false}
!107 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 77, i32 26}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 166, i32 3}
!110 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @bmp280_read_calib._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @bmp280_read_calib._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 182, i32 3}
!115 = !{ptr @bmp280_read_calib._entry.48, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @bmp280_read_calib._entry_ptr.50, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 212, i32 3}
!119 = !{ptr @bmp280_read_calib._entry.51, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @bmp280_read_calib._entry_ptr.53, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 219, i32 3}
!123 = !{ptr @bmp280_read_calib._entry.54, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @bmp280_read_calib._entry_ptr.56, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 226, i32 3}
!127 = !{ptr @bmp280_read_calib._entry.57, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @bmp280_read_calib._entry_ptr.59, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 233, i32 3}
!131 = !{ptr @bmp280_read_calib._entry.60, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @bmp280_read_calib._entry_ptr.62, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 241, i32 3}
!135 = !{ptr @bmp280_read_calib._entry.63, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @bmp280_read_calib._entry_ptr.65, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 248, i32 3}
!139 = !{ptr @bmp280_read_calib._entry.66, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bmp280_read_calib._entry_ptr.68, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 948, i32 3}
!143 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @bmp085_fetch_eoc_irq._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @bmp085_fetch_eoc_irq._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/pressure/bmp280-core.c", i32 963, i32 3}
!148 = !{ptr @bmp085_fetch_eoc_irq._entry.71, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @bmp085_fetch_eoc_irq._entry_ptr.73, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @init_completion.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../include/linux/completion.h", i32 87, i32 2}
!152 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
!163 = !{i64 2148491035, i64 2148491061, i64 2148491090, i64 2148491124, i64 2148491155, i64 2148491178}
!164 = !{i64 2148490454}
!165 = !{i64 977054, i64 977079, i64 977101, i64 977117, i64 977129, i64 977149, i64 977173, i64 977189, i64 977201}
!166 = !{i64 2148490642}
!167 = !{i32 0, i32 33}
!168 = !{i8 0, i8 2}
