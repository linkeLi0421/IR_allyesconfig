; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/bmi088-accel-core.c_pt.bc'
source_filename = "../drivers/iio/accel/bmi088-accel-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bmi088_regmap_conf\22, \22a\22\09"
module asm "\09.weak\09__crc_bmi088_regmap_conf\09\09\09\09"
module asm "\09.long\09__crc_bmi088_regmap_conf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmi088_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22bmi088_regmap_conf\22\09\09\09\09\09"
module asm "__kstrtabns_bmi088_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmi088_accel_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bmi088_accel_core_probe\09\09\09\09"
module asm "\09.long\09__crc_bmi088_accel_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmi088_accel_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bmi088_accel_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bmi088_accel_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmi088_accel_core_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_bmi088_accel_core_remove\09\09\09\09"
module asm "\09.long\09__crc_bmi088_accel_core_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmi088_accel_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bmi088_accel_core_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bmi088_accel_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmi088_accel_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bmi088_accel_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_bmi088_accel_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmi088_accel_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bmi088_accel_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bmi088_accel_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.bmi088_accel_chip_info = type { ptr, i8, ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.bmi088_accel_data = type { ptr, ptr, [120 x i8], [2 x i8], [126 x i8] }

@bmi088_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @bmi088_volatile_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@bmi088_regmap_conf = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 126, ptr null, ptr null, ptr @bmi088_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bmi088_regmap_conf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmi088_regmap_conf = external dso_local constant [0 x i8], align 1
@__ksymtab_bmi088_regmap_conf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmi088_regmap_conf to i32), ptr @__kstrtab_bmi088_regmap_conf, ptr @__kstrtabns_bmi088_regmap_conf }, section "___ksymtab_gpl+bmi088_regmap_conf", align 4
@bmi088_accel_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@bmi088_accel_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @bmi088_accel_read_raw, ptr null, ptr @bmi088_accel_read_avail, ptr @bmi088_accel_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bmi088_accel_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bmi088_accel_core_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/iio/accel/bmi088-accel-core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bmi088_accel_core_probe._entry_ptr = internal global ptr @bmi088_accel_core_probe._entry, section ".printk_index", align 4
@__kstrtab_bmi088_accel_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmi088_accel_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bmi088_accel_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmi088_accel_core_probe to i32), ptr @__kstrtab_bmi088_accel_core_probe, ptr @__kstrtabns_bmi088_accel_core_probe }, section "___ksymtab_gpl+bmi088_accel_core_probe", align 4
@__kstrtab_bmi088_accel_core_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmi088_accel_core_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bmi088_accel_core_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmi088_accel_core_remove to i32), ptr @__kstrtab_bmi088_accel_core_remove, ptr @__kstrtabns_bmi088_accel_core_remove }, section "___ksymtab_gpl+bmi088_accel_core_remove", align 4
@bmi088_accel_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bmi088_accel_runtime_suspend, ptr @bmi088_accel_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bmi088_accel_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmi088_accel_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bmi088_accel_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmi088_accel_pm_ops to i32), ptr @__kstrtab_bmi088_accel_pm_ops, ptr @__kstrtabns_bmi088_accel_pm_ops }, section "___ksymtab_gpl+bmi088_accel_pm_ops", align 4
@__UNIQUE_ID_author188 = internal constant [71 x i8] c"bmi088_accel_core.author=Niek van Agt <niek.van.agt@topicproducts.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [59 x i8] c"bmi088_accel_core.file=drivers/iio/accel/bmi088-accel-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [33 x i8] c"bmi088_accel_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [65 x i8] c"bmi088_accel_core.description=BMI088 accelerometer driver (core)\00", section ".modinfo", align 1
@bmi088_volatile_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 2, i32 63 }, %struct.regmap_range { i32 126, i32 126 }], [16 x i8] zeroinitializer }, align 32
@bmi088_accel_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error: Reading chip id\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bmi088_accel_chip_init\00", [41 x i8] zeroinitializer }, align 32
@bmi088_accel_chip_init._entry_ptr = internal global ptr @bmi088_accel_chip_init._entry, section ".printk_index", align 4
@bmi088_accel_chip_info_tbl = internal constant { [1 x %struct.bmi088_accel_chip_info], [16 x i8] } { [1 x %struct.bmi088_accel_chip_info] [%struct.bmi088_accel_chip_info { ptr @.str.10, i8 30, ptr @bmi088_accel_channels, i32 5 }], [16 x i8] zeroinitializer }, align 32
@bmi088_accel_chip_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid chip %x\0A\00", [47 x i8] zeroinitializer }, align 32
@bmi088_accel_chip_init._entry_ptr.9 = internal global ptr @bmi088_accel_chip_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bmi088a\00", [24 x i8] zeroinitializer }, align 32
@bmi088_accel_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4100, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@bmi088_sample_freqs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 12, i32 500000, i32 25, i32 0, i32 50, i32 0, i32 100, i32 0, i32 200, i32 0, i32 400, i32 0, i32 800, i32 0, i32 1600, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.13 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800, i64 1600]
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"bmi088_volatile_table\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 137, i32 41 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"bmi088_regmap_conf\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 142, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"bmi088_accel_scan_masks\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 444, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"bmi088_accel_info\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 438, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 532, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"bmi088_accel_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 568, i32 25 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"bmi088_volatile_ranges\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 130, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 475, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"bmi088_accel_chip_info_tbl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 429, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 487, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 431, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"bmi088_accel_channels\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 415, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"bmi088_sample_freqs\00", align 1
@___asan_gen_.75 = private constant [41 x i8] c"../drivers/iio/accel/bmi088-accel-core.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 82, i32 18 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_bmi088_accel_core_probe, ptr @__ksymtab_bmi088_accel_core_remove, ptr @__ksymtab_bmi088_accel_pm_ops, ptr @__ksymtab_bmi088_regmap_conf, ptr @bmi088_accel_chip_init._entry, ptr @bmi088_accel_chip_init._entry.7, ptr @bmi088_accel_chip_init._entry_ptr, ptr @bmi088_accel_chip_init._entry_ptr.9, ptr @bmi088_accel_core_probe._entry, ptr @bmi088_accel_core_probe._entry_ptr, ptr @bmi088_volatile_table, ptr @bmi088_regmap_conf, ptr @bmi088_accel_scan_masks, ptr @bmi088_accel_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bmi088_accel_pm_ops, ptr @bmi088_volatile_ranges, ptr @.str.5, ptr @.str.6, ptr @bmi088_accel_chip_info_tbl, ptr @.str.8, ptr @.str.10, ptr @bmi088_accel_channels, ptr @bmi088_sample_freqs], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_volatile_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_chip_info_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_chip_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_accel_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi088_sample_freqs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmi088_accel_core_probe(ptr noundef %dev, ptr noundef %regmap, i32 %irq, ptr noundef %name, i1 zeroext %block_supported) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 256) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call ptr @regmap_get_device(ptr noundef %regmap) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !61
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %call2.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 29, ptr noundef nonnull %val.i) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %call4.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 126, i32 noundef 182) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.bmi088_accel_chip_init.exit.thread_crit_edge

if.end.bmi088_accel_chip_init.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_chip_init.exit.thread

if.end.i:                                         ; preds = %if.end
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %call6.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 29, ptr noundef nonnull %val.i) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %call8.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %14)
  %cmp12.i = icmp eq i32 %14, 30
  br i1 %cmp12.i, label %if.end6, label %do.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.5) #10
  br label %bmi088_accel_chip_init.exit.thread

do.end22.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.8, i32 noundef %14) #10
  br label %bmi088_accel_chip_init.exit.thread

bmi088_accel_chip_init.exit.thread:               ; preds = %do.end22.i, %do.end.i, %if.end.bmi088_accel_chip_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end.bmi088_accel_chip_init.exit.thread_crit_edge ], [ -19, %do.end22.i ], [ %call8.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end6:                                          ; preds = %for.cond.preheader.i
  %chip_info.i = getelementptr inbounds %struct.bmi088_accel_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bmi088_accel_chip_info_tbl, ptr %chip_info.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %16 = ptrtoint ptr %channels7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bmi088_accel_channels, ptr %channels7, align 8
  %17 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_info.i, align 4
  %num_channels = getelementptr inbounds %struct.bmi088_accel_chip_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_channels, align 4
  %num_channels9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %21 = ptrtoint ptr %num_channels9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_channels9, align 4
  %tobool10.not = icmp eq ptr %name, null
  br i1 %tobool10.not, label %cond.false, label %if.end6.cond.end_crit_edge

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end6.cond.end_crit_edge
  %cond = phi ptr [ %25, %cond.false ], [ %name, %if.end6.cond.end_crit_edge ]
  %name13 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %26 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cond, ptr %name13, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bmi088_accel_scan_masks, ptr %available_scan_masks, align 4
  %28 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bmi088_accel_info, ptr %info, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %30 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !62
  %call.i47 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 6000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i48 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  %call16 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cond.end.cleanup_crit_edge, label %do.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cond.end.cleanup_crit_edge, %bmi088_accel_chip_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call16, %do.end ], [ 0, %cond.end.cleanup_crit_edge ], [ %retval.0.i.ph, %bmi088_accel_chip_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bmi088_accel_core_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %call.i7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 124, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bmi088_accel_power_down.exit_crit_edge

entry.bmi088_accel_power_down.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_power_down.exit

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 125, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.bmi088_accel_power_down.exit_crit_edge

if.end.i.bmi088_accel_power_down.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_power_down.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  br label %bmi088_accel_power_down.exit

bmi088_accel_power_down.exit:                     ; preds = %if.end5.i, %if.end.i.bmi088_accel_power_down.exit_crit_edge, %entry.bmi088_accel_power_down.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi088_accel_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 124, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bmi088_accel_power_down.exit_crit_edge

entry.bmi088_accel_power_down.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_power_down.exit

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 125, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.bmi088_accel_power_down.exit_crit_edge

if.end.i.bmi088_accel_power_down.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_power_down.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  br label %bmi088_accel_power_down.exit

bmi088_accel_power_down.exit:                     ; preds = %if.end5.i, %if.end.i.bmi088_accel_power_down.exit_crit_edge, %entry.bmi088_accel_power_down.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i, %entry.bmi088_accel_power_down.exit_crit_edge ], [ %call2.i, %if.end.i.bmi088_accel_power_down.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi088_accel_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 125, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bmi088_accel_power_up.exit_crit_edge

entry.bmi088_accel_power_up.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_power_up.exit

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 124, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.bmi088_accel_power_up.exit_crit_edge

if.end.i.bmi088_accel_power_up.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_power_up.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #7
  br label %bmi088_accel_power_up.exit

bmi088_accel_power_up.exit:                       ; preds = %if.end5.i, %if.end.i.bmi088_accel_power_up.exit_crit_edge, %entry.bmi088_accel_power_up.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i, %entry.bmi088_accel_power_up.exit_crit_edge ], [ %call2.i, %if.end.i.bmi088_accel_power_up.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi088_accel_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #7
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb18
    i32 2, label %sw.bb22
    i32 12, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb2
    i32 3, label %sw.bb5
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %sw.bb2
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %buffer.i = getelementptr inbounds %struct.bmi088_accel_data, ptr %1, i32 0, i32 3
  %call.i79 = tail call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 34, ptr noundef %buffer.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out_read_raw_pm_put_crit_edge

if.end.out_read_raw_pm_put_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_read_raw_pm_put

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %buffer.i, align 128
  %13 = ashr i16 %12, 5
  %shr.i = sext i16 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr.i, ptr %val, align 4
  br label %out_read_raw_pm_put

sw.bb5:                                           ; preds = %sw.bb
  %call.i81 = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp slt i32 %call.i81, 0
  br i1 %cmp.i82, label %if.then.i87, label %if.end9

if.then.i87:                                      ; preds = %sw.bb5
  %usage_count.i.i83 = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i83, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i83, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i83, ptr %usage_count.i.i83, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i83) #7, !srcloc !64
  %asmresult.i.i.i.i.i85 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i85)
  %cmp.not.i.i.i.i.i86 = icmp eq i32 %asmresult.i.i.i.i.i85, 0
  br i1 %cmp.not.i.i.i.i.i86, label %if.then.i87.cleanup_crit_edge, label %do.end11.i.i.i.i.i88

if.then.i87.cleanup_crit_edge:                    ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i88:                             ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  %call10 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_read_raw_pm_put_crit_edge

if.end9.out_read_raw_pm_put_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_read_raw_pm_put

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call fastcc i32 @bmi088_accel_get_axis(ptr noundef %1, ptr noundef %chan, ptr noundef %val)
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %out_read_raw_pm_put

sw.bb18:                                          ; preds = %entry
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cond = icmp eq i32 %17, 9
  br i1 %cond, label %sw.bb20, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 184, ptr %val, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %20, label %sw.bb22.cleanup_crit_edge [
    i32 9, label %sw.bb24
    i32 3, label %sw.bb25
  ]

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 125, ptr %val, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb22
  %call.i91 = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i92 = icmp slt i32 %call.i91, 0
  br i1 %cmp.i92, label %if.then.i97, label %if.end29

if.then.i97:                                      ; preds = %sw.bb25
  %usage_count.i.i93 = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i93, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i93, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i93, ptr %usage_count.i.i93, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i93) #7, !srcloc !64
  %asmresult.i.i.i.i.i95 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i95)
  %cmp.not.i.i.i.i.i96 = icmp eq i32 %asmresult.i.i.i.i.i95, 0
  br i1 %cmp.not.i.i.i.i.i96, label %if.then.i97.cleanup_crit_edge, label %do.end11.i.i.i.i.i98

if.then.i97.cleanup_crit_edge:                    ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i98:                             ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %cleanup

if.end29:                                         ; preds = %sw.bb25
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %call31 = tail call i32 @regmap_read(ptr noundef %25, i32 noundef 65, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.out_read_raw_pm_put_crit_edge

if.end29.out_read_raw_pm_put_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_read_raw_pm_put

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and = and i32 %27, 3
  %sub = xor i32 %and, 15
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %val2, align 4
  store i32 2940, ptr %val, align 4
  br label %out_read_raw_pm_put

sw.bb36:                                          ; preds = %entry
  %call.i101 = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i102 = icmp slt i32 %call.i101, 0
  br i1 %cmp.i102, label %if.then.i107, label %if.end40

if.then.i107:                                     ; preds = %sw.bb36
  %usage_count.i.i103 = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i103, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i103, i32 1, i32 3, i32 1) #7
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i103, ptr %usage_count.i.i103, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i103) #7, !srcloc !64
  %asmresult.i.i.i.i.i105 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i105)
  %cmp.not.i.i.i.i.i106 = icmp eq i32 %asmresult.i.i.i.i.i105, 0
  br i1 %cmp.not.i.i.i.i.i106, label %if.then.i107.cleanup_crit_edge, label %do.end11.i.i.i.i.i108

if.then.i107.cleanup_crit_edge:                   ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i108:                            ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %cleanup

if.end40:                                         ; preds = %sw.bb36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %value.i, align 4, !annotation !61
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  %call.i111 = call i32 @regmap_read(ptr noundef %32, i32 noundef 64, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i112, label %if.end.i114, label %if.end40.bmi088_accel_get_sample_freq.exit_crit_edge

if.end40.bmi088_accel_get_sample_freq.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_get_sample_freq.exit

if.end.i114:                                      ; preds = %if.end40
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value.i, align 4
  %and.i = shl i32 %34, 1
  %sub.i = and i32 %and.i, 30
  %shl.i = add nsw i32 %sub.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %shl.i)
  %cmp.i113 = icmp ugt i32 %shl.i, 14
  br i1 %cmp.i113, label %if.end.i114.bmi088_accel_get_sample_freq.exit_crit_edge, label %if.end2.i

if.end.i114.bmi088_accel_get_sample_freq.exit_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_get_sample_freq.exit

if.end2.i:                                        ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [16 x i32], ptr @bmi088_sample_freqs, i32 0, i32 %shl.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  %add.i = add nsw i32 %sub.i, -9
  %arrayidx3.i = getelementptr [16 x i32], ptr @bmi088_sample_freqs, i32 0, i32 %add.i
  %38 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.i, align 4
  %40 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val2, align 4
  br label %bmi088_accel_get_sample_freq.exit

bmi088_accel_get_sample_freq.exit:                ; preds = %if.end2.i, %if.end.i114.bmi088_accel_get_sample_freq.exit_crit_edge, %if.end40.bmi088_accel_get_sample_freq.exit_crit_edge
  %retval.0.i115 = phi i32 [ 2, %if.end2.i ], [ %call.i111, %if.end40.bmi088_accel_get_sample_freq.exit_crit_edge ], [ -22, %if.end.i114.bmi088_accel_get_sample_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %out_read_raw_pm_put

out_read_raw_pm_put:                              ; preds = %bmi088_accel_get_sample_freq.exit, %if.end34, %if.end29.out_read_raw_pm_put_crit_edge, %if.end13, %if.end9.out_read_raw_pm_put_crit_edge, %if.end.i, %if.end.out_read_raw_pm_put_crit_edge
  %ret.0 = phi i32 [ %retval.0.i115, %bmi088_accel_get_sample_freq.exit ], [ %call31, %if.end29.out_read_raw_pm_put_crit_edge ], [ 11, %if.end34 ], [ %call10, %if.end9.out_read_raw_pm_put_crit_edge ], [ %call14, %if.end13 ], [ 1, %if.end.i ], [ %call.i79, %if.end.out_read_raw_pm_put_crit_edge ]
  %call.i116 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 22
  %41 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store volatile i64 %call.i116, ptr %last_busy.i, align 8
  %call.i117 = call i32 @__pm_runtime_suspend(ptr noundef %call1, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %out_read_raw_pm_put, %do.end11.i.i.i.i.i108, %if.then.i107.cleanup_crit_edge, %do.end11.i.i.i.i.i98, %if.then.i97.cleanup_crit_edge, %sw.bb24, %sw.bb22.cleanup_crit_edge, %sw.bb20, %sw.bb18.cleanup_crit_edge, %do.end11.i.i.i.i.i88, %if.then.i87.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_read_raw_pm_put ], [ 1, %sw.bb24 ], [ 1, %sw.bb20 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb22.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ], [ %call.i81, %if.then.i87.cleanup_crit_edge ], [ %call.i81, %do.end11.i.i.i.i.i88 ], [ %call.i91, %if.then.i97.cleanup_crit_edge ], [ %call.i91, %do.end11.i.i.i.i.i98 ], [ %call.i101, %if.then.i107.cleanup_crit_edge ], [ %call.i101, %do.end11.i.i.i.i.i108 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bmi088_accel_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 4
  %1 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bmi088_sample_freqs, ptr %vals, align 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %length, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi088_accel_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %sw.bb
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %5 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %val, label %if.end.bmi088_accel_set_sample_freq.exit_crit_edge [
    i32 12, label %if.end.if.end.i_crit_edge
    i32 25, label %if.end.fold.split.i
    i32 50, label %if.end.fold.split14.i
    i32 100, label %if.end.fold.split15.i
    i32 200, label %if.end.fold.split16.i
    i32 400, label %if.end.fold.split17.i
    i32 800, label %if.end.fold.split18.i
    i32 1600, label %if.end.fold.split19.i
  ]

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.bmi088_accel_set_sample_freq.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bmi088_accel_set_sample_freq.exit

if.end.fold.split.i:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.fold.split14.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.fold.split15.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.fold.split16.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.fold.split17.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.fold.split18.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.fold.split19.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.fold.split19.i, %if.end.fold.split18.i, %if.end.fold.split17.i, %if.end.fold.split16.i, %if.end.fold.split15.i, %if.end.fold.split14.i, %if.end.fold.split.i, %if.end.if.end.i_crit_edge
  %index.012.lcssa.i = phi i32 [ 5, %if.end.if.end.i_crit_edge ], [ 6, %if.end.fold.split.i ], [ 7, %if.end.fold.split14.i ], [ 8, %if.end.fold.split15.i ], [ 9, %if.end.fold.split16.i ], [ 10, %if.end.fold.split17.i ], [ 11, %if.end.fold.split18.i ], [ 12, %if.end.fold.split19.i ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 64, i32 noundef 15, i32 noundef %index.012.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %bmi088_accel_set_sample_freq.exit

bmi088_accel_set_sample_freq.exit:                ; preds = %if.end.i, %if.end.bmi088_accel_set_sample_freq.exit_crit_edge
  %retval.0.i12 = phi i32 [ %call.i.i, %if.end.i ], [ -22, %if.end.bmi088_accel_set_sample_freq.exit_crit_edge ]
  %call.i13 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i13, ptr %last_busy.i, align 8
  %call.i14 = tail call i32 @__pm_runtime_suspend(ptr noundef %call1, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %bmi088_accel_set_sample_freq.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i12, %bmi088_accel_set_sample_freq.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmi088_accel_get_axis(ptr noundef %data, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_index, align 4
  %mul = shl i32 %3, 1
  %add = add i32 %mul, 18
  %buffer = getelementptr inbounds %struct.bmi088_accel_data, ptr %data, i32 0, i32 3
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef %add, ptr noundef %buffer, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %buffer, align 128
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = sext i16 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @bmi088_regmap_conf, !1, !"bmi088_regmap_conf", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 142, i32 28}
!2 = !{ptr @__ksymtab_bmi088_regmap_conf, !3, !"__ksymtab_bmi088_regmap_conf", i1 false, i1 false}
!3 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 149, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 532, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bmi088_accel_core_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @bmi088_accel_core_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_bmi088_accel_core_probe, !13, !"__ksymtab_bmi088_accel_core_probe", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 536, i32 1}
!14 = !{ptr @__ksymtab_bmi088_accel_core_remove, !15, !"__ksymtab_bmi088_accel_core_remove", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 550, i32 1}
!16 = !{ptr @bmi088_accel_pm_ops, !17, !"bmi088_accel_pm_ops", i1 false, i1 false}
!17 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 568, i32 25}
!18 = !{ptr @__ksymtab_bmi088_accel_pm_ops, !19, !"__ksymtab_bmi088_accel_pm_ops", i1 false, i1 false}
!19 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 574, i32 1}
!20 = !{ptr @__UNIQUE_ID_author188, !21, !"__UNIQUE_ID_author188", i1 false, i1 false}
!21 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 576, i32 1}
!22 = !{ptr @__UNIQUE_ID_file189, !23, !"__UNIQUE_ID_file189", i1 false, i1 false}
!23 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 577, i32 1}
!24 = !{ptr @__UNIQUE_ID_license190, !23, !"__UNIQUE_ID_license190", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_description191, !26, !"__UNIQUE_ID_description191", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 578, i32 1}
!27 = !{ptr @bmi088_volatile_table, !28, !"bmi088_volatile_table", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 137, i32 41}
!29 = !{ptr @bmi088_volatile_ranges, !30, !"bmi088_volatile_ranges", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 130, i32 34}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 475, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bmi088_accel_chip_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @bmi088_accel_chip_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 487, i32 3}
!38 = !{ptr @bmi088_accel_chip_init._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bmi088_accel_chip_init._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 431, i32 11}
!42 = !{ptr @bmi088_accel_chip_info_tbl, !43, !"bmi088_accel_chip_info_tbl", i1 false, i1 false}
!43 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 429, i32 44}
!44 = !{ptr @bmi088_accel_channels, !45, !"bmi088_accel_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 415, i32 35}
!46 = !{ptr @bmi088_accel_scan_masks, !47, !"bmi088_accel_scan_masks", i1 false, i1 false}
!47 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 444, i32 28}
!48 = !{ptr @bmi088_accel_info, !49, !"bmi088_accel_info", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 438, i32 30}
!50 = !{ptr @bmi088_sample_freqs, !51, !"bmi088_sample_freqs", i1 false, i1 false}
!51 = !{!"../drivers/iio/accel/bmi088-accel-core.c", i32 82, i32 18}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 2148201556, i64 2148201582, i64 2148201611, i64 2148201645, i64 2148201676, i64 2148201699}
!63 = !{i64 2148200975}
!64 = !{i64 685798, i64 685823, i64 685845, i64 685861, i64 685873, i64 685893, i64 685917, i64 685933, i64 685945}
!65 = !{i64 2148201163}
