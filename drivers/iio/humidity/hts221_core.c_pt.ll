; ModuleID = '/llk/IR_all_yes/drivers/iio/humidity/hts221_core.c_pt.bc'
source_filename = "../drivers/iio/humidity/hts221_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hts221_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_hts221_probe\09\09\09\09"
module asm "\09.long\09__crc_hts221_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hts221_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22hts221_probe\22\09\09\09\09\09"
module asm "__kstrtabns_hts221_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hts221_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_hts221_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_hts221_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hts221_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22hts221_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_hts221_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.85, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.85 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hts221_odr = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hts221_avg = type { i8, i8, [8 x i16] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hts221_hw = type { ptr, ptr, ptr, ptr, ptr, i32, [2 x %struct.hts221_sensor], i8, i8, %struct.anon.78 }
%struct.hts221_sensor = type { i8, i32, i32 }
%struct.anon.78 = type { [2 x i16], i64 }
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

@hts221_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 0], [24 x i8] zeroinitializer }, align 32
@hts221_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 40, i32 0, %struct.anon.85 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 33554445, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 42, i32 1, %struct.anon.85 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 33554445, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hts221\00", [25 x i8] zeroinitializer }, align 32
@hts221_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @hts221_attribute_group, ptr @hts221_read_raw, ptr null, ptr null, ptr @hts221_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hts221_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hts221_odr_table = internal constant { [3 x %struct.hts221_odr], [26 x i8] } { [3 x %struct.hts221_odr] [%struct.hts221_odr { i8 1, i8 1 }, %struct.hts221_odr { i8 7, i8 2 }, %struct.hts221_odr { i8 13, i8 3 }], [26 x i8] zeroinitializer }, align 32
@hts221_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get rh calibration data\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hts221_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/humidity/hts221_core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hts221_probe._entry_ptr = internal global ptr @hts221_probe._entry, section ".printk_index", align 4
@hts221_avg_list = internal constant { [2 x %struct.hts221_avg], [60 x i8] } { [2 x %struct.hts221_avg] [%struct.hts221_avg { i8 16, i8 7, [8 x i16] [i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512] }, %struct.hts221_avg { i8 16, i8 56, [8 x i16] [i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256] }], [60 x i8] zeroinitializer }, align 32
@hts221_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set rh oversampling ratio\0A\00", [59 x i8] zeroinitializer }, align 32
@hts221_probe._entry_ptr.8 = internal global ptr @hts221_probe._entry.6, section ".printk_index", align 4
@hts221_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get temperature calibration data\0A\00", [52 x i8] zeroinitializer }, align 32
@hts221_probe._entry_ptr.11 = internal global ptr @hts221_probe._entry.9, section ".printk_index", align 4
@hts221_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to set temperature oversampling ratio\0A\00", [50 x i8] zeroinitializer }, align 32
@hts221_probe._entry_ptr.14 = internal global ptr @hts221_probe._entry.12, section ".printk_index", align 4
@__kstrtab_hts221_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_hts221_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_hts221_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hts221_probe to i32), ptr @__kstrtab_hts221_probe, ptr @__kstrtabns_hts221_probe }, section "___ksymtab+hts221_probe", align 4
@hts221_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hts221_suspend, ptr @hts221_resume, ptr @hts221_suspend, ptr @hts221_resume, ptr @hts221_suspend, ptr @hts221_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_hts221_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_hts221_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_hts221_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hts221_pm_ops to i32), ptr @__kstrtab_hts221_pm_ops, ptr @__kstrtabns_hts221_pm_ops }, section "___ksymtab+hts221_pm_ops", align 4
@__UNIQUE_ID_author313 = internal constant [57 x i8] c"hts221.author=Lorenzo Bianconi <lorenzo.bianconi@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [59 x i8] c"hts221.description=STMicroelectronics hts221 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [40 x i8] c"hts221.file=drivers/iio/humidity/hts221\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [22 x i8] c"hts221.license=GPL v2\00", section ".modinfo", align 1
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get vdd regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@hts221_init_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable vdd regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hts221_init_regulators\00", [41 x i8] zeroinitializer }, align 32
@hts221_init_regulators._entry_ptr = internal global ptr @hts221_init_regulators._entry, section ".printk_index", align 4
@hts221_check_whoami._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read whoami register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hts221_check_whoami\00", [44 x i8] zeroinitializer }, align 32
@hts221_check_whoami._entry_ptr = internal global ptr @hts221_check_whoami._entry, section ".printk_index", align 4
@hts221_check_whoami._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wrong whoami {%02x vs %02x}\0A\00", [35 x i8] zeroinitializer }, align 32
@hts221_check_whoami._entry_ptr.23 = internal global ptr @hts221_check_whoami._entry.21, section ".printk_index", align 4
@hts221_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hts221_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@hts221_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_humidity_oversampling_ratio_available, ptr @iio_dev_attr_in_temp_oversampling_ratio_available, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hts221_sysfs_sampling_freq, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_humidity_oversampling_ratio_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hts221_sysfs_rh_oversampling_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp_oversampling_ratio_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hts221_sysfs_temp_oversampling_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"in_humidity_oversampling_ratio_available\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"in_temp_oversampling_ratio_available\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 12, i64 25]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 18]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 18]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 18]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 25]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 13]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 18]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 16, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.35 = internal global [10 x i64] [i64 8, i64 16, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"hts221_scan_masks\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 548, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"hts221_channels\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 91, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 615, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"hts221_info\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 541, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"hts221_odr_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 54, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 632, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"hts221_avg_list\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 60, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 639, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 646, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 654, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"hts221_pm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 697, i32 25 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 556, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 559, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 563, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 133, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 138, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"hts221_attribute_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 537, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"hts221_attributes\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 530, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [54 x i8] c"iio_dev_attr_in_humidity_oversampling_ratio_available\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [50 x i8] c"iio_dev_attr_in_temp_oversampling_ratio_available\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 528, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 202, i32 48 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 524, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [38 x i8] c"../drivers/iio/humidity/hts221_core.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 526, i32 8 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__ksymtab_hts221_pm_ops, ptr @__ksymtab_hts221_probe, ptr @hts221_check_whoami._entry, ptr @hts221_check_whoami._entry.21, ptr @hts221_check_whoami._entry_ptr, ptr @hts221_check_whoami._entry_ptr.23, ptr @hts221_init_regulators._entry, ptr @hts221_init_regulators._entry_ptr, ptr @hts221_probe._entry, ptr @hts221_probe._entry.12, ptr @hts221_probe._entry.6, ptr @hts221_probe._entry.9, ptr @hts221_probe._entry_ptr, ptr @hts221_probe._entry_ptr.11, ptr @hts221_probe._entry_ptr.14, ptr @hts221_probe._entry_ptr.8, ptr @hts221_scan_masks, ptr @hts221_channels, ptr @.str, ptr @hts221_info, ptr @hts221_odr_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hts221_avg_list, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @hts221_pm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @hts221_attribute_group, ptr @hts221_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_humidity_oversampling_ratio_available, ptr @iio_dev_attr_in_temp_oversampling_ratio_available, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_odr_table to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_avg_list to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_init_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_check_whoami._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_check_whoami._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_humidity_oversampling_ratio_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp_oversampling_ratio_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hts221_set_enable(ptr nocapture noundef %hw, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %shl = select i1 %enable, i32 128, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 32, i32 noundef 128, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %frombool = zext i1 %enable to i8
  %enabled = getelementptr inbounds %struct.hts221_hw, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hts221_probe(ptr noundef %dev, i32 noundef %irq, ptr noundef %name, ptr noundef %regmap) #0 align 64 {
entry:
  %data.i161 = alloca i32, align 4
  %val.i = alloca i16, align 2
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 72) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %2, align 8
  %dev3 = getelementptr inbounds %struct.hts221_hw, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev3, align 4
  %irq4 = getelementptr inbounds %struct.hts221_hw, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %irq, ptr %irq4, align 4
  %regmap5 = getelementptr inbounds %struct.hts221_hw, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %regmap, ptr %regmap5, align 8
  %7 = load ptr, ptr %driver_data.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i.i, align 8
  %call2.i = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  %vdd.i = getelementptr inbounds %struct.hts221_hw, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %vdd.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %hts221_init_regulators.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %call9.i = tail call i32 @regulator_enable(ptr noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %hts221_init_regulators.exit.thread, label %hts221_init_regulators.exit.thread176

hts221_init_regulators.exit.thread176:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call9.i) #9
  br label %cleanup

hts221_init_regulators.exit.thread:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 50) #6
  br label %if.end9

hts221_init_regulators.exit:                      ; preds = %if.end
  %11 = ptrtoint ptr %call2.i to i32
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool7.not = icmp eq i32 %call7.i, 0
  br i1 %tobool7.not, label %hts221_init_regulators.exit.if.end9_crit_edge, label %hts221_init_regulators.exit.cleanup_crit_edge

hts221_init_regulators.exit.cleanup_crit_edge:    ; preds = %hts221_init_regulators.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hts221_init_regulators.exit.if.end9_crit_edge:    ; preds = %hts221_init_regulators.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %hts221_init_regulators.exit.if.end9_crit_edge, %hts221_init_regulators.exit.thread
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @hts221_chip_uninit, ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i150 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i150, label %if.end13, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %vdd.i.i = getelementptr inbounds %struct.hts221_hw, ptr %2, i32 0, i32 3
  %12 = ptrtoint ptr %vdd.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd.i.i, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %13) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %data.i, align 4, !annotation !87
  %15 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap5, align 8
  %call.i153 = call i32 @regmap_read(ptr noundef %16, i32 noundef 15, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp.i = icmp slt i32 %call.i153, 0
  br i1 %cmp.i, label %do.end.i154, label %if.end.i155

do.end.i154:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19) #9
  br label %hts221_check_whoami.exit.thread

if.end.i155:                                      ; preds = %if.end13
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %20)
  %cmp1.not.i = icmp eq i32 %20, 188
  br i1 %cmp1.not.i, label %if.end16, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef %20, i32 noundef 188) #9
  br label %hts221_check_whoami.exit.thread

hts221_check_whoami.exit.thread:                  ; preds = %do.end5.i, %do.end.i154
  %retval.0.i156.ph = phi i32 [ -19, %do.end5.i ], [ %call.i153, %do.end.i154 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end.i155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %call, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %24 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hts221_scan_masks, ptr %available_scan_masks, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hts221_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %26 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %num_channels, align 4
  %name17 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str, ptr %name17, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %28 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hts221_info, ptr %info, align 8
  %29 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap5, align 8
  %call.i157 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 32, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp32 = icmp slt i32 %call.i157, 0
  br i1 %cmp32, label %if.end16.cleanup_crit_edge, label %if.end34

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end16
  %31 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap5, align 8
  %call.i.i159 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 32, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159)
  %cmp30.i = icmp slt i32 %call.i.i159, 0
  br i1 %cmp30.i, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %odr34.i = getelementptr inbounds %struct.hts221_hw, ptr %2, i32 0, i32 8
  %33 = ptrtoint ptr %odr34.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %odr34.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i161) #6
  %34 = ptrtoint ptr %data.i161 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %data.i161, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %val.i, align 2, !annotation !87
  %36 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap5, align 8
  %call.i163 = call i32 @regmap_read(ptr noundef %37, i32 noundef 48, ptr noundef nonnull %data.i161) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp.i164 = icmp slt i32 %call.i163, 0
  br i1 %cmp.i164, label %if.end38.do.end44_crit_edge, label %if.end.i166

if.end38.do.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.end.i166:                                      ; preds = %if.end38
  %38 = ptrtoint ptr %data.i161 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data.i161, align 4
  %40 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap5, align 8
  %call2.i165 = call i32 @regmap_read(ptr noundef %41, i32 noundef 49, ptr noundef nonnull %data.i161) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i165)
  %cmp3.i = icmp slt i32 %call2.i165, 0
  br i1 %cmp3.i, label %if.end.i166.do.end44_crit_edge, label %if.end6.i

if.end.i166.do.end44_crit_edge:                   ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.end6.i:                                        ; preds = %if.end.i166
  %42 = ptrtoint ptr %data.i161 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data.i161, align 4
  %44 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap5, align 8
  %call9.i167 = call i32 @regmap_bulk_read(ptr noundef %45, i32 noundef 54, ptr noundef nonnull %val.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i167)
  %cmp10.i = icmp slt i32 %call9.i167, 0
  br i1 %cmp10.i, label %if.end6.i.do.end44_crit_edge, label %if.end13.i

if.end6.i.do.end44_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.end13.i:                                       ; preds = %if.end6.i
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %val.i, align 2
  %48 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap5, align 8
  %call15.i = call i32 @regmap_bulk_read(ptr noundef %49, i32 noundef 58, ptr noundef nonnull %val.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end13.i.do.end44_crit_edge, label %if.end46

if.end13.i.do.end44_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end44:                                         ; preds = %if.end13.i.do.end44_crit_edge, %if.end6.i.do.end44_crit_edge, %if.end.i166.do.end44_crit_edge, %if.end38.do.end44_crit_edge
  %retval.0.i168.ph = phi i32 [ %call15.i, %if.end13.i.do.end44_crit_edge ], [ %call9.i167, %if.end6.i.do.end44_crit_edge ], [ %call2.i165, %if.end.i166.do.end44_crit_edge ], [ %call.i163, %if.end38.do.end44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i161) #6
  %50 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end13.i
  %52 = call i16 @llvm.bswap.i16(i16 %47) #6
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %val.i, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54) #6
  %slope20.i = getelementptr inbounds %struct.hts221_hw, ptr %2, i32 0, i32 6, i32 0, i32 1
  %b_gen23.i = getelementptr inbounds %struct.hts221_hw, ptr %2, i32 0, i32 6, i32 0, i32 2
  %sext.i = shl i32 %43, 16
  %conv24.i = ashr exact i32 %sext.i, 16
  %sext69.i = shl i32 %39, 16
  %conv25.i = ashr exact i32 %sext69.i, 16
  %sub.i = sub nsw i32 %conv24.i, %conv25.i
  %mul.i = mul nsw i32 %sub.i, 8000
  %conv26.i = sext i16 %55 to i32
  %conv27.i = sext i16 %52 to i32
  %sub28.i = sub nsw i32 %conv26.i, %conv27.i
  %div.i = sdiv i32 %mul.i, %sub28.i
  %56 = ptrtoint ptr %slope20.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div.i, ptr %slope20.i, align 4
  %mul31.i = mul nsw i32 %conv25.i, %conv26.i
  %mul34.i = mul nsw i32 %conv24.i, %conv27.i
  %sub35.i = sub nsw i32 %mul31.i, %mul34.i
  %mul36.i = mul i32 %sub35.i, 1000
  %div40.i = sdiv i32 %mul36.i, %sub28.i
  %mul41.i = shl i32 %div40.i, 3
  %57 = ptrtoint ptr %b_gen23.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul41.i, ptr %b_gen23.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i161) #6
  %58 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap5, align 8
  %call.i.i170 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 16, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170)
  %cmp16.i171 = icmp slt i32 %call.i.i170, 0
  br i1 %cmp16.i171, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %arrayidx21.i = getelementptr %struct.hts221_hw, ptr %2, i32 0, i32 6, i32 0
  %62 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %arrayidx21.i, align 4
  %call57 = call fastcc i32 @hts221_parse_temp_caldata(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end65:                                         ; preds = %if.end56
  %call68 = call fastcc i32 @hts221_update_avg(ptr noundef %2, i32 noundef 1, i16 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end76:                                         ; preds = %if.end65
  %67 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp78 = icmp sgt i32 %68, 0
  br i1 %cmp78, label %if.then80, label %if.end76.if.end90_crit_edge

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then80:                                        ; preds = %if.end76
  %call81 = call i32 @hts221_allocate_buffers(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then80.cleanup_crit_edge, label %if.end85

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %if.then80
  %call86 = call i32 @hts221_allocate_trigger(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end85.if.end90_crit_edge, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.end90:                                         ; preds = %if.end85.if.end90_crit_edge, %if.end76.if.end90_crit_edge
  %69 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev3, align 4
  %call92 = call i32 @__devm_iio_device_register(ptr noundef %70, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end85.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %do.end74, %do.end63, %do.end54, %do.end44, %if.end34.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %hts221_check_whoami.exit.thread, %devm_add_action_or_reset.exit, %hts221_init_regulators.exit.cleanup_crit_edge, %hts221_init_regulators.exit.thread176, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i168.ph, %do.end44 ], [ %call.i.i170, %do.end54 ], [ %call57, %do.end63 ], [ %call68, %do.end74 ], [ %call92, %if.end90 ], [ -12, %entry.cleanup_crit_edge ], [ %call7.i, %hts221_init_regulators.exit.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i157, %if.end16.cleanup_crit_edge ], [ %call81, %if.then80.cleanup_crit_edge ], [ %call86, %if.end85.cleanup_crit_edge ], [ %call9.i, %hts221_init_regulators.exit.thread176 ], [ %retval.0.i156.ph, %hts221_check_whoami.exit.thread ], [ %call.i.i159, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hts221_chip_uninit(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.hts221_hw, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hts221_update_avg(ptr nocapture noundef %hw, i32 noundef %type, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type
  %arrayidx1 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %val)
  %cmp3 = icmp eq i16 %1, %val
  br i1 %cmp3, label %entry.if.end8_crit_edge, label %for.inc

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc:                                          ; preds = %entry
  %arrayidx1.1 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %val)
  %cmp3.1 = icmp eq i16 %3, %val
  br i1 %cmp3.1, label %for.inc.if.end8_crit_edge, label %for.inc.1

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.1:                                        ; preds = %for.inc
  %arrayidx1.2 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %val)
  %cmp3.2 = icmp eq i16 %5, %val
  br i1 %cmp3.2, label %for.inc.1.if.end8_crit_edge, label %for.inc.2

for.inc.1.if.end8_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx1.3 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx1.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %val)
  %cmp3.3 = icmp eq i16 %7, %val
  br i1 %cmp3.3, label %for.inc.2.if.end8_crit_edge, label %for.inc.3

for.inc.2.if.end8_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx1.4 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx1.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %val)
  %cmp3.4 = icmp eq i16 %9, %val
  br i1 %cmp3.4, label %for.inc.3.if.end8_crit_edge, label %for.inc.4

for.inc.3.if.end8_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx1.5 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx1.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %val)
  %cmp3.5 = icmp eq i16 %11, %val
  br i1 %cmp3.5, label %for.inc.4.if.end8_crit_edge, label %for.inc.5

for.inc.4.if.end8_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx1.6 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 6
  %12 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx1.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %val)
  %cmp3.6 = icmp eq i16 %13, %val
  br i1 %cmp3.6, label %for.inc.5.if.end8_crit_edge, label %for.inc.6

for.inc.5.if.end8_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx1.7 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 2, i32 7
  %14 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx1.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %val)
  %cmp3.7 = icmp eq i16 %15, %val
  br i1 %cmp3.7, label %for.inc.6.if.end8_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.6.if.end8_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %for.inc.6.if.end8_crit_edge, %for.inc.5.if.end8_crit_edge, %for.inc.4.if.end8_crit_edge, %for.inc.3.if.end8_crit_edge, %for.inc.2.if.end8_crit_edge, %for.inc.1.if.end8_crit_edge, %for.inc.if.end8_crit_edge, %entry.if.end8_crit_edge
  %i.040.lcssa = phi i32 [ 0, %entry.if.end8_crit_edge ], [ 1, %for.inc.if.end8_crit_edge ], [ 2, %for.inc.1.if.end8_crit_edge ], [ 3, %for.inc.2.if.end8_crit_edge ], [ 4, %for.inc.3.if.end8_crit_edge ], [ 5, %for.inc.4.if.end8_crit_edge ], [ 6, %for.inc.5.if.end8_crit_edge ], [ 7, %for.inc.6.if.end8_crit_edge ]
  %mask = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 %type, i32 1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask, align 1
  %conv9 = zext i8 %17 to i32
  %18 = tail call i32 @llvm.cttz.i32(i32 %conv9, i1 false) #6, !range !88
  %shl = shl i32 %i.040.lcssa, %18
  %and = and i32 %shl, %conv9
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %hw, i32 0, i32 2
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 2
  %conv12 = zext i8 %22 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %conv12, i32 noundef %conv9, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.end8.cleanup_crit_edge, label %if.end19

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = trunc i32 %i.040.lcssa to i8
  %arrayidx21 = getelementptr %struct.hts221_hw, ptr %hw, i32 0, i32 6, i32 %type
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv20, ptr %arrayidx21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end8.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call.i, %if.end8.cleanup_crit_edge ], [ -22, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hts221_parse_temp_caldata(ptr nocapture noundef %hw) unnamed_addr #0 align 64 {
entry:
  %cal0 = alloca i32, align 4
  %cal1 = alloca i32, align 4
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cal0) #6
  %0 = ptrtoint ptr %cal0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cal0, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cal1) #6
  %1 = ptrtoint ptr %cal1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cal1, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !87
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 50, ptr noundef nonnull %cal0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 53, ptr noundef nonnull %cal1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %cal1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cal1, align 4
  %and = shl i32 %8, 8
  %shl = and i32 %and, 768
  %9 = ptrtoint ptr %cal0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cal0, align 4
  %or = or i32 %shl, %10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef 51, ptr noundef nonnull %cal0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %cal1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cal1, align 4
  %15 = shl i32 %14, 6
  %shl13 = and i32 %15, 768
  %16 = ptrtoint ptr %cal0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cal0, align 4
  %or14 = or i32 %shl13, %17
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 8
  %call17 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 60, ptr noundef nonnull %val, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end11.cleanup_crit_edge, label %if.end21

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val, align 2
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 8
  %call23 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 62, ptr noundef nonnull %val, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %24 = call i16 @llvm.bswap.i16(i16 %21)
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %slope28 = getelementptr %struct.hts221_hw, ptr %hw, i32 0, i32 6, i32 1, i32 1
  %b_gen31 = getelementptr %struct.hts221_hw, ptr %hw, i32 0, i32 6, i32 1, i32 2
  %sext = shl i32 %or14, 16
  %conv32 = ashr exact i32 %sext, 16
  %sext81 = shl i32 %or, 16
  %conv33 = ashr exact i32 %sext81, 16
  %sub = sub nsw i32 %conv32, %conv33
  %mul = mul nsw i32 %sub, 8000
  %conv34 = sext i16 %27 to i32
  %conv35 = sext i16 %24 to i32
  %sub36 = sub nsw i32 %conv34, %conv35
  %div = sdiv i32 %mul, %sub36
  %28 = ptrtoint ptr %slope28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %slope28, align 4
  %mul39 = mul nsw i32 %conv33, %conv34
  %mul42 = mul nsw i32 %conv32, %conv35
  %sub43 = sub nsw i32 %mul39, %mul42
  %mul44 = mul i32 %sub43, 1000
  %div48 = sdiv i32 %mul44, %sub36
  %mul49 = shl i32 %div48, 3
  %29 = ptrtoint ptr %b_gen31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul49, ptr %b_gen31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end21.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call17, %if.end11.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal0) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hts221_allocate_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hts221_allocate_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 32, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %enabled = getelementptr inbounds %struct.hts221_hw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 32, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_read_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %ch, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %remainder.i.i48 = alloca i32, align 4
  %rem.i49 = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %rem.i = alloca i32, align 4
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.sw.epilog24_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 12, label %sw.bb8
    i32 25, label %sw.bb10
  ]

if.end.sw.epilog24_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.bb:                                            ; preds = %if.end
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %data.i, align 2, !annotation !87
  %regmap.i.i = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 32, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.hts221_read_oneshot.exit_crit_edge, label %if.end.i

sw.bb.hts221_read_oneshot.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %hts221_read_oneshot.exit

if.end.i:                                         ; preds = %sw.bb
  %enabled.i.i = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled.i.i, align 8
  tail call void @msleep(i32 noundef 50) #6
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 8
  %conv.i = and i32 %4, 255
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %conv.i, ptr noundef nonnull %data.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.hts221_read_oneshot.exit_crit_edge, label %if.end5.i

if.end.i.hts221_read_oneshot.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hts221_read_oneshot.exit

if.end5.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 8
  %call.i.i15.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 32, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %cmp.i16.i = icmp slt i32 %call.i.i15.i, 0
  br i1 %cmp.i16.i, label %if.end5.i.hts221_set_enable.exit20.i_crit_edge, label %if.end20.i18.i

if.end5.i.hts221_set_enable.exit20.i_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hts221_set_enable.exit20.i

if.end20.i18.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled.i.i, align 8
  br label %hts221_set_enable.exit20.i

hts221_set_enable.exit20.i:                       ; preds = %if.end20.i18.i, %if.end5.i.hts221_set_enable.exit20.i_crit_edge
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data.i, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15) #6
  %conv7.i = sext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv7.i, ptr %val, align 4
  br label %hts221_read_oneshot.exit

hts221_read_oneshot.exit:                         ; preds = %hts221_set_enable.exit20.i, %if.end.i.hts221_read_oneshot.exit_crit_edge, %sw.bb.hts221_read_oneshot.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %hts221_set_enable.exit20.i ], [ %call1.i, %if.end.i.hts221_read_oneshot.exit_crit_edge ], [ %call.i.i.i, %sw.bb.hts221_read_oneshot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %sw.epilog24

sw.bb3:                                           ; preds = %if.end
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i) #6
  %20 = ptrtoint ptr %rem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %rem.i, align 4, !annotation !87
  %21 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %19, label %sw.bb3.hts221_get_sensor_scale.exit_crit_edge [
    i32 18, label %sw.bb.i
    i32 9, label %sw.bb1.i
  ]

sw.bb3.hts221_get_sensor_scale.exit_crit_edge:    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %hts221_get_sensor_scale.exit

sw.bb.i:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %slope.i = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 0, i32 1
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %slope4.i = getelementptr %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 1, i32 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %div.0.i = phi i32 [ 64000, %sw.bb1.i ], [ 16000, %sw.bb.i ]
  %data.0.in.i = phi ptr [ %slope4.i, %sw.bb1.i ], [ %slope.i, %sw.bb.i ]
  %22 = ptrtoint ptr %data.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %data.0.i = load i32, ptr %data.0.in.i, align 4
  %conv.i46 = sext i32 %data.0.i to i64
  %mul.i = mul nsw i64 %conv.i46, 1000000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %23 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !87
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul.i, i32 noundef %div.0.i, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %call5.i = call i64 @div_s64_rem(i64 noundef %call.i.i, i32 noundef 1000000000, ptr noundef nonnull %rem.i) #6
  %conv6.i = trunc i64 %call5.i to i32
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv6.i, ptr %val, align 4
  %25 = ptrtoint ptr %rem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rem.i, align 4
  %27 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val2, align 4
  br label %hts221_get_sensor_scale.exit

hts221_get_sensor_scale.exit:                     ; preds = %sw.epilog.i, %sw.bb3.hts221_get_sensor_scale.exit_crit_edge
  %retval.0.i47 = phi i32 [ 3, %sw.epilog.i ], [ -22, %sw.bb3.hts221_get_sensor_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i) #6
  br label %sw.epilog24

sw.bb5:                                           ; preds = %if.end
  %28 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i49) #6
  %30 = ptrtoint ptr %rem.i49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %rem.i49, align 4, !annotation !87
  %31 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %29, label %sw.bb5.hts221_get_sensor_offset.exit_crit_edge [
    i32 18, label %sw.bb.i51
    i32 9, label %sw.bb3.i
  ]

sw.bb5.hts221_get_sensor_offset.exit_crit_edge:   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %hts221_get_sensor_offset.exit

sw.bb.i51:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %b_gen.i = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 0, i32 2
  %slope.i50 = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 0, i32 1
  br label %sw.epilog.i58

sw.bb3.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %b_gen6.i = getelementptr %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 1, i32 2
  %slope9.i = getelementptr %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 1, i32 1
  br label %sw.epilog.i58

sw.epilog.i58:                                    ; preds = %sw.bb3.i, %sw.bb.i51
  %div.0.in.i = phi ptr [ %slope9.i, %sw.bb3.i ], [ %slope.i50, %sw.bb.i51 ]
  %data.0.in.i52 = phi ptr [ %b_gen6.i, %sw.bb3.i ], [ %b_gen.i, %sw.bb.i51 ]
  %32 = ptrtoint ptr %data.0.in.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %data.0.i53 = load i32, ptr %data.0.in.i52, align 4
  %33 = ptrtoint ptr %div.0.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %div.0.i54 = load i32, ptr %div.0.in.i, align 4
  %conv.i55 = sext i32 %data.0.i53 to i64
  %mul.i56 = mul nsw i64 %conv.i55, 1000000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i48) #6
  %34 = ptrtoint ptr %remainder.i.i48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %remainder.i.i48, align 4, !annotation !87
  %call.i.i57 = call i64 @div_s64_rem(i64 noundef %mul.i56, i32 noundef %div.0.i54, ptr noundef nonnull %remainder.i.i48) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i48) #6
  %call10.i = call i64 @div_s64_rem(i64 noundef %call.i.i57, i32 noundef 1000000000, ptr noundef nonnull %rem.i49) #6
  %conv11.i = trunc i64 %call10.i to i32
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv11.i, ptr %val, align 4
  %36 = ptrtoint ptr %rem.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rem.i49, align 4
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %val2, align 4
  br label %hts221_get_sensor_offset.exit

hts221_get_sensor_offset.exit:                    ; preds = %sw.epilog.i58, %sw.bb5.hts221_get_sensor_offset.exit_crit_edge
  %retval.0.i59 = phi i32 [ 3, %sw.epilog.i58 ], [ -22, %sw.bb5.hts221_get_sensor_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i49) #6
  br label %sw.epilog24

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %odr = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %odr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %odr, align 1
  %conv9 = zext i8 %40 to i32
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv9, ptr %val, align 4
  br label %sw.epilog24

sw.bb10:                                          ; preds = %if.end
  %42 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ch, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %43, label %sw.bb10.sw.epilog24_crit_edge [
    i32 18, label %sw.bb12
    i32 9, label %sw.bb15
  ]

sw.bb10.sw.epilog24_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.bb12:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %sensors = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %sensors to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensors, align 8
  %idxprom = zext i8 %46 to i32
  %arrayidx13 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 0, i32 2, i32 %idxprom
  %47 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %48 to i32
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv14, ptr %val, align 4
  br label %sw.epilog24

sw.bb15:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx17, align 4
  %idxprom20 = zext i8 %51 to i32
  %arrayidx21 = getelementptr [2 x %struct.hts221_avg], ptr @hts221_avg_list, i32 0, i32 1, i32 2, i32 %idxprom20
  %52 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %53 to i32
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv22, ptr %val, align 4
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb15, %sw.bb12, %sw.bb10.sw.epilog24_crit_edge, %sw.bb8, %hts221_get_sensor_offset.exit, %hts221_get_sensor_scale.exit, %hts221_read_oneshot.exit, %if.end.sw.epilog24_crit_edge
  %ret.1 = phi i32 [ 1, %sw.bb8 ], [ %retval.0.i59, %hts221_get_sensor_offset.exit ], [ %retval.0.i47, %hts221_get_sensor_scale.exit ], [ %retval.0.i, %hts221_read_oneshot.exit ], [ 1, %sw.bb15 ], [ 1, %sw.bb12 ], [ -22, %sw.bb10.sw.epilog24_crit_edge ], [ -22, %if.end.sw.epilog24_crit_edge ]
  call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog24 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_write_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mask, label %if.end.sw.epilog11_crit_edge [
    i32 12, label %sw.bb
    i32 25, label %sw.bb3
  ]

if.end.sw.epilog11_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

sw.bb:                                            ; preds = %if.end
  %conv = trunc i32 %val to i8
  %3 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %conv, label %sw.bb.sw.epilog11_crit_edge [
    i8 1, label %sw.bb.if.end7.i_crit_edge
    i8 7, label %if.end7.fold.split.i
    i8 13, label %if.end7.fold.split50.i
  ]

sw.bb.if.end7.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

sw.bb.sw.epilog11_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

if.end7.fold.split.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.fold.split50.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.fold.split50.i, %if.end7.fold.split.i, %sw.bb.if.end7.i_crit_edge
  %i.048.lcssa.i = phi i32 [ 0, %sw.bb.if.end7.i_crit_edge ], [ 1, %if.end7.fold.split.i ], [ 2, %if.end7.fold.split50.i ]
  %regmap.i = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %val.i = getelementptr [3 x %struct.hts221_odr], ptr @hts221_odr_table, i32 0, i32 %i.048.lcssa.i, i32 1
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 1
  %8 = and i8 %7, 3
  %and29.i = zext i8 %8 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 32, i32 noundef 3, i32 noundef %and29.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp30.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp30.i, label %if.end7.i.sw.epilog11_crit_edge, label %if.end33.i

if.end7.i.sw.epilog11_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

if.end33.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %odr34.i = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %odr34.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %odr34.i, align 1
  br label %sw.epilog11

sw.bb3:                                           ; preds = %if.end
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %11, label %sw.bb3.sw.epilog11_crit_edge [
    i32 18, label %sw.bb4
    i32 9, label %sw.bb7
  ]

sw.bb3.sw.epilog11_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

sw.bb4:                                           ; preds = %sw.bb3
  %conv5 = trunc i32 %val to i16
  %13 = zext i16 %conv5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %conv5, label %sw.bb4.sw.epilog11_crit_edge [
    i16 4, label %sw.bb4.if.end8.i_crit_edge
    i16 8, label %if.end8.i.fold.split
    i16 16, label %if.end8.i.fold.split50
    i16 32, label %if.end8.i.fold.split51
    i16 64, label %if.end8.i.fold.split52
    i16 128, label %if.end8.i.fold.split53
    i16 256, label %if.end8.i.fold.split54
    i16 512, label %if.end8.i.fold.split55
  ]

sw.bb4.if.end8.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

sw.bb4.sw.epilog11_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

if.end8.i.fold.split:                             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i.fold.split50:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i.fold.split51:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i.fold.split52:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i.fold.split53:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i.fold.split54:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i.fold.split55:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.i.fold.split55, %if.end8.i.fold.split54, %if.end8.i.fold.split53, %if.end8.i.fold.split52, %if.end8.i.fold.split51, %if.end8.i.fold.split50, %if.end8.i.fold.split, %sw.bb4.if.end8.i_crit_edge
  %i.040.lcssa.i = phi i32 [ 0, %sw.bb4.if.end8.i_crit_edge ], [ 1, %if.end8.i.fold.split ], [ 2, %if.end8.i.fold.split50 ], [ 3, %if.end8.i.fold.split51 ], [ 4, %if.end8.i.fold.split52 ], [ 5, %if.end8.i.fold.split53 ], [ 6, %if.end8.i.fold.split54 ], [ 7, %if.end8.i.fold.split55 ]
  %regmap.i21 = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %regmap.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i21, align 8
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 16, i32 noundef 7, i32 noundef %i.040.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp16.i = icmp slt i32 %call.i.i22, 0
  br i1 %cmp16.i, label %if.end8.i.sw.epilog11_crit_edge, label %if.end19.i

if.end8.i.sw.epilog11_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

if.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i = trunc i32 %i.040.lcssa.i to i8
  %arrayidx21.i = getelementptr %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv20.i, ptr %arrayidx21.i, align 4
  br label %sw.epilog11

sw.bb7:                                           ; preds = %sw.bb3
  %conv8 = trunc i32 %val to i16
  %17 = zext i16 %conv8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %conv8, label %sw.bb7.sw.epilog11_crit_edge [
    i16 2, label %sw.bb7.if.end8.i44_crit_edge
    i16 4, label %if.end8.i44.fold.split
    i16 8, label %if.end8.i44.fold.split56
    i16 16, label %if.end8.i44.fold.split57
    i16 32, label %if.end8.i44.fold.split58
    i16 64, label %if.end8.i44.fold.split59
    i16 128, label %if.end8.i44.fold.split60
    i16 256, label %if.end8.i44.fold.split61
  ]

sw.bb7.if.end8.i44_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

sw.bb7.sw.epilog11_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

if.end8.i44.fold.split:                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

if.end8.i44.fold.split56:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

if.end8.i44.fold.split57:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

if.end8.i44.fold.split58:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

if.end8.i44.fold.split59:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

if.end8.i44.fold.split60:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

if.end8.i44.fold.split61:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i44

if.end8.i44:                                      ; preds = %if.end8.i44.fold.split61, %if.end8.i44.fold.split60, %if.end8.i44.fold.split59, %if.end8.i44.fold.split58, %if.end8.i44.fold.split57, %if.end8.i44.fold.split56, %if.end8.i44.fold.split, %sw.bb7.if.end8.i44_crit_edge
  %i.040.lcssa.i39 = phi i32 [ 0, %sw.bb7.if.end8.i44_crit_edge ], [ 1, %if.end8.i44.fold.split ], [ 2, %if.end8.i44.fold.split56 ], [ 3, %if.end8.i44.fold.split57 ], [ 4, %if.end8.i44.fold.split58 ], [ 5, %if.end8.i44.fold.split59 ], [ 6, %if.end8.i44.fold.split60 ], [ 7, %if.end8.i44.fold.split61 ]
  %shl.i = shl nuw nsw i32 %i.040.lcssa.i39, 3
  %regmap.i41 = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regmap.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i41, align 8
  %call.i.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 16, i32 noundef 56, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp16.i43 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp16.i43, label %if.end8.i44.sw.epilog11_crit_edge, label %if.end19.i47

if.end8.i44.sw.epilog11_crit_edge:                ; preds = %if.end8.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

if.end19.i47:                                     ; preds = %if.end8.i44
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i45 = trunc i32 %i.040.lcssa.i39 to i8
  %arrayidx21.i46 = getelementptr %struct.hts221_hw, ptr %1, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %arrayidx21.i46 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20.i45, ptr %arrayidx21.i46, align 4
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %if.end19.i47, %if.end8.i44.sw.epilog11_crit_edge, %sw.bb7.sw.epilog11_crit_edge, %if.end19.i, %if.end8.i.sw.epilog11_crit_edge, %sw.bb4.sw.epilog11_crit_edge, %sw.bb3.sw.epilog11_crit_edge, %if.end33.i, %if.end7.i.sw.epilog11_crit_edge, %sw.bb.sw.epilog11_crit_edge, %if.end.sw.epilog11_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb3.sw.epilog11_crit_edge ], [ -22, %if.end.sw.epilog11_crit_edge ], [ 0, %if.end33.i ], [ %call.i.i, %if.end7.i.sw.epilog11_crit_edge ], [ -22, %sw.bb.sw.epilog11_crit_edge ], [ 0, %if.end19.i ], [ %call.i.i22, %if.end8.i.sw.epilog11_crit_edge ], [ 0, %if.end19.i47 ], [ %call.i.i42, %if.end8.i44.sw.epilog11_crit_edge ], [ -22, %sw.bb4.sw.epilog11_crit_edge ], [ -22, %sw.bb7.sw.epilog11_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog11 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hts221_validate_trigger(ptr nocapture noundef readonly %iio_dev, ptr noundef readnone %trig) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trig1 = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %trig1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trig1, align 8
  %cmp = icmp eq ptr %3, %trig
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_sysfs_sampling_freq(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.25, i32 noundef 1) #6
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.25, i32 noundef 7) #6
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.25, i32 noundef 13) #6
  %add.2 = add i32 %call.2, %add.1
  %sub1 = add i32 %add.2, -1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %sub1
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx2, align 1
  ret i32 %add.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_sysfs_rh_oversampling_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.25, i32 noundef 4) #6
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.25, i32 noundef 8) #6
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.25, i32 noundef 16) #6
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.25, i32 noundef 32) #6
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.25, i32 noundef 64) #6
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.25, i32 noundef 128) #6
  %add.5 = add i32 %call.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %call.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.25, i32 noundef 256) #6
  %add.6 = add i32 %call.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %call.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.25, i32 noundef 512) #6
  %add.7 = add i32 %call.7, %add.6
  %sub1 = add i32 %add.7, -1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %sub1
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx2, align 1
  ret i32 %add.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_sysfs_temp_oversampling_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.25, i32 noundef 2) #6
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.25, i32 noundef 4) #6
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.25, i32 noundef 8) #6
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.25, i32 noundef 16) #6
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.25, i32 noundef 32) #6
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.25, i32 noundef 64) #6
  %add.5 = add i32 %call.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %call.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.25, i32 noundef 128) #6
  %add.6 = add i32 %call.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %call.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.25, i32 noundef 256) #6
  %add.7 = add i32 %call.7, %add.6
  %sub1 = add i32 %add.7, -1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %sub1
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx2, align 1
  ret i32 %add.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !71, !73, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/humidity/hts221_core.c", i32 615, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/humidity/hts221_core.c", i32 632, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hts221_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @hts221_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/humidity/hts221_core.c", i32 639, i32 3}
!12 = !{ptr @hts221_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hts221_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/humidity/hts221_core.c", i32 646, i32 3}
!16 = !{ptr @hts221_probe._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hts221_probe._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/humidity/hts221_core.c", i32 654, i32 3}
!20 = !{ptr @hts221_probe._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hts221_probe._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_hts221_probe, !23, !"__ksymtab_hts221_probe", i1 false, i1 false}
!23 = !{!"../drivers/iio/humidity/hts221_core.c", i32 671, i32 1}
!24 = !{ptr @hts221_pm_ops, !25, !"hts221_pm_ops", i1 false, i1 false}
!25 = !{!"../drivers/iio/humidity/hts221_core.c", i32 697, i32 25}
!26 = !{ptr @__ksymtab_hts221_pm_ops, !27, !"__ksymtab_hts221_pm_ops", i1 false, i1 false}
!27 = !{!"../drivers/iio/humidity/hts221_core.c", i32 700, i32 1}
!28 = !{ptr @__UNIQUE_ID_author313, !29, !"__UNIQUE_ID_author313", i1 false, i1 false}
!29 = !{!"../drivers/iio/humidity/hts221_core.c", i32 702, i32 1}
!30 = !{ptr @__UNIQUE_ID_description314, !31, !"__UNIQUE_ID_description314", i1 false, i1 false}
!31 = !{!"../drivers/iio/humidity/hts221_core.c", i32 703, i32 1}
!32 = !{ptr @__UNIQUE_ID_file315, !33, !"__UNIQUE_ID_file315", i1 false, i1 false}
!33 = !{!"../drivers/iio/humidity/hts221_core.c", i32 704, i32 1}
!34 = !{ptr @__UNIQUE_ID_license316, !33, !"__UNIQUE_ID_license316", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/humidity/hts221_core.c", i32 556, i32 36}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/humidity/hts221_core.c", i32 559, i32 10}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/humidity/hts221_core.c", i32 563, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hts221_init_regulators._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @hts221_init_regulators._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/humidity/hts221_core.c", i32 133, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hts221_check_whoami._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hts221_check_whoami._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/humidity/hts221_core.c", i32 138, i32 3}
!51 = !{ptr @hts221_check_whoami._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hts221_check_whoami._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @hts221_scan_masks, !54, !"hts221_scan_masks", i1 false, i1 false}
!54 = !{!"../drivers/iio/humidity/hts221_core.c", i32 548, i32 28}
!55 = !{ptr @hts221_channels, !56, !"hts221_channels", i1 false, i1 false}
!56 = !{!"../drivers/iio/humidity/hts221_core.c", i32 91, i32 35}
!57 = !{ptr @hts221_info, !58, !"hts221_info", i1 false, i1 false}
!58 = !{!"../drivers/iio/humidity/hts221_core.c", i32 541, i32 30}
!59 = !{ptr @hts221_attribute_group, !60, !"hts221_attribute_group", i1 false, i1 false}
!60 = !{!"../drivers/iio/humidity/hts221_core.c", i32 537, i32 37}
!61 = !{ptr @hts221_attributes, !62, !"hts221_attributes", i1 false, i1 false}
!62 = !{!"../drivers/iio/humidity/hts221_core.c", i32 530, i32 26}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/humidity/hts221_core.c", i32 528, i32 8}
!65 = !{ptr @iio_dev_attr_sampling_frequency_available, !64, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/humidity/hts221_core.c", i32 202, i32 48}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/humidity/hts221_core.c", i32 524, i32 8}
!70 = !{ptr @iio_dev_attr_in_humidity_oversampling_ratio_available, !69, !"iio_dev_attr_in_humidity_oversampling_ratio_available", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/humidity/hts221_core.c", i32 526, i32 8}
!73 = !{ptr @iio_dev_attr_in_temp_oversampling_ratio_available, !72, !"iio_dev_attr_in_temp_oversampling_ratio_available", i1 false, i1 false}
!74 = !{ptr @hts221_odr_table, !75, !"hts221_odr_table", i1 false, i1 false}
!75 = !{!"../drivers/iio/humidity/hts221_core.c", i32 54, i32 32}
!76 = !{ptr @hts221_avg_list, !77, !"hts221_avg_list", i1 false, i1 false}
!77 = !{!"../drivers/iio/humidity/hts221_core.c", i32 60, i32 32}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{i32 0, i32 33}
!89 = !{i8 0, i8 2}
