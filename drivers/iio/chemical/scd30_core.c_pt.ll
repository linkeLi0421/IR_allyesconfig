; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/scd30_core.c_pt.bc'
source_filename = "../drivers/iio/chemical/scd30_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scd30_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_scd30_suspend\09\09\09\09"
module asm "\09.long\09__crc_scd30_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scd30_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22scd30_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_scd30_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scd30_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_scd30_resume\09\09\09\09"
module asm "\09.long\09__crc_scd30_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scd30_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22scd30_resume\22\09\09\09\09\09"
module asm "__kstrtabns_scd30_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scd30_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_scd30_probe\09\09\09\09"
module asm "\09.long\09__crc_scd30_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scd30_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22scd30_probe\22\09\09\09\09\09"
module asm "__kstrtabns_scd30_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.scd30_state = type { %struct.mutex, ptr, ptr, %struct.completion, ptr, i32, i16, i16, [3 x i32], ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.anon.85 = type { [3 x i32], i64 }

@__kstrtab_scd30_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_scd30_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_scd30_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scd30_suspend to i32), ptr @__kstrtab_scd30_suspend, ptr @__kstrtabns_scd30_suspend }, section "___ksymtab+scd30_suspend", align 4
@__kstrtab_scd30_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_scd30_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_scd30_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scd30_resume to i32), ptr @__kstrtab_scd30_resume, ptr @__kstrtabns_scd30_resume }, section "___ksymtab+scd30_resume", align 4
@scd30_probe.scd30_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@scd30_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@scd30_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @scd30_attr_group, ptr @scd30_read_raw, ptr null, ptr @scd30_read_avail, ptr @scd30_write_raw, ptr null, ptr @scd30_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@scd30_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 -1, %struct.anon.84 zeroinitializer, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 }, %struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 0, i32 0, %struct.anon.84 { i8 117, i8 20, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 1, i32 1, %struct.anon.84 { i8 115, i8 18, i8 32, i8 0, i8 0, i32 0 }, i32 34, i32 32, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 17, i8 32, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@scd30_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 721, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scd30_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/chemical/scd30_core.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scd30_probe._entry_ptr = internal global ptr @scd30_probe._entry, section ".printk_index", align 4
@scd30_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 728, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup trigger: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@scd30_probe._entry_ptr.10 = internal global ptr @scd30_probe._entry.8, section ".printk_index", align 4
@scd30_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 739, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read firmware version: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@scd30_probe._entry_ptr.13 = internal global ptr @scd30_probe._entry.11, section ".printk_index", align 4
@scd30_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 742, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware version: %d.%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scd30_probe._entry_ptr.17 = internal global ptr @scd30_probe._entry.14, section ".printk_index", align 4
@scd30_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 746, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set measurement interval: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@scd30_probe._entry_ptr.20 = internal global ptr @scd30_probe._entry.18, section ".printk_index", align 4
@scd30_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 752, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to start measurement: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@scd30_probe._entry_ptr.23 = internal global ptr @scd30_probe._entry.21, section ".printk_index", align 4
@__kstrtab_scd30_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_scd30_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_scd30_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scd30_probe to i32), ptr @__kstrtab_scd30_probe, ptr @__kstrtabns_scd30_probe }, section "___ksymtab+scd30_probe", align 4
@__UNIQUE_ID_author288 = internal constant [66 x i8] c"scd30_core.author=Tomasz Duszynski <tomasz.duszynski@octakon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [73 x i8] c"scd30_core.description=Sensirion SCD30 carbon dioxide sensor core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [48 x i8] c"scd30_core.file=drivers/iio/chemical/scd30_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [26 x i8] c"scd30_core.license=GPL v2\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@scd30_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @scd30_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@scd30_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_calibration_auto_enable, ptr @iio_dev_attr_calibration_forced_value, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sampling_frequency_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_calibration_auto_enable = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @calibration_auto_enable_show, ptr @calibration_auto_enable_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_calibration_forced_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @calibration_forced_value_show, ptr @calibration_forced_value_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%09u \00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calibration_auto_enable\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"calibration_forced_value\00", [39 x i8] zeroinitializer }, align 32
@scd30_pressure_raw_available = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 700, i32 1, i32 1400], [20 x i8] zeroinitializer }, align 32
@scd30_temp_calibbias_available = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 10, i32 655360], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@scd30_setup_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 646, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scd30_setup_trigger\00", [44 x i8] zeroinitializer }, align 32
@scd30_setup_trigger._entry_ptr = internal global ptr @scd30_setup_trigger._entry, section ".printk_index", align 4
@scd30_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @scd30_set_trigger_state, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@scd30_setup_trigger._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 670, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@scd30_setup_trigger._entry_ptr.35 = internal global ptr @scd30_setup_trigger._entry.33, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 12]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 12]
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"scd30_scan_masks\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 678, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"scd30_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 457, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"scd30_channels\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 472, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 707, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 709, i32 50 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 721, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 728, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 739, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 742, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 746, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 752, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 87, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"scd30_attr_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 453, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"scd30_attrs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 446, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [37 x i8] c"iio_dev_attr_calibration_auto_enable\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [38 x i8] c"iio_dev_attr_calibration_forced_value\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 442, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 357, i32 48 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 443, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 383, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 444, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [29 x i8] c"scd30_pressure_raw_available\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 323, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant [31 x i8] c"scd30_temp_calibbias_available\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 327, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 643, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 646, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"scd30_trigger_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 631, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [37 x i8] c"../drivers/iio/chemical/scd30_core.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 670, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_scd30_probe, ptr @__ksymtab_scd30_resume, ptr @__ksymtab_scd30_suspend, ptr @scd30_probe._entry, ptr @scd30_probe._entry.11, ptr @scd30_probe._entry.14, ptr @scd30_probe._entry.18, ptr @scd30_probe._entry.21, ptr @scd30_probe._entry.8, ptr @scd30_probe._entry_ptr, ptr @scd30_probe._entry_ptr.10, ptr @scd30_probe._entry_ptr.13, ptr @scd30_probe._entry_ptr.17, ptr @scd30_probe._entry_ptr.20, ptr @scd30_probe._entry_ptr.23, ptr @scd30_setup_trigger._entry, ptr @scd30_setup_trigger._entry.33, ptr @scd30_setup_trigger._entry_ptr, ptr @scd30_setup_trigger._entry_ptr.35, ptr @scd30_probe.scd30_scan_masks, ptr @scd30_probe.__key, ptr @.str, ptr @scd30_info, ptr @scd30_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @scd30_attr_group, ptr @scd30_attrs, ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_calibration_auto_enable, ptr @iio_dev_attr_calibration_forced_value, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @scd30_pressure_raw_available, ptr @scd30_temp_calibbias_available, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @scd30_trigger_ops, ptr @.str.34], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe.scd30_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_calibration_auto_enable to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_calibration_forced_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_pressure_raw_available to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_temp_calibbias_available to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_setup_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_setup_trigger._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scd30_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vdd = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scd30_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %vdd = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pressure_comp = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pressure_comp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pressure_comp, align 4
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command.i, align 4
  %call.i = tail call i32 %9(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %7, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scd30_probe(ptr noundef %dev, i32 noundef %irq, ptr noundef %name, ptr noundef %priv, ptr noundef %command) #0 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 184) #7
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
  %dev2 = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %priv3 = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv3, align 4
  %irq4 = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %irq4, align 4
  %pressure_comp = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pressure_comp to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1013, ptr %pressure_comp, align 4
  %meas_interval = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %meas_interval to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %meas_interval, align 2
  %command5 = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %command5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %command, ptr %command5, align 4
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @scd30_probe.__key) #7
  %meas_ready = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %meas_ready to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %meas_ready, align 4
  %wait.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @scd30_info, ptr %info, align 8
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %11 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %name6, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @scd30_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %num_channels, align 4
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @scd30_probe.scd30_scan_masks, ptr %available_scan_masks, align 4
  %call7 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %vdd = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %vdd, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call i32 @regulator_enable(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @scd30_disable_regulator, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdd, align 4
  %call.i162 = tail call i32 @regulator_disable(ptr noundef %19) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %20 = ptrtoint ptr %command5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %command5, align 4
  %call.i.i = tail call i32 %21(ptr noundef %1, i32 noundef 9, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i148 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i148, label %if.end30, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call.i.i) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  tail call void @msleep(i32 noundef 2000) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %tmp.i.i, align 2, !annotation !101
  %23 = ptrtoint ptr %command5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command5, align 4
  %call.i6.i = call i32 %24(ptr noundef %1, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %25 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp sgt i32 %26, 0
  br i1 %cmp, label %if.then32, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then32:                                        ; preds = %if.end30
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 8
  %31 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name6, align 8
  %call2.i = call i32 @iio_device_id(ptr noundef nonnull %call) #7
  %call3.i = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %30, ptr noundef nonnull @.str.30, ptr noundef %32, i32 noundef %call2.i) #7
  %tobool.not.i149 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i149, label %if.then32.cleanup.sink.split.i_crit_edge, label %if.end.i150

if.then32.cleanup.sink.split.i_crit_edge:         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i150:                                      ; preds = %if.then32
  %33 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @scd30_trigger_ops, ptr %call3.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call3.i, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %driver_data.i.i.i, align 4
  %call4.i = call i32 @__devm_iio_trigger_register(ptr noundef %30, ptr noundef nonnull %call3.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i150.do.end38_crit_edge

if.end.i150.do.end38_crit_edge:                   ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

if.end7.i:                                        ; preds = %if.end.i150
  %dev.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call3.i, i32 0, i32 4
  %call.i.i151 = call ptr @get_device(ptr noundef %dev.i.i) #7
  %owner.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call3.i, i32 0, i32 1
  %35 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %owner.i.i, align 4
  call void @__module_get(ptr noundef %36) #7
  %trig9.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %37 = ptrtoint ptr %trig9.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call3.i, ptr %trig9.i, align 4
  %irq.i = getelementptr inbounds %struct.scd30_state, ptr %28, i32 0, i32 5
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i, align 4
  %40 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name6, align 8
  %call11.i = call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %39, ptr noundef nonnull @scd30_irq_handler, ptr noundef nonnull @scd30_irq_thread_handler, i32 noundef 532484, ptr noundef %41, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end7.i.if.end40_crit_edge, label %if.end7.i.cleanup.sink.split.i_crit_edge

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end7.i.if.end40_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

cleanup.sink.split.i:                             ; preds = %if.end7.i.cleanup.sink.split.i_crit_edge, %if.then32.cleanup.sink.split.i_crit_edge
  %.str.34.sink.i = phi ptr [ @.str.31, %if.then32.cleanup.sink.split.i_crit_edge ], [ @.str.34, %if.end7.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -12, %if.then32.cleanup.sink.split.i_crit_edge ], [ %call11.i, %if.end7.i.cleanup.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull %.str.34.sink.i) #10
  br label %do.end38

do.end38:                                         ; preds = %cleanup.sink.split.i, %if.end.i150.do.end38_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call4.i, %if.end.i150.do.end38_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end7.i.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %call41 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @scd30_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %42 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %tmp.i, align 2, !annotation !101
  %43 = ptrtoint ptr %command5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %command5, align 4
  %call.i152 = call i32 %44(ptr noundef %1, i32 noundef 8, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  %45 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tmp.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool46.not = icmp eq i32 %call.i152, 0
  br i1 %tobool46.not, label %do.end54, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i152) #10
  br label %cleanup

do.end54:                                         ; preds = %if.end44
  %47 = lshr i16 %46, 8
  %48 = zext i16 %47 to i32
  %49 = and i16 %46, 255
  %conv56 = zext i16 %49 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %48, i32 noundef %conv56) #10
  %50 = ptrtoint ptr %meas_interval to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %meas_interval, align 2
  %52 = ptrtoint ptr %command5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %command5, align 4
  %call.i154 = call i32 %53(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %51, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool59.not = icmp eq i32 %call.i154, 0
  br i1 %tobool59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i154) #10
  br label %cleanup

if.end64:                                         ; preds = %do.end54
  %54 = ptrtoint ptr %pressure_comp to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pressure_comp, align 4
  %56 = ptrtoint ptr %command5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %command5, align 4
  %call.i156 = call i32 %57(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %55, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool67.not = icmp eq i32 %call.i156, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call.i156) #10
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  %call.i157 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @scd30_stop_meas, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.end76, label %devm_add_action_or_reset.exit161

devm_add_action_or_reset.exit161:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %command5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %command5, align 4
  %call.i.i164 = call i32 %59(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %devm_add_action_or_reset.exit161, %do.end71, %do.end63, %do.end50, %if.end40.cleanup_crit_edge, %do.end38, %do.end29, %devm_add_action_or_reset.exit, %if.end14.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ %call.i.i, %do.end29 ], [ %retval.0.i.ph, %do.end38 ], [ %call.i152, %do.end50 ], [ %call.i154, %do.end63 ], [ %call.i156, %do.end71 ], [ %call77, %if.end76 ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call.i157, %devm_add_action_or_reset.exit161 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scd30_disable_regulator(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.scd30_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %scan = alloca %struct.anon.85, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scan) #7
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %call2 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #7
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @scd30_read_poll(ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @scd30_read_meas(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call4, %if.else ], [ %call3, %if.then ]
  %meas = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 8
  %4 = getelementptr inbounds i8, ptr %scan, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = call ptr @memcpy(ptr %scan, ptr %meas, i32 12)
  tail call void @mutex_unlock(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.end
  %call9 = tail call i64 @iio_get_time_ns(ptr noundef %1) #7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scan_timestamp.i, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end8.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end8.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %10, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call9, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end8.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #7
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %13) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scan) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scd30_stop_meas(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command.i, align 4
  %call.i = tail call i32 %1(ptr noundef %data, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %tmp.i42 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge52
    i32 2, label %sw.bb9
    i32 12, label %sw.bb10
    i32 5, label %sw.bb16
  ]

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge52
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %3 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %output, align 4
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %pressure_comp = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pressure_comp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pressure_comp, align 4
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4:                                          ; preds = %if.end
  %irq.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp sgt i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %scd30_read.exit

if.then.i:                                        ; preds = %if.end4
  %meas_ready.i.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %meas_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %meas_ready.i.i, align 4
  tail call void @enable_irq(i32 noundef %9) #7
  %meas_interval.i.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %meas_interval.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %meas_interval.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1250
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i.i) #7
  %call2.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %meas_ready.i.i, i32 noundef %call2.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp sgt i32 %call2.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 -110, i32 %call2.i.i
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %14) #7
  br i1 %cmp.i.i, label %if.then.i.if.end8_crit_edge, label %if.then.i.if.then7_crit_edge

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

scd30_read.exit:                                  ; preds = %if.end4
  %call1.i = tail call fastcc i32 @scd30_read_poll(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %scd30_read.exit.if.end8_crit_edge, label %scd30_read.exit.if.then7_crit_edge

scd30_read.exit.if.then7_crit_edge:               ; preds = %scd30_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

scd30_read.exit.if.end8_crit_edge:                ; preds = %scd30_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %scd30_read.exit.if.then7_crit_edge, %if.then.i.if.then7_crit_edge
  %retval.0.i51 = phi i32 [ %call1.i, %scd30_read.exit.if.then7_crit_edge ], [ %spec.store.select.i.i, %if.then.i.if.then7_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %sw.epilog

if.end8:                                          ; preds = %scd30_read.exit.if.end8_crit_edge, %if.then.i.if.end8_crit_edge
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address, align 4
  %arrayidx = getelementptr %struct.scd30_state, ptr %1, i32 0, i32 8, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %val2, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %tmp.i, align 2, !annotation !101
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command.i, align 4
  %call.i = call i32 %24(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tmp.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val, align 4
  %conv15 = zext i16 %26 to i32
  %div = udiv i32 1000000000, %conv15
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %val2, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i42) #7
  %29 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %tmp.i42, align 2, !annotation !101
  %command.i43 = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %command.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %command.i43, align 4
  %call.i44 = call i32 %31(ptr noundef %1, i32 noundef 7, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i42, i32 noundef 2) #7
  %32 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tmp.i42, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool18.not = icmp eq i32 %call.i44, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end20:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i16 %33 to i32
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv21, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20, %sw.bb16.sw.epilog_crit_edge, %if.end14, %sw.bb10.sw.epilog_crit_edge, %sw.bb9, %if.end8, %if.then7, %if.end.sw.epilog_crit_edge, %if.then, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call.i44, %sw.bb16.sw.epilog_crit_edge ], [ 1, %if.end20 ], [ %call.i, %sw.bb10.sw.epilog_crit_edge ], [ 3, %if.end14 ], [ 2, %sw.bb9 ], [ 1, %if.then ], [ %call1, %if.end.sw.epilog_crit_edge ], [ %retval.0.i51, %if.then7 ], [ 1, %if.end8 ]
  call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @scd30_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef readnone %length, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 5, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %scd30_temp_calibbias_available.sink = phi ptr [ @scd30_temp_calibbias_available, %sw.bb1 ], [ @scd30_pressure_raw_available, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %scd30_temp_calibbias_available.sink, ptr %vals, align 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %mask, label %entry.sw.epilog34_crit_edge [
    i32 12, label %sw.bb
    i32 0, label %sw.bb9
    i32 5, label %sw.bb24
  ]

entry.sw.epilog34_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog34_crit_edge

sw.bb.sw.epilog34_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end:                                           ; preds = %sw.bb
  %div = sdiv i32 1000000000, %val2
  %3 = add nsw i32 %div, -1801
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1799, i32 %3)
  %4 = icmp ult i32 %3, -1799
  br i1 %4, label %if.end.sw.epilog34_crit_edge, label %if.end3

if.end.sw.epilog34_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end3:                                          ; preds = %if.end
  %conv = trunc i32 %div to i16
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %command.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %conv, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.sw.epilog34_crit_edge

if.end3.sw.epilog34_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %meas_interval = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %meas_interval to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %meas_interval, align 2
  br label %sw.epilog34

sw.bb9:                                           ; preds = %entry
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cond = icmp ne i32 %9, 17
  %10 = add i32 %val, -1401
  call void @__sanitizer_cov_trace_const_cmp4(i32 -701, i32 %10)
  %11 = icmp ult i32 %10, -701
  %12 = or i1 %11, %cond
  br i1 %12, label %sw.bb9.sw.epilog34_crit_edge, label %if.end17

sw.bb9.sw.epilog34_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end17:                                         ; preds = %sw.bb9
  %conv18 = trunc i32 %val to i16
  %command.i58 = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %command.i58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %command.i58, align 4
  %call.i59 = tail call i32 %14(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %conv18, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool20.not = icmp eq i32 %call.i59, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.sw.epilog34_crit_edge

if.end17.sw.epilog34_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %pressure_comp = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %pressure_comp to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv18, ptr %pressure_comp, align 4
  br label %sw.epilog34

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360, i32 %val)
  %16 = icmp ugt i32 %val, 655360
  br i1 %16, label %sw.bb24.sw.epilog34_crit_edge, label %if.end31

sw.bb24.sw.epilog34_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end31:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %conv32 = trunc i32 %val to i16
  %command.i60 = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %command.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %command.i60, align 4
  %call.i61 = tail call i32 %18(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %conv32, ptr noundef null, i32 noundef 0) #7
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %if.end31, %sw.bb24.sw.epilog34_crit_edge, %if.end22, %if.end17.sw.epilog34_crit_edge, %sw.bb9.sw.epilog34_crit_edge, %if.end7, %if.end3.sw.epilog34_crit_edge, %if.end.sw.epilog34_crit_edge, %sw.bb.sw.epilog34_crit_edge, %entry.sw.epilog34_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog34_crit_edge ], [ -22, %sw.bb24.sw.epilog34_crit_edge ], [ %call.i61, %if.end31 ], [ %call.i59, %if.end17.sw.epilog34_crit_edge ], [ 0, %if.end22 ], [ -22, %sw.bb9.sw.epilog34_crit_edge ], [ -22, %sw.bb.sw.epilog34_crit_edge ], [ -22, %if.end.sw.epilog34_crit_edge ], [ %call.i, %if.end3.sw.epilog34_crit_edge ], [ 0, %if.end7 ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scd30_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %mask, label %sw.epilog [
    i32 12, label %entry.return_crit_edge
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge2
  ]

entry.sw.bb1_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge2
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 1, %sw.bb1 ], [ 3, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sampling_frequency_available_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %add1, %do.body.do.body_crit_edge ]
  %len.0 = phi i32 [ 0, %entry ], [ %add, %do.body.do.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.0
  %sub = sub i32 4096, %len.0
  %div = udiv i32 1000000000, %i.0
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.26, i32 noundef %div) #7
  %add = add i32 %call, %len.0
  %add1 = add nuw nsw i32 %i.0, 6
  %cmp = icmp ult i32 %i.0, 1795
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub2 = add i32 %add, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx, align 1
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibration_auto_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp.i, align 2, !annotation !101
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %command.i, align 4
  %call.i = call i32 %4(ptr noundef %1, i32 noundef 5, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tmp.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %6 to i32
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call4, %cond.false ], [ %call.i, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibration_auto_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !101
  %call2 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1, !range !102
  %5 = zext i8 %4 to i16
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %command.i, align 4
  %call.i = call i32 %7(ptr noundef %1, i32 noundef 5, i16 noundef zeroext %5, ptr noundef null, i32 noundef 0) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool6.not, i32 %len, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibration_forced_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp.i, align 2, !annotation !101
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %command.i, align 4
  %call.i = call i32 %4(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tmp.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %6 to i32
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call4, %cond.false ], [ %call.i, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibration_forced_value_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !101
  %call2 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val, align 2
  %5 = add i16 %4, -2001
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1601, i16 %5)
  %6 = icmp ult i16 %5, -1601
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %command.i = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %command.i, align 4
  %call.i = call i32 %10(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %8, ptr noundef null, i32 noundef 0) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool11.not, i32 %len, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end8 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scd30_read_poll(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %meas_interval.i = getelementptr inbounds %struct.scd30_state, ptr %state, i32 0, i32 7
  %0 = ptrtoint ptr %meas_interval.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %meas_interval.i, align 2
  %conv.i = zext i16 %1 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 250
  %command.i.i = getelementptr inbounds %struct.scd30_state, ptr %state, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp.i.i, align 2, !annotation !101
  %3 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %command.i.i, align 4
  %call.i.i = call i32 %4(ptr noundef %state, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tmp.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not.i = icmp eq i16 %6, 0
  br i1 %tobool1.not.i, label %do.cond.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.cond.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @msleep_interruptible(i32 noundef %mul.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %7 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %tmp.i.i, align 2, !annotation !101
  %8 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command.i.i, align 4
  %call.i.1.i = call i32 %9(ptr noundef %state, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  %10 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tmp.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1.i:                                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool1.not.1.i = icmp eq i16 %11, 0
  br i1 %tobool1.not.1.i, label %do.cond.1.i, label %if.end.1.i.if.end_crit_edge

if.end.1.i.if.end_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.cond.1.i:                                      ; preds = %if.end.1.i
  %call4.1.i = call i32 @msleep_interruptible(i32 noundef %mul.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %12 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %tmp.i.i, align 2, !annotation !101
  %13 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %command.i.i, align 4
  %call.i.2.i = call i32 %14(ptr noundef %state, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tmp.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %do.cond.1.i.cleanup_crit_edge

do.cond.1.i.cleanup_crit_edge:                    ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2.i:                                       ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool1.not.2.i = icmp eq i16 %16, 0
  br i1 %tobool1.not.2.i, label %do.cond.2.i, label %if.end.2.i.if.end_crit_edge

if.end.2.i.if.end_crit_edge:                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.cond.2.i:                                      ; preds = %if.end.2.i
  %call4.2.i = call i32 @msleep_interruptible(i32 noundef %mul.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %17 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %tmp.i.i, align 2, !annotation !101
  %18 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %command.i.i, align 4
  %call.i.3.i = call i32 %19(ptr noundef %state, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  %20 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tmp.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %do.cond.2.i.cleanup_crit_edge

do.cond.2.i.cleanup_crit_edge:                    ; preds = %do.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3.i:                                       ; preds = %do.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool1.not.3.i = icmp eq i16 %21, 0
  br i1 %tobool1.not.3.i, label %do.cond.3.i, label %if.end.3.i.if.end_crit_edge

if.end.3.i.if.end_crit_edge:                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.cond.3.i:                                      ; preds = %if.end.3.i
  %call4.3.i = call i32 @msleep_interruptible(i32 noundef %mul.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %tmp.i.i, align 2, !annotation !101
  %23 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command.i.i, align 4
  %call.i.4.i = call i32 %24(ptr noundef %state, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  %25 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tmp.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %tobool.not.4.i = icmp eq i32 %call.i.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %do.cond.3.i.cleanup_crit_edge

do.cond.3.i.cleanup_crit_edge:                    ; preds = %do.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4.i:                                       ; preds = %do.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool1.not.4.i = icmp eq i16 %26, 0
  br i1 %tobool1.not.4.i, label %do.cond.4.i, label %if.end.4.i.if.end_crit_edge

if.end.4.i.if.end_crit_edge:                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.cond.4.i:                                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.4.i = call i32 @msleep_interruptible(i32 noundef %mul.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.4.i.if.end_crit_edge, %if.end.3.i.if.end_crit_edge, %if.end.2.i.if.end_crit_edge, %if.end.1.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call1 = call fastcc i32 @scd30_read_meas(ptr noundef %state)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.cond.4.i, %do.cond.3.i.cleanup_crit_edge, %do.cond.2.i.cleanup_crit_edge, %do.cond.1.i.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -110, %do.cond.4.i ], [ -5, %do.cond.3.i.cleanup_crit_edge ], [ -5, %do.cond.2.i.cleanup_crit_edge ], [ -5, %do.cond.1.i.cleanup_crit_edge ], [ -5, %do.cond.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scd30_read_meas(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.scd30_state, ptr %state, i32 0, i32 9
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command, align 4
  %meas = getelementptr %struct.scd30_state, ptr %state, i32 0, i32 8
  %call = tail call i32 %1(ptr noundef %state, i32 noundef 4, i16 noundef zeroext 0, ptr noundef %meas, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %meas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %meas, align 4
  %and.i = and i32 %3, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  %cond.i = select i1 %tobool.not.i, i32 1, i32 -1
  %and2.i = lshr i32 %3, 23
  %shr.i = and i32 %and2.i, 255
  %4 = or i32 %shr.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %for.body.preheader.scd30_float_to_fp.exit_crit_edge, label %if.end.i

for.body.preheader.scd30_float_to_fp.exit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %scd30_float_to_fp.exit

if.end.i:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %shr.i)
  %cmp.i = icmp ult i32 %shr.i, 127
  br i1 %cmp.i, label %if.then5.i, label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub6.i = sub nuw nsw i32 127, %shr.i
  %add.i = or i32 %and.i, 8388608
  %mul.i = mul nuw nsw i32 %add.i, 100
  %shr7.i = lshr i32 %mul.i, 23
  %shr8.i = lshr i32 %shr7.i, %sub6.i
  %mul9.i = mul nsw i32 %shr8.i, %cond.i
  br label %scd30_float_to_fp.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %shr.i, -127
  %sub11.i = sub nsw i32 150, %shr.i
  %shl.i = shl nuw i32 1, %sub.i
  %shr12.i = lshr i32 %and.i, %sub11.i
  %add13.i = add i32 %shl.i, %shr12.i
  %sub15.i = add nsw i32 %shr.i, -118
  %shr16.i = lshr i32 -1, %sub15.i
  %and19.i = and i32 %shr16.i, %and.i
  %mul20.i = mul i32 %add13.i, 100
  %mul21.i = mul nuw nsw i32 %and19.i, 100
  %shr22.i = lshr i32 %mul21.i, %sub11.i
  %add23.i = add i32 %shr22.i, %mul20.i
  %mul24.i = mul i32 %add23.i, %cond.i
  br label %scd30_float_to_fp.exit

scd30_float_to_fp.exit:                           ; preds = %if.end10.i, %if.then5.i, %for.body.preheader.scd30_float_to_fp.exit_crit_edge
  %retval.0.i = phi i32 [ %mul9.i, %if.then5.i ], [ %mul24.i, %if.end10.i ], [ 0, %for.body.preheader.scd30_float_to_fp.exit_crit_edge ]
  %6 = ptrtoint ptr %meas to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %meas, align 4
  %arrayidx.1 = getelementptr %struct.scd30_state, ptr %state, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %and.i.1 = and i32 %8, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i.1 = icmp sgt i32 %8, -1
  %cond.i.1 = select i1 %tobool.not.i.1, i32 1, i32 -1
  %and2.i.1 = lshr i32 %8, 23
  %shr.i.1 = and i32 %and2.i.1, 255
  %9 = or i32 %shr.i.1, %and.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %scd30_float_to_fp.exit.scd30_float_to_fp.exit.1_crit_edge, label %if.end.i.1

scd30_float_to_fp.exit.scd30_float_to_fp.exit.1_crit_edge: ; preds = %scd30_float_to_fp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %scd30_float_to_fp.exit.1

if.end.i.1:                                       ; preds = %scd30_float_to_fp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %shr.i.1)
  %cmp.i.1 = icmp ult i32 %shr.i.1, 127
  br i1 %cmp.i.1, label %if.then5.i.1, label %if.end10.i.1

if.end10.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.1 = add nsw i32 %shr.i.1, -127
  %sub11.i.1 = sub nsw i32 150, %shr.i.1
  %shl.i.1 = shl nuw i32 1, %sub.i.1
  %shr12.i.1 = lshr i32 %and.i.1, %sub11.i.1
  %add13.i.1 = add i32 %shl.i.1, %shr12.i.1
  %sub15.i.1 = add nsw i32 %shr.i.1, -118
  %shr16.i.1 = lshr i32 -1, %sub15.i.1
  %and19.i.1 = and i32 %shr16.i.1, %and.i.1
  %mul20.i.1 = mul i32 %add13.i.1, 100
  %mul21.i.1 = mul nuw nsw i32 %and19.i.1, 100
  %shr22.i.1 = lshr i32 %mul21.i.1, %sub11.i.1
  %add23.i.1 = add i32 %shr22.i.1, %mul20.i.1
  %mul24.i.1 = mul i32 %add23.i.1, %cond.i.1
  br label %scd30_float_to_fp.exit.1

if.then5.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %sub6.i.1 = sub nuw nsw i32 127, %shr.i.1
  %add.i.1 = or i32 %and.i.1, 8388608
  %mul.i.1 = mul nuw nsw i32 %add.i.1, 100
  %shr7.i.1 = lshr i32 %mul.i.1, 23
  %shr8.i.1 = lshr i32 %shr7.i.1, %sub6.i.1
  %mul9.i.1 = mul nsw i32 %shr8.i.1, %cond.i.1
  br label %scd30_float_to_fp.exit.1

scd30_float_to_fp.exit.1:                         ; preds = %if.then5.i.1, %if.end10.i.1, %scd30_float_to_fp.exit.scd30_float_to_fp.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %mul9.i.1, %if.then5.i.1 ], [ %mul24.i.1, %if.end10.i.1 ], [ 0, %scd30_float_to_fp.exit.scd30_float_to_fp.exit.1_crit_edge ]
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i.1, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.scd30_state, ptr %state, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  %and.i.2 = and i32 %13, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not.i.2 = icmp sgt i32 %13, -1
  %cond.i.2 = select i1 %tobool.not.i.2, i32 1, i32 -1
  %and2.i.2 = lshr i32 %13, 23
  %shr.i.2 = and i32 %and2.i.2, 255
  %14 = or i32 %shr.i.2, %and.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %scd30_float_to_fp.exit.1.scd30_float_to_fp.exit.2_crit_edge, label %if.end.i.2

scd30_float_to_fp.exit.1.scd30_float_to_fp.exit.2_crit_edge: ; preds = %scd30_float_to_fp.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %scd30_float_to_fp.exit.2

if.end.i.2:                                       ; preds = %scd30_float_to_fp.exit.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %shr.i.2)
  %cmp.i.2 = icmp ult i32 %shr.i.2, 127
  br i1 %cmp.i.2, label %if.then5.i.2, label %if.end10.i.2

if.end10.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.2 = add nsw i32 %shr.i.2, -127
  %sub11.i.2 = sub nsw i32 150, %shr.i.2
  %shl.i.2 = shl nuw i32 1, %sub.i.2
  %shr12.i.2 = lshr i32 %and.i.2, %sub11.i.2
  %add13.i.2 = add i32 %shl.i.2, %shr12.i.2
  %sub15.i.2 = add nsw i32 %shr.i.2, -118
  %shr16.i.2 = lshr i32 -1, %sub15.i.2
  %and19.i.2 = and i32 %shr16.i.2, %and.i.2
  %mul20.i.2 = mul i32 %add13.i.2, 100
  %mul21.i.2 = mul nuw nsw i32 %and19.i.2, 100
  %shr22.i.2 = lshr i32 %mul21.i.2, %sub11.i.2
  %add23.i.2 = add i32 %shr22.i.2, %mul20.i.2
  %mul24.i.2 = mul i32 %add23.i.2, %cond.i.2
  br label %scd30_float_to_fp.exit.2

if.then5.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %sub6.i.2 = sub nuw nsw i32 127, %shr.i.2
  %add.i.2 = or i32 %and.i.2, 8388608
  %mul.i.2 = mul nuw nsw i32 %add.i.2, 100
  %shr7.i.2 = lshr i32 %mul.i.2, 23
  %shr8.i.2 = lshr i32 %shr7.i.2, %sub6.i.2
  %mul9.i.2 = mul nsw i32 %shr8.i.2, %cond.i.2
  br label %scd30_float_to_fp.exit.2

scd30_float_to_fp.exit.2:                         ; preds = %if.then5.i.2, %if.end10.i.2, %scd30_float_to_fp.exit.1.scd30_float_to_fp.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %mul9.i.2, %if.then5.i.2 ], [ %mul24.i.2, %if.end10.i.2 ], [ 0, %scd30_float_to_fp.exit.1.scd30_float_to_fp.exit.2_crit_edge ]
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %mul = mul i32 %17, 10
  store i32 %mul, ptr %arrayidx.1, align 4
  %mul13 = mul i32 %retval.0.i.2, 10
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul13, ptr %arrayidx.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %scd30_float_to_fp.exit.2, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %1, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %trig = getelementptr inbounds %struct.iio_dev, ptr %priv, i32 0, i32 10
  %2 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_irq_thread_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call fastcc i32 @scd30_read_meas(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %meas_ready = getelementptr inbounds %struct.scd30_state, ptr %1, i32 0, i32 3
  tail call void @complete_all(ptr noundef %meas_ready) #7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
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
  %irq = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @enable_irq(i32 noundef %5) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @disable_irq(i32 noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !53, !54, !56, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__ksymtab_scd30_suspend, !1, !"__ksymtab_scd30_suspend", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/scd30_core.c", i32 532, i32 1}
!2 = !{ptr @__ksymtab_scd30_resume, !3, !"__ksymtab_scd30_resume", i1 false, i1 false}
!3 = !{!"../drivers/iio/chemical/scd30_core.c", i32 546, i32 1}
!4 = !{ptr @scd30_probe.scd30_scan_masks, !5, !"scd30_scan_masks", i1 false, i1 false}
!5 = !{!"../drivers/iio/chemical/scd30_core.c", i32 678, i32 29}
!6 = !{ptr @scd30_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/iio/chemical/scd30_core.c", i32 695, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/iio/chemical/scd30_core.c", i32 707, i32 39}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/chemical/scd30_core.c", i32 709, i32 50}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/chemical/scd30_core.c", i32 721, i32 3}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @scd30_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @scd30_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/chemical/scd30_core.c", i32 728, i32 4}
!23 = !{ptr @scd30_probe._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @scd30_probe._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/chemical/scd30_core.c", i32 739, i32 3}
!27 = !{ptr @scd30_probe._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @scd30_probe._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/chemical/scd30_core.c", i32 742, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @scd30_probe._entry.14, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @scd30_probe._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/chemical/scd30_core.c", i32 746, i32 3}
!36 = !{ptr @scd30_probe._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @scd30_probe._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/chemical/scd30_core.c", i32 752, i32 3}
!40 = !{ptr @scd30_probe._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @scd30_probe._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__ksymtab_scd30_probe, !43, !"__ksymtab_scd30_probe", i1 false, i1 false}
!43 = !{!"../drivers/iio/chemical/scd30_core.c", i32 762, i32 1}
!44 = !{ptr @__UNIQUE_ID_author288, !45, !"__UNIQUE_ID_author288", i1 false, i1 false}
!45 = !{!"../drivers/iio/chemical/scd30_core.c", i32 764, i32 1}
!46 = !{ptr @__UNIQUE_ID_description289, !47, !"__UNIQUE_ID_description289", i1 false, i1 false}
!47 = !{!"../drivers/iio/chemical/scd30_core.c", i32 765, i32 1}
!48 = !{ptr @__UNIQUE_ID_file290, !49, !"__UNIQUE_ID_file290", i1 false, i1 false}
!49 = !{!"../drivers/iio/chemical/scd30_core.c", i32 766, i32 1}
!50 = !{ptr @__UNIQUE_ID_license291, !49, !"__UNIQUE_ID_license291", i1 false, i1 false}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @scd30_info, !55, !"scd30_info", i1 false, i1 false}
!55 = !{!"../drivers/iio/chemical/scd30_core.c", i32 457, i32 30}
!56 = !{ptr @scd30_attr_group, !57, !"scd30_attr_group", i1 false, i1 false}
!57 = !{!"../drivers/iio/chemical/scd30_core.c", i32 453, i32 37}
!58 = !{ptr @scd30_attrs, !59, !"scd30_attrs", i1 false, i1 false}
!59 = !{!"../drivers/iio/chemical/scd30_core.c", i32 446, i32 26}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/chemical/scd30_core.c", i32 442, i32 8}
!62 = !{ptr @iio_dev_attr_sampling_frequency_available, !61, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/chemical/scd30_core.c", i32 357, i32 48}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/chemical/scd30_core.c", i32 443, i32 8}
!67 = !{ptr @iio_dev_attr_calibration_auto_enable, !66, !"iio_dev_attr_calibration_auto_enable", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/chemical/scd30_core.c", i32 383, i32 29}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/chemical/scd30_core.c", i32 444, i32 8}
!72 = !{ptr @iio_dev_attr_calibration_forced_value, !71, !"iio_dev_attr_calibration_forced_value", i1 false, i1 false}
!73 = !{ptr @scd30_pressure_raw_available, !74, !"scd30_pressure_raw_available", i1 false, i1 false}
!74 = !{!"../drivers/iio/chemical/scd30_core.c", i32 323, i32 18}
!75 = !{ptr @scd30_temp_calibbias_available, !76, !"scd30_temp_calibbias_available", i1 false, i1 false}
!76 = !{!"../drivers/iio/chemical/scd30_core.c", i32 327, i32 18}
!77 = !{ptr @scd30_channels, !78, !"scd30_channels", i1 false, i1 false}
!78 = !{!"../drivers/iio/chemical/scd30_core.c", i32 472, i32 35}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/chemical/scd30_core.c", i32 643, i32 37}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/chemical/scd30_core.c", i32 646, i32 3}
!83 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @scd30_setup_trigger._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @scd30_setup_trigger._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/chemical/scd30_core.c", i32 670, i32 3}
!88 = !{ptr @scd30_setup_trigger._entry.33, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @scd30_setup_trigger._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @scd30_trigger_ops, !91, !"scd30_trigger_ops", i1 false, i1 false}
!91 = !{!"../drivers/iio/chemical/scd30_core.c", i32 631, i32 37}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i8 0, i8 2}
