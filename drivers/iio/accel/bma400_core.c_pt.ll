; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/bma400_core.c_pt.bc'
source_filename = "../drivers/iio/accel/bma400_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bma400_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_bma400_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_bma400_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bma400_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22bma400_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_bma400_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bma400_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bma400_probe\09\09\09\09"
module asm "\09.long\09__crc_bma400_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bma400_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bma400_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bma400_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bma400_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_bma400_remove\09\09\09\09"
module asm "\09.long\09__crc_bma400_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bma400_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bma400_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bma400_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.bma400_data = type { ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, %struct.iio_mount_matrix, i32, %struct.bma400_sample_freq, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.bma400_sample_freq = type { i32, i32 }

@bma400_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @bma400_is_writable_reg, ptr null, ptr @bma400_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 126, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bma400_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_bma400_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_bma400_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bma400_regmap_config to i32), ptr @__kstrtab_bma400_regmap_config, ptr @__kstrtabns_bma400_regmap_config }, section "___ksymtab+bma400_regmap_config", align 4
@bma400_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@bma400_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @bma400_read_raw, ptr null, ptr @bma400_read_avail, ptr @bma400_write_raw, ptr null, ptr @bma400_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bma400_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 33558532, i32 33558532, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bma400_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 33558532, i32 33558532, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bma400_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 33558532, i32 33558532, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bma400_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 2, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@__kstrtab_bma400_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bma400_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bma400_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bma400_probe to i32), ptr @__kstrtab_bma400_probe, ptr @__kstrtabns_bma400_probe }, section "___ksymtab+bma400_probe", align 4
@bma400_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to put device into sleep mode (%pe)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bma400_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/accel/bma400_core.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bma400_remove._entry_ptr = internal global ptr @bma400_remove._entry, section ".printk_index", align 4
@__kstrtab_bma400_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bma400_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bma400_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bma400_remove to i32), ptr @__kstrtab_bma400_remove, ptr @__kstrtabns_bma400_remove }, section "___ksymtab+bma400_remove", align 4
@__UNIQUE_ID_author288 = internal constant [55 x i8] c"bma400_core.author=Dan Robertson <dan@dlrobertson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [71 x i8] c"bma400_core.description=Bosch BMA400 triaxial acceleration sensor core\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [47 x i8] c"bma400_core.file=drivers/iio/accel/bma400_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [24 x i8] c"bma400_core.license=GPL\00", section ".modinfo", align 1
@bma400_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 571, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read chip id register\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bma400_init\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bma400_init._entry_ptr = internal global ptr @bma400_init._entry, section ".printk_index", align 4
@bma400_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 576, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip ID mismatch\0A\00", [46 x i8] zeroinitializer }, align 32
@bma400_init._entry_ptr.11 = internal global ptr @bma400_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@bma400_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 590, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bma400_init._entry_ptr.16 = internal global ptr @bma400_init._entry.14, section ".printk_index", align 4
@bma400_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.3, i32 598, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bma400_init._entry_ptr.19 = internal global ptr @bma400_init._entry.17, section ".printk_index", align 4
@bma400_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.3, i32 604, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get the initial power-mode\0A\00", [58 x i8] zeroinitializer }, align 32
@bma400_init._entry_ptr.22 = internal global ptr @bma400_init._entry.20, section ".printk_index", align 4
@bma400_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.3, i32 611, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to wake up the device\0A\00", [34 x i8] zeroinitializer }, align 32
@bma400_init._entry_ptr.25 = internal global ptr @bma400_init._entry.23, section ".printk_index", align 4
@bma400_get_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 502, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read status register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bma400_get_power_mode\00", [42 x i8] zeroinitializer }, align 32
@bma400_get_power_mode._entry_ptr = internal global ptr @bma400_get_power_mode._entry, section ".printk_index", align 4
@bma400_sample_freqs = internal global { [14 x i32], [40 x i8] } zeroinitializer, align 32
@bma400_scales = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@bma400_get_accel_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 225, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid axis channel modifier\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bma400_get_accel_reg\00", [43 x i8] zeroinitializer }, align 32
@bma400_get_accel_reg._entry_ptr = internal global ptr @bma400_get_accel_reg._entry, section ".printk_index", align 4
@bma400_osr_range = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@bma400_set_accel_oversampling_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 407, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to write out OSR\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bma400_set_accel_oversampling_ratio\00", [60 x i8] zeroinitializer }, align 32
@bma400_set_accel_oversampling_ratio._entry_ptr = internal global ptr @bma400_set_accel_oversampling_ratio._entry, section ".printk_index", align 4
@bma400_set_accel_oversampling_ratio._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 423, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bma400_set_accel_oversampling_ratio._entry_ptr.33 = internal global ptr @bma400_set_accel_oversampling_ratio._entry.32, section ".printk_index", align 4
@bma400_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.34, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @bma400_accel_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@bma400_set_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 530, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write to power-mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bma400_set_power_mode\00", [42 x i8] zeroinitializer }, align 32
@bma400_set_power_mode._entry_ptr = internal global ptr @bma400_set_power_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 12, i64 25]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 12, i64 25]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 12, i64 25]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 12, i64 25]
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"bma400_regmap_config\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 131, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 818, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"bma400_info\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 789, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"bma400_channels\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 169, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 842, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 571, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 576, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 581, i32 50 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 582, i32 52 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 588, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 597, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 604, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 611, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 502, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"bma400_sample_freqs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 37, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"bma400_scales\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 31, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 225, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"bma400_osr_range\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 39, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 407, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 423, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"bma400_ext_info\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 150, i32 44 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 151, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [35 x i8] c"../drivers/iio/accel/bma400_core.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 530, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_bma400_probe, ptr @__ksymtab_bma400_regmap_config, ptr @__ksymtab_bma400_remove, ptr @bma400_get_accel_reg._entry, ptr @bma400_get_accel_reg._entry_ptr, ptr @bma400_get_power_mode._entry, ptr @bma400_get_power_mode._entry_ptr, ptr @bma400_init._entry, ptr @bma400_init._entry.14, ptr @bma400_init._entry.17, ptr @bma400_init._entry.20, ptr @bma400_init._entry.23, ptr @bma400_init._entry.9, ptr @bma400_init._entry_ptr, ptr @bma400_init._entry_ptr.11, ptr @bma400_init._entry_ptr.16, ptr @bma400_init._entry_ptr.19, ptr @bma400_init._entry_ptr.22, ptr @bma400_init._entry_ptr.25, ptr @bma400_remove._entry, ptr @bma400_remove._entry_ptr, ptr @bma400_set_accel_oversampling_ratio._entry, ptr @bma400_set_accel_oversampling_ratio._entry.32, ptr @bma400_set_accel_oversampling_ratio._entry_ptr, ptr @bma400_set_accel_oversampling_ratio._entry_ptr.33, ptr @bma400_set_power_mode._entry, ptr @bma400_set_power_mode._entry_ptr, ptr @bma400_regmap_config, ptr @bma400_probe.__key, ptr @.str, ptr @bma400_info, ptr @bma400_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @bma400_sample_freqs, ptr @bma400_scales, ptr @.str.28, ptr @.str.29, ptr @bma400_osr_range, ptr @.str.30, ptr @.str.31, ptr @bma400_ext_info, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_get_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_sample_freqs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_scales to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_get_accel_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_osr_range to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_set_accel_oversampling_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_set_accel_oversampling_ratio._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma400_set_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bma400_is_writable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %reg)
  %0 = icmp ugt i32 %reg, 24
  %switch.cast = trunc i32 %reg to i25
  %1 = sext i25 %switch.cast to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.masked = icmp eq i25 %switch.cast, 1
  %retval.0 = or i1 %0, %switch.masked
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bma400_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 23
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bma400_probe(ptr noundef %dev, ptr noundef %regmap, ptr noundef %name) #1 align 64 {
entry:
  %val.i118.i = alloca i32, align 4
  %val.i107.i = alloca i32, align 4
  %val.i100.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 180) #8
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
  %regmap2 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap, ptr %regmap2, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !102
  %call.i = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #11
  br label %bma400_init.exit.thread

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 144
  br i1 %cmp.not.i, label %if.end6.i, label %do.end4.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #11
  br label %bma400_init.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %regulators.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regulators.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %regulators.i, align 4
  %arrayidx8.i = getelementptr %struct.bma400_data, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.13, ptr %arrayidx8.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call12.i = call i32 @devm_regulator_bulk_get(ptr noundef %14, i32 noundef 2, ptr noundef %regulators.i) #8
  %15 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %do.end19.i [
    i32 0, label %if.end22.i
    i32 -517, label %if.end6.i.bma400_init.exit.thread_crit_edge
  ]

if.end6.i.bma400_init.exit.thread_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_init.exit.thread

do.end19.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.15, i32 noundef %call12.i) #11
  br label %bma400_init.exit

if.end22.i:                                       ; preds = %if.end6.i
  %call25.i = call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end32.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef %call25.i) #11
  br label %bma400_init.exit.thread

if.end32.i:                                       ; preds = %if.end22.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i.i, align 4, !annotation !102
  %21 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap2, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 3, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end40.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.26) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.21) #11
  br label %err_reg_disable.i

if.end40.i:                                       ; preds = %if.end32.i
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i.i, align 4
  %shr.i.i = lshr i32 %28, 1
  %and.i.i = and i32 %shr.i.i, 3
  %power_mode.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %power_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i.i, ptr %power_mode.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp41.not.i = icmp eq i32 %and.i.i, 2
  br i1 %cmp41.not.i, label %if.end40.i.if.end51.i_crit_edge, label %if.then42.i

if.end40.i.if.end51.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end40.i
  %call43.i = call fastcc i32 @bma400_set_power_mode(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end50.i, label %do.end48.i

do.end48.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.24) #11
  br label %err_reg_disable.i

if.end50.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 1500, i32 noundef 2000, i32 noundef 2) #8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end50.i, %if.end40.i.if.end51.i_crit_edge
  store i32 12, ptr @bma400_sample_freqs, align 4
  store i32 500000, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 1), align 4
  store i32 25, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 3), align 4
  store i32 50, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 5), align 4
  store i32 100, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 6), align 4
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 7), align 4
  store i32 200, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 8), align 4
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 9), align 4
  store i32 400, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 10), align 4
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 11), align 4
  store i32 800, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 12), align 4
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @bma400_sample_freqs, i32 0, i32 13), align 4
  store i32 0, ptr @bma400_scales, align 4
  store i32 38357, ptr getelementptr inbounds ([8 x i32], ptr @bma400_scales, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([8 x i32], ptr @bma400_scales, i32 0, i32 2), align 4
  store i32 76714, ptr getelementptr inbounds ([8 x i32], ptr @bma400_scales, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x i32], ptr @bma400_scales, i32 0, i32 4), align 4
  store i32 153428, ptr getelementptr inbounds ([8 x i32], ptr @bma400_scales, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x i32], ptr @bma400_scales, i32 0, i32 6), align 4
  store i32 306856, ptr getelementptr inbounds ([8 x i32], ptr @bma400_scales, i32 0, i32 7), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i100.i) #8
  %32 = ptrtoint ptr %val.i100.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i100.i, align 4, !annotation !102
  %33 = ptrtoint ptr %power_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %power_mode.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %34, label %bma400_get_accel_output_data_rate.exit.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb2.i.i
    i32 0, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6
  %uhz.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %sample_freq.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 25, ptr %sample_freq.i.i, align 4
  %37 = ptrtoint ptr %uhz.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %uhz.i.i, align 4
  br label %bma400_get_accel_output_data_rate.exit.thread.i

sw.bb2.i.i:                                       ; preds = %if.end51.i
  %38 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap2, align 4
  %call.i103.i = call i32 @regmap_read(ptr noundef %39, i32 noundef 26, ptr noundef nonnull %val.i100.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool.not.i104.i, label %if.end.i106.i, label %sw.bb2.i.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge

sw.bb2.i.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge: ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_output_data_rate.exit.thread127.i

if.end.i106.i:                                    ; preds = %sw.bb2.i.i
  %40 = ptrtoint ptr %val.i100.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i100.i, align 4
  %and.i105.i = and i32 %41, 15
  %42 = add nsw i32 %and.i105.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %42)
  %43 = icmp ult i32 %42, -7
  br i1 %43, label %if.end.i106.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge, label %if.end5.i.i

if.end.i106.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge: ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_output_data_rate.exit.thread127.i

if.end5.i.i:                                      ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq6.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6
  %uhz9.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6, i32 1
  %sub.i.i.i = sub nuw nsw i32 11, %and.i105.i
  %shr.i.i.i = lshr i32 800, %sub.i.i.i
  %44 = ptrtoint ptr %sample_freq6.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr.i.i.i, ptr %sample_freq6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i105.i)
  %cmp.i.i.i = icmp ugt i32 %and.i105.i, 5
  %..i.i.i = select i1 %cmp.i.i.i, i32 0, i32 500000
  %45 = ptrtoint ptr %uhz9.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %..i.i.i, ptr %uhz9.i.i, align 4
  br label %bma400_get_accel_output_data_rate.exit.thread.i

sw.bb10.i.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq11.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %sample_freq11.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sample_freq11.i.i, align 4
  %uhz14.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %uhz14.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %uhz14.i.i, align 4
  br label %bma400_get_accel_output_data_rate.exit.thread.i

bma400_get_accel_output_data_rate.exit.thread.i:  ; preds = %sw.bb10.i.i, %if.end5.i.i, %sw.bb.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i100.i) #8
  br label %if.end55.i

bma400_get_accel_output_data_rate.exit.thread127.i: ; preds = %if.end.i106.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge, %sw.bb2.i.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge
  %ret.0.i.ph.i = phi i32 [ -22, %if.end.i106.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge ], [ %call.i103.i, %sw.bb2.i.i.bma400_get_accel_output_data_rate.exit.thread127.i_crit_edge ]
  %sample_freq15.i129.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %sample_freq15.i129.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %sample_freq15.i129.i, align 4
  %uhz18.i130.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %uhz18.i130.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %uhz18.i130.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i100.i) #8
  br label %err_reg_disable.i

bma400_get_accel_output_data_rate.exit.i:         ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq15.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %sample_freq15.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %sample_freq15.i.i, align 4
  %uhz18.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %uhz18.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %uhz18.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i100.i) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %bma400_get_accel_output_data_rate.exit.i, %bma400_get_accel_output_data_rate.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i107.i) #8
  %52 = ptrtoint ptr %val.i107.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %val.i107.i, align 4, !annotation !102
  %53 = ptrtoint ptr %power_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %power_mode.i.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %54, label %if.end55.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge [
    i32 1, label %sw.bb.i112.i
    i32 2, label %sw.bb2.i116.i
    i32 0, label %if.end55.i.if.end59.i_crit_edge
  ]

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.end55.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_oversampling_ratio.exit.i

sw.bb.i112.i:                                     ; preds = %if.end55.i
  %56 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap2, align 4
  %call.i110.i = call i32 @regmap_read(ptr noundef %57, i32 noundef 25, ptr noundef nonnull %val.i107.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %tobool.not.i111.i = icmp eq i32 %call.i110.i, 0
  br i1 %tobool.not.i111.i, label %if.end.i115.i, label %sw.bb.i112.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge

sw.bb.i112.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge: ; preds = %sw.bb.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_oversampling_ratio.exit.i

if.end.i115.i:                                    ; preds = %sw.bb.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %val.i107.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val.i107.i, align 4
  %and.i113.i = lshr i32 %59, 5
  %shr.i114.i = and i32 %and.i113.i, 3
  br label %if.end59.i

sw.bb2.i116.i:                                    ; preds = %if.end55.i
  %60 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap2, align 4
  %call4.i.i = call i32 @regmap_read(ptr noundef %61, i32 noundef 26, ptr noundef nonnull %val.i107.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end8.i.i, label %sw.bb2.i116.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge

sw.bb2.i116.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge: ; preds = %sw.bb2.i116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_oversampling_ratio.exit.i

if.end8.i.i:                                      ; preds = %sw.bb2.i116.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %val.i107.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i107.i, align 4
  %and9.i.i = lshr i32 %63, 4
  %shr10.i.i = and i32 %and9.i.i, 3
  br label %if.end59.i

bma400_get_accel_oversampling_ratio.exit.i:       ; preds = %sw.bb2.i116.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge, %sw.bb.i112.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge, %if.end55.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge
  %retval.0.i117.i = phi i32 [ %call.i110.i, %sw.bb.i112.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge ], [ %call4.i.i, %sw.bb2.i116.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge ], [ -22, %if.end55.i.bma400_get_accel_oversampling_ratio.exit.i_crit_edge ]
  %oversampling_ratio14.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 7
  %64 = ptrtoint ptr %oversampling_ratio14.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %oversampling_ratio14.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i107.i) #8
  br label %err_reg_disable.i

if.end59.i:                                       ; preds = %if.end8.i.i, %if.end.i115.i, %if.end55.i.if.end59.i_crit_edge
  %.sink.i.ph.i = phi i32 [ %54, %if.end55.i.if.end59.i_crit_edge ], [ %shr.i114.i, %if.end.i115.i ], [ %shr10.i.i, %if.end8.i.i ]
  %oversampling_ratio14.i134.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %oversampling_ratio14.i134.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink.i.ph.i, ptr %oversampling_ratio14.i134.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i107.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i118.i) #8
  %66 = ptrtoint ptr %val.i118.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %val.i118.i, align 4, !annotation !102
  %67 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap2, align 4
  %call.i120.i = call i32 @regmap_read(ptr noundef %68, i32 noundef 26, ptr noundef nonnull %val.i118.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %tobool.not.i121.i = icmp eq i32 %call.i120.i, 0
  br i1 %tobool.not.i121.i, label %if.end63.i, label %bma400_get_accel_scale.exit.i

bma400_get_accel_scale.exit.i:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i118.i) #8
  br label %err_reg_disable.i

if.end63.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %val.i118.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i118.i, align 4
  %and.i122.i = lshr i32 %70, 6
  %shr.i123.i = and i32 %and.i122.i, 3
  %shl.i.i = shl nuw nsw i32 38357, %shr.i123.i
  %scale.i.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 8
  %71 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl.i.i, ptr %scale.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i118.i) #8
  %72 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap2, align 4
  %call65.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 27, i32 noundef 0) #8
  br label %bma400_init.exit

err_reg_disable.i:                                ; preds = %bma400_get_accel_scale.exit.i, %bma400_get_accel_oversampling_ratio.exit.i, %bma400_get_accel_output_data_rate.exit.thread127.i, %do.end48.i, %do.end38.i
  %ret.0.i = phi i32 [ %call.i.i, %do.end38.i ], [ %call43.i, %do.end48.i ], [ %retval.0.i117.i, %bma400_get_accel_oversampling_ratio.exit.i ], [ %call.i120.i, %bma400_get_accel_scale.exit.i ], [ %ret.0.i.ph.i, %bma400_get_accel_output_data_rate.exit.thread127.i ]
  %call68.i = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #8
  br label %bma400_init.exit.thread

bma400_init.exit.thread:                          ; preds = %err_reg_disable.i, %do.end30.i, %if.end6.i.bma400_init.exit.thread_crit_edge, %do.end4.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call12.i, %if.end6.i.bma400_init.exit.thread_crit_edge ], [ %ret.0.i, %err_reg_disable.i ], [ %call25.i, %do.end30.i ], [ -19, %do.end4.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

bma400_init.exit:                                 ; preds = %if.end63.i, %do.end19.i
  %retval.0.i = phi i32 [ %call65.i, %if.end63.i ], [ %call12.i, %do.end19.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %if.end7, label %bma400_init.exit.cleanup_crit_edge

bma400_init.exit.cleanup_crit_edge:               ; preds = %bma400_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %bma400_init.exit
  %orientation = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 4
  %call8 = call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %mutex = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @bma400_probe.__key) #8
  %name12 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %74 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %name, ptr %name12, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %75 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @bma400_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %76 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @bma400_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %77 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %num_channels, align 4
  %78 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %call, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %79 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call, ptr %driver_data.i, align 4
  %call13 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end7.cleanup_crit_edge, %bma400_init.exit.cleanup_crit_edge, %bma400_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.body ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %bma400_init.exit.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %retval.0.i.ph, %bma400_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bma400_remove(ptr noundef %dev) #1 align 64 {
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
  %mutex = getelementptr inbounds %struct.bma400_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call2 = tail call fastcc i32 @bma400_set_power_mode(ptr noundef %3, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = inttoptr i32 %call2 to ptr
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %regulators = getelementptr inbounds %struct.bma400_data, ptr %3, i32 0, i32 2
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bma400_set_power_mode(ptr nocapture noundef %data, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  %val.i27 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !102
  %regmap = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 25, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_mode = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %mode)
  %cmp = icmp eq i32 %4, %mode
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, -4
  %or = or i32 %and, %mode
  %call7 = call i32 @regmap_write(ptr noundef %6, i32 noundef 25, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mode, ptr %power_mode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !102
  %13 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %mode, label %if.end10.error.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 0, label %sw.bb10.i
  ]

if.end10.error.i_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6
  %uhz.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %sample_freq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 25, ptr %sample_freq.i, align 4
  %15 = ptrtoint ptr %uhz.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %uhz.i, align 4
  br label %bma400_get_accel_output_data_rate.exit

sw.bb2.i:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 26, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb2.i.error.i_crit_edge

sw.bb2.i.error.i_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end.i:                                         ; preds = %sw.bb2.i
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %and.i = and i32 %19, 15
  %20 = add nsw i32 %and.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %20)
  %21 = icmp ult i32 %20, -7
  br i1 %21, label %if.end.i.error.i_crit_edge, label %if.end5.i

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq6.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6
  %uhz9.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6, i32 1
  %sub.i.i = sub nuw nsw i32 11, %and.i
  %shr.i.i = lshr i32 800, %sub.i.i
  %22 = ptrtoint ptr %sample_freq6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i.i, ptr %sample_freq6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp.i.i = icmp ugt i32 %and.i, 5
  %..i.i = select i1 %cmp.i.i, i32 0, i32 500000
  %23 = ptrtoint ptr %uhz9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %..i.i, ptr %uhz9.i, align 4
  br label %bma400_get_accel_output_data_rate.exit

sw.bb10.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq11.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6
  %24 = ptrtoint ptr %sample_freq11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sample_freq11.i, align 4
  %uhz14.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %uhz14.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %uhz14.i, align 4
  br label %bma400_get_accel_output_data_rate.exit

error.i:                                          ; preds = %if.end.i.error.i_crit_edge, %sw.bb2.i.error.i_crit_edge, %if.end10.error.i_crit_edge
  %sample_freq15.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6
  %26 = ptrtoint ptr %sample_freq15.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %sample_freq15.i, align 4
  %uhz18.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %uhz18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %uhz18.i, align 4
  br label %bma400_get_accel_output_data_rate.exit

bma400_get_accel_output_data_rate.exit:           ; preds = %error.i, %sw.bb10.i, %if.end5.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i27) #8
  %28 = ptrtoint ptr %val.i27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i27, align 4, !annotation !102
  %29 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %power_mode, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %30, label %sw.default.i [
    i32 1, label %sw.bb.i32
    i32 2, label %sw.bb2.i35
    i32 0, label %bma400_get_accel_output_data_rate.exit.bma400_get_accel_oversampling_ratio.exit_crit_edge
  ]

bma400_get_accel_output_data_rate.exit.bma400_get_accel_oversampling_ratio.exit_crit_edge: ; preds = %bma400_get_accel_output_data_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_oversampling_ratio.exit

sw.bb.i32:                                        ; preds = %bma400_get_accel_output_data_rate.exit
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i30 = call i32 @regmap_read(ptr noundef %33, i32 noundef 25, ptr noundef nonnull %val.i27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i34, label %sw.bb.i32.bma400_get_accel_oversampling_ratio.exit_crit_edge

sw.bb.i32.bma400_get_accel_oversampling_ratio.exit_crit_edge: ; preds = %sw.bb.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_oversampling_ratio.exit

if.end.i34:                                       ; preds = %sw.bb.i32
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %val.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i27, align 4
  %and.i33 = lshr i32 %35, 5
  %shr.i = and i32 %and.i33, 3
  br label %bma400_get_accel_oversampling_ratio.exit

sw.bb2.i35:                                       ; preds = %bma400_get_accel_output_data_rate.exit
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %37, i32 noundef 26, ptr noundef nonnull %val.i27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %sw.bb2.i35.bma400_get_accel_oversampling_ratio.exit_crit_edge

sw.bb2.i35.bma400_get_accel_oversampling_ratio.exit_crit_edge: ; preds = %sw.bb2.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_oversampling_ratio.exit

if.end8.i:                                        ; preds = %sw.bb2.i35
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %val.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i27, align 4
  %and9.i = lshr i32 %39, 4
  %shr10.i = and i32 %and9.i, 3
  br label %bma400_get_accel_oversampling_ratio.exit

sw.default.i:                                     ; preds = %bma400_get_accel_output_data_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_oversampling_ratio.exit

bma400_get_accel_oversampling_ratio.exit:         ; preds = %sw.default.i, %if.end8.i, %sw.bb2.i35.bma400_get_accel_oversampling_ratio.exit_crit_edge, %if.end.i34, %sw.bb.i32.bma400_get_accel_oversampling_ratio.exit_crit_edge, %bma400_get_accel_output_data_rate.exit.bma400_get_accel_oversampling_ratio.exit_crit_edge
  %.sink.i = phi i32 [ -1, %sw.default.i ], [ %shr10.i, %if.end8.i ], [ %shr.i, %if.end.i34 ], [ -1, %sw.bb.i32.bma400_get_accel_oversampling_ratio.exit_crit_edge ], [ -1, %sw.bb2.i35.bma400_get_accel_oversampling_ratio.exit_crit_edge ], [ %30, %bma400_get_accel_output_data_rate.exit.bma400_get_accel_oversampling_ratio.exit_crit_edge ]
  %oversampling_ratio14.i = getelementptr inbounds %struct.bma400_data, ptr %data, i32 0, i32 7
  %40 = ptrtoint ptr %oversampling_ratio14.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i, ptr %oversampling_ratio14.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i27) #8
  br label %cleanup

cleanup:                                          ; preds = %bma400_get_accel_oversampling_ratio.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %bma400_get_accel_oversampling_ratio.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma400_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #1 align 64 {
entry:
  %raw_accel.i = alloca i16, align 2
  %raw_temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
    i32 12, label %sw.bb7
    i32 2, label %sw.bb13
    i32 25, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_temp.i) #8
  %3 = ptrtoint ptr %raw_temp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %raw_temp.i, align 4, !annotation !102
  %power_mode.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %sw.bb.bma400_get_temp_reg.exit_crit_edge, label %if.end.i

sw.bb.bma400_get_temp_reg.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_temp_reg.exit

if.end.i:                                         ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 17, ptr noundef nonnull %raw_temp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.bma400_get_temp_reg.exit_crit_edge

if.end.i.bma400_get_temp_reg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_temp_reg.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %raw_temp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %raw_temp.i, align 4
  %shl.i.i = shl i32 %9, 24
  %shr.i = ashr i32 %shl.i.i, 25
  %add.i = add nsw i32 %shr.i, 23
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %val, align 4
  %and.i = and i32 %9, 1
  %mul.i = mul nuw nsw i32 %and.i, 500000
  %11 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul.i, ptr %val2, align 4
  br label %bma400_get_temp_reg.exit

bma400_get_temp_reg.exit:                         ; preds = %if.end2.i, %if.end.i.bma400_get_temp_reg.exit_crit_edge, %sw.bb.bma400_get_temp_reg.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.end2.i ], [ -16, %sw.bb.bma400_get_temp_reg.exit_crit_edge ], [ %call.i, %if.end.i.bma400_get_temp_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_temp.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %mutex4 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex4, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_accel.i) #8
  %12 = ptrtoint ptr %raw_accel.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %raw_accel.i, align 2, !annotation !102
  %power_mode.i43 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %power_mode.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_mode.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i44 = icmp eq i32 %14, 0
  br i1 %cmp.i44, label %sw.bb3.bma400_get_accel_reg.exit_crit_edge, label %if.end.i45

sw.bb3.bma400_get_accel_reg.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_reg.exit

if.end.i45:                                       ; preds = %sw.bb3
  %channel2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %15 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel2.i, align 4
  %switch.tableidx = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 3
  br i1 %17, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.28) #11
  br label %bma400_get_accel_reg.exit

switch.lookup:                                    ; preds = %if.end.i45
  %switch.idx.mult = shl i32 %switch.tableidx, 1
  %switch.offset = add i32 %switch.idx.mult, 4
  %regmap.i46 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i46, align 4
  %call.i47 = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef %switch.offset, ptr noundef nonnull %raw_accel.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end4.i, label %switch.lookup.bma400_get_accel_reg.exit_crit_edge

switch.lookup.bma400_get_accel_reg.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_get_accel_reg.exit

if.end4.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %raw_accel.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %raw_accel.i, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23) #8
  %conv.i = zext i16 %24 to i32
  %shl.i.i49 = shl i32 %conv.i, 20
  %shr.i.i = ashr exact i32 %shl.i.i49, 20
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i.i, ptr %val, align 4
  br label %bma400_get_accel_reg.exit

bma400_get_accel_reg.exit:                        ; preds = %if.end4.i, %switch.lookup.bma400_get_accel_reg.exit_crit_edge, %do.end.i, %sw.bb3.bma400_get_accel_reg.exit_crit_edge
  %retval.0.i50 = phi i32 [ -22, %do.end.i ], [ 1, %if.end4.i ], [ -16, %sw.bb3.bma400_get_accel_reg.exit_crit_edge ], [ %call.i47, %switch.lookup.bma400_get_accel_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_accel.i) #8
  call void @mutex_unlock(ptr noundef %mutex4) #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %27, label %sw.bb7.cleanup_crit_edge [
    i32 3, label %sw.bb8
    i32 9, label %sw.bb12
  ]

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb7
  %sample_freq = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %sample_freq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sample_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp slt i32 %30, 0
  br i1 %cmp, label %sw.bb8.cleanup_crit_edge, label %if.end

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val, align 4
  %uhz = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %uhz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %uhz, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val2, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %val, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 250000, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %val, align 4
  %scale = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scale, align 4
  %40 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val2, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %oversampling_ratio = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %oversampling_ratio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %oversampling_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp15 = icmp slt i32 %42, 0
  br i1 %cmp15, label %sw.bb14.cleanup_crit_edge, label %if.end17

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %sw.bb14.cleanup_crit_edge, %sw.bb13, %sw.bb12, %if.end, %sw.bb8.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %bma400_get_accel_reg.exit, %bma400_get_temp_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end17 ], [ 2, %sw.bb13 ], [ 2, %sw.bb12 ], [ 2, %if.end ], [ %retval.0.i50, %bma400_get_accel_reg.exit ], [ %retval.0.i, %bma400_get_temp_reg.exit ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bma400_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 2, label %entry.return.sink.split_crit_edge
    i32 25, label %sw.bb1
    i32 12, label %sw.bb2
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb2, %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink9 = phi i32 [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ %mask, %entry.return.sink.split_crit_edge ]
  %bma400_sample_freqs.sink = phi ptr [ @bma400_sample_freqs, %sw.bb2 ], [ @bma400_osr_range, %sw.bb1 ], [ @bma400_scales, %entry.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 14, %sw.bb2 ], [ 3, %sw.bb1 ], [ 8, %entry.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink9, ptr %type, align 4
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bma400_sample_freqs.sink, ptr %vals, align 4
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma400_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #1 align 64 {
entry:
  %acc_config.i41 = alloca i32, align 4
  %acc_config.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb3
    i32 25, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mutex = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %val)
  %cmp.i = icmp sgt i32 %val, 24
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not.i = icmp ne i32 %val2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %val)
  %cmp1.i = icmp ugt i32 %val, 800
  %or.cond.i = or i1 %cmp1.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.i.bma400_set_accel_output_data_rate.exit_crit_edge, label %if.end.i

if.then.i.bma400_set_accel_output_data_rate.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_output_data_rate.exit

if.end.i:                                         ; preds = %if.then.i
  %6 = tail call i32 @llvm.cttz.i32(i32 %val, i1 true) #8, !range !103
  %shr42.i = lshr i32 %val, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %shr42.i)
  %cmp3.not.i = icmp eq i32 %shr42.i, 25
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.bma400_set_accel_output_data_rate.exit_crit_edge

if.end.i.bma400_set_accel_output_data_rate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_output_data_rate.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %6, 6
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %val)
  %cmp6.i = icmp eq i32 %val, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp7.i = icmp eq i32 %val2, 500000
  %or.cond41.i = and i1 %cmp6.i, %cmp7.i
  br i1 %or.cond41.i, label %if.else.i.if.end11.i_crit_edge, label %if.else.i.bma400_set_accel_output_data_rate.exit_crit_edge

if.else.i.bma400_set_accel_output_data_rate.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_output_data_rate.exit

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i.if.end11.i_crit_edge, %if.end5.i
  %idx.0.i = phi i32 [ %add.i, %if.end5.i ], [ 5, %if.else.i.if.end11.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 26, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.bma400_set_accel_output_data_rate.exit_crit_edge

if.end11.i.bma400_set_accel_output_data_rate.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_output_data_rate.exit

if.end15.i:                                       ; preds = %if.end11.i
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and.i = and i32 %10, -16
  %or.i = or i32 %and.i, %idx.0.i
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 26, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.bma400_set_accel_output_data_rate.exit_crit_edge

if.end15.i.bma400_set_accel_output_data_rate.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_output_data_rate.exit

if.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %sample_freq.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6
  %uhz23.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 6, i32 1
  %sub.i.i = sub nsw i32 11, %idx.0.i
  %shr.i.i = lshr i32 800, %sub.i.i
  %13 = ptrtoint ptr %sample_freq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i.i, ptr %sample_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %idx.0.i)
  %cmp.i.i = icmp ugt i32 %idx.0.i, 5
  %..i.i = select i1 %cmp.i.i, i32 0, i32 500000
  %14 = ptrtoint ptr %uhz23.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %..i.i, ptr %uhz23.i, align 4
  br label %bma400_set_accel_output_data_rate.exit

bma400_set_accel_output_data_rate.exit:           ; preds = %if.end20.i, %if.end15.i.bma400_set_accel_output_data_rate.exit_crit_edge, %if.end11.i.bma400_set_accel_output_data_rate.exit_crit_edge, %if.else.i.bma400_set_accel_output_data_rate.exit_crit_edge, %if.end.i.bma400_set_accel_output_data_rate.exit_crit_edge, %if.then.i.bma400_set_accel_output_data_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end20.i ], [ -22, %if.then.i.bma400_set_accel_output_data_rate.exit_crit_edge ], [ -22, %if.end.i.bma400_set_accel_output_data_rate.exit_crit_edge ], [ -22, %if.else.i.bma400_set_accel_output_data_rate.exit_crit_edge ], [ %call12.i, %if.end11.i.bma400_set_accel_output_data_rate.exit_crit_edge ], [ %call17.i, %if.end15.i.bma400_set_accel_output_data_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp4.not = icmp ne i32 %val, 0
  %15 = add i32 %val2, -306865
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268508, i32 %15)
  %16 = icmp ult i32 %15, -268508
  %17 = or i1 %cmp4.not, %16
  br i1 %17, label %sw.bb3.cleanup_crit_edge, label %if.end9

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %sw.bb3
  %mutex10 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex10, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acc_config.i) #8
  %18 = ptrtoint ptr %acc_config.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %acc_config.i, align 4, !annotation !102
  %regmap.i34 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i34, align 4
  %call.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 26, ptr noundef nonnull %acc_config.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i35 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i35, label %if.end.i37, label %if.end9.bma400_set_accel_scale.exit_crit_edge

if.end9.bma400_set_accel_scale.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_scale.exit

if.end.i37:                                       ; preds = %if.end9
  %21 = call i32 @llvm.cttz.i32(i32 %val2, i1 false) #8, !range !103
  %shr.i.i36 = lshr i32 %val2, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 38357, i32 %shr.i.i36)
  %cmp1.not.i.i = icmp eq i32 %shr.i.i36, 38357
  br i1 %cmp1.not.i.i, label %if.end3.i, label %if.end.i37.bma400_set_accel_scale.exit_crit_edge

if.end.i37.bma400_set_accel_scale.exit_crit_edge: ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_scale.exit

if.end3.i:                                        ; preds = %if.end.i37
  %22 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i34, align 4
  %24 = ptrtoint ptr %acc_config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %acc_config.i, align 4
  %and.i38 = and i32 %25, -193
  %shl.i = shl nuw nsw i32 %21, 6
  %or.i39 = or i32 %and.i38, %shl.i
  %call5.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 26, i32 noundef %or.i39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.bma400_set_accel_scale.exit_crit_edge

if.end3.i.bma400_set_accel_scale.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_scale.exit

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %scale.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val2, ptr %scale.i, align 4
  br label %bma400_set_accel_scale.exit

bma400_set_accel_scale.exit:                      ; preds = %if.end8.i, %if.end3.i.bma400_set_accel_scale.exit_crit_edge, %if.end.i37.bma400_set_accel_scale.exit_crit_edge, %if.end9.bma400_set_accel_scale.exit_crit_edge
  %retval.0.i40 = phi i32 [ 0, %if.end8.i ], [ %call.i, %if.end9.bma400_set_accel_scale.exit_crit_edge ], [ -22, %if.end.i37.bma400_set_accel_scale.exit_crit_edge ], [ %call5.i, %if.end3.i.bma400_set_accel_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acc_config.i) #8
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %entry
  %mutex14 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex14, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acc_config.i41) #8
  %27 = ptrtoint ptr %acc_config.i41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %acc_config.i41, align 4, !annotation !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %val)
  %tobool.not.i42 = icmp ult i32 %val, 4
  br i1 %tobool.not.i42, label %if.end.i43, label %sw.bb13.bma400_set_accel_oversampling_ratio.exit_crit_edge

sw.bb13.bma400_set_accel_oversampling_ratio.exit_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_oversampling_ratio.exit

if.end.i43:                                       ; preds = %sw.bb13
  %power_mode.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %power_mode.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %29, label %if.end.i43.bma400_set_accel_oversampling_ratio.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb10.i
  ]

if.end.i43.bma400_set_accel_oversampling_ratio.exit_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_oversampling_ratio.exit

sw.bb.i:                                          ; preds = %if.end.i43
  %regmap.i44 = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i44, align 4
  %call.i45 = call i32 @regmap_read(ptr noundef %32, i32 noundef 25, ptr noundef nonnull %acc_config.i41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool1.not.i = icmp eq i32 %call.i45, 0
  br i1 %tobool1.not.i, label %if.end3.i48, label %sw.bb.i.bma400_set_accel_oversampling_ratio.exit_crit_edge

sw.bb.i.bma400_set_accel_oversampling_ratio.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_oversampling_ratio.exit

if.end3.i48:                                      ; preds = %sw.bb.i
  %33 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i44, align 4
  %35 = ptrtoint ptr %acc_config.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %acc_config.i41, align 4
  %and5.i = and i32 %36, -97
  %shl.i46 = shl nuw nsw i32 %val, 5
  %or.i47 = or i32 %and5.i, %shl.i46
  %call6.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 25, i32 noundef %or.i47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end3.i48
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.30) #11
  br label %bma400_set_accel_oversampling_ratio.exit

if.end9.i:                                        ; preds = %if.end3.i48
  call void @__sanitizer_cov_trace_pc() #10
  %oversampling_ratio.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %oversampling_ratio.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %val, ptr %oversampling_ratio.i, align 4
  br label %bma400_set_accel_oversampling_ratio.exit

sw.bb10.i:                                        ; preds = %if.end.i43
  %regmap11.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %regmap11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap11.i, align 4
  %call12.i49 = call i32 @regmap_read(ptr noundef %41, i32 noundef 26, ptr noundef nonnull %acc_config.i41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i49)
  %tobool13.not.i50 = icmp eq i32 %call12.i49, 0
  br i1 %tobool13.not.i50, label %if.end15.i51, label %sw.bb10.i.bma400_set_accel_oversampling_ratio.exit_crit_edge

sw.bb10.i.bma400_set_accel_oversampling_ratio.exit_crit_edge: ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bma400_set_accel_oversampling_ratio.exit

if.end15.i51:                                     ; preds = %sw.bb10.i
  %42 = ptrtoint ptr %regmap11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap11.i, align 4
  %44 = ptrtoint ptr %acc_config.i41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %acc_config.i41, align 4
  %and17.i = and i32 %45, -49
  %shl18.i = shl nuw nsw i32 %val, 4
  %or19.i = or i32 %and17.i, %shl18.i
  %call20.i = call i32 @regmap_write(ptr noundef %43, i32 noundef 26, i32 noundef %or19.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end27.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end15.i51
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.30) #11
  br label %bma400_set_accel_oversampling_ratio.exit

if.end27.i:                                       ; preds = %if.end15.i51
  call void @__sanitizer_cov_trace_pc() #10
  %oversampling_ratio28.i = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %oversampling_ratio28.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %val, ptr %oversampling_ratio28.i, align 4
  br label %bma400_set_accel_oversampling_ratio.exit

bma400_set_accel_oversampling_ratio.exit:         ; preds = %if.end27.i, %do.end25.i, %sw.bb10.i.bma400_set_accel_oversampling_ratio.exit_crit_edge, %if.end9.i, %do.end.i, %sw.bb.i.bma400_set_accel_oversampling_ratio.exit_crit_edge, %if.end.i43.bma400_set_accel_oversampling_ratio.exit_crit_edge, %sw.bb13.bma400_set_accel_oversampling_ratio.exit_crit_edge
  %retval.0.i52 = phi i32 [ %call20.i, %do.end25.i ], [ 0, %if.end27.i ], [ %call6.i, %do.end.i ], [ 0, %if.end9.i ], [ -22, %sw.bb13.bma400_set_accel_oversampling_ratio.exit_crit_edge ], [ %call.i45, %sw.bb.i.bma400_set_accel_oversampling_ratio.exit_crit_edge ], [ %call12.i49, %sw.bb10.i.bma400_set_accel_oversampling_ratio.exit_crit_edge ], [ -22, %if.end.i43.bma400_set_accel_oversampling_ratio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acc_config.i41) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %bma400_set_accel_oversampling_ratio.exit, %bma400_set_accel_scale.exit, %bma400_set_accel_output_data_rate.exit
  %mutex14.sink = phi ptr [ %mutex14, %bma400_set_accel_oversampling_ratio.exit ], [ %mutex10, %bma400_set_accel_scale.exit ], [ %mutex, %bma400_set_accel_output_data_rate.exit ]
  %retval.0.ph = phi i32 [ %retval.0.i52, %bma400_set_accel_oversampling_ratio.exit ], [ %retval.0.i40, %bma400_set_accel_scale.exit ], [ %retval.0.i, %bma400_set_accel_output_data_rate.exit ]
  call void @mutex_unlock(ptr noundef %mutex14.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bma400_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %mask, label %sw.default [
    i32 12, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge3
    i32 25, label %sw.bb2
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %entry.return_crit_edge, %entry.return_crit_edge3
  %retval.0 = phi i32 [ -22, %sw.default ], [ 1, %sw.bb2 ], [ 2, %entry.return_crit_edge ], [ 2, %entry.return_crit_edge3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bma400_accel_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.bma400_data, ptr %1, i32 0, i32 4
  ret ptr %orientation
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !84, !86, !88, !90, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @bma400_regmap_config, !1, !"bma400_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/bma400_core.c", i32 131, i32 28}
!2 = !{ptr @__ksymtab_bma400_regmap_config, !3, !"__ksymtab_bma400_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/iio/accel/bma400_core.c", i32 139, i32 1}
!4 = !{ptr @bma400_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/iio/accel/bma400_core.c", i32 818, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_bma400_probe, !8, !"__ksymtab_bma400_probe", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/bma400_core.c", i32 829, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/iio/accel/bma400_core.c", i32 842, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bma400_remove._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @bma400_remove._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_bma400_remove, !18, !"__ksymtab_bma400_remove", i1 false, i1 false}
!18 = !{!"../drivers/iio/accel/bma400_core.c", i32 849, i32 1}
!19 = !{ptr @__UNIQUE_ID_author288, !20, !"__UNIQUE_ID_author288", i1 false, i1 false}
!20 = !{!"../drivers/iio/accel/bma400_core.c", i32 851, i32 1}
!21 = !{ptr @__UNIQUE_ID_description289, !22, !"__UNIQUE_ID_description289", i1 false, i1 false}
!22 = !{!"../drivers/iio/accel/bma400_core.c", i32 852, i32 1}
!23 = !{ptr @__UNIQUE_ID_file290, !24, !"__UNIQUE_ID_file290", i1 false, i1 false}
!24 = !{!"../drivers/iio/accel/bma400_core.c", i32 853, i32 1}
!25 = !{ptr @__UNIQUE_ID_license291, !24, !"__UNIQUE_ID_license291", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/accel/bma400_core.c", i32 571, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bma400_init._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @bma400_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/accel/bma400_core.c", i32 576, i32 3}
!34 = !{ptr @bma400_init._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bma400_init._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/bma400_core.c", i32 581, i32 50}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/accel/bma400_core.c", i32 582, i32 52}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/accel/bma400_core.c", i32 588, i32 4}
!42 = !{ptr @bma400_init._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bma400_init._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/bma400_core.c", i32 597, i32 3}
!46 = !{ptr @bma400_init._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @bma400_init._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/bma400_core.c", i32 604, i32 3}
!50 = !{ptr @bma400_init._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @bma400_init._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/accel/bma400_core.c", i32 611, i32 4}
!54 = !{ptr @bma400_init._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bma400_init._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/accel/bma400_core.c", i32 502, i32 3}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bma400_get_power_mode._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @bma400_get_power_mode._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @bma400_sample_freqs, !62, !"bma400_sample_freqs", i1 false, i1 false}
!62 = !{!"../drivers/iio/accel/bma400_core.c", i32 37, i32 12}
!63 = !{ptr @bma400_scales, !64, !"bma400_scales", i1 false, i1 false}
!64 = !{!"../drivers/iio/accel/bma400_core.c", i32 31, i32 12}
!65 = !{ptr @bma400_info, !66, !"bma400_info", i1 false, i1 false}
!66 = !{!"../drivers/iio/accel/bma400_core.c", i32 789, i32 30}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/accel/bma400_core.c", i32 225, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bma400_get_accel_reg._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bma400_get_accel_reg._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @bma400_osr_range, !73, !"bma400_osr_range", i1 false, i1 false}
!73 = !{!"../drivers/iio/accel/bma400_core.c", i32 39, i32 18}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/accel/bma400_core.c", i32 407, i32 4}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bma400_set_accel_oversampling_ratio._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @bma400_set_accel_oversampling_ratio._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @bma400_set_accel_oversampling_ratio._entry.32, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/iio/accel/bma400_core.c", i32 423, i32 4}
!81 = !{ptr @bma400_set_accel_oversampling_ratio._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @bma400_channels, !83, !"bma400_channels", i1 false, i1 false}
!83 = !{!"../drivers/iio/accel/bma400_core.c", i32 169, i32 35}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/accel/bma400_core.c", i32 151, i32 2}
!86 = !{ptr @bma400_ext_info, !87, !"bma400_ext_info", i1 false, i1 false}
!87 = !{!"../drivers/iio/accel/bma400_core.c", i32 150, i32 44}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/accel/bma400_core.c", i32 530, i32 3}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @bma400_set_power_mode._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @bma400_set_power_mode._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i32 0, i32 33}
