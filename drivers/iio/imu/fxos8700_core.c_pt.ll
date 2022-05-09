; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/fxos8700_core.c_pt.bc'
source_filename = "../drivers/iio/imu/fxos8700_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fxos8700_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_fxos8700_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_fxos8700_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxos8700_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22fxos8700_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_fxos8700_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fxos8700_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_fxos8700_core_probe\09\09\09\09"
module asm "\09.long\09__crc_fxos8700_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxos8700_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22fxos8700_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_fxos8700_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fxos8700_scale = type { i8, i32 }
%struct.fxos8700_odr = type { i8, i32, i32 }
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
%struct.fxos8700_data = type { ptr, ptr, [120 x i8], [3 x i16], [122 x i8] }

@driver_write_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @write_range, i32 10, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@driver_read_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @read_range, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@fxos8700_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 167, ptr @driver_write_table, ptr @driver_read_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_fxos8700_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxos8700_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_fxos8700_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxos8700_regmap_config to i32), ptr @__kstrtab_fxos8700_regmap_config, ptr @__kstrtabns_fxos8700_regmap_config }, section "___ksymtab+fxos8700_regmap_config", align 4
@fxos8700_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fxos8700\00", [23 x i8] zeroinitializer }, align 32
@fxos8700_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @fxos8700_attrs_group, ptr @fxos8700_read_raw, ptr null, ptr null, ptr @fxos8700_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_fxos8700_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxos8700_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_fxos8700_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxos8700_core_probe to i32), ptr @__kstrtab_fxos8700_core_probe, ptr @__kstrtabns_fxos8700_core_probe }, section "___ksymtab_gpl+fxos8700_core_probe", align 4
@__UNIQUE_ID_author183 = internal constant [57 x i8] c"fxos8700_core.author=Robert Jones <rjones@gateworks.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [74 x i8] c"fxos8700_core.description=FXOS8700 6-Axis Acc and Mag Combo Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [49 x i8] c"fxos8700_core.file=drivers/iio/imu/fxos8700_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [29 x i8] c"fxos8700_core.license=GPL v2\00", section ".modinfo", align 1
@write_range = internal constant { [10 x %struct.regmap_range], [48 x i8] } { [10 x %struct.regmap_range] [%struct.regmap_range { i32 9, i32 10 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 17, i32 21 }, %struct.regmap_range { i32 23, i32 29 }, %struct.regmap_range { i32 31, i32 33 }, %struct.regmap_range { i32 35, i32 49 }, %struct.regmap_range { i32 63, i32 68 }, %struct.regmap_range { i32 82, i32 82 }, %struct.regmap_range { i32 84, i32 93 }, %struct.regmap_range { i32 95, i32 120 }], [48 x i8] zeroinitializer }, align 32
@read_range = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 24 }, %struct.regmap_range { i32 29, i32 120 }], [16 x i8] zeroinitializer }, align 32
@fxos8700_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading chip id\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fxos8700_chip_init\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/imu/fxos8700_core.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fxos8700_chip_init._entry_ptr = internal global ptr @fxos8700_chip_init._entry, section ".printk_index", align 4
@fxos8700_chip_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Wrong chip id, got %x expected %x or %x\0A\00", [55 x i8] zeroinitializer }, align 32
@fxos8700_chip_init._entry_ptr.8 = internal global ptr @fxos8700_chip_init._entry.6, section ".printk_index", align 4
@fxos8700_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fxos8700_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fxos8700_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_accel_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_magn_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_magn_scale_available, i64 4), ptr null], [44 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.9, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_magn_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.9, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.12, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_magn_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.14, %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"1.5625 6.25 12.5 50 100 200 400 800\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_accel_sampling_frequency_available\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"in_magn_sampling_frequency_available\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0.000244 0.000488 0.000976\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0.000001200\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"in_magn_scale_available\00", [40 x i8] zeroinitializer }, align 32
@fxos8700_accel_scale = internal constant { [3 x %struct.fxos8700_scale], [40 x i8] } { [3 x %struct.fxos8700_scale] [%struct.fxos8700_scale { i8 0, i32 244 }, %struct.fxos8700_scale { i8 1, i32 488 }, %struct.fxos8700_scale { i8 2, i32 976 }], [40 x i8] zeroinitializer }, align 32
@fxos8700_odr = internal constant { [8 x %struct.fxos8700_odr], [32 x i8] } { [8 x %struct.fxos8700_odr] [%struct.fxos8700_odr { i8 0, i32 800, i32 0 }, %struct.fxos8700_odr { i8 1, i32 400, i32 0 }, %struct.fxos8700_odr { i8 2, i32 200, i32 0 }, %struct.fxos8700_odr { i8 3, i32 100, i32 0 }, %struct.fxos8700_odr { i8 4, i32 50, i32 0 }, %struct.fxos8700_odr { i8 5, i32 12, i32 500000 }, %struct.fxos8700_odr { i8 6, i32 6, i32 250000 }, %struct.fxos8700_odr { i8 7, i32 1, i32 562500 }], [32 x i8] zeroinitializer }, align 32
@fxos8700_set_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Magnetometer scale is locked at 1200uT\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fxos8700_set_scale\00", [45 x i8] zeroinitializer }, align 32
@fxos8700_set_scale._entry_ptr = internal global ptr @fxos8700_set_scale._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 196, i64 199]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 244, i64 488, i64 976]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 6, i64 12, i64 50, i64 100, i64 200, i64 400, i64 800]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"driver_write_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 223, i32 41 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"driver_read_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 218, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"fxos8700_regmap_config\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 228, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"fxos8700_channels\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 308, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 638, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"fxos8700_info\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 543, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"write_range\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 184, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"read_range\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 174, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 557, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 561, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"fxos8700_attrs_group\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 539, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"fxos8700_attrs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 531, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [53 x i8] c"iio_const_attr_in_accel_sampling_frequency_available\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [52 x i8] c"iio_const_attr_in_magn_sampling_frequency_available\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [39 x i8] c"iio_const_attr_in_magn_scale_available\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 524, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 526, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 528, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 529, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"fxos8700_accel_scale\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 286, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"fxos8700_odr\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 297, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [35 x i8] c"../drivers/iio/imu/fxos8700_core.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 353, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__ksymtab_fxos8700_core_probe, ptr @__ksymtab_fxos8700_regmap_config, ptr @fxos8700_chip_init._entry, ptr @fxos8700_chip_init._entry.6, ptr @fxos8700_chip_init._entry_ptr, ptr @fxos8700_chip_init._entry_ptr.8, ptr @fxos8700_set_scale._entry, ptr @fxos8700_set_scale._entry_ptr, ptr @driver_write_table, ptr @driver_read_table, ptr @fxos8700_regmap_config, ptr @fxos8700_channels, ptr @.str, ptr @fxos8700_info, ptr @write_range, ptr @read_range, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @fxos8700_attrs_group, ptr @fxos8700_attrs, ptr @iio_const_attr_in_accel_sampling_frequency_available, ptr @iio_const_attr_in_magn_sampling_frequency_available, ptr @iio_const_attr_in_accel_scale_available, ptr @iio_const_attr_in_magn_scale_available, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @fxos8700_accel_scale, ptr @fxos8700_odr, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_write_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_read_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_range to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_chip_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_magn_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_magn_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_accel_scale to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_odr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxos8700_set_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fxos8700_core_probe(ptr noundef %dev, ptr noundef %regmap, ptr noundef %name, i1 noundef zeroext %use_spi) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 256) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !84
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %call.i = tail call ptr @regmap_get_device(ptr noundef %6) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %call2.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 13, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.1) #7
  br label %fxos8700_chip_init.exit.thread

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end7.i [
    i32 199, label %if.end.i.if.end8.i_crit_edge
    i32 196, label %if.end.i.if.end8.i_crit_edge39
  ]

if.end.i.if.end8.i_crit_edge39:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef 199, i32 noundef 196) #7
  br label %fxos8700_chip_init.exit.thread

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge39
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %call.i.i = call i32 @regmap_write(ptr noundef %13, i32 noundef 42, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end12.i, label %if.end8.i.fxos8700_chip_init.exit.thread_crit_edge

if.end8.i.fxos8700_chip_init.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_chip_init.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %call.i1.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 42, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool1.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool1.not.i2.i, label %if.end16.i, label %if.end12.i.fxos8700_chip_init.exit.thread_crit_edge

if.end12.i.fxos8700_chip_init.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_chip_init.exit.thread

if.end16.i:                                       ; preds = %if.end12.i
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %call18.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 42, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.fxos8700_chip_init.exit.thread_crit_edge

if.end16.i.fxos8700_chip_init.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_chip_init.exit.thread

if.end21.i:                                       ; preds = %if.end16.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %call23.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 91, i32 noundef 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end21.i.fxos8700_chip_init.exit.thread_crit_edge

if.end21.i.fxos8700_chip_init.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_chip_init.exit.thread

if.end26.i:                                       ; preds = %if.end21.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %call28.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 92, i32 noundef 28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end26.i.fxos8700_chip_init.exit.thread_crit_edge

if.end26.i.fxos8700_chip_init.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_chip_init.exit.thread

if.end31.i:                                       ; preds = %if.end26.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 128
  %call33.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 42, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %fxos8700_chip_init.exit, label %if.end31.i.fxos8700_chip_init.exit.thread_crit_edge

if.end31.i.fxos8700_chip_init.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_chip_init.exit.thread

fxos8700_chip_init.exit.thread:                   ; preds = %if.end31.i.fxos8700_chip_init.exit.thread_crit_edge, %if.end26.i.fxos8700_chip_init.exit.thread_crit_edge, %if.end21.i.fxos8700_chip_init.exit.thread_crit_edge, %if.end16.i.fxos8700_chip_init.exit.thread_crit_edge, %if.end12.i.fxos8700_chip_init.exit.thread_crit_edge, %if.end8.i.fxos8700_chip_init.exit.thread_crit_edge, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i1.i, %if.end12.i.fxos8700_chip_init.exit.thread_crit_edge ], [ %call.i.i, %if.end8.i.fxos8700_chip_init.exit.thread_crit_edge ], [ %call33.i, %if.end31.i.fxos8700_chip_init.exit.thread_crit_edge ], [ %call28.i, %if.end26.i.fxos8700_chip_init.exit.thread_crit_edge ], [ %call23.i, %if.end21.i.fxos8700_chip_init.exit.thread_crit_edge ], [ %call18.i, %if.end16.i.fxos8700_chip_init.exit.thread_crit_edge ], [ -19, %do.end7.i ], [ %call2.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

fxos8700_chip_init.exit:                          ; preds = %if.end31.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %call38.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 14, i32 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool5.not = icmp eq i32 %call38.i, 0
  br i1 %tobool5.not, label %if.end7, label %fxos8700_chip_init.exit.cleanup_crit_edge

fxos8700_chip_init.exit.cleanup_crit_edge:        ; preds = %fxos8700_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %fxos8700_chip_init.exit
  %call.i34 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @fxos8700_chip_uninit, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end11, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %call.i.i.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 42, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i, label %if.then.i.fxos8700_set_active_mode.exit.i.i_crit_edge

if.then.i.fxos8700_set_active_mode.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_active_mode.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #4
  br label %fxos8700_set_active_mode.exit.i.i

fxos8700_set_active_mode.exit.i.i:                ; preds = %if.end.i.i.i, %if.then.i.fxos8700_set_active_mode.exit.i.i_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 128
  %call.i3.i.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 42, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.i)
  %tobool1.not.i4.i.i = icmp eq i32 %call.i3.i.i, 0
  br i1 %tobool1.not.i4.i.i, label %if.end.i5.i.i, label %fxos8700_set_active_mode.exit.i.i.cleanup_crit_edge

fxos8700_set_active_mode.exit.i.i.cleanup_crit_edge: ; preds = %fxos8700_set_active_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i5.i.i:                                    ; preds = %fxos8700_set_active_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fxos8700_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %31 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %num_channels, align 4
  %tobool12.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool12.not, ptr @.str, ptr %name
  %name13 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %32 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.select, ptr %name13, align 8
  %33 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %34 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fxos8700_info, ptr %info, align 8
  %call14 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.i5.i.i, %fxos8700_set_active_mode.exit.i.i.cleanup_crit_edge, %fxos8700_chip_init.exit.cleanup_crit_edge, %fxos8700_chip_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %call38.i, %fxos8700_chip_init.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %fxos8700_chip_init.exit.thread ], [ %call.i34, %fxos8700_set_active_mode.exit.i.i.cleanup_crit_edge ], [ %call.i34, %if.end.i5.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fxos8700_chip_uninit(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 42, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %entry.fxos8700_set_active_mode.exit_crit_edge

entry.fxos8700_set_active_mode.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_active_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #4
  br label %fxos8700_set_active_mode.exit

fxos8700_set_active_mode.exit:                    ; preds = %if.end.i, %entry.fxos8700_set_active_mode.exit_crit_edge
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 128
  %call.i3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 42, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool1.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool1.not.i4, label %if.end.i5, label %fxos8700_set_active_mode.exit.fxos8700_set_active_mode.exit6_crit_edge

fxos8700_set_active_mode.exit.fxos8700_set_active_mode.exit6_crit_edge: ; preds = %fxos8700_set_active_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_active_mode.exit6

if.end.i5:                                        ; preds = %fxos8700_set_active_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #4
  br label %fxos8700_set_active_mode.exit6

fxos8700_set_active_mode.exit6:                   ; preds = %if.end.i5, %fxos8700_set_active_mode.exit.fxos8700_set_active_mode.exit6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxos8700_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %val.i36 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 12, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %switch.selectcmp2.i.i = icmp eq i32 %4, 3
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %conv1.i = select i1 %switch.selectcmp2.i.i, i32 51, i32 1
  %buf.i = getelementptr inbounds %struct.fxos8700_data, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %conv1.i, ptr noundef %buf.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv4.i = add i32 %6, 255
  %idxprom.i = and i32 %conv4.i, 255
  %arrayidx.i = getelementptr %struct.fxos8700_data, ptr %1, i32 0, i32 3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %shr.i.i = sext i16 %10 to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val, align 4
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch.selectcmp.i = icmp eq i32 %14, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i, align 4, !annotation !84
  br i1 %switch.selectcmp.i, label %sw.bb2._crit_edge, label %if.end.i31

sw.bb2._crit_edge:                                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %22

if.end.i31:                                       ; preds = %sw.bb2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 14, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.i31.fxos8700_get_scale.exit.thread_crit_edge

if.end.i31.fxos8700_get_scale.exit.thread_crit_edge: ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_get_scale.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i31
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %and.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %switch.not = icmp eq i32 %and.i, 3
  br i1 %switch.not, label %for.cond.preheader.i.fxos8700_get_scale.exit.thread_crit_edge, label %if.then6.i

for.cond.preheader.i.fxos8700_get_scale.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_get_scale.exit.thread

if.then6.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  %uscale8.i = getelementptr [3 x %struct.fxos8700_scale], ptr @fxos8700_accel_scale, i32 0, i32 %and.i, i32 1
  %20 = ptrtoint ptr %uscale8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uscale8.i, align 4
  br label %22

fxos8700_get_scale.exit.thread:                   ; preds = %for.cond.preheader.i.fxos8700_get_scale.exit.thread_crit_edge, %if.end.i31.fxos8700_get_scale.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %for.cond.preheader.i.fxos8700_get_scale.exit.thread_crit_edge ], [ %call.i, %if.end.i31.fxos8700_get_scale.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

22:                                               ; preds = %if.then6.i, %sw.bb2._crit_edge
  %.sink.i = phi i32 [ %21, %if.then6.i ], [ 1200, %sw.bb2._crit_edge ]
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %val2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i36) #4
  %24 = ptrtoint ptr %val.i36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i36, align 4, !annotation !84
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %call.i37 = call i32 @regmap_read(ptr noundef %26, i32 noundef 42, ptr noundef nonnull %val.i36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i40, label %sw.bb7.fxos8700_get_odr.exit.thread_crit_edge

sw.bb7.fxos8700_get_odr.exit.thread_crit_edge:    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_get_odr.exit.thread

if.end.i40:                                       ; preds = %sw.bb7
  %27 = ptrtoint ptr %val.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i36, align 4
  %and.i39 = and i32 %28, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %cmp1.i = icmp eq i32 %and.i39, 0
  br i1 %cmp1.i, label %29, label %if.end.i40.fxos8700_get_odr.exit.thread_crit_edge

if.end.i40.fxos8700_get_odr.exit.thread_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_get_odr.exit.thread

fxos8700_get_odr.exit.thread:                     ; preds = %if.end.i40.fxos8700_get_odr.exit.thread_crit_edge, %sw.bb7.fxos8700_get_odr.exit.thread_crit_edge
  %retval.0.i41.ph = phi i32 [ -22, %if.end.i40.fxos8700_get_odr.exit.thread_crit_edge ], [ %call.i37, %sw.bb7.fxos8700_get_odr.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #4
  br label %cleanup

29:                                               ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 800, ptr %val, align 4
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #4
  br label %cleanup

cleanup:                                          ; preds = %29, %fxos8700_get_odr.exit.thread, %22, %fxos8700_get_scale.exit.thread, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 2, %22 ], [ %retval.0.i.ph, %fxos8700_get_scale.exit.thread ], [ 2, %29 ], [ %retval.0.i41.ph, %fxos8700_get_odr.exit.thread ], [ %call2.i, %sw.bb.cleanup_crit_edge ], [ 1, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxos8700_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch.selectcmp.i = icmp eq i32 %4, 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %call.i = tail call ptr @regmap_get_device(ptr noundef %6) #4
  br i1 %switch.selectcmp.i, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %sw.bb
  %7 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %val2, label %for.body.preheader.i.cleanup_crit_edge [
    i32 244, label %for.body.preheader.i.if.end8.i_crit_edge
    i32 488, label %if.end8.fold.split.i
    i32 976, label %if.end8.fold.split23.i
  ]

for.body.preheader.i.if.end8.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end8.fold.split.i:                             ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.end8.fold.split23.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.fold.split23.i, %if.end8.fold.split.i, %for.body.preheader.i.if.end8.i_crit_edge
  %i.021.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.end8.i_crit_edge ], [ 1, %if.end8.fold.split.i ], [ 2, %if.end8.fold.split23.i ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %arrayidx10.i = getelementptr [3 x %struct.fxos8700_scale], ptr @fxos8700_accel_scale, i32 0, i32 %i.021.lcssa.i
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10.i, align 4
  %conv.i = zext i8 %11 to i32
  %call11.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 14, i32 noundef %conv.i) #4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !84
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %call.i14 = call i32 @regmap_read(ptr noundef %14, i32 noundef 42, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.fxos8700_set_odr.exit_crit_edge

sw.bb3.fxos8700_set_odr.exit_crit_edge:           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

if.end.i:                                         ; preds = %sw.bb3
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  %and5.i = and i32 %16, -2
  %call6.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 42, i32 noundef %and5.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3.i.if.end10.i_crit_edge, label %if.then3.i.fxos8700_set_odr.exit_crit_edge

if.then3.i.fxos8700_set_odr.exit_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %19 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %val, label %if.end10.i.fxos8700_set_odr.exit_crit_edge [
    i32 800, label %land.lhs.true.i
    i32 400, label %land.lhs.true.1.i
    i32 200, label %land.lhs.true.2.i
    i32 100, label %land.lhs.true.3.i
    i32 50, label %land.lhs.true.4.i
    i32 12, label %land.lhs.true.5.i
    i32 6, label %land.lhs.true.6.i
    i32 1, label %land.lhs.true.7.i
  ]

if.end10.i.fxos8700_set_odr.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.i:                                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp15.i = icmp eq i32 %val2, 0
  br i1 %cmp15.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %land.lhs.true.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.i.fxos8700_set_odr.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.1.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp15.1.i = icmp eq i32 %val2, 0
  br i1 %cmp15.1.i, label %land.lhs.true.1.i.if.end20.i_crit_edge, label %land.lhs.true.1.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.1.i.fxos8700_set_odr.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.1.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.2.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp15.2.i = icmp eq i32 %val2, 0
  br i1 %cmp15.2.i, label %land.lhs.true.2.i.if.end20.i_crit_edge, label %land.lhs.true.2.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.2.i.fxos8700_set_odr.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.2.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.3.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp15.3.i = icmp eq i32 %val2, 0
  br i1 %cmp15.3.i, label %land.lhs.true.3.i.if.end20.i_crit_edge, label %land.lhs.true.3.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.3.i.fxos8700_set_odr.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.3.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.4.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp15.4.i = icmp eq i32 %val2, 0
  br i1 %cmp15.4.i, label %land.lhs.true.4.i.if.end20.i_crit_edge, label %land.lhs.true.4.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.4.i.fxos8700_set_odr.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.4.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.5.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp15.5.i = icmp eq i32 %val2, 500000
  br i1 %cmp15.5.i, label %land.lhs.true.5.i.if.end20.i_crit_edge, label %land.lhs.true.5.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.5.i.fxos8700_set_odr.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.5.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.6.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp15.6.i = icmp eq i32 %val2, 250000
  br i1 %cmp15.6.i, label %land.lhs.true.6.i.if.end20.i_crit_edge, label %land.lhs.true.6.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.6.i.fxos8700_set_odr.exit_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.6.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

land.lhs.true.7.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 562500, i32 %val2)
  %cmp15.7.i = icmp eq i32 %val2, 562500
  br i1 %cmp15.7.i, label %land.lhs.true.7.i.if.end20.i_crit_edge, label %land.lhs.true.7.i.fxos8700_set_odr.exit_crit_edge

land.lhs.true.7.i.fxos8700_set_odr.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fxos8700_set_odr.exit

land.lhs.true.7.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.7.i.if.end20.i_crit_edge, %land.lhs.true.6.i.if.end20.i_crit_edge, %land.lhs.true.5.i.if.end20.i_crit_edge, %land.lhs.true.4.i.if.end20.i_crit_edge, %land.lhs.true.3.i.if.end20.i_crit_edge, %land.lhs.true.2.i.if.end20.i_crit_edge, %land.lhs.true.1.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge
  %i.03.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.end20.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end20.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.end20.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.end20.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.end20.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.end20.i_crit_edge ], [ 6, %land.lhs.true.6.i.if.end20.i_crit_edge ], [ 7, %land.lhs.true.7.i.if.end20.i_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %arrayidx22.i = getelementptr [8 x %struct.fxos8700_odr], ptr @fxos8700_odr, i32 0, i32 %i.03.lcssa.i
  %22 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx22.i, align 4
  %conv.i15 = zext i8 %23 to i32
  %shl.i = shl nuw nsw i32 %conv.i15, 3
  %or.i = or i32 %shl.i, %and.i
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 42, i32 noundef 57, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %fxos8700_set_odr.exit

fxos8700_set_odr.exit:                            ; preds = %if.end20.i, %land.lhs.true.7.i.fxos8700_set_odr.exit_crit_edge, %land.lhs.true.6.i.fxos8700_set_odr.exit_crit_edge, %land.lhs.true.5.i.fxos8700_set_odr.exit_crit_edge, %land.lhs.true.4.i.fxos8700_set_odr.exit_crit_edge, %land.lhs.true.3.i.fxos8700_set_odr.exit_crit_edge, %land.lhs.true.2.i.fxos8700_set_odr.exit_crit_edge, %land.lhs.true.1.i.fxos8700_set_odr.exit_crit_edge, %land.lhs.true.i.fxos8700_set_odr.exit_crit_edge, %if.end10.i.fxos8700_set_odr.exit_crit_edge, %if.then3.i.fxos8700_set_odr.exit_crit_edge, %sw.bb3.fxos8700_set_odr.exit_crit_edge
  %retval.0.i16 = phi i32 [ %call.i.i, %if.end20.i ], [ %call.i14, %sw.bb3.fxos8700_set_odr.exit_crit_edge ], [ %call6.i, %if.then3.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.7.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.6.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.5.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.4.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.3.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.2.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.1.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %land.lhs.true.i.fxos8700_set_odr.exit_crit_edge ], [ -22, %if.end10.i.fxos8700_set_odr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

cleanup:                                          ; preds = %fxos8700_set_odr.exit, %if.end8.i, %do.end.i, %for.body.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i16, %fxos8700_set_odr.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ %call11.i, %if.end8.i ], [ -22, %for.body.preheader.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @fxos8700_regmap_config, !1, !"fxos8700_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 228, i32 28}
!2 = !{ptr @__ksymtab_fxos8700_regmap_config, !3, !"__ksymtab_fxos8700_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 235, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 638, i32 34}
!6 = !{ptr @__ksymtab_fxos8700_core_probe, !7, !"__ksymtab_fxos8700_core_probe", i1 false, i1 false}
!7 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 644, i32 1}
!8 = !{ptr @__UNIQUE_ID_author183, !9, !"__UNIQUE_ID_author183", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 646, i32 1}
!10 = !{ptr @__UNIQUE_ID_description184, !11, !"__UNIQUE_ID_description184", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 647, i32 1}
!12 = !{ptr @__UNIQUE_ID_file185, !13, !"__UNIQUE_ID_file185", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 648, i32 1}
!14 = !{ptr @__UNIQUE_ID_license186, !13, !"__UNIQUE_ID_license186", i1 false, i1 false}
!15 = !{ptr @driver_write_table, !16, !"driver_write_table", i1 false, i1 false}
!16 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 223, i32 41}
!17 = !{ptr @write_range, !18, !"write_range", i1 false, i1 false}
!18 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 184, i32 34}
!19 = !{ptr @driver_read_table, !20, !"driver_read_table", i1 false, i1 false}
!20 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 218, i32 41}
!21 = !{ptr @read_range, !22, !"read_range", i1 false, i1 false}
!22 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 174, i32 34}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 557, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @fxos8700_chip_init._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @fxos8700_chip_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 561, i32 3}
!33 = !{ptr @fxos8700_chip_init._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @fxos8700_chip_init._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @fxos8700_channels, !36, !"fxos8700_channels", i1 false, i1 false}
!36 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 308, i32 35}
!37 = !{ptr @fxos8700_info, !38, !"fxos8700_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 543, i32 30}
!39 = !{ptr @fxos8700_attrs_group, !40, !"fxos8700_attrs_group", i1 false, i1 false}
!40 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 539, i32 37}
!41 = !{ptr @fxos8700_attrs, !42, !"fxos8700_attrs", i1 false, i1 false}
!42 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 531, i32 26}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 524, i32 8}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @iio_const_attr_in_accel_sampling_frequency_available, !44, !"iio_const_attr_in_accel_sampling_frequency_available", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 526, i32 8}
!49 = !{ptr @iio_const_attr_in_magn_sampling_frequency_available, !48, !"iio_const_attr_in_magn_sampling_frequency_available", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 528, i32 8}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iio_const_attr_in_accel_scale_available, !51, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 529, i32 8}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @iio_const_attr_in_magn_scale_available, !55, !"iio_const_attr_in_magn_scale_available", i1 false, i1 false}
!58 = distinct !{null, !59, !"scale_num", i1 false, i1 false}
!59 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 372, i32 19}
!60 = !{ptr @fxos8700_accel_scale, !61, !"fxos8700_accel_scale", i1 false, i1 false}
!61 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 286, i32 36}
!62 = distinct !{null, !63, !"odr_num", i1 false, i1 false}
!63 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 458, i32 19}
!64 = !{ptr @fxos8700_odr, !65, !"fxos8700_odr", i1 false, i1 false}
!65 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 297, i32 34}
!66 = distinct !{null, !67, !"scale_num", i1 false, i1 false}
!67 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 349, i32 19}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 353, i32 3}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @fxos8700_set_scale._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @fxos8700_set_scale._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !74, !"odr_num", i1 false, i1 false}
!74 = !{!"../drivers/iio/imu/fxos8700_core.c", i32 422, i32 19}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
