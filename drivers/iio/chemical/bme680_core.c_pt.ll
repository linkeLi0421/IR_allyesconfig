; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/bme680_core.c_pt.bc'
source_filename = "../drivers/iio/chemical/bme680_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bme680_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_bme680_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_bme680_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bme680_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22bme680_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_bme680_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bme680_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bme680_core_probe\09\09\09\09"
module asm "\09.long\09__crc_bme680_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bme680_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bme680_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bme680_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bme680_data = type { ptr, %struct.bme680_calib, i8, i8, i8, i16, i16, i32 }
%struct.bme680_calib = type { i16, i16, i8, i16, i16, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8 }

@bme680_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @bme680_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@bme680_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 239, ptr null, ptr null, ptr @bme680_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bme680_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_bme680_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_bme680_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bme680_regmap_config to i32), ptr @__kstrtab_bme680_regmap_config, ptr @__kstrtabns_bme680_regmap_config }, section "___ksymtab+bme680_regmap_config", align 4
@bme680_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 900, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to reset chip\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bme680_core_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/chemical/bme680_core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bme680_core_probe._entry_ptr = internal global ptr @bme680_core_probe._entry, section ".printk_index", align 4
@bme680_core_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 906, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading chip ID\0A\00", [41 x i8] zeroinitializer }, align 32
@bme680_core_probe._entry_ptr.7 = internal global ptr @bme680_core_probe._entry.5, section ".printk_index", align 4
@bme680_core_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 912, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Wrong chip ID, got %x expected %x\0A\00", [61 x i8] zeroinitializer }, align 32
@bme680_core_probe._entry_ptr.10 = internal global ptr @bme680_core_probe._entry.8, section ".printk_index", align 4
@bme680_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 33554434, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 33554434, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 33554434, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 25, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@bme680_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @bme680_attribute_group, ptr @bme680_read_raw, ptr null, ptr null, ptr @bme680_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bme680_core_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 941, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set chip_config data\0A\00", [32 x i8] zeroinitializer }, align 32
@bme680_core_probe._entry_ptr.13 = internal global ptr @bme680_core_probe._entry.11, section ".printk_index", align 4
@bme680_core_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 947, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set gas config data\0A\00", [33 x i8] zeroinitializer }, align 32
@bme680_core_probe._entry_ptr.16 = internal global ptr @bme680_core_probe._entry.14, section ".printk_index", align 4
@bme680_core_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 954, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to read calibration coefficients at probe\0A\00", [46 x i8] zeroinitializer }, align 32
@bme680_core_probe._entry_ptr.19 = internal global ptr @bme680_core_probe._entry.17, section ".printk_index", align 4
@__kstrtab_bme680_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bme680_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bme680_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bme680_core_probe to i32), ptr @__kstrtab_bme680_core_probe, ptr @__kstrtabns_bme680_core_probe }, section "___ksymtab_gpl+bme680_core_probe", align 4
@__UNIQUE_ID_author222 = internal constant [62 x i8] c"bme680_core.author=Himanshu Jha <himanshujha199640@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description223 = internal constant [44 x i8] c"bme680_core.description=Bosch BME680 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file224 = internal constant [50 x i8] c"bme680_core.file=drivers/iio/chemical/bme680_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [27 x i8] c"bme680_core.license=GPL v2\00", section ".modinfo", align 1
@bme680_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 29, i32 43 }, %struct.regmap_range { i32 115, i32 115 }, %struct.regmap_range { i32 138, i32 238 }], [40 x i8] zeroinitializer }, align 32
@bme680_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bme680_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@bme680_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_oversampling_ratio_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_oversampling_ratio_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @bme680_oversampling_ratio_show, %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@bme680_oversampling_ratio_show = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1 2 4 8 16\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"oversampling_ratio_available\00", [35 x i8] zeroinitializer }, align 32
@bme680_read_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read temperature\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bme680_read_temp\00", [47 x i8] zeroinitializer }, align 32
@bme680_read_temp._entry_ptr = internal global ptr @bme680_read_temp._entry, section ".printk_index", align 4
@bme680_read_temp._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 635, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reading temperature skipped\0A\00", [35 x i8] zeroinitializer }, align 32
@bme680_read_temp._entry_ptr.25 = internal global ptr @bme680_read_temp._entry.23, section ".printk_index", align 4
@bme680_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set forced mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bme680_set_mode\00", [16 x i8] zeroinitializer }, align 32
@bme680_set_mode._entry_ptr = internal global ptr @bme680_set_mode._entry, section ".printk_index", align 4
@bme680_set_mode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set sleep mode\0A\00", [38 x i8] zeroinitializer }, align 32
@bme680_set_mode._entry_ptr.30 = internal global ptr @bme680_set_mode._entry.28, section ".printk_index", align 4
@bme680_read_press._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 669, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read pressure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bme680_read_press\00", [46 x i8] zeroinitializer }, align 32
@bme680_read_press._entry_ptr = internal global ptr @bme680_read_press._entry, section ".printk_index", align 4
@bme680_read_press._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading pressure skipped\0A\00", [38 x i8] zeroinitializer }, align 32
@bme680_read_press._entry_ptr.35 = internal global ptr @bme680_read_press._entry.33, section ".printk_index", align 4
@bme680_read_humid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 702, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read humidity\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bme680_read_humid\00", [46 x i8] zeroinitializer }, align 32
@bme680_read_humid._entry_ptr = internal global ptr @bme680_read_humid._entry, section ".printk_index", align 4
@bme680_read_humid._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 709, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading humidity skipped\0A\00", [38 x i8] zeroinitializer }, align 32
@bme680_read_humid._entry_ptr.40 = internal global ptr @bme680_read_humid._entry.38, section ".printk_index", align 4
@bme680_read_gas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 732, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set gas config\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bme680_read_gas\00", [16 x i8] zeroinitializer }, align 32
@bme680_read_gas._entry_ptr = internal global ptr @bme680_read_gas._entry, section ".printk_index", align 4
@bme680_read_gas._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gas measurement incomplete\0A\00", [36 x i8] zeroinitializer }, align 32
@bme680_read_gas._entry_ptr.45 = internal global ptr @bme680_read_gas._entry.43, section ".printk_index", align 4
@bme680_read_gas._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 749, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read gas_r_lsb register\0A\00", [61 x i8] zeroinitializer }, align 32
@bme680_read_gas._entry_ptr.48 = internal global ptr @bme680_read_gas._entry.46, section ".printk_index", align 4
@bme680_read_gas._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"heater failed to reach the target temperature\0A\00", [49 x i8] zeroinitializer }, align 32
@bme680_read_gas._entry_ptr.51 = internal global ptr @bme680_read_gas._entry.49, section ".printk_index", align 4
@bme680_read_gas._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 767, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read gas resistance\0A\00", [33 x i8] zeroinitializer }, align 32
@bme680_read_gas._entry_ptr.54 = internal global ptr @bme680_read_gas._entry.52, section ".printk_index", align 4
@__const.bme680_compensate_gas.lookupTable = private unnamed_addr constant [16 x i32] [i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2126008810, i32 2147483647, i32 2130303777, i32 2147483647, i32 2147483647, i32 2143188679, i32 2136746228, i32 2147483647, i32 2126008810, i32 2147483647, i32 2147483647], align 4
@bme680_chip_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to write ctrl_hum register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bme680_chip_config\00", [45 x i8] zeroinitializer }, align 32
@bme680_chip_config._entry_ptr = internal global ptr @bme680_chip_config._entry, section ".printk_index", align 4
@bme680_chip_config._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 560, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write config register\0A\00", [63 x i8] zeroinitializer }, align 32
@bme680_chip_config._entry_ptr.59 = internal global ptr @bme680_chip_config._entry.57, section ".printk_index", align 4
@bme680_chip_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 572, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to write ctrl_meas register\0A\00", [60 x i8] zeroinitializer }, align 32
@bme680_chip_config._entry_ptr.62 = internal global ptr @bme680_chip_config._entry.60, section ".printk_index", align 4
@bme680_gas_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to write res_heat_0 register\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bme680_gas_config\00", [46 x i8] zeroinitializer }, align 32
@bme680_gas_config._entry_ptr = internal global ptr @bme680_gas_config._entry, section ".printk_index", align 4
@bme680_gas_config._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to write gas_wait_0 register\0A\00", [59 x i8] zeroinitializer }, align 32
@bme680_gas_config._entry_ptr.67 = internal global ptr @bme680_gas_config._entry.65, section ".printk_index", align 4
@bme680_gas_config._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.2, i32 607, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to write ctrl_gas_1 register\0A\00", [59 x i8] zeroinitializer }, align 32
@bme680_gas_config._entry_ptr.70 = internal global ptr @bme680_gas_config._entry.68, section ".printk_index", align 4
@bme680_read_calib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_T1_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bme680_read_calib\00", [46 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr = internal global ptr @bme680_read_calib._entry, section ".printk_index", align 4
@bme680_read_calib._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_T2_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.75 = internal global ptr @bme680_read_calib._entry.73, section ".printk_index", align 4
@bme680_read_calib._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_T3_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.78 = internal global ptr @bme680_read_calib._entry.76, section ".printk_index", align 4
@bme680_read_calib._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_P1_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.81 = internal global ptr @bme680_read_calib._entry.79, section ".printk_index", align 4
@bme680_read_calib._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.72, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_P2_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.84 = internal global ptr @bme680_read_calib._entry.82, section ".printk_index", align 4
@bme680_read_calib._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.72, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_P3_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.87 = internal global ptr @bme680_read_calib._entry.85, section ".printk_index", align 4
@bme680_read_calib._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.72, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_P4_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.90 = internal global ptr @bme680_read_calib._entry.88, section ".printk_index", align 4
@bme680_read_calib._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.72, ptr @.str.2, i32 175, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_P5_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.93 = internal global ptr @bme680_read_calib._entry.91, section ".printk_index", align 4
@bme680_read_calib._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.72, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_P6_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.96 = internal global ptr @bme680_read_calib._entry.94, section ".printk_index", align 4
@bme680_read_calib._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.72, ptr @.str.2, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_P7_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.99 = internal global ptr @bme680_read_calib._entry.97, section ".printk_index", align 4
@bme680_read_calib._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.72, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_P8_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.102 = internal global ptr @bme680_read_calib._entry.100, section ".printk_index", align 4
@bme680_read_calib._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.72, ptr @.str.2, i32 205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_P9_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.105 = internal global ptr @bme680_read_calib._entry.103, section ".printk_index", align 4
@bme680_read_calib._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.72, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read BME680_P10_REG\0A\00", [33 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.108 = internal global ptr @bme680_read_calib._entry.106, section ".printk_index", align 4
@bme680_read_calib._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.72, ptr @.str.2, i32 220, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_H1_MSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.111 = internal global ptr @bme680_read_calib._entry.109, section ".printk_index", align 4
@bme680_read_calib._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.72, ptr @.str.2, i32 225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_H1_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.114 = internal global ptr @bme680_read_calib._entry.112, section ".printk_index", align 4
@bme680_read_calib._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.72, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_H2_MSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.117 = internal global ptr @bme680_read_calib._entry.115, section ".printk_index", align 4
@bme680_read_calib._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.72, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read BME680_H2_LSB_REG\0A\00", [62 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.120 = internal global ptr @bme680_read_calib._entry.118, section ".printk_index", align 4
@bme680_read_calib._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.72, ptr @.str.2, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_H3_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.123 = internal global ptr @bme680_read_calib._entry.121, section ".printk_index", align 4
@bme680_read_calib._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.72, ptr @.str.2, i32 253, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_H4_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.126 = internal global ptr @bme680_read_calib._entry.124, section ".printk_index", align 4
@bme680_read_calib._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.72, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_H5_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.129 = internal global ptr @bme680_read_calib._entry.127, section ".printk_index", align 4
@bme680_read_calib._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.72, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_H6_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.132 = internal global ptr @bme680_read_calib._entry.130, section ".printk_index", align 4
@bme680_read_calib._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.72, ptr @.str.2, i32 274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read BME680_H7_REG\0A\00", [34 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.135 = internal global ptr @bme680_read_calib._entry.133, section ".printk_index", align 4
@bme680_read_calib._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.72, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read BME680_GH1_REG\0A\00", [33 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.138 = internal global ptr @bme680_read_calib._entry.136, section ".printk_index", align 4
@bme680_read_calib._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.72, ptr @.str.2, i32 290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read BME680_GH2_LSB_REG\0A\00", [61 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.141 = internal global ptr @bme680_read_calib._entry.139, section ".printk_index", align 4
@bme680_read_calib._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.72, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read BME680_GH3_REG\0A\00", [33 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.144 = internal global ptr @bme680_read_calib._entry.142, section ".printk_index", align 4
@bme680_read_calib._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.72, ptr @.str.2, i32 305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read resistance heat range\0A\00", [58 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.147 = internal global ptr @bme680_read_calib._entry.145, section ".printk_index", align 4
@bme680_read_calib._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.72, ptr @.str.2, i32 312, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read resistance heat value\0A\00", [58 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.150 = internal global ptr @bme680_read_calib._entry.148, section ".printk_index", align 4
@bme680_read_calib._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.72, ptr @.str.2, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read range software error\0A\00", [59 x i8] zeroinitializer }, align 32
@bme680_read_calib._entry_ptr.153 = internal global ptr @bme680_read_calib._entry.151, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 25]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 17, i64 18, i64 25]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 17, i64 18]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 17, i64 18]
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"bme680_volatile_table\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 72, i32 41 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"bme680_regmap_config\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 77, i32 28 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 900, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 906, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 911, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"bme680_channels\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 86, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant [12 x i8] c"bme680_info\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 872, i32 30 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 941, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 947, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 953, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [23 x i8] c"bme680_volatile_ranges\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 66, i32 34 }
@___asan_gen_.220 = private unnamed_addr constant [23 x i8] c"bme680_attribute_group\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 868, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"bme680_attributes\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 863, i32 26 }
@___asan_gen_.226 = private unnamed_addr constant [44 x i8] c"iio_const_attr_oversampling_ratio_available\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [31 x i8] c"bme680_oversampling_ratio_show\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 858, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 860, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 628, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 635, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 517, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 523, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 669, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 676, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 702, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 709, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 732, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 743, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 749, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 760, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 767, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 551, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 560, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 572, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 588, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 597, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 607, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 120, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 128, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 135, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 144, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 152, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 159, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 167, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 175, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 182, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 189, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 197, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 205, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 212, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 220, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 225, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 233, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 238, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 246, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 253, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 260, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 267, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 274, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 282, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 290, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 297, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 305, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 312, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.539 = private constant [38 x i8] c"../drivers/iio/chemical/bme680_core.c\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 319, i32 3 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_author222, ptr @__UNIQUE_ID_description223, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__ksymtab_bme680_core_probe, ptr @__ksymtab_bme680_regmap_config, ptr @bme680_chip_config._entry, ptr @bme680_chip_config._entry.57, ptr @bme680_chip_config._entry.60, ptr @bme680_chip_config._entry_ptr, ptr @bme680_chip_config._entry_ptr.59, ptr @bme680_chip_config._entry_ptr.62, ptr @bme680_core_probe._entry, ptr @bme680_core_probe._entry.11, ptr @bme680_core_probe._entry.14, ptr @bme680_core_probe._entry.17, ptr @bme680_core_probe._entry.5, ptr @bme680_core_probe._entry.8, ptr @bme680_core_probe._entry_ptr, ptr @bme680_core_probe._entry_ptr.10, ptr @bme680_core_probe._entry_ptr.13, ptr @bme680_core_probe._entry_ptr.16, ptr @bme680_core_probe._entry_ptr.19, ptr @bme680_core_probe._entry_ptr.7, ptr @bme680_gas_config._entry, ptr @bme680_gas_config._entry.65, ptr @bme680_gas_config._entry.68, ptr @bme680_gas_config._entry_ptr, ptr @bme680_gas_config._entry_ptr.67, ptr @bme680_gas_config._entry_ptr.70, ptr @bme680_read_calib._entry, ptr @bme680_read_calib._entry.100, ptr @bme680_read_calib._entry.103, ptr @bme680_read_calib._entry.106, ptr @bme680_read_calib._entry.109, ptr @bme680_read_calib._entry.112, ptr @bme680_read_calib._entry.115, ptr @bme680_read_calib._entry.118, ptr @bme680_read_calib._entry.121, ptr @bme680_read_calib._entry.124, ptr @bme680_read_calib._entry.127, ptr @bme680_read_calib._entry.130, ptr @bme680_read_calib._entry.133, ptr @bme680_read_calib._entry.136, ptr @bme680_read_calib._entry.139, ptr @bme680_read_calib._entry.142, ptr @bme680_read_calib._entry.145, ptr @bme680_read_calib._entry.148, ptr @bme680_read_calib._entry.151, ptr @bme680_read_calib._entry.73, ptr @bme680_read_calib._entry.76, ptr @bme680_read_calib._entry.79, ptr @bme680_read_calib._entry.82, ptr @bme680_read_calib._entry.85, ptr @bme680_read_calib._entry.88, ptr @bme680_read_calib._entry.91, ptr @bme680_read_calib._entry.94, ptr @bme680_read_calib._entry.97, ptr @bme680_read_calib._entry_ptr, ptr @bme680_read_calib._entry_ptr.102, ptr @bme680_read_calib._entry_ptr.105, ptr @bme680_read_calib._entry_ptr.108, ptr @bme680_read_calib._entry_ptr.111, ptr @bme680_read_calib._entry_ptr.114, ptr @bme680_read_calib._entry_ptr.117, ptr @bme680_read_calib._entry_ptr.120, ptr @bme680_read_calib._entry_ptr.123, ptr @bme680_read_calib._entry_ptr.126, ptr @bme680_read_calib._entry_ptr.129, ptr @bme680_read_calib._entry_ptr.132, ptr @bme680_read_calib._entry_ptr.135, ptr @bme680_read_calib._entry_ptr.138, ptr @bme680_read_calib._entry_ptr.141, ptr @bme680_read_calib._entry_ptr.144, ptr @bme680_read_calib._entry_ptr.147, ptr @bme680_read_calib._entry_ptr.150, ptr @bme680_read_calib._entry_ptr.153, ptr @bme680_read_calib._entry_ptr.75, ptr @bme680_read_calib._entry_ptr.78, ptr @bme680_read_calib._entry_ptr.81, ptr @bme680_read_calib._entry_ptr.84, ptr @bme680_read_calib._entry_ptr.87, ptr @bme680_read_calib._entry_ptr.90, ptr @bme680_read_calib._entry_ptr.93, ptr @bme680_read_calib._entry_ptr.96, ptr @bme680_read_calib._entry_ptr.99, ptr @bme680_read_gas._entry, ptr @bme680_read_gas._entry.43, ptr @bme680_read_gas._entry.46, ptr @bme680_read_gas._entry.49, ptr @bme680_read_gas._entry.52, ptr @bme680_read_gas._entry_ptr, ptr @bme680_read_gas._entry_ptr.45, ptr @bme680_read_gas._entry_ptr.48, ptr @bme680_read_gas._entry_ptr.51, ptr @bme680_read_gas._entry_ptr.54, ptr @bme680_read_humid._entry, ptr @bme680_read_humid._entry.38, ptr @bme680_read_humid._entry_ptr, ptr @bme680_read_humid._entry_ptr.40, ptr @bme680_read_press._entry, ptr @bme680_read_press._entry.33, ptr @bme680_read_press._entry_ptr, ptr @bme680_read_press._entry_ptr.35, ptr @bme680_read_temp._entry, ptr @bme680_read_temp._entry.23, ptr @bme680_read_temp._entry_ptr, ptr @bme680_read_temp._entry_ptr.25, ptr @bme680_set_mode._entry, ptr @bme680_set_mode._entry.28, ptr @bme680_set_mode._entry_ptr, ptr @bme680_set_mode._entry_ptr.30, ptr @bme680_volatile_table, ptr @bme680_regmap_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @bme680_channels, ptr @bme680_info, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @bme680_volatile_ranges, ptr @bme680_attribute_group, ptr @bme680_attributes, ptr @iio_const_attr_oversampling_ratio_available, ptr @bme680_oversampling_ratio_show, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_core_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_core_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_core_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_core_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_core_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_oversampling_ratio_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_oversampling_ratio_show to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_temp._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_set_mode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_press._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_press._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_humid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_humid._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_gas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_gas._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_gas._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_gas._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_gas._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_chip_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_chip_config._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_chip_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_gas_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_gas_config._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_gas_config._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bme680_read_calib._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bme680_core_probe(ptr noundef %dev, ptr noundef %regmap, ptr noundef %name) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !263
  %call = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef 224, i32 noundef 182) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 208, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %2)
  %cmp8.not = icmp eq i32 %2, 97
  br i1 %cmp8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %2, i32 noundef 97) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 56) #5
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call14, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %regmap, ptr %4, align 4
  %name23 = getelementptr inbounds %struct.iio_dev, ptr %call14, i32 0, i32 15
  %7 = ptrtoint ptr %name23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %name23, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call14, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bme680_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call14, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call14, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bme680_info, ptr %info, align 8
  %11 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call14, align 8
  %oversampling_humid = getelementptr inbounds %struct.bme680_data, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %oversampling_humid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %oversampling_humid, align 2
  %oversampling_press = getelementptr inbounds %struct.bme680_data, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %oversampling_press, align 1
  %oversampling_temp = getelementptr inbounds %struct.bme680_data, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %oversampling_temp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %oversampling_temp, align 4
  %heater_temp = getelementptr inbounds %struct.bme680_data, ptr %4, i32 0, i32 6
  %15 = ptrtoint ptr %heater_temp to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 320, ptr %heater_temp, align 2
  %heater_dur = getelementptr inbounds %struct.bme680_data, ptr %4, i32 0, i32 5
  %16 = ptrtoint ptr %heater_dur to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 150, ptr %heater_dur, align 4
  %call24 = call fastcc i32 @bme680_chip_config(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  %call31 = call fastcc i32 @bme680_gas_config(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end37

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %bme680 = getelementptr inbounds %struct.bme680_data, ptr %4, i32 0, i32 1
  %call38 = call fastcc i32 @bme680_read_calib(ptr noundef %4, ptr noundef %bme680)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end44

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call14, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end43, %do.end36, %do.end29, %if.end13.cleanup_crit_edge, %do.end12, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ -19, %do.end12 ], [ %call24, %do.end29 ], [ %call31, %do.end36 ], [ %call38, %do.end43 ], [ %call45, %if.end44 ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bme680_chip_config(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #5
  %oversampling_humid = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %oversampling_humid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oversampling_humid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i.i = icmp eq i8 %3, 0
  %conv5.i = zext i8 %3 to i32
  %4 = tail call i32 @llvm.ctlz.i32(i32 %conv5.i, i1 true) #5, !range !264
  %sub.i.op.i.i.op = sub nsw i32 0, %4
  %sub.i.op.i.i.op.op = and i32 %sub.i.op.i.i.op, 7
  %5 = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 114, i32 noundef 7, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call.i98 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 117, i32 noundef 28, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp24 = icmp slt i32 %call.i98, 0
  br i1 %cmp24, label %if.end.cleanup.sink.split_crit_edge, label %bme680_oversampling_to_reg.exit112

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

bme680_oversampling_to_reg.exit112:               ; preds = %if.end
  %oversampling_temp = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %oversampling_temp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %oversampling_temp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i.i106 = icmp eq i8 %11, 0
  %conv5.i105 = zext i8 %11 to i32
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv5.i105, i1 true) #5, !range !264
  %sub.i.op.i.i107 = shl nuw nsw i32 %12, 5
  %sub.i.op.i.i107.op = xor i32 %sub.i.op.i.i107, 224
  %sub.i.op.i.i107.op.op = add nuw nsw i32 %sub.i.op.i.i107.op, 32
  %oversampling_press = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %oversampling_press, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i.i120 = icmp eq i8 %14, 0
  %conv5.i119 = zext i8 %14 to i32
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv5.i119, i1 true) #5, !range !264
  %sub.i.op.i.i121 = shl nuw nsw i32 %15, 2
  %sub.i.op.i.i121.op = xor i32 %sub.i.op.i.i121, 28
  %sub.i.op.i.i121.op.op = add nuw nsw i32 %sub.i.op.i.i121.op, 4
  %sub.i.op.i.i121.op.op.op = and i32 %sub.i.op.i.i121.op.op, 28
  %and70 = select i1 %tobool.not.i.i.i120, i32 0, i32 %sub.i.op.i.i121.op.op.op
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %sub.i.op.i.i107.op.op.op = and i32 %sub.i.op.i.i107.op.op, 224
  %shl49.masked = select i1 %tobool.not.i.i.i106, i32 0, i32 %sub.i.op.i.i107.op.op.op
  %conv73 = or i32 %and70, %shl49.masked
  %call.i127 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 116, i32 noundef 252, i32 noundef %conv73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp75 = icmp slt i32 %call.i127, 0
  br i1 %cmp75, label %bme680_oversampling_to_reg.exit112.cleanup.sink.split_crit_edge, label %bme680_oversampling_to_reg.exit112.cleanup_crit_edge

bme680_oversampling_to_reg.exit112.cleanup_crit_edge: ; preds = %bme680_oversampling_to_reg.exit112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bme680_oversampling_to_reg.exit112.cleanup.sink.split_crit_edge: ; preds = %bme680_oversampling_to_reg.exit112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %bme680_oversampling_to_reg.exit112.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.61.sink = phi ptr [ @.str.55, %entry.cleanup.sink.split_crit_edge ], [ @.str.58, %if.end.cleanup.sink.split_crit_edge ], [ @.str.61, %bme680_oversampling_to_reg.exit112.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i98, %if.end.cleanup.sink.split_crit_edge ], [ %call.i127, %bme680_oversampling_to_reg.exit112.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull %.str.61.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %bme680_oversampling_to_reg.exit112.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i127, %bme680_oversampling_to_reg.exit112.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bme680_gas_config(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #5
  %heater_temp = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %heater_temp to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %heater_temp, align 2
  %4 = tail call i16 @llvm.umin.i16(i16 %3, i16 400) #5
  %par_gh3.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1, i32 22
  %5 = ptrtoint ptr %par_gh3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %par_gh3.i, align 2
  %7 = sdiv i8 %6, 40
  %div.i = sext i8 %7 to i32
  %mul3.i = shl nsw i32 %div.i, 8
  %par_gh1.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1, i32 20
  %8 = ptrtoint ptr %par_gh1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %par_gh1.i, align 1
  %conv4.i = sext i8 %9 to i32
  %add.i = add nsw i32 %conv4.i, 784
  %par_gh2.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1, i32 21
  %10 = ptrtoint ptr %par_gh2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %par_gh2.i, align 2
  %conv5.i = sext i16 %11 to i32
  %add6.i = add nsw i32 %conv5.i, 154009
  %conv7.i = zext i16 %4 to i32
  %mul8.i = mul nuw nsw i32 %add6.i, %conv7.i
  %div1048.i = udiv i32 %mul8.i, 20
  %add11.i = add nuw nsw i32 %div1048.i, 3276800
  %div1249.i = udiv i32 %add11.i, 10
  %mul13.i = mul nuw nsw i32 %div1249.i, %add.i
  %div145051.i = lshr i32 %mul13.i, 1
  %add15.i = add nsw i32 %div145051.i, %mul3.i
  %res_heat_range.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1, i32 23
  %12 = ptrtoint ptr %res_heat_range.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %res_heat_range.i, align 1
  %conv16.i = zext i8 %13 to i32
  %add17.i = add nuw nsw i32 %conv16.i, 4
  %div18.i = sdiv i32 %add15.i, %add17.i
  %res_heat_val.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1, i32 24
  %14 = ptrtoint ptr %res_heat_val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %res_heat_val.i, align 2
  %conv19.i = sext i8 %15 to i32
  %mul20.i = mul nsw i32 %conv19.i, 131
  %add21.i = add nsw i32 %mul20.i, 65536
  %div22.i = sdiv i32 %div18.i, %add21.i
  %16 = mul nsw i32 %div22.i, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 8500, i32 %16)
  %cmp24.i = icmp sgt i32 %16, 8500
  %cond.in.v.i = select i1 %cmp24.i, i32 -8450, i32 -8550
  %cond.in.i = add nsw i32 %cond.in.v.i, %16
  %cond.i = sdiv i32 %cond.in.i, 100
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %conv = and i32 %cond.i, 255
  %call3 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 90, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %heater_dur = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 5
  %19 = ptrtoint ptr %heater_dur to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %heater_dur, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4031, i16 %20)
  %cmp.i = icmp ugt i16 %20, 4031
  br i1 %cmp.i, label %if.end.bme680_calc_heater_dur.exit_crit_edge, label %while.cond.preheader.i

if.end.bme680_calc_heater_dur.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %bme680_calc_heater_dur.exit

while.cond.preheader.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %20)
  %cmp318.i = icmp ugt i16 %20, 63
  br i1 %cmp318.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %factor.020.i = phi i32 [ %phi.cast.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dur.addr.019.i = phi i16 [ %div17.i, %while.body.i.while.body.i_crit_edge ], [ %20, %while.cond.preheader.i.while.body.i_crit_edge ]
  %div17.i = lshr i16 %dur.addr.019.i, 2
  %add.i72 = add nuw nsw i32 %factor.020.i, 1
  %phi.cast.i = and i32 %add.i72, 255
  %cmp3.i = icmp ugt i16 %dur.addr.019.i, 255
  br i1 %cmp3.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 6
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %while.cond.preheader.i.while.end.i_crit_edge
  %dur.addr.0.lcssa.i = phi i16 [ %20, %while.cond.preheader.i.while.end.i_crit_edge ], [ %div17.i, %while.end.loopexit.i ]
  %factor.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %phi.bo.i, %while.end.loopexit.i ]
  %conv2.i = zext i16 %dur.addr.0.lcssa.i to i32
  %add11.i73 = add nuw nsw i32 %factor.0.lcssa.i, %conv2.i
  %phi.cast = and i32 %add11.i73, 255
  br label %bme680_calc_heater_dur.exit

bme680_calc_heater_dur.exit:                      ; preds = %while.end.i, %if.end.bme680_calc_heater_dur.exit_crit_edge
  %durval.0.i = phi i32 [ %phi.cast, %while.end.i ], [ 255, %if.end.bme680_calc_heater_dur.exit_crit_edge ]
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 100, i32 noundef %durval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %bme680_calc_heater_dur.exit.cleanup.sink.split_crit_edge, label %if.end15

bme680_calc_heater_dur.exit.cleanup.sink.split_crit_edge: ; preds = %bme680_calc_heater_dur.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end15:                                         ; preds = %bme680_calc_heater_dur.exit
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 113, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp49 = icmp slt i32 %call.i, 0
  br i1 %cmp49, label %if.end15.cleanup.sink.split_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %bme680_calc_heater_dur.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.63, %entry.cleanup.sink.split_crit_edge ], [ @.str.66, %bme680_calc_heater_dur.exit.cleanup.sink.split_crit_edge ], [ @.str.69, %if.end15.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call3, %entry.cleanup.sink.split_crit_edge ], [ %call8, %bme680_calc_heater_dur.exit.cleanup.sink.split_crit_edge ], [ %call.i, %if.end15.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull %.str.69.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end15.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bme680_read_calib(ptr noundef readonly %data, ptr noundef writeonly %calib) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  %tmp_msb = alloca i32, align 4
  %tmp_lsb = alloca i32, align 4
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_msb) #5
  %3 = ptrtoint ptr %tmp_msb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp_msb, align 4, !annotation !263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_lsb) #5
  %4 = ptrtoint ptr %tmp_lsb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp_lsb, align 4, !annotation !263
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #5
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %buf, align 2, !annotation !263
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 233, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.71) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buf, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %calib to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %calib, align 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call4 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 138, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.74) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %buf, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %par_t2 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 1
  %17 = ptrtoint ptr %par_t2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %par_t2, align 2
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call12 = call i32 @regmap_read(ptr noundef %19, i32 noundef 140, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.77) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp, align 4
  %conv = trunc i32 %21 to i8
  %par_t3 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 2
  %22 = ptrtoint ptr %par_t3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %par_t3, align 2
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %call20 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef 142, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.80) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buf, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %par_p1 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 3
  %28 = ptrtoint ptr %par_p1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %par_p1, align 2
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %call29 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 144, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.83) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %buf, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %par_p2 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 4
  %34 = ptrtoint ptr %par_p2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %par_p2, align 2
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call38 = call i32 @regmap_read(ptr noundef %36, i32 noundef 146, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end44, label %if.end45

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.86) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %37 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmp, align 4
  %conv46 = trunc i32 %38 to i8
  %par_p3 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 5
  %39 = ptrtoint ptr %par_p3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv46, ptr %par_p3, align 2
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %call48 = call i32 @regmap_bulk_read(ptr noundef %41, i32 noundef 148, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end54, label %if.end55

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.89) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %buf, align 2
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %par_p4 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 6
  %45 = ptrtoint ptr %par_p4 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %par_p4, align 2
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %call57 = call i32 @regmap_bulk_read(ptr noundef %47, i32 noundef 150, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end63, label %if.end64

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.92) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %buf, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %par_p5 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 7
  %51 = ptrtoint ptr %par_p5 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %par_p5, align 2
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %call66 = call i32 @regmap_read(ptr noundef %53, i32 noundef 153, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end72, label %if.end73

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.95) #8
  br label %cleanup

if.end73:                                         ; preds = %if.end64
  %54 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tmp, align 4
  %conv74 = trunc i32 %55 to i8
  %par_p6 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 8
  %56 = ptrtoint ptr %par_p6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv74, ptr %par_p6, align 2
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %call76 = call i32 @regmap_read(ptr noundef %58, i32 noundef 152, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %if.end83

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.98) #8
  br label %cleanup

if.end83:                                         ; preds = %if.end73
  %59 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tmp, align 4
  %conv84 = trunc i32 %60 to i8
  %par_p7 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 9
  %61 = ptrtoint ptr %par_p7 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv84, ptr %par_p7, align 1
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %call86 = call i32 @regmap_bulk_read(ptr noundef %63, i32 noundef 156, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end92, label %if.end93

do.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.101) #8
  br label %cleanup

if.end93:                                         ; preds = %if.end83
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %buf, align 2
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  %par_p8 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 10
  %67 = ptrtoint ptr %par_p8 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %par_p8, align 2
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %call95 = call i32 @regmap_bulk_read(ptr noundef %69, i32 noundef 158, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end101, label %if.end102

do.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.104) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end93
  %70 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %buf, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  %par_p9 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 11
  %73 = ptrtoint ptr %par_p9 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %par_p9, align 2
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %call104 = call i32 @regmap_read(ptr noundef %75, i32 noundef 160, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end110, label %if.end111

do.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.107) #8
  br label %cleanup

if.end111:                                        ; preds = %if.end102
  %76 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tmp, align 4
  %conv112 = trunc i32 %77 to i8
  %par_p10 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 12
  %78 = ptrtoint ptr %par_p10 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv112, ptr %par_p10, align 2
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 4
  %call114 = call i32 @regmap_read(ptr noundef %80, i32 noundef 227, ptr noundef nonnull %tmp_msb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %do.end120, label %if.end121

do.end120:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.110) #8
  br label %cleanup

if.end121:                                        ; preds = %if.end111
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %call123 = call i32 @regmap_read(ptr noundef %82, i32 noundef 226, ptr noundef nonnull %tmp_lsb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %do.end129, label %if.end130

do.end129:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.113) #8
  br label %cleanup

if.end130:                                        ; preds = %if.end121
  %83 = ptrtoint ptr %tmp_msb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tmp_msb, align 4
  %shl = shl i32 %84, 4
  %85 = ptrtoint ptr %tmp_lsb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tmp_lsb, align 4
  %and = and i32 %86, 15
  %or = or i32 %and, %shl
  %conv131 = trunc i32 %or to i16
  %par_h1 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 13
  %87 = ptrtoint ptr %par_h1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv131, ptr %par_h1, align 2
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 4
  %call133 = call i32 @regmap_read(ptr noundef %89, i32 noundef 225, ptr noundef nonnull %tmp_msb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %do.end139, label %if.end140

do.end139:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.116) #8
  br label %cleanup

if.end140:                                        ; preds = %if.end130
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data, align 4
  %call142 = call i32 @regmap_read(ptr noundef %91, i32 noundef 226, ptr noundef nonnull %tmp_lsb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %do.end148, label %if.end149

do.end148:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.119) #8
  br label %cleanup

if.end149:                                        ; preds = %if.end140
  %92 = ptrtoint ptr %tmp_msb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tmp_msb, align 4
  %shl150 = shl i32 %93, 4
  %94 = ptrtoint ptr %tmp_lsb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tmp_lsb, align 4
  %shr = lshr i32 %95, 4
  %or151 = or i32 %shr, %shl150
  %conv152 = trunc i32 %or151 to i16
  %par_h2 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 14
  %96 = ptrtoint ptr %par_h2 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv152, ptr %par_h2, align 2
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  %call154 = call i32 @regmap_read(ptr noundef %98, i32 noundef 228, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %do.end160, label %if.end161

do.end160:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.122) #8
  br label %cleanup

if.end161:                                        ; preds = %if.end149
  %99 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tmp, align 4
  %conv162 = trunc i32 %100 to i8
  %par_h3 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 15
  %101 = ptrtoint ptr %par_h3 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv162, ptr %par_h3, align 2
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %call164 = call i32 @regmap_read(ptr noundef %103, i32 noundef 229, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %do.end170, label %if.end171

do.end170:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.125) #8
  br label %cleanup

if.end171:                                        ; preds = %if.end161
  %104 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tmp, align 4
  %conv172 = trunc i32 %105 to i8
  %par_h4 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 16
  %106 = ptrtoint ptr %par_h4 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv172, ptr %par_h4, align 1
  %107 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data, align 4
  %call174 = call i32 @regmap_read(ptr noundef %108, i32 noundef 230, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %do.end180, label %if.end181

do.end180:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.128) #8
  br label %cleanup

if.end181:                                        ; preds = %if.end171
  %109 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tmp, align 4
  %conv182 = trunc i32 %110 to i8
  %par_h5 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 17
  %111 = ptrtoint ptr %par_h5 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv182, ptr %par_h5, align 2
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data, align 4
  %call184 = call i32 @regmap_read(ptr noundef %113, i32 noundef 231, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %do.end190, label %if.end191

do.end190:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.131) #8
  br label %cleanup

if.end191:                                        ; preds = %if.end181
  %114 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tmp, align 4
  %conv192 = trunc i32 %115 to i8
  %par_h6 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 18
  %116 = ptrtoint ptr %par_h6 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv192, ptr %par_h6, align 1
  %117 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data, align 4
  %call194 = call i32 @regmap_read(ptr noundef %118, i32 noundef 232, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %do.end200, label %if.end201

do.end200:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.134) #8
  br label %cleanup

if.end201:                                        ; preds = %if.end191
  %119 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tmp, align 4
  %conv202 = trunc i32 %120 to i8
  %par_h7 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 19
  %121 = ptrtoint ptr %par_h7 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv202, ptr %par_h7, align 2
  %122 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data, align 4
  %call204 = call i32 @regmap_read(ptr noundef %123, i32 noundef 237, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %cmp205 = icmp slt i32 %call204, 0
  br i1 %cmp205, label %do.end210, label %if.end211

do.end210:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.137) #8
  br label %cleanup

if.end211:                                        ; preds = %if.end201
  %124 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tmp, align 4
  %conv212 = trunc i32 %125 to i8
  %par_gh1 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 20
  %126 = ptrtoint ptr %par_gh1 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv212, ptr %par_gh1, align 1
  %127 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data, align 4
  %call214 = call i32 @regmap_bulk_read(ptr noundef %128, i32 noundef 235, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %do.end220, label %if.end221

do.end220:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.140) #8
  br label %cleanup

if.end221:                                        ; preds = %if.end211
  %129 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %buf, align 2
  %131 = call i16 @llvm.bswap.i16(i16 %130)
  %par_gh2 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 21
  %132 = ptrtoint ptr %par_gh2 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %par_gh2, align 2
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data, align 4
  %call223 = call i32 @regmap_read(ptr noundef %134, i32 noundef 238, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %cmp224 = icmp slt i32 %call223, 0
  br i1 %cmp224, label %do.end229, label %if.end230

do.end229:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.143) #8
  br label %cleanup

if.end230:                                        ; preds = %if.end221
  %135 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tmp, align 4
  %conv231 = trunc i32 %136 to i8
  %par_gh3 = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 22
  %137 = ptrtoint ptr %par_gh3 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv231, ptr %par_gh3, align 2
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data, align 4
  %call233 = call i32 @regmap_read(ptr noundef %139, i32 noundef 2, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %do.end239, label %do.end255

do.end239:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.146) #8
  br label %cleanup

do.end255:                                        ; preds = %if.end230
  %140 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tmp, align 4
  %142 = trunc i32 %141 to i8
  %143 = lshr i8 %142, 4
  %conv259 = and i8 %143, 3
  %res_heat_range = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 23
  %144 = ptrtoint ptr %res_heat_range to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv259, ptr %res_heat_range, align 1
  %145 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data, align 4
  %call261 = call i32 @regmap_read(ptr noundef %146, i32 noundef 0, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %cmp262 = icmp slt i32 %call261, 0
  br i1 %cmp262, label %do.end267, label %if.end268

do.end267:                                        ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.149) #8
  br label %cleanup

if.end268:                                        ; preds = %do.end255
  %147 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tmp, align 4
  %conv269 = trunc i32 %148 to i8
  %res_heat_val = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 24
  %149 = ptrtoint ptr %res_heat_val to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv269, ptr %res_heat_val, align 2
  %150 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data, align 4
  %call271 = call i32 @regmap_read(ptr noundef %151, i32 noundef 4, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %cmp272 = icmp slt i32 %call271, 0
  br i1 %cmp272, label %do.end277, label %do.end293

do.end277:                                        ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.152) #8
  br label %cleanup

do.end293:                                        ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tmp, align 4
  %154 = trunc i32 %153 to i8
  %155 = lshr i8 %154, 4
  %range_sw_err = getelementptr inbounds %struct.bme680_calib, ptr %calib, i32 0, i32 25
  %156 = ptrtoint ptr %range_sw_err to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %range_sw_err, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end293, %do.end277, %do.end267, %do.end239, %do.end229, %do.end220, %do.end210, %do.end200, %do.end190, %do.end180, %do.end170, %do.end160, %do.end148, %do.end139, %do.end129, %do.end120, %do.end110, %do.end101, %do.end92, %do.end82, %do.end72, %do.end63, %do.end54, %do.end44, %do.end35, %do.end26, %do.end17, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ %call12, %do.end17 ], [ %call20, %do.end26 ], [ %call29, %do.end35 ], [ %call38, %do.end44 ], [ %call48, %do.end54 ], [ %call57, %do.end63 ], [ %call66, %do.end72 ], [ %call76, %do.end82 ], [ %call86, %do.end92 ], [ %call95, %do.end101 ], [ %call104, %do.end110 ], [ %call114, %do.end120 ], [ %call123, %do.end129 ], [ %call133, %do.end139 ], [ %call142, %do.end148 ], [ %call154, %do.end160 ], [ %call164, %do.end170 ], [ %call174, %do.end180 ], [ %call184, %do.end190 ], [ %call194, %do.end200 ], [ %call204, %do.end210 ], [ %call214, %do.end220 ], [ %call223, %do.end229 ], [ %call233, %do.end239 ], [ %call261, %do.end267 ], [ %call271, %do.end277 ], [ 0, %do.end293 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_lsb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_msb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bme680_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %tmp.i58 = alloca i16, align 2
  %check.i = alloca i32, align 4
  %tmp.i32 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 25, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb1
    i32 17, label %sw.bb3
    i32 18, label %sw.bb5
    i32 25, label %sw.bb7
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @bme680_read_temp(ptr noundef %1, ptr noundef %val)
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tmp.i, align 4
  %call1.i = tail call fastcc i32 @bme680_read_temp(ptr noundef %1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb3.bme680_read_press.exit_crit_edge, label %if.end.i

sw.bb3.bme680_read_press.exit_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %bme680_read_press.exit

if.end.i:                                         ; preds = %sw.bb3
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call3.i = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 31, ptr noundef nonnull %tmp.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.31) #8
  br label %bme680_read_press.exit

if.end6.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp.i, align 4
  %shr.i = lshr i32 %12, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %shr.i)
  %cmp7.i = icmp eq i32 %shr.i, 32768
  br i1 %cmp7.i, label %do.end11.i, label %if.end12.i

do.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.34) #8
  br label %bme680_read_press.exit

if.end12.i:                                       ; preds = %if.end6.i
  %t_fine.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %t_fine.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t_fine.i.i, align 4
  %shr.i.i = ashr i32 %14, 1
  %sub.i.i = add nsw i32 %shr.i.i, -64000
  %shr1.i.i = ashr i32 %sub.i.i, 2
  %mul.i.i = mul i32 %shr1.i.i, %shr1.i.i
  %shr3.i.i = ashr i32 %mul.i.i, 11
  %par_p6.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %par_p6.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %par_p6.i.i, align 2
  %conv.i.i = sext i8 %16 to i32
  %mul4.i.i = mul nsw i32 %shr3.i.i, %conv.i.i
  %shr5.i.i = ashr i32 %mul4.i.i, 2
  %par_p5.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %par_p5.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %par_p5.i.i, align 2
  %conv6.i.i = sext i16 %18 to i32
  %mul7.i.i = shl i32 %sub.i.i, 1
  %shl.i.i = mul i32 %mul7.i.i, %conv6.i.i
  %add.i.i = add i32 %shr5.i.i, %shl.i.i
  %shr8.i.i = ashr i32 %add.i.i, 2
  %par_p4.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %par_p4.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %par_p4.i.i, align 2
  %conv997.i.i = zext i16 %20 to i32
  %shl10.i.i = shl nuw i32 %conv997.i.i, 16
  %add11.i.i = add i32 %shr8.i.i, %shl10.i.i
  %shr15.i.i = ashr i32 %mul.i.i, 13
  %par_p3.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %par_p3.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %par_p3.i.i, align 2
  %conv16.i.i = sext i8 %22 to i32
  %shl17.i.i = shl nsw i32 %conv16.i.i, 5
  %mul18.i.i = mul nsw i32 %shl17.i.i, %shr15.i.i
  %shr19.i.i = ashr exact i32 %mul18.i.i, 3
  %par_p2.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %par_p2.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %par_p2.i.i, align 2
  %conv20.i.i = sext i16 %24 to i32
  %mul21.i.i = mul i32 %sub.i.i, %conv20.i.i
  %shr22.i.i = ashr i32 %mul21.i.i, 1
  %add23.i.i = add nsw i32 %shr19.i.i, %shr22.i.i
  %shr24.i.i = ashr i32 %add23.i.i, 18
  %add25.i.i = add nsw i32 %shr24.i.i, 32768
  %par_p1.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %par_p1.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %par_p1.i.i, align 2
  %conv26.i.i = zext i16 %26 to i32
  %mul27.i.i = mul nuw i32 %add25.i.i, %conv26.i.i
  %shr28.i.i = ashr i32 %mul27.i.i, 15
  %shr30.i.i = ashr i32 %add11.i.i, 12
  %27 = add nsw i32 %shr.i, %shr30.i.i
  %sub31.i.i = sub nsw i32 1048576, %27
  %mul32.i.i = mul i32 %sub31.i.i, 3125
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %mul32.i.i)
  %cmp.i.i = icmp sgt i32 %mul32.i.i, 1073741823
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %div.i.i = udiv i32 %mul32.i.i, %shr28.i.i
  %shl34.i.i = shl nuw i32 %div.i.i, 1
  br label %bme680_compensate_press.exit.i

if.else.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl35.i.i = mul i32 %sub31.i.i, 6250
  %div36.i.i = udiv i32 %shl35.i.i, %shr28.i.i
  br label %bme680_compensate_press.exit.i

bme680_compensate_press.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  %press_comp.0.i.i = phi i32 [ %shl34.i.i, %if.then.i.i ], [ %div36.i.i, %if.else.i.i ]
  %par_p9.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 11
  %28 = ptrtoint ptr %par_p9.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %par_p9.i.i, align 2
  %conv37.i.i = sext i16 %29 to i32
  %shr38.i.i = ashr i32 %press_comp.0.i.i, 3
  %mul40.i.i = mul i32 %shr38.i.i, %shr38.i.i
  %shr41.i.i = ashr i32 %mul40.i.i, 13
  %mul42.i.i = mul i32 %shr41.i.i, %conv37.i.i
  %shr43.i.i = ashr i32 %mul42.i.i, 12
  %shr44.i.i = ashr i32 %press_comp.0.i.i, 2
  %par_p8.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 10
  %30 = ptrtoint ptr %par_p8.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %par_p8.i.i, align 2
  %conv45.i.i = sext i16 %31 to i32
  %mul46.i.i = mul i32 %shr44.i.i, %conv45.i.i
  %shr47.i.i = ashr i32 %mul46.i.i, 13
  %shr48.i.i = ashr i32 %press_comp.0.i.i, 8
  %mul50.i.i = mul i32 %shr48.i.i, %shr48.i.i
  %mul52.i.i = mul i32 %mul50.i.i, %shr48.i.i
  %par_p10.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 12
  %32 = ptrtoint ptr %par_p10.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %par_p10.i.i, align 2
  %conv53.i.i = zext i8 %33 to i32
  %mul54.i.i = mul i32 %mul52.i.i, %conv53.i.i
  %shr55.i.i = ashr i32 %mul54.i.i, 17
  %add56.i.i = add nsw i32 %shr43.i.i, %shr47.i.i
  %add57.i.i = add nsw i32 %add56.i.i, %shr55.i.i
  %par_p7.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 9
  %34 = ptrtoint ptr %par_p7.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %par_p7.i.i, align 1
  %conv58.i.i = sext i8 %35 to i32
  %shl59.i.i = shl nsw i32 %conv58.i.i, 7
  %add60.i.i = add nsw i32 %add57.i.i, %shl59.i.i
  %shr61.i.i = ashr i32 %add60.i.i, 4
  %add62.i.i = add i32 %shr61.i.i, %press_comp.0.i.i
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add62.i.i, ptr %val, align 4
  %37 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 100, ptr %val2, align 4
  br label %bme680_read_press.exit

bme680_read_press.exit:                           ; preds = %bme680_compensate_press.exit.i, %do.end11.i, %do.end.i, %sw.bb3.bme680_read_press.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %do.end.i ], [ -22, %do.end11.i ], [ 10, %bme680_compensate_press.exit.i ], [ %call1.i, %sw.bb3.bme680_read_press.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i33 = tail call ptr @regmap_get_device(ptr noundef %39) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i32) #5
  %40 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %tmp.i32, align 2
  %call1.i34 = tail call fastcc i32 @bme680_read_temp(ptr noundef %1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %cmp.i35 = icmp slt i32 %call1.i34, 0
  br i1 %cmp.i35, label %sw.bb5.bme680_read_humid.exit_crit_edge, label %if.end.i38

sw.bb5.bme680_read_humid.exit_crit_edge:          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %bme680_read_humid.exit

if.end.i38:                                       ; preds = %sw.bb5
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call3.i36 = call i32 @regmap_bulk_read(ptr noundef %42, i32 noundef 37, ptr noundef nonnull %tmp.i32, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i36)
  %cmp4.i37 = icmp slt i32 %call3.i36, 0
  br i1 %cmp4.i37, label %do.end.i39, label %if.end6.i41

do.end.i39:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i33, ptr noundef nonnull @.str.36) #8
  br label %bme680_read_humid.exit

if.end6.i41:                                      ; preds = %if.end.i38
  %43 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tmp.i32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %44)
  %cmp7.i40 = icmp eq i16 %44, -32768
  br i1 %cmp7.i40, label %do.end12.i, label %if.end13.i

do.end12.i:                                       ; preds = %if.end6.i41
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i33, ptr noundef nonnull @.str.39) #8
  br label %bme680_read_humid.exit

if.end13.i:                                       ; preds = %if.end6.i41
  call void @__sanitizer_cov_trace_pc() #7
  %t_fine.i.i42 = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %t_fine.i.i42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %t_fine.i.i42, align 4
  %mul.i.i43 = mul i32 %46, 5
  %add.i.i44 = add i32 %mul.i.i43, 128
  %shr.i.i45 = ashr i32 %add.i.i44, 8
  %conv.i.i46 = zext i16 %44 to i32
  %par_h1.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 13
  %47 = ptrtoint ptr %par_h1.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %par_h1.i.i, align 2
  %conv1.i.i = zext i16 %48 to i32
  %mul2.neg.i.i = mul nsw i32 %conv1.i.i, -16
  %sub.i.i47 = add nsw i32 %mul2.neg.i.i, %conv.i.i46
  %par_h3.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 15
  %49 = ptrtoint ptr %par_h3.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %par_h3.i.i, align 2
  %conv3.i.i = sext i8 %50 to i32
  %mul4.i.i48 = mul nsw i32 %shr.i.i45, %conv3.i.i
  %div.i.i49 = sdiv i32 %mul4.i.i48, 100
  %shr5.i.i50 = ashr i32 %div.i.i49, 1
  %sub6.i.i = sub nsw i32 %sub.i.i47, %shr5.i.i50
  %par_h2.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 14
  %51 = ptrtoint ptr %par_h2.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %par_h2.i.i, align 2
  %conv7.i.i = zext i16 %52 to i32
  %par_h4.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 16
  %53 = ptrtoint ptr %par_h4.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %par_h4.i.i, align 1
  %conv8.i.i = sext i8 %54 to i32
  %mul9.i.i = mul nsw i32 %shr.i.i45, %conv8.i.i
  %div10.i.i = sdiv i32 %mul9.i.i, 100
  %par_h5.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 17
  %55 = ptrtoint ptr %par_h5.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %par_h5.i.i, align 2
  %conv11.i.i = sext i8 %56 to i32
  %mul12.i.i = mul nsw i32 %shr.i.i45, %conv11.i.i
  %div13.i.i = sdiv i32 %mul12.i.i, 100
  %mul14.i.i = mul i32 %div13.i.i, %shr.i.i45
  %shr15.i.i51 = ashr i32 %mul14.i.i, 6
  %div16.i.i = sdiv i32 %shr15.i.i51, 100
  %add17.i.i = add nsw i32 %div10.i.i, 16384
  %add18.i.i = add nsw i32 %add17.i.i, %div16.i.i
  %mul19.i.i = mul i32 %add18.i.i, %conv7.i.i
  %shr20.i.i = ashr i32 %mul19.i.i, 10
  %mul21.i.i52 = mul i32 %shr20.i.i, %sub6.i.i
  %par_h6.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 18
  %57 = ptrtoint ptr %par_h6.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %par_h6.i.i, align 1
  %conv22.i.i = sext i8 %58 to i32
  %shl.i.i53 = shl nsw i32 %conv22.i.i, 7
  %par_h7.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 19
  %59 = ptrtoint ptr %par_h7.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %par_h7.i.i, align 2
  %conv23.i.i = sext i8 %60 to i32
  %mul24.i.i = mul nsw i32 %shr.i.i45, %conv23.i.i
  %div25.i.i = sdiv i32 %mul24.i.i, 100
  %add26.i.i = add nsw i32 %div25.i.i, %shl.i.i53
  %shr27.i.i = ashr i32 %add26.i.i, 4
  %shr28.i.i54 = ashr i32 %mul21.i.i52, 14
  %mul30.i.i = mul i32 %shr28.i.i54, %shr28.i.i54
  %shr31.i.i = ashr i32 %mul30.i.i, 10
  %mul32.i.i55 = mul i32 %shr31.i.i, %shr27.i.i
  %shr33.i.i = ashr i32 %mul32.i.i55, 1
  %add34.i.i = add i32 %shr33.i.i, %mul21.i.i52
  %shr35.i.i = ashr i32 %add34.i.i, 10
  %mul36.i.i = mul nsw i32 %shr35.i.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %mul36.i.i)
  %cmp.i.i56 = icmp sgt i32 %mul36.i.i, 4095
  %shr37.i.i = ashr i32 %mul36.i.i, 12
  %61 = call i32 @llvm.smin.i32(i32 %shr37.i.i, i32 100000) #5
  %62 = select i1 %cmp.i.i56, i32 %61, i32 0
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %val, align 4
  %64 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1000, ptr %val2, align 4
  br label %bme680_read_humid.exit

bme680_read_humid.exit:                           ; preds = %if.end13.i, %do.end12.i, %do.end.i39, %sw.bb5.bme680_read_humid.exit_crit_edge
  %retval.0.i57 = phi i32 [ %call3.i36, %do.end.i39 ], [ -22, %do.end12.i ], [ 10, %if.end13.i ], [ %call1.i34, %sw.bb5.bme680_read_humid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i32) #5
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i59 = tail call ptr @regmap_get_device(ptr noundef %66) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i58) #5
  %67 = ptrtoint ptr %tmp.i58 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %tmp.i58, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %check.i) #5
  %68 = ptrtoint ptr %check.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %check.i, align 4, !annotation !263
  %call1.i60 = tail call fastcc i32 @bme680_gas_config(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %cmp.i61 = icmp slt i32 %call1.i60, 0
  br i1 %cmp.i61, label %do.end.i62, label %if.end.i64

do.end.i62:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i59, ptr noundef nonnull @.str.41) #8
  br label %bme680_read_gas.exit

if.end.i64:                                       ; preds = %sw.bb7
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i.i = tail call ptr @regmap_get_device(ptr noundef %70) #5
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 116, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i63 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i63, label %bme680_set_mode.exit.thread.i, label %if.end5.i

bme680_set_mode.exit.thread.i:                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i, ptr noundef nonnull @.str.26) #8
  br label %bme680_read_gas.exit

if.end5.i:                                        ; preds = %if.end.i64
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %74, i32 noundef 29, ptr noundef nonnull %check.i) #5
  %75 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %check.i, align 4
  %and.i = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.i66, label %do.end11.i65

do.end11.i65:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i59, ptr noundef nonnull @.str.44) #8
  br label %bme680_read_gas.exit

if.end12.i66:                                     ; preds = %if.end5.i
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %call14.i = call i32 @regmap_read(ptr noundef %78, i32 noundef 43, ptr noundef nonnull %check.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.end20.i

do.end19.i:                                       ; preds = %if.end12.i66
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i59, ptr noundef nonnull @.str.47) #8
  br label %bme680_read_gas.exit

if.end20.i:                                       ; preds = %if.end12.i66
  %79 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %check.i, align 4
  %and21.i = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp22.i = icmp eq i32 %and21.i, 0
  br i1 %cmp22.i, label %do.end26.i, label %if.end27.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i59, ptr noundef nonnull @.str.50) #8
  br label %bme680_read_gas.exit

if.end27.i:                                       ; preds = %if.end20.i
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call29.i = call i32 @regmap_bulk_read(ptr noundef %82, i32 noundef 42, ptr noundef nonnull %tmp.i58, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.end34.i, label %if.end35.i

do.end34.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i59, ptr noundef nonnull @.str.53) #8
  br label %bme680_read_gas.exit

if.end35.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %check.i, align 4
  %conv.i = and i32 %84, 15
  %85 = ptrtoint ptr %tmp.i58 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %tmp.i58, align 2
  %87 = lshr i16 %86, 6
  %range_sw_err.i.i = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 1, i32 25
  %88 = ptrtoint ptr %range_sw_err.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %range_sw_err.i.i, align 1
  %conv.i.i67 = sext i8 %89 to i64
  %mul.i.i68 = mul nsw i64 %conv.i.i67, 5
  %add.i.i69 = add nsw i64 %mul.i.i68, 1340
  %arrayidx.i.i = getelementptr [16 x i32], ptr @__const.bme680_compensate_gas.lookupTable, i32 0, i32 %conv.i
  %90 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i, align 4
  %conv1.i.i70 = zext i32 %91 to i64
  %mul2.i.i = mul nuw nsw i64 %add.i.i69, %conv1.i.i70
  %shr19.i.i71 = lshr i64 %mul2.i.i, 16
  %conv3.i.i72 = zext i16 %87 to i32
  %shl.i.i73 = shl nuw nsw i32 %conv3.i.i72, 15
  %sub.i.i74 = add nsw i32 %shl.i.i73, -16777216
  %conv4.i.i = sext i32 %sub.i.i74 to i64
  %add5.i.i = add nsw i64 %shr19.i.i71, %conv4.i.i
  %sub7.i.i = xor i32 %conv.i, 15
  %shl8.i.i = shl nuw i32 125000, %sub7.i.i
  %conv9.i.i = sext i32 %shl8.i.i to i64
  %mul10.i.i = mul nsw i64 %shr19.i.i71, %conv9.i.i
  %shr11.i.i = ashr i64 %mul10.i.i, 9
  %shr12.i.i = lshr i64 %add5.i.i, 1
  %add13.i.i = add i64 %shr11.i.i, %shr12.i.i
  %call.i62.i = call i64 @div64_s64(i64 noundef %add13.i.i, i64 noundef %add5.i.i) #5
  %conv14.i.i = trunc i64 %call.i62.i to i32
  %92 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv14.i.i, ptr %val, align 4
  br label %bme680_read_gas.exit

bme680_read_gas.exit:                             ; preds = %if.end35.i, %do.end34.i, %do.end26.i, %do.end19.i, %do.end11.i65, %bme680_set_mode.exit.thread.i, %do.end.i62
  %retval.0.i75 = phi i32 [ %call1.i60, %do.end.i62 ], [ -16, %do.end11.i65 ], [ %call14.i, %do.end19.i ], [ -22, %do.end26.i ], [ %call29.i, %do.end34.i ], [ 1, %if.end35.i ], [ %call.i.i.i, %bme680_set_mode.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %check.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i58) #5
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %93 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %chan, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %94, label %sw.bb9.cleanup_crit_edge [
    i32 9, label %sw.bb11
    i32 17, label %sw.bb12
    i32 18, label %sw.bb14
  ]

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %oversampling_temp = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %oversampling_temp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %oversampling_temp, align 4
  %conv = zext i8 %97 to i32
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %oversampling_press = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 3
  %99 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %oversampling_press, align 1
  %conv13 = zext i8 %100 to i32
  %101 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv13, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %oversampling_humid = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %oversampling_humid to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %oversampling_humid, align 2
  %conv15 = zext i8 %103 to i32
  %104 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv15, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb12, %sw.bb11, %sw.bb9.cleanup_crit_edge, %bme680_read_gas.exit, %bme680_read_humid.exit, %bme680_read_press.exit, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb14 ], [ 1, %sw.bb12 ], [ 1, %sw.bb11 ], [ %retval.0.i75, %bme680_read_gas.exit ], [ %retval.0.i57, %bme680_read_humid.exit ], [ %retval.0.i, %bme680_read_press.exit ], [ %call2, %sw.bb1 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bme680_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp.not = icmp eq i32 %val2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cond = icmp eq i32 %mask, 25
  %or.cond = and i1 %cmp.not, %cond
  %2 = add i32 %val, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %3 = icmp ult i32 %2, 16
  %or.cond18 = and i1 %3, %or.cond
  %4 = tail call i32 @llvm.ctpop.i32(i32 %val) #5, !range !264
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.i.i = icmp ult i32 %4, 2
  %or.cond19 = and i1 %cmp1.i.i, %or.cond18
  br i1 %or.cond19, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %6, label %if.end3.cleanup_crit_edge [
    i32 9, label %sw.bb4
    i32 17, label %sw.bb5
    i32 18, label %sw.bb7
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb4:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %val to i8
  %oversampling_temp = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %oversampling_temp to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %oversampling_temp, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %conv6 = trunc i32 %val to i8
  %oversampling_press = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %oversampling_press to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %oversampling_press, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %conv8 = trunc i32 %val to i8
  %oversampling_humid = getelementptr inbounds %struct.bme680_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %oversampling_humid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv8, ptr %oversampling_humid, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb4
  %call9 = tail call fastcc i32 @bme680_chip_config(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bme680_read_temp(ptr noundef %data, ptr noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %4) #5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 116, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %bme680_set_mode.exit.thread, label %if.end

bme680_set_mode.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 34, ptr noundef nonnull %tmp, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp, align 4
  %shr.mask = and i32 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %shr.mask)
  %cmp7 = icmp eq i32 %shr.mask, 134217728
  br i1 %cmp7, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %bme680.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1
  %par_t2.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %par_t2.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %par_t2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end12.bme680_compensate_temp.exit_crit_edge

if.end12.bme680_compensate_temp.exit_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %bme680_compensate_temp.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call.i30 = call fastcc i32 @bme680_read_calib(ptr noundef %data, ptr noundef %bme680.i) #5
  br label %bme680_compensate_temp.exit

bme680_compensate_temp.exit:                      ; preds = %if.then.i, %if.end12.bme680_compensate_temp.exit_crit_edge
  %shr.i31 = lshr i32 %10, 15
  %13 = ptrtoint ptr %bme680.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bme680.i, align 2
  %conv.i = zext i16 %14 to i32
  %shl.neg.i = mul nsw i32 %conv.i, -2
  %sub.i = add nsw i32 %shl.neg.i, %shr.i31
  %conv1.i = sext i32 %sub.i to i64
  %15 = ptrtoint ptr %par_t2.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %par_t2.i, align 2
  %conv3.i = sext i16 %16 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv3.i
  %17 = lshr i64 %mul.i, 11
  %shr5.i = ashr i64 %conv1.i, 1
  %mul7.i = mul nsw i64 %shr5.i, %shr5.i
  %18 = lshr i64 %mul7.i, 12
  %par_t3.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %par_t3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %par_t3.i, align 2
  %conv9.i = sext i8 %20 to i32
  %shl10.i = shl nsw i32 %conv9.i, 4
  %conv11.i = sext i32 %shl10.i to i64
  %mul12.i = mul nsw i64 %18, %conv11.i
  %21 = lshr i64 %mul12.i, 14
  %add.i = add nuw nsw i64 %21, %17
  %conv14.i = trunc i64 %add.i to i32
  %t_fine.i = getelementptr inbounds %struct.bme680_data, ptr %data, i32 0, i32 7
  %22 = ptrtoint ptr %t_fine.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv14.i, ptr %t_fine.i, align 4
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %bme680_compensate_temp.exit.cleanup_crit_edge, label %if.then14

bme680_compensate_temp.exit.cleanup_crit_edge:    ; preds = %bme680_compensate_temp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %bme680_compensate_temp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add17.i = mul i32 %conv14.i, 1280
  %23 = add i32 %add17.i, 32768
  %conv = ashr i32 %23, 16
  %mul = mul nsw i32 %conv, 10
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %bme680_compensate_temp.exit.cleanup_crit_edge, %do.end11, %do.end, %bme680_set_mode.exit.thread
  %retval.0 = phi i32 [ %call3, %do.end ], [ -22, %do.end11 ], [ 1, %if.then14 ], [ %call3, %bme680_compensate_temp.exit.cleanup_crit_edge ], [ %call.i.i, %bme680_set_mode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @bme680_regmap_config, !1, !"bme680_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/bme680_core.c", i32 77, i32 28}
!2 = !{ptr @__ksymtab_bme680_regmap_config, !3, !"__ksymtab_bme680_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/iio/chemical/bme680_core.c", i32 84, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/chemical/bme680_core.c", i32 900, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bme680_core_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @bme680_core_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/bme680_core.c", i32 906, i32 3}
!14 = !{ptr @bme680_core_probe._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @bme680_core_probe._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/bme680_core.c", i32 911, i32 3}
!18 = !{ptr @bme680_core_probe._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @bme680_core_probe._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/chemical/bme680_core.c", i32 941, i32 3}
!22 = !{ptr @bme680_core_probe._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bme680_core_probe._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/chemical/bme680_core.c", i32 947, i32 3}
!26 = !{ptr @bme680_core_probe._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bme680_core_probe._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/chemical/bme680_core.c", i32 953, i32 3}
!30 = !{ptr @bme680_core_probe._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bme680_core_probe._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_bme680_core_probe, !33, !"__ksymtab_bme680_core_probe", i1 false, i1 false}
!33 = !{!"../drivers/iio/chemical/bme680_core.c", i32 960, i32 1}
!34 = !{ptr @__UNIQUE_ID_author222, !35, !"__UNIQUE_ID_author222", i1 false, i1 false}
!35 = !{!"../drivers/iio/chemical/bme680_core.c", i32 962, i32 1}
!36 = !{ptr @__UNIQUE_ID_description223, !37, !"__UNIQUE_ID_description223", i1 false, i1 false}
!37 = !{!"../drivers/iio/chemical/bme680_core.c", i32 963, i32 1}
!38 = !{ptr @__UNIQUE_ID_file224, !39, !"__UNIQUE_ID_file224", i1 false, i1 false}
!39 = !{!"../drivers/iio/chemical/bme680_core.c", i32 964, i32 1}
!40 = !{ptr @__UNIQUE_ID_license225, !39, !"__UNIQUE_ID_license225", i1 false, i1 false}
!41 = !{ptr @bme680_volatile_table, !42, !"bme680_volatile_table", i1 false, i1 false}
!42 = !{!"../drivers/iio/chemical/bme680_core.c", i32 72, i32 41}
!43 = !{ptr @bme680_volatile_ranges, !44, !"bme680_volatile_ranges", i1 false, i1 false}
!44 = !{!"../drivers/iio/chemical/bme680_core.c", i32 66, i32 34}
!45 = !{ptr @bme680_channels, !46, !"bme680_channels", i1 false, i1 false}
!46 = !{!"../drivers/iio/chemical/bme680_core.c", i32 86, i32 35}
!47 = !{ptr @bme680_info, !48, !"bme680_info", i1 false, i1 false}
!48 = !{!"../drivers/iio/chemical/bme680_core.c", i32 872, i32 30}
!49 = !{ptr @bme680_attribute_group, !50, !"bme680_attribute_group", i1 false, i1 false}
!50 = !{!"../drivers/iio/chemical/bme680_core.c", i32 868, i32 37}
!51 = !{ptr @bme680_attributes, !52, !"bme680_attributes", i1 false, i1 false}
!52 = !{!"../drivers/iio/chemical/bme680_core.c", i32 863, i32 26}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/chemical/bme680_core.c", i32 860, i32 8}
!55 = !{ptr @iio_const_attr_oversampling_ratio_available, !54, !"iio_const_attr_oversampling_ratio_available", i1 false, i1 false}
!56 = !{ptr @bme680_oversampling_ratio_show, !57, !"bme680_oversampling_ratio_show", i1 false, i1 false}
!57 = !{!"../drivers/iio/chemical/bme680_core.c", i32 858, i32 19}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/chemical/bme680_core.c", i32 628, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bme680_read_temp._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bme680_read_temp._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/chemical/bme680_core.c", i32 635, i32 3}
!65 = !{ptr @bme680_read_temp._entry.23, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bme680_read_temp._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/chemical/bme680_core.c", i32 517, i32 4}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bme680_set_mode._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bme680_set_mode._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/chemical/bme680_core.c", i32 523, i32 4}
!74 = !{ptr @bme680_set_mode._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bme680_set_mode._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/chemical/bme680_core.c", i32 669, i32 3}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @bme680_read_press._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @bme680_read_press._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/chemical/bme680_core.c", i32 676, i32 3}
!83 = !{ptr @bme680_read_press._entry.33, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bme680_read_press._entry_ptr.35, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/chemical/bme680_core.c", i32 702, i32 3}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @bme680_read_humid._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @bme680_read_humid._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/chemical/bme680_core.c", i32 709, i32 3}
!92 = !{ptr @bme680_read_humid._entry.38, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @bme680_read_humid._entry_ptr.40, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/chemical/bme680_core.c", i32 732, i32 3}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @bme680_read_gas._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @bme680_read_gas._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/chemical/bme680_core.c", i32 743, i32 3}
!101 = !{ptr @bme680_read_gas._entry.43, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @bme680_read_gas._entry_ptr.45, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/chemical/bme680_core.c", i32 749, i32 3}
!105 = !{ptr @bme680_read_gas._entry.46, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @bme680_read_gas._entry_ptr.48, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/chemical/bme680_core.c", i32 760, i32 3}
!109 = !{ptr @bme680_read_gas._entry.49, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @bme680_read_gas._entry_ptr.51, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/chemical/bme680_core.c", i32 767, i32 3}
!113 = !{ptr @bme680_read_gas._entry.52, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @bme680_read_gas._entry_ptr.54, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/chemical/bme680_core.c", i32 551, i32 3}
!117 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @bme680_chip_config._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @bme680_chip_config._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/chemical/bme680_core.c", i32 560, i32 3}
!122 = !{ptr @bme680_chip_config._entry.57, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @bme680_chip_config._entry_ptr.59, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/chemical/bme680_core.c", i32 572, i32 3}
!126 = !{ptr @bme680_chip_config._entry.60, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @bme680_chip_config._entry_ptr.62, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/chemical/bme680_core.c", i32 588, i32 3}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @bme680_gas_config._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @bme680_gas_config._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/chemical/bme680_core.c", i32 597, i32 3}
!135 = !{ptr @bme680_gas_config._entry.65, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @bme680_gas_config._entry_ptr.67, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/chemical/bme680_core.c", i32 607, i32 3}
!139 = !{ptr @bme680_gas_config._entry.68, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bme680_gas_config._entry_ptr.70, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/chemical/bme680_core.c", i32 120, i32 3}
!143 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @bme680_read_calib._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @bme680_read_calib._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/chemical/bme680_core.c", i32 128, i32 3}
!148 = !{ptr @bme680_read_calib._entry.73, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @bme680_read_calib._entry_ptr.75, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/chemical/bme680_core.c", i32 135, i32 3}
!152 = !{ptr @bme680_read_calib._entry.76, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @bme680_read_calib._entry_ptr.78, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/chemical/bme680_core.c", i32 144, i32 3}
!156 = !{ptr @bme680_read_calib._entry.79, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @bme680_read_calib._entry_ptr.81, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/chemical/bme680_core.c", i32 152, i32 3}
!160 = !{ptr @bme680_read_calib._entry.82, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @bme680_read_calib._entry_ptr.84, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/chemical/bme680_core.c", i32 159, i32 3}
!164 = !{ptr @bme680_read_calib._entry.85, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @bme680_read_calib._entry_ptr.87, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/iio/chemical/bme680_core.c", i32 167, i32 3}
!168 = !{ptr @bme680_read_calib._entry.88, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @bme680_read_calib._entry_ptr.90, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/chemical/bme680_core.c", i32 175, i32 3}
!172 = !{ptr @bme680_read_calib._entry.91, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @bme680_read_calib._entry_ptr.93, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.95, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/chemical/bme680_core.c", i32 182, i32 3}
!176 = !{ptr @bme680_read_calib._entry.94, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @bme680_read_calib._entry_ptr.96, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/chemical/bme680_core.c", i32 189, i32 3}
!180 = !{ptr @bme680_read_calib._entry.97, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @bme680_read_calib._entry_ptr.99, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/iio/chemical/bme680_core.c", i32 197, i32 3}
!184 = !{ptr @bme680_read_calib._entry.100, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @bme680_read_calib._entry_ptr.102, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.104, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/chemical/bme680_core.c", i32 205, i32 3}
!188 = !{ptr @bme680_read_calib._entry.103, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @bme680_read_calib._entry_ptr.105, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/iio/chemical/bme680_core.c", i32 212, i32 3}
!192 = !{ptr @bme680_read_calib._entry.106, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @bme680_read_calib._entry_ptr.108, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.110, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/iio/chemical/bme680_core.c", i32 220, i32 3}
!196 = !{ptr @bme680_read_calib._entry.109, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @bme680_read_calib._entry_ptr.111, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.113, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/iio/chemical/bme680_core.c", i32 225, i32 3}
!200 = !{ptr @bme680_read_calib._entry.112, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @bme680_read_calib._entry_ptr.114, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/iio/chemical/bme680_core.c", i32 233, i32 3}
!204 = !{ptr @bme680_read_calib._entry.115, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @bme680_read_calib._entry_ptr.117, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.119, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/iio/chemical/bme680_core.c", i32 238, i32 3}
!208 = !{ptr @bme680_read_calib._entry.118, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @bme680_read_calib._entry_ptr.120, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/iio/chemical/bme680_core.c", i32 246, i32 3}
!212 = !{ptr @bme680_read_calib._entry.121, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @bme680_read_calib._entry_ptr.123, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.125, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/iio/chemical/bme680_core.c", i32 253, i32 3}
!216 = !{ptr @bme680_read_calib._entry.124, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @bme680_read_calib._entry_ptr.126, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.128, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/iio/chemical/bme680_core.c", i32 260, i32 3}
!220 = !{ptr @bme680_read_calib._entry.127, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @bme680_read_calib._entry_ptr.129, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.131, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/iio/chemical/bme680_core.c", i32 267, i32 3}
!224 = !{ptr @bme680_read_calib._entry.130, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @bme680_read_calib._entry_ptr.132, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.134, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/iio/chemical/bme680_core.c", i32 274, i32 3}
!228 = !{ptr @bme680_read_calib._entry.133, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @bme680_read_calib._entry_ptr.135, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.137, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/iio/chemical/bme680_core.c", i32 282, i32 3}
!232 = !{ptr @bme680_read_calib._entry.136, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @bme680_read_calib._entry_ptr.138, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.140, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/iio/chemical/bme680_core.c", i32 290, i32 3}
!236 = !{ptr @bme680_read_calib._entry.139, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @bme680_read_calib._entry_ptr.141, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.143, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/iio/chemical/bme680_core.c", i32 297, i32 3}
!240 = !{ptr @bme680_read_calib._entry.142, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @bme680_read_calib._entry_ptr.144, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.146, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/iio/chemical/bme680_core.c", i32 305, i32 3}
!244 = !{ptr @bme680_read_calib._entry.145, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @bme680_read_calib._entry_ptr.147, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.149, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/iio/chemical/bme680_core.c", i32 312, i32 3}
!248 = !{ptr @bme680_read_calib._entry.148, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @bme680_read_calib._entry_ptr.150, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.152, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/iio/chemical/bme680_core.c", i32 319, i32 3}
!252 = !{ptr @bme680_read_calib._entry.151, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @bme680_read_calib._entry_ptr.153, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{!"auto-init"}
!264 = !{i32 0, i32 33}
