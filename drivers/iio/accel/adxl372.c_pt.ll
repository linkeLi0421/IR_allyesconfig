; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/adxl372.c_pt.bc'
source_filename = "../drivers/iio/accel/adxl372.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adxl372_readable_noinc_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl372_readable_noinc_reg\09\09\09\09"
module asm "\09.long\09__crc_adxl372_readable_noinc_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl372_readable_noinc_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl372_readable_noinc_reg\22\09\09\09\09\09"
module asm "__kstrtabns_adxl372_readable_noinc_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl372_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl372_probe\09\09\09\09"
module asm "\09.long\09__crc_adxl372_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl372_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl372_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adxl372_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.adxl372_axis_lookup = type { i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adxl372_state = type { i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i16, [512 x i16], i8, %struct.mutex }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__kstrtab_adxl372_readable_noinc_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl372_readable_noinc_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl372_readable_noinc_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl372_readable_noinc_reg to i32), ptr @__kstrtab_adxl372_readable_noinc_reg, ptr @__kstrtabns_adxl372_readable_noinc_reg }, section "___ksymtab_gpl+adxl372_readable_noinc_reg", align 4
@adxl372_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&st->threshold_m\00", [47 x i8] zeroinitializer }, align 32
@adxl372_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 8, i32 0, %struct.anon.71 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 5124, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @adxl372_events, i32 2, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 10, i32 1, %struct.anon.71 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 5124, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @adxl372_events, i32 2, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 12, i32 2, %struct.anon.71 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 5124, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @adxl372_events, i32 2, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@adxl372_channel_masks = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 4, i32 3, i32 5, i32 6, i32 7, i32 0], [32 x i8] zeroinitializer }, align 32
@adxl372_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @adxl372_attrs_group, ptr @adxl372_read_raw, ptr null, ptr null, ptr @adxl372_write_raw, ptr null, ptr null, ptr @adxl372_read_event_config, ptr @adxl372_write_event_config, ptr @adxl372_read_event_value, ptr @adxl372_write_event_value, ptr @adxl372_validate_trigger, ptr null, ptr @adxl372_reg_access, ptr null, ptr @adxl372_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@adxl372_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADXL372 setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adxl372_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/adxl372.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adxl372_probe._entry_ptr = internal global ptr @adxl372_probe._entry, section ".printk_index", align 4
@adxl372_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @adxl372_buffer_postenable, ptr @adxl372_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@adxl372_fifo_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_min, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_max, i64 4), ptr @iio_dev_attr_hwfifo_watermark, ptr @iio_dev_attr_hwfifo_enabled, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s-dev%d-peak\00", [18 x i8] zeroinitializer }, align 32
@adxl372_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @adxl372_dready_trig_set_state, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@adxl372_peak_data_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @adxl372_peak_dready_trig_set_state, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_adxl372_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl372_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl372_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl372_probe to i32), ptr @__kstrtab_adxl372_probe, ptr @__kstrtabns_adxl372_probe }, section "___ksymtab_gpl+adxl372_probe", align 4
@__UNIQUE_ID_author256 = internal constant [52 x i8] c"adxl372.author=Stefan Popa <stefan.popa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [71 x i8] c"adxl372.description=Analog Devices ADXL372 3-axis accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [39 x i8] c"adxl372.file=drivers/iio/accel/adxl372\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [20 x i8] c"adxl372.license=GPL\00", section ".modinfo", align 1
@adxl372_events = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 9 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 9 }], [48 x i8] zeroinitializer }, align 32
@adxl372_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adxl372_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adxl372_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.8, %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl372_show_filter_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"400 800 1600 3200 6400\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"in_accel_filter_low_pass_3db_frequency_available\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@adxl372_bw_freq_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 200, i32 400, i32 800, i32 1600, i32 3200], [44 x i8] zeroinitializer }, align 32
@adxl372_samp_freq_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 400, i32 800, i32 1600, i32 3200, i32 6400], [44 x i8] zeroinitializer }, align 32
@adxl372_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid chip id %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adxl372_setup\00", [18 x i8] zeroinitializer }, align 32
@adxl372_setup._entry_ptr = internal global ptr @adxl372_setup._entry, section ".printk_index", align 4
@adxl372_axis_lookup_table = internal constant { [7 x %struct.adxl372_axis_lookup], [40 x i8] } { [7 x %struct.adxl372_axis_lookup] [%struct.adxl372_axis_lookup { i32 1, i32 1 }, %struct.adxl372_axis_lookup { i32 2, i32 2 }, %struct.adxl372_axis_lookup { i32 4, i32 4 }, %struct.adxl372_axis_lookup { i32 3, i32 3 }, %struct.adxl372_axis_lookup { i32 5, i32 5 }, %struct.adxl372_axis_lookup { i32 6, i32 6 }, %struct.adxl372_axis_lookup { i32 7, i32 0 }], [40 x i8] zeroinitializer }, align 32
@iio_const_attr_hwfifo_watermark_min = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.14, %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_hwfifo_watermark_max = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.16, %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_hwfifo_watermark = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl372_get_fifo_watermark, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_hwfifo_enabled = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl372_get_fifo_enabled, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwfifo_watermark_min\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"512\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwfifo_watermark_max\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hwfifo_watermark\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwfifo_enabled\00", [17 x i8] zeroinitializer }, align 32
@switch.table.adxl372_buffer_postenable = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 3, i32 2, i32 4, i32 5, i32 6], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1199, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"adxl372_channels\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 275, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"adxl372_channel_masks\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 305, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"adxl372_info\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1162, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1210, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"adxl372_buffer_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1096, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant [24 x i8] c"adxl372_fifo_attributes\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1009, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1225, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1232, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"adxl372_trigger_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1124, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"adxl372_peak_data_trigger_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1143, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"adxl372_events\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 240, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"adxl372_attrs_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1158, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"adxl372_attributes\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1152, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [62 x i8] c"iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1148, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1149, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 974, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"adxl372_bw_freq_tbl\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 221, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"adxl372_samp_freq_tbl\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 217, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 689, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"adxl372_axis_lookup_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 230, i32 41 }
@___asan_gen_.126 = private unnamed_addr constant [36 x i8] c"iio_const_attr_hwfifo_watermark_min\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [36 x i8] c"iio_const_attr_hwfifo_watermark_max\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_hwfifo_watermark\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_hwfifo_enabled\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1001, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1002, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1004, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 998, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [31 x i8] c"../drivers/iio/accel/adxl372.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1006, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant [39 x i8] c"switch.table.adxl372_buffer_postenable\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__ksymtab_adxl372_probe, ptr @__ksymtab_adxl372_readable_noinc_reg, ptr @adxl372_probe._entry, ptr @adxl372_probe._entry_ptr, ptr @adxl372_setup._entry, ptr @adxl372_setup._entry_ptr, ptr @adxl372_probe.__key, ptr @.str, ptr @adxl372_channels, ptr @adxl372_channel_masks, ptr @adxl372_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adxl372_buffer_ops, ptr @adxl372_fifo_attributes, ptr @.str.6, ptr @.str.7, ptr @adxl372_trigger_ops, ptr @adxl372_peak_data_trigger_ops, ptr @adxl372_events, ptr @adxl372_attrs_group, ptr @adxl372_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @adxl372_bw_freq_tbl, ptr @adxl372_samp_freq_tbl, ptr @.str.12, ptr @.str.13, ptr @adxl372_axis_lookup_table, ptr @iio_const_attr_hwfifo_watermark_min, ptr @iio_const_attr_hwfifo_watermark_max, ptr @iio_dev_attr_hwfifo_watermark, ptr @iio_dev_attr_hwfifo_enabled, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.adxl372_buffer_postenable], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_channel_masks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_fifo_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_peak_data_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_bw_freq_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_samp_freq_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl372_axis_lookup_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_hwfifo_watermark_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_hwfifo_watermark_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_watermark to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_enabled to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adxl372_buffer_postenable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @adxl372_readable_noinc_reg(ptr nocapture readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %reg)
  %cmp = icmp eq i32 %reg, 66
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adxl372_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, ptr noundef %name) #1 align 64 {
entry:
  %buf.i74.i = alloca [6 x i8], align 1
  %buf.i.i = alloca [6 x i8], align 1
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 1188) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %dev2 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 4
  %regmap3 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %regmap3, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %irq, ptr %1, align 4
  %threshold_m = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %threshold_m, ptr noundef nonnull @.str, ptr noundef nonnull @adxl372_probe.__key) #11
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @adxl372_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adxl372_channel_masks, ptr %available_scan_masks, align 4
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %name5, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adxl372_info, ptr %info, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #11
  %12 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %regval.i, align 4, !annotation !93
  %13 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap3, align 4
  %call.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %regval.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.adxl372_setup.exit.thread_crit_edge, label %if.end.i

if.end.adxl372_setup.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end.i:                                         ; preds = %if.end
  %15 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %16)
  %cmp1.not.i = icmp eq i32 %16, 173
  br i1 %cmp1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef %16) #14
  br label %adxl372_setup.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap3, align 4
  %call5.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 65, i32 noundef 82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end3.i.adxl372_setup.exit.thread_crit_edge, label %if.end8.i

if.end3.i.adxl372_setup.exit.thread_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end8.i:                                        ; preds = %if.end3.i
  %21 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap3, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 63, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end8.i.adxl372_setup.exit.thread_crit_edge, label %if.end12.i

if.end8.i.adxl372_setup.exit.thread_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  %op_mode1.i.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %op_mode1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %op_mode1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #11
  %24 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %25 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 3
  %27 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 4
  %28 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %buf.i.i, align 1
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 67, ptr %24, align 1
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %25, align 1
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 67, ptr %26, align 1
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %27, align 1
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 67, ptr %28, align 1
  %35 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap3, align 4
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %36, i32 noundef 35, ptr noundef nonnull %buf.i.i, i32 noundef 6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp14.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp14.i, label %if.end12.i.adxl372_setup.exit.thread_crit_edge, label %if.end16.i

if.end12.i.adxl372_setup.exit.thread_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end16.i:                                       ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i74.i) #11
  %37 = getelementptr inbounds [6 x i8], ptr %buf.i74.i, i32 0, i32 1
  %38 = getelementptr inbounds [6 x i8], ptr %buf.i74.i, i32 0, i32 2
  %39 = getelementptr inbounds [6 x i8], ptr %buf.i74.i, i32 0, i32 3
  %40 = getelementptr inbounds [6 x i8], ptr %buf.i74.i, i32 0, i32 4
  %41 = getelementptr inbounds [6 x i8], ptr %buf.i74.i, i32 0, i32 5
  %42 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %buf.i74.i, align 1
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 35, ptr %37, align 1
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %38, align 1
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 35, ptr %39, align 1
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %40, align 1
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 35, ptr %41, align 1
  %48 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap3, align 4
  %call.i76.i = call i32 @regmap_bulk_write(ptr noundef %49, i32 noundef 42, ptr noundef nonnull %buf.i74.i, i32 noundef 6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i74.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %cmp18.i = icmp slt i32 %call.i76.i, 0
  br i1 %cmp18.i, label %if.end16.i.adxl372_setup.exit.thread_crit_edge, label %if.end20.i

if.end16.i.adxl372_setup.exit.thread_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end20.i:                                       ; preds = %if.end16.i
  %50 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap3, align 4
  %call.i.i78.i = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 62, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78.i)
  %cmp.i79.i = icmp slt i32 %call.i.i78.i, 0
  br i1 %cmp.i79.i, label %if.end20.i.adxl372_setup.exit.thread_crit_edge, label %if.end24.i

if.end20.i.adxl372_setup.exit.thread_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end24.i:                                       ; preds = %if.end20.i
  %act_proc_mode.i.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %act_proc_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %act_proc_mode.i.i, align 4
  %53 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap3, align 4
  %call.i.i82.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 61, i32 noundef 224, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i)
  %cmp.i83.i = icmp slt i32 %call.i.i82.i, 0
  br i1 %cmp.i83.i, label %if.end24.i.adxl372_setup.exit.thread_crit_edge, label %if.end28.i

if.end24.i.adxl372_setup.exit.thread_crit_edge:   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end28.i:                                       ; preds = %if.end24.i
  %odr1.i.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 10
  %55 = ptrtoint ptr %odr1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %odr1.i.i, align 4
  %56 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap3, align 4
  %call.i.i86.i = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 62, i32 noundef 7, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86.i)
  %cmp.i87.i = icmp slt i32 %call.i.i86.i, 0
  br i1 %cmp.i87.i, label %if.end28.i.adxl372_setup.exit.thread_crit_edge, label %if.end32.i

if.end28.i.adxl372_setup.exit.thread_crit_edge:   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end32.i:                                       ; preds = %if.end28.i
  %bw1.i.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 11
  %58 = ptrtoint ptr %bw1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %bw1.i.i, align 4
  %59 = ptrtoint ptr %odr1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %odr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp.i89.i = icmp eq i32 %60, 4
  %..i.i = select i1 %cmp.i89.i, i32 3300, i32 6600
  %div18.i.i = lshr exact i32 %..i.i, 1
  %61 = trunc i32 %div18.i.i to i16
  %div1.i.lhs.trunc.i = add nuw nsw i16 %61, 1000
  %div1.i.rhs.trunc.i = trunc i32 %..i.i to i16
  %div1.i92.i = udiv i16 %div1.i.lhs.trunc.i, %div1.i.rhs.trunc.i
  %div1.i.zext.i = zext i16 %div1.i92.i to i32
  %62 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap3, align 4
  %call.i91.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 41, i32 noundef %div1.i.zext.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %cmp5.i.i = icmp slt i32 %call.i91.i, 0
  br i1 %cmp5.i.i, label %if.end32.i.adxl372_setup.exit.thread_crit_edge, label %if.end36.i

if.end32.i.adxl372_setup.exit.thread_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

if.end36.i:                                       ; preds = %if.end32.i
  %act_time_ms8.i.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 12
  %64 = ptrtoint ptr %act_time_ms8.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %act_time_ms8.i.i, align 4
  %call37.i = call fastcc i32 @adxl372_set_inactivity_time_ms(ptr noundef %1, i32 noundef 10000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end36.i.adxl372_setup.exit.thread_crit_edge, label %adxl372_setup.exit

if.end36.i.adxl372_setup.exit.thread_crit_edge:   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_setup.exit.thread

adxl372_setup.exit.thread:                        ; preds = %if.end36.i.adxl372_setup.exit.thread_crit_edge, %if.end32.i.adxl372_setup.exit.thread_crit_edge, %if.end28.i.adxl372_setup.exit.thread_crit_edge, %if.end24.i.adxl372_setup.exit.thread_crit_edge, %if.end20.i.adxl372_setup.exit.thread_crit_edge, %if.end16.i.adxl372_setup.exit.thread_crit_edge, %if.end12.i.adxl372_setup.exit.thread_crit_edge, %if.end8.i.adxl372_setup.exit.thread_crit_edge, %if.end3.i.adxl372_setup.exit.thread_crit_edge, %do.end.i, %if.end.adxl372_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i91.i, %if.end32.i.adxl372_setup.exit.thread_crit_edge ], [ %call.i.i86.i, %if.end28.i.adxl372_setup.exit.thread_crit_edge ], [ %call.i.i82.i, %if.end24.i.adxl372_setup.exit.thread_crit_edge ], [ %call.i.i78.i, %if.end20.i.adxl372_setup.exit.thread_crit_edge ], [ %call.i.i.i, %if.end8.i.adxl372_setup.exit.thread_crit_edge ], [ %call37.i, %if.end36.i.adxl372_setup.exit.thread_crit_edge ], [ %call.i76.i, %if.end16.i.adxl372_setup.exit.thread_crit_edge ], [ %call.i.i, %if.end12.i.adxl372_setup.exit.thread_crit_edge ], [ %call5.i, %if.end3.i.adxl372_setup.exit.thread_crit_edge ], [ %call.i, %if.end.adxl372_setup.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #11
  br label %do.end10

adxl372_setup.exit:                               ; preds = %if.end36.i
  %call41.i = call fastcc i32 @adxl372_set_op_mode(ptr noundef %1, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp = icmp slt i32 %call41.i, 0
  br i1 %cmp, label %adxl372_setup.exit.do.end10_crit_edge, label %if.end11

adxl372_setup.exit.do.end10_crit_edge:            ; preds = %adxl372_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end10:                                         ; preds = %adxl372_setup.exit.do.end10_crit_edge, %adxl372_setup.exit.thread
  %retval.0.i121 = phi i32 [ %retval.0.i.ph, %adxl372_setup.exit.thread ], [ %call41.i, %adxl372_setup.exit.do.end10_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end11:                                         ; preds = %adxl372_setup.exit
  %call12 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @adxl372_trigger_handler, i32 noundef 0, ptr noundef nonnull @adxl372_buffer_ops, ptr noundef nonnull @adxl372_fifo_attributes) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool17.not = icmp eq i32 %66, 0
  br i1 %tobool17.not, label %if.end15.if.end57_crit_edge, label %if.then18

if.end15.if.end57_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then18:                                        ; preds = %if.end15
  %67 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name5, align 8
  %call20 = call i32 @iio_device_id(ptr noundef nonnull %call) #11
  %call21 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %68, i32 noundef %call20) #11
  %dready_trig = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %dready_trig to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call21, ptr %dready_trig, align 4
  %cmp23 = icmp eq ptr %call21, null
  br i1 %cmp23, label %if.then18.cleanup_crit_edge, label %if.end25

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.then18
  %70 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name5, align 8
  %call27 = call i32 @iio_device_id(ptr noundef nonnull %call) #11
  %call28 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %71, i32 noundef %call27) #11
  %peak_datardy_trig = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %peak_datardy_trig to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call28, ptr %peak_datardy_trig, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end25.cleanup_crit_edge, label %if.end32

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %73 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dready_trig, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @adxl372_trigger_ops, ptr %74, align 8
  %76 = ptrtoint ptr %peak_datardy_trig to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %peak_datardy_trig, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @adxl372_peak_data_trigger_ops, ptr %77, align 8
  %79 = load ptr, ptr %dready_trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %79, i32 0, i32 4, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call, ptr %driver_data.i.i, align 4
  %81 = load ptr, ptr %peak_datardy_trig, align 4
  %driver_data.i.i116 = getelementptr inbounds %struct.iio_trigger, ptr %81, i32 0, i32 4, i32 8
  %82 = ptrtoint ptr %driver_data.i.i116 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call, ptr %driver_data.i.i116, align 4
  %83 = load ptr, ptr %dready_trig, align 4
  %call39 = call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef %83, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end32.cleanup_crit_edge, label %if.end42

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %84 = ptrtoint ptr %peak_datardy_trig to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %peak_datardy_trig, align 4
  %call44 = call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef %85, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end42.cleanup_crit_edge, label %if.end47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %86 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dready_trig, align 4
  %dev.i117 = getelementptr inbounds %struct.iio_trigger, ptr %87, i32 0, i32 4
  %call.i118 = call ptr @get_device(ptr noundef %dev.i117) #11
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %owner.i, align 4
  call void @__module_get(ptr noundef %89) #11
  %trig = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %90 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %trig, align 4
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %1, align 4
  %93 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name5, align 8
  %95 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dready_trig, align 4
  %call53 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %92, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 8193, ptr noundef %94, ptr noundef %96) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end47.cleanup_crit_edge, label %if.end47.if.end57_crit_edge

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end57:                                         ; preds = %if.end47.if.end57_crit_edge, %if.end15.if.end57_crit_edge
  %call58 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end47.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i121, %do.end10 ], [ %call58, %if.end57 ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -12, %if.then18.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ %call39, %if.end32.cleanup_crit_edge ], [ %call44, %if.end42.cleanup_crit_edge ], [ %call53, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #1 align 64 {
entry:
  %axis_sample.i = alloca [3 x i16], align 2
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.i, align 4, !annotation !93
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 4, ptr noundef nonnull %buf.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adxl372_get_status.exit.thread, label %if.end

adxl372_get_status.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  br label %err

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  %call3 = call i64 @iio_get_time_ns(ptr noundef %1) #11
  %fifo_mode = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not = icmp eq i32 %10, 0
  %11 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %or.cond = select i1 %cmp4.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end.err_crit_edge, label %if.then5

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then5:                                         ; preds = %if.end
  %conv5.i = and i32 %8, 1023
  %fifo_set_size = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %fifo_set_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fifo_set_size, align 4
  %conv6 = zext i8 %13 to i32
  %sub = sub nsw i32 %conv5.i, %conv6
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %fifo_buf = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 18
  %conv9 = and i32 %sub, 65535
  %mul = shl nuw nsw i32 %conv9, 1
  %call10 = call i32 @regmap_noinc_read(ptr noundef %15, i32 noundef 66, ptr noundef %fifo_buf, i32 noundef %mul) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp1654 = icmp ne i32 %conv9, 0
  %or.cond57 = select i1 %cmp11, i1 %cmp1654, i1 false
  br i1 %or.cond57, label %for.body.lr.ph, label %if.then5.err_crit_edge

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.body.lr.ph:                                   ; preds = %if.then5
  %peak_fifo_mode_en = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 19
  %fifo_axis_mask.i = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end21.for.body_crit_edge ]
  %16 = ptrtoint ptr %peak_fifo_mode_en to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %peak_fifo_mode_en, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %for.body.if.end21_crit_edge, label %if.then19

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.adxl372_state, ptr %3, i32 0, i32 18, i32 %i.055
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %axis_sample.i) #11
  %18 = call ptr @memset(ptr %axis_sample.i, i32 0, i32 6)
  %19 = ptrtoint ptr %fifo_axis_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_axis_mask.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i47 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i47, label %if.then19.if.end.i49_crit_edge, label %if.then.i

if.then19.if.end.i49_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i49

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %23 = ptrtoint ptr %axis_sample.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %axis_sample.i, align 2
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.then.i, %if.then19.if.end.i49_crit_edge
  %i.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.then19.if.end.i49_crit_edge ]
  %and3.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i48 = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i48, label %if.end.i49.if.end9.i_crit_edge, label %if.then5.i

if.end.i49.if.end9.i_crit_edge:                   ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6.i = getelementptr i16, ptr %arrayidx, i32 1
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx6.i, align 2
  %inc7.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx8.i = getelementptr [3 x i16], ptr %axis_sample.i, i32 0, i32 %i.0.i
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx8.i, align 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i49.if.end9.i_crit_edge
  %i.1.i = phi i32 [ %inc7.i, %if.then5.i ], [ %i.0.i, %if.end.i49.if.end9.i_crit_edge ]
  %and11.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.adxl372_arrange_axis_data.exit_crit_edge, label %if.then13.i

if.end9.i.adxl372_arrange_axis_data.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_arrange_axis_data.exit

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14.i = getelementptr i16, ptr %arrayidx, i32 2
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx14.i, align 2
  %arrayidx16.i = getelementptr [3 x i16], ptr %axis_sample.i, i32 0, i32 %i.1.i
  %29 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx16.i, align 2
  br label %adxl372_arrange_axis_data.exit

adxl372_arrange_axis_data.exit:                   ; preds = %if.then13.i, %if.end9.i.adxl372_arrange_axis_data.exit_crit_edge
  %30 = call ptr @memcpy(ptr %arrayidx, ptr %axis_sample.i, i32 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %axis_sample.i) #11
  br label %if.end21

if.end21:                                         ; preds = %adxl372_arrange_axis_data.exit, %for.body.if.end21_crit_edge
  %arrayidx23 = getelementptr %struct.adxl372_state, ptr %3, i32 0, i32 18, i32 %i.055
  %call24 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %arrayidx23) #11
  %31 = ptrtoint ptr %fifo_set_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fifo_set_size, align 4
  %conv26 = zext i8 %32 to i32
  %add = add i32 %i.055, %conv26
  %cmp16 = icmp slt i32 %add, %conv9
  br i1 %cmp16, label %if.end21.for.body_crit_edge, label %if.end21.err_crit_edge

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

err:                                              ; preds = %if.end21.err_crit_edge, %if.then5.err_crit_edge, %if.end.err_crit_edge, %adxl372_get_status.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %34) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #1 align 64 {
entry:
  %regval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = tail call i32 @llvm.fshl.i32(i32 %info, i32 %info, i32 31)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 6, label %sw.bb11
    i32 5, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i) #11
  %6 = ptrtoint ptr %regval.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %regval.i, align 2, !annotation !93
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv.i28 = and i32 %5, 255
  %call.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %conv.i28, ptr noundef nonnull %regval.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adxl372_read_axis.exit.thread, label %adxl372_read_axis.exit

adxl372_read_axis.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i) #11
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #11
  br label %cleanup

adxl372_read_axis.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %regval.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %regval.i, align 2
  %conv2.i = zext i16 %10 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i) #11
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #11
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %12 to i32
  %shr31 = lshr i32 %conv2.i, %conv6
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %realbits, align 1
  %15 = sub i8 32, %14
  %conv1.i = zext i8 %15 to i32
  %shl.i = shl i32 %shr31, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val, align 4
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 958241, ptr %val2, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %odr = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %odr, align 4
  %arrayidx = getelementptr [5 x i32], ptr @adxl372_samp_freq_tbl, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bw = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bw, align 4
  %arrayidx13 = getelementptr [5 x i32], ptr @adxl372_bw_freq_tbl, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %adxl372_read_axis.exit, %adxl372_read_axis.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb12 ], [ 1, %sw.bb11 ], [ 2, %sw.bb10 ], [ 1, %adxl372_read_axis.exit ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %adxl372_read_axis.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 10, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %val)
  %cmp1.not.i = icmp sgt i32 %val, 400
  br i1 %cmp1.not.i, label %for.inc.i, label %sw.bb.adxl372_find_closest_match.exit_crit_edge

sw.bb.adxl372_find_closest_match.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_find_closest_match.exit

for.inc.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %val)
  %cmp1.not.1.i = icmp ugt i32 %val, 800
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.adxl372_find_closest_match.exit_crit_edge

for.inc.i.adxl372_find_closest_match.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_find_closest_match.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %val)
  %cmp1.not.2.i = icmp ugt i32 %val, 1600
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.adxl372_find_closest_match.exit_crit_edge

for.inc.1.i.adxl372_find_closest_match.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_find_closest_match.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3200, i32 %val)
  %cmp1.not.3.i = icmp ugt i32 %val, 3200
  %spec.select.i = select i1 %cmp1.not.3.i, i32 4, i32 3
  br label %adxl372_find_closest_match.exit

adxl372_find_closest_match.exit:                  ; preds = %for.inc.2.i, %for.inc.1.i.adxl372_find_closest_match.exit_crit_edge, %for.inc.i.adxl372_find_closest_match.exit_crit_edge, %sw.bb.adxl372_find_closest_match.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb.adxl372_find_closest_match.exit_crit_edge ], [ 1, %for.inc.i.adxl372_find_closest_match.exit_crit_edge ], [ 2, %for.inc.1.i.adxl372_find_closest_match.exit_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %and.i = shl nuw nsw i32 %retval.0.i, 5
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 61, i32 noundef 224, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %adxl372_find_closest_match.exit.cleanup_crit_edge, label %if.end

adxl372_find_closest_match.exit.cleanup_crit_edge: ; preds = %adxl372_find_closest_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %adxl372_find_closest_match.exit
  %odr1.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %odr1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %odr1.i, align 4
  %act_time_ms = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %act_time_ms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %act_time_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp.i37 = icmp eq i32 %retval.0.i, 4
  %..i = select i1 %cmp.i37, i32 3300, i32 6600
  %mul.i = mul i32 %7, 1000
  %div18.i = lshr exact i32 %..i, 1
  %add.i = add i32 %mul.i, %div18.i
  %div1.i = udiv i32 %add.i, %..i
  %8 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 255) #11
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 41, i32 noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %act_time_ms to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %act_time_ms, align 4
  %inact_time_ms = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %inact_time_ms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inact_time_ms, align 4
  %14 = ptrtoint ptr %odr1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %odr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i40 = icmp eq i32 %15, 4
  %..i41 = select i1 %cmp.i40, i32 13, i32 26
  %div26.i = lshr i32 %..i41, 1
  %add.i42 = add i32 %div26.i, %13
  %div1.i43 = udiv i32 %add.i42, %..i41
  %shr.i = lshr i32 %div1.i43, 8
  %and.i44 = and i32 %shr.i, 255
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i46 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 48, i32 noundef %and.i44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp3.i = icmp slt i32 %call.i46, 0
  br i1 %cmp3.i, label %if.end6.cleanup_crit_edge, label %if.end5.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.i:                                        ; preds = %if.end6
  %and2.i = and i32 %div1.i43, 255
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 49, i32 noundef %and2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.cleanup_crit_edge, label %if.end10

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5.i
  %20 = ptrtoint ptr %inact_time_ms to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %inact_time_ms, align 4
  %bw = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %retval.0.i)
  %cmp11 = icmp ugt i32 %22, %retval.0.i
  br i1 %cmp11, label %if.then12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 62, i32 noundef 7, i32 noundef %retval.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i51 = icmp slt i32 %call.i.i50, 0
  br i1 %cmp.i51, label %if.then12.cleanup_crit_edge, label %if.end.i52

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i52:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %bw, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %val)
  %cmp1.not.i53 = icmp sgt i32 %val, 200
  br i1 %cmp1.not.i53, label %for.inc.i55, label %sw.bb15.adxl372_find_closest_match.exit62_crit_edge

sw.bb15.adxl372_find_closest_match.exit62_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_find_closest_match.exit62

for.inc.i55:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %val)
  %cmp1.not.1.i54 = icmp ugt i32 %val, 400
  br i1 %cmp1.not.1.i54, label %for.inc.1.i57, label %for.inc.i55.adxl372_find_closest_match.exit62_crit_edge

for.inc.i55.adxl372_find_closest_match.exit62_crit_edge: ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_find_closest_match.exit62

for.inc.1.i57:                                    ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %val)
  %cmp1.not.2.i56 = icmp ugt i32 %val, 800
  br i1 %cmp1.not.2.i56, label %for.inc.2.i60, label %for.inc.1.i57.adxl372_find_closest_match.exit62_crit_edge

for.inc.1.i57.adxl372_find_closest_match.exit62_crit_edge: ; preds = %for.inc.1.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_find_closest_match.exit62

for.inc.2.i60:                                    ; preds = %for.inc.1.i57
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %val)
  %cmp1.not.3.i58 = icmp ugt i32 %val, 1600
  %spec.select.i59 = select i1 %cmp1.not.3.i58, i32 4, i32 3
  br label %adxl372_find_closest_match.exit62

adxl372_find_closest_match.exit62:                ; preds = %for.inc.2.i60, %for.inc.1.i57.adxl372_find_closest_match.exit62_crit_edge, %for.inc.i55.adxl372_find_closest_match.exit62_crit_edge, %sw.bb15.adxl372_find_closest_match.exit62_crit_edge
  %retval.0.i61 = phi i32 [ 0, %sw.bb15.adxl372_find_closest_match.exit62_crit_edge ], [ 1, %for.inc.i55.adxl372_find_closest_match.exit62_crit_edge ], [ 2, %for.inc.1.i57.adxl372_find_closest_match.exit62_crit_edge ], [ %spec.select.i59, %for.inc.2.i60 ]
  %regmap.i63 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %regmap.i63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i63, align 4
  %call.i.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 62, i32 noundef 7, i32 noundef %retval.0.i61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp.i66 = icmp slt i32 %call.i.i65, 0
  br i1 %cmp.i66, label %adxl372_find_closest_match.exit62.cleanup_crit_edge, label %if.end.i68

adxl372_find_closest_match.exit62.cleanup_crit_edge: ; preds = %adxl372_find_closest_match.exit62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i68:                                       ; preds = %adxl372_find_closest_match.exit62
  call void @__sanitizer_cov_trace_pc() #13
  %bw1.i67 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %bw1.i67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i61, ptr %bw1.i67, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i68, %adxl372_find_closest_match.exit62.cleanup_crit_edge, %if.end.i52, %if.then12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %adxl372_find_closest_match.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %if.end10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i50, %if.then12.cleanup_crit_edge ], [ %call.i.i50, %if.end.i52 ], [ %call.i.i65, %adxl372_find_closest_match.exit62.cleanup_crit_edge ], [ %call.i.i65, %if.end.i68 ], [ %call.i.i, %adxl372_find_closest_match.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call7.i, %if.end5.i.cleanup_crit_edge ], [ %call.i46, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adxl372_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %dir, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 2, label %do.end28
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end28, %entry.cleanup.sink.split_crit_edge
  %.sink34 = phi i32 [ 4, %do.end28 ], [ 5, %entry.cleanup.sink.split_crit_edge ]
  %int1_bitmask30 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %int1_bitmask30 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %int1_bitmask30, align 4
  %and31 = lshr i32 %4, %.sink34
  %shr32 = and i32 %and31, 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %shr32, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %dir, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and = shl i32 %state, 5
  %shl = and i32 %and, 32
  %int1_bitmask = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 15
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %sw.bb
  %3 = ptrtoint ptr %int1_bitmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %int1_bitmask, align 4
  %and2 = and i32 %4, -33
  %or = or i32 %and2, %shl
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %int1_bitmask, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %int1_bitmask, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %int1_bitmask, i32 %4, i32 %or) #11, !srcloc !96
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %cmp.not = icmp eq i32 %asmresult1.i, %4
  br i1 %cmp.not, label %__cmpxchg.exit.sw.epilog_crit_edge, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

__cmpxchg.exit.sw.epilog_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %and29 = shl i32 %state, 4
  %shl30 = and i32 %and29, 16
  %int1_bitmask38 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 15
  br label %do.body33

do.body33:                                        ; preds = %__cmpxchg.exit88.do.body33_crit_edge, %sw.bb26
  %6 = ptrtoint ptr %int1_bitmask38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %int1_bitmask38, align 4
  %and39 = and i32 %7, -17
  %or40 = or i32 %and39, %shl30
  %call.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %int1_bitmask38, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %int1_bitmask38, i32 1, i32 3, i32 1) #11
  br label %do.body.i86

do.body.i86:                                      ; preds = %do.body.i86.do.body.i86_crit_edge, %do.body33
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %int1_bitmask38, i32 %7, i32 %or40) #11, !srcloc !96
  %asmresult.i84 = extractvalue { i32, i32 } %8, 0
  %tobool.not.i85 = icmp eq i32 %asmresult.i84, 0
  br i1 %tobool.not.i85, label %__cmpxchg.exit88, label %do.body.i86.do.body.i86_crit_edge

do.body.i86.do.body.i86_crit_edge:                ; preds = %do.body.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i86

__cmpxchg.exit88:                                 ; preds = %do.body.i86
  %asmresult1.i87 = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  %cmp64.not = icmp eq i32 %asmresult1.i87, %7
  br i1 %cmp64.not, label %__cmpxchg.exit88.sw.epilog_crit_edge, label %__cmpxchg.exit88.do.body33_crit_edge

__cmpxchg.exit88.do.body33_crit_edge:             ; preds = %__cmpxchg.exit88
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

__cmpxchg.exit88.sw.epilog_crit_edge:             ; preds = %__cmpxchg.exit88
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %__cmpxchg.exit88.sw.epilog_crit_edge, %__cmpxchg.exit.sw.epilog_crit_edge
  %int1_bitmask67 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %int1_bitmask67 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %int1_bitmask67, align 4
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i89 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 59, i32 noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i = icmp slt i32 %call.i89, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 60, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.i ], [ %call.i89, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #1 align 64 {
entry:
  %raw_regval.i38 = alloca i16, align 2
  %raw_regval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %dir, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_index, align 4
  %mul = shl i32 %5, 1
  %add = add i32 %mul, 35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_regval.i) #11
  %6 = ptrtoint ptr %raw_regval.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %raw_regval.i, align 2, !annotation !93
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %raw_regval.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %adxl372_read_threshold_value.exit.thread, label %if.end

adxl372_read_threshold_value.exit.thread:         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_regval.i) #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %raw_regval.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %raw_regval.i, align 2
  %11 = lshr i16 %10, 5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_regval.i) #11
  %conv = zext i16 %11 to i32
  %mul3 = mul nuw nsw i32 %conv, 958241
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul3, ptr %val, align 4
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1000000, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  %scan_index5 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %14 = ptrtoint ptr %scan_index5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_index5, align 4
  %mul6 = shl i32 %15, 1
  %add7 = add i32 %mul6, 42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_regval.i38) #11
  %16 = ptrtoint ptr %raw_regval.i38 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %raw_regval.i38, align 2, !annotation !93
  %regmap.i40 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %regmap.i40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i40, align 4
  %call1.i41 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef %add7, ptr noundef nonnull %raw_regval.i38, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %cmp.i42 = icmp slt i32 %call1.i41, 0
  br i1 %cmp.i42, label %adxl372_read_threshold_value.exit45.thread, label %if.end12

adxl372_read_threshold_value.exit45.thread:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_regval.i38) #11
  br label %cleanup

if.end12:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %raw_regval.i38 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %raw_regval.i38, align 2
  %21 = lshr i16 %20, 5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_regval.i38) #11
  %conv13 = zext i16 %21 to i32
  %mul14 = mul nuw nsw i32 %conv13, 958241
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul14, ptr %val, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1000000, ptr %val2, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %24 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %dir, label %sw.bb15.cleanup_crit_edge [
    i32 1, label %sw.bb16
    i32 2, label %sw.bb17
  ]

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %act_time_ms = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %act_time_ms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %act_time_ms, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %inact_time_ms = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %inact_time_ms to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inact_time_ms, align 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb17, %sw.bb16, %sw.bb15.cleanup_crit_edge, %if.end12, %adxl372_read_threshold_value.exit45.thread, %if.end, %adxl372_read_threshold_value.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %sw.bb17 ], [ 10, %sw.bb16 ], [ 10, %if.end12 ], [ 10, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call1.i, %adxl372_read_threshold_value.exit.thread ], [ %call1.i41, %adxl372_read_threshold_value.exit45.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mul = mul i32 %val, 1000000
  %sub = add i32 %mul, 958240
  %div = sdiv i32 %sub, 958241
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %dir, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_index, align 4
  %mul2 = shl i32 %5, 1
  %add3 = add i32 %mul2, 35
  %threshold_m.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %threshold_m.i, i32 noundef 0) #11
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %and.i = lshr i32 %div, 3
  %shr.i = and i32 %and.i, 255
  %call13.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add3, i32 noundef %shr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i = icmp slt i32 %call13.i, 0
  br i1 %cmp.i, label %sw.bb1.adxl372_write_threshold_value.exit_crit_edge, label %if.end.i

sw.bb1.adxl372_write_threshold_value.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_write_threshold_value.exit

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %mul2, 36
  %conv.i = shl nsw i32 %div, 5
  %shl.i = and i32 %conv.i, 224
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef 224, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %adxl372_write_threshold_value.exit

adxl372_write_threshold_value.exit:               ; preds = %if.end.i, %sw.bb1.adxl372_write_threshold_value.exit_crit_edge
  %ret.0.i = phi i32 [ %call13.i, %sw.bb1.adxl372_write_threshold_value.exit_crit_edge ], [ %call.i.i, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %threshold_m.i) #11
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  %scan_index6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %10 = ptrtoint ptr %scan_index6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_index6, align 4
  %mul7 = shl i32 %11, 1
  %add8 = add i32 %mul7, 42
  %threshold_m.i35 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %threshold_m.i35, i32 noundef 0) #11
  %regmap.i36 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regmap.i36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i36, align 4
  %and.i38 = lshr i32 %div, 3
  %shr.i39 = and i32 %and.i38, 255
  %call13.i40 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add8, i32 noundef %shr.i39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i40)
  %cmp.i41 = icmp slt i32 %call13.i40, 0
  br i1 %cmp.i41, label %sw.bb5.adxl372_write_threshold_value.exit48_crit_edge, label %if.end.i46

sw.bb5.adxl372_write_threshold_value.exit48_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_write_threshold_value.exit48

if.end.i46:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %regmap.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i36, align 4
  %add.i42 = add i32 %mul7, 43
  %conv.i37 = shl nsw i32 %div, 5
  %shl.i44 = and i32 %conv.i37, 224
  %call.i.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i42, i32 noundef 224, i32 noundef %shl.i44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %adxl372_write_threshold_value.exit48

adxl372_write_threshold_value.exit48:             ; preds = %if.end.i46, %sw.bb5.adxl372_write_threshold_value.exit48_crit_edge
  %ret.0.i47 = phi i32 [ %call13.i40, %sw.bb5.adxl372_write_threshold_value.exit48_crit_edge ], [ %call.i.i45, %if.end.i46 ]
  tail call void @mutex_unlock(ptr noundef %threshold_m.i35) #11
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %mul11 = mul i32 %val, 1000
  %sub13 = add i32 %val2, 999
  %div14 = sdiv i32 %sub13, 1000
  %add15 = add i32 %div14, %mul11
  %16 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %dir, label %sw.bb10.cleanup_crit_edge [
    i32 1, label %sw.bb16
    i32 2, label %sw.bb18
  ]

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb10
  %odr.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %odr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %odr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i49 = icmp eq i32 %18, 4
  %..i = select i1 %cmp.i49, i32 3300, i32 6600
  %mul.i = mul i32 %add15, 1000
  %div18.i = lshr exact i32 %..i, 1
  %add.i50 = add i32 %div18.i, %mul.i
  %div1.i = udiv i32 %add.i50, %..i
  %19 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 255) #11
  %regmap.i51 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i51, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 41, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %sw.bb16.cleanup_crit_edge, label %if.end7.i

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  %act_time_ms8.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %act_time_ms8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add15, ptr %act_time_ms8.i, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %sw.bb10
  %odr.i52 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %odr.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %odr.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.i53 = icmp eq i32 %24, 4
  %..i54 = select i1 %cmp.i53, i32 13, i32 26
  %div26.i = lshr i32 %..i54, 1
  %add.i55 = add i32 %div26.i, %add15
  %div1.i56 = udiv i32 %add.i55, %..i54
  %shr.i57 = lshr i32 %div1.i56, 8
  %and.i58 = and i32 %shr.i57, 255
  %regmap.i59 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %regmap.i59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i59, align 4
  %call.i60 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 48, i32 noundef %and.i58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp3.i = icmp slt i32 %call.i60, 0
  br i1 %cmp3.i, label %sw.bb18.cleanup_crit_edge, label %if.end5.i

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.i:                                        ; preds = %sw.bb18
  %and2.i = and i32 %div1.i56, 255
  %27 = ptrtoint ptr %regmap.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i59, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 49, i32 noundef %and2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.cleanup_crit_edge, label %if.end10.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %inact_time_ms11.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %inact_time_ms11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add15, ptr %inact_time_ms11.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.end5.i.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %if.end7.i, %sw.bb16.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %adxl372_write_threshold_value.exit48, %adxl372_write_threshold_value.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i47, %adxl372_write_threshold_value.exit48 ], [ %ret.0.i, %adxl372_write_threshold_value.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb16.cleanup_crit_edge ], [ %call.i, %if.end7.i ], [ %call7.i, %if.end10.i ], [ %call.i60, %sw.bb18.cleanup_crit_edge ], [ %call7.i, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adxl372_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr noundef readnone %trig) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dready_trig = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dready_trig, align 4
  %cmp.not = icmp eq ptr %3, %trig
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %peak_datardy_trig = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %peak_datardy_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peak_datardy_trig, align 4
  %cmp1.not = icmp eq ptr %5, %trig
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %regmap2 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %readval) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %reg, i32 noundef %writeval) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adxl372_set_watermark(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %val, i32 512)
  %conv = trunc i32 %2 to i16
  %watermark = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %watermark to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %watermark, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_show_filter_freq_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %odr = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %len.013 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.013
  %sub = sub i32 4096, %len.013
  %arrayidx = getelementptr [5 x i32], ptr @adxl372_bw_freq_tbl, i32 0, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.11, i32 noundef %3) #11
  %add = add i32 %call2, %len.013
  %inc = add i32 %i.012, 1
  %4 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %odr, align 4
  %cmp.not = icmp ugt i32 %inc, %5
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub3 = add i32 %add, -1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %sub3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %arrayidx4, align 1
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adxl372_set_inactivity_time_ms(ptr nocapture noundef %st, i32 noundef %inact_time_ms) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %odr = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 10
  %0 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %odr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %. = select i1 %cmp, i32 13, i32 26
  %div26 = lshr i32 %., 1
  %add = add i32 %div26, %inact_time_ms
  %div1 = udiv i32 %add, %.
  %shr = lshr i32 %div1, 8
  %and = and i32 %shr, 255
  %regmap = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 48, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %and2 = and i32 %div1, 255
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 49, i32 noundef %and2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %inact_time_ms11 = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 13
  %6 = ptrtoint ptr %inact_time_ms11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inact_time_ms, ptr %inact_time_ms11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adxl372_set_op_mode(ptr nocapture noundef %st, i32 noundef %op_mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %and = and i32 %op_mode, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 63, i32 noundef 3, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %op_mode1 = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 8
  %2 = ptrtoint ptr %op_mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %op_mode, ptr %op_mode1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_noinc_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %int1_bitmask = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %int1_bitmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int1_bitmask, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %int1_bitmask, align 4
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 59, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %adxl372_set_interrupts.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

adxl372_set_interrupts.exit:                      ; preds = %entry
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 60, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %adxl372_set_interrupts.exit.cleanup_crit_edge, label %if.end

adxl372_set_interrupts.exit.cleanup_crit_edge:    ; preds = %adxl372_set_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %adxl372_set_interrupts.exit
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %8 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_scan_mask, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %switch.tableidx = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 7
  br i1 %12, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.adxl372_buffer_postenable, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx10 = getelementptr [7 x %struct.adxl372_axis_lookup], ptr @adxl372_axis_lookup_table, i32 0, i32 %switch.load
  %fifo_format = getelementptr [7 x %struct.adxl372_axis_lookup], ptr @adxl372_axis_lookup_table, i32 0, i32 %switch.load, i32 1
  %14 = ptrtoint ptr %fifo_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo_format, align 4
  %fifo_format11 = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %fifo_format11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fifo_format11, align 4
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10, align 4
  %fifo_axis_mask = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %fifo_axis_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fifo_axis_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %20 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %masklength, align 8
  %22 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_scan_mask, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %23, i32 noundef %21) #11
  %conv = trunc i32 %call4.i to i8
  %fifo_set_size = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %fifo_set_size to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %fifo_set_size, align 4
  %peak_fifo_mode_en = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %peak_fifo_mode_en to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %peak_fifo_mode_en, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %switch.lookup.if.end19_crit_edge, label %if.then16

switch.lookup.if.end19_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %fifo_set_size to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %fifo_set_size, align 4
  %28 = ptrtoint ptr %fifo_format11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %fifo_format11, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %switch.lookup.if.end19_crit_edge
  %watermark = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %watermark to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %watermark, align 4
  %conv20 = zext i16 %30 to i32
  %31 = ptrtoint ptr %fifo_set_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fifo_set_size, align 4
  %conv22 = zext i8 %32 to i32
  %mul = mul nuw nsw i32 %conv22, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %mul)
  %cmp23 = icmp ugt i32 %mul, 512
  br i1 %cmp23, label %if.then25, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %div.rhs.trunc = zext i8 %32 to i16
  %div84 = udiv i16 512, %div.rhs.trunc
  %33 = ptrtoint ptr %watermark to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %div84, ptr %watermark, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end19.if.end30_crit_edge
  %fifo_mode = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %fifo_mode, align 4
  %call31 = tail call fastcc i32 @adxl372_configure_fifo(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %if.end30
  %35 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %fifo_mode, align 4
  %36 = ptrtoint ptr %int1_bitmask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %int1_bitmask, align 4
  %and = and i32 %37, -5
  store i32 %and, ptr %int1_bitmask, align 4
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call.i75 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 59, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp.i76 = icmp slt i32 %call.i75, 0
  br i1 %cmp.i76, label %if.then34.cleanup_crit_edge, label %if.end.i78

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i78:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call2.i77 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 60, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i78, %if.then34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %adxl372_set_interrupts.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %adxl372_set_interrupts.exit.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %call31, %if.then34.cleanup_crit_edge ], [ %call31, %if.end.i78 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %int1_bitmask = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %int1_bitmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int1_bitmask, align 4
  %and = and i32 %3, -5
  store i32 %and, ptr %int1_bitmask, align 4
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 59, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.adxl372_set_interrupts.exit_crit_edge, label %if.end.i

entry.adxl372_set_interrupts.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_set_interrupts.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 60, i32 noundef 0) #11
  br label %adxl372_set_interrupts.exit

adxl372_set_interrupts.exit:                      ; preds = %if.end.i, %entry.adxl372_set_interrupts.exit_crit_edge
  %fifo_mode = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fifo_mode, align 4
  %call3 = tail call fastcc i32 @adxl372_configure_fifo(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adxl372_configure_fifo(ptr nocapture noundef %st) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 63, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_mode1.i = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 8
  %2 = ptrtoint ptr %op_mode1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %op_mode1.i, align 4
  %watermark = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 17
  %3 = ptrtoint ptr %watermark to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %watermark, align 4
  %conv = zext i16 %4 to i32
  %fifo_set_size = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 14
  %5 = ptrtoint ptr %fifo_set_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fifo_set_size, align 4
  %conv1 = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %fifo_format = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 6
  %7 = ptrtoint ptr %fifo_format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_format, align 4
  %fifo_mode = getelementptr inbounds %struct.adxl372_state, ptr %st, i32 0, i32 5
  %9 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_mode, align 4
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %and7 = and i32 %mul, 255
  %call8 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 57, i32 noundef %and7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %and = shl i32 %8, 3
  %shl = and i32 %and, 56
  %and2 = shl i32 %10, 1
  %shl3 = and i32 %and2, 6
  %or = or i32 %shl3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %mul)
  %cmp4 = icmp ugt i32 %mul, 255
  %cond = zext i1 %cmp4 to i32
  %or6 = or i32 %or, %cond
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 58, i32 noundef %or6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 63, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i37 = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i37, label %if.end18.cleanup_crit_edge, label %if.end.i39

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i39:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %op_mode1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %op_mode1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i39, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call.i.i36, %if.end18.cleanup_crit_edge ], [ %call.i.i36, %if.end.i39 ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_get_fifo_watermark(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %watermark = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %watermark to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %watermark, align 4
  %conv = zext i16 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_get_fifo_enabled(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %fifo_mode = getelementptr inbounds %struct.adxl372_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_mode, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_dready_trig_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  br i1 %state, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %int1_bitmask = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %int1_bitmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int1_bitmask, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %int1_bitmask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %int1_bitmask2 = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %int1_bitmask2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int1_bitmask2, align 4
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 59, i32 noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.adxl372_set_interrupts.exit_crit_edge, label %if.end.i

if.end.adxl372_set_interrupts.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_set_interrupts.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 60, i32 noundef 0) #11
  br label %adxl372_set_interrupts.exit

adxl372_set_interrupts.exit:                      ; preds = %if.end.i, %if.end.adxl372_set_interrupts.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %if.end.adxl372_set_interrupts.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl372_peak_dready_trig_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  br i1 %state, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %int1_bitmask = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %int1_bitmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int1_bitmask, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %int1_bitmask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frombool = zext i1 %state to i8
  %peak_fifo_mode_en = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %peak_fifo_mode_en to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %peak_fifo_mode_en, align 2
  %int1_bitmask4 = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %int1_bitmask4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int1_bitmask4, align 4
  %regmap.i = getelementptr inbounds %struct.adxl372_state, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 59, i32 noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.adxl372_set_interrupts.exit_crit_edge, label %if.end.i

if.end.adxl372_set_interrupts.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %adxl372_set_interrupts.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 60, i32 noundef 0) #11
  br label %adxl372_set_interrupts.exit

adxl372_set_interrupts.exit:                      ; preds = %if.end.i, %if.end.adxl372_set_interrupts.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %if.end.adxl372_set_interrupts.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__ksymtab_adxl372_readable_noinc_reg, !1, !"__ksymtab_adxl372_readable_noinc_reg", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/adxl372.c", i32 1179, i32 1}
!2 = !{ptr @adxl372_probe.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/iio/accel/adxl372.c", i32 1199, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/adxl372.c", i32 1210, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @adxl372_probe._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @adxl372_probe._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/accel/adxl372.c", i32 1225, i32 9}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/accel/adxl372.c", i32 1232, i32 15}
!17 = !{ptr @__ksymtab_adxl372_probe, !18, !"__ksymtab_adxl372_probe", i1 false, i1 false}
!18 = !{!"../drivers/iio/accel/adxl372.c", i32 1263, i32 1}
!19 = !{ptr @__UNIQUE_ID_author256, !20, !"__UNIQUE_ID_author256", i1 false, i1 false}
!20 = !{!"../drivers/iio/accel/adxl372.c", i32 1265, i32 1}
!21 = !{ptr @__UNIQUE_ID_description257, !22, !"__UNIQUE_ID_description257", i1 false, i1 false}
!22 = !{!"../drivers/iio/accel/adxl372.c", i32 1266, i32 1}
!23 = !{ptr @__UNIQUE_ID_file258, !24, !"__UNIQUE_ID_file258", i1 false, i1 false}
!24 = !{!"../drivers/iio/accel/adxl372.c", i32 1267, i32 1}
!25 = !{ptr @__UNIQUE_ID_license259, !24, !"__UNIQUE_ID_license259", i1 false, i1 false}
!26 = !{ptr @adxl372_channels, !27, !"adxl372_channels", i1 false, i1 false}
!27 = !{!"../drivers/iio/accel/adxl372.c", i32 275, i32 35}
!28 = !{ptr @adxl372_events, !29, !"adxl372_events", i1 false, i1 false}
!29 = !{!"../drivers/iio/accel/adxl372.c", i32 240, i32 36}
!30 = !{ptr @adxl372_channel_masks, !31, !"adxl372_channel_masks", i1 false, i1 false}
!31 = !{!"../drivers/iio/accel/adxl372.c", i32 305, i32 28}
!32 = !{ptr @adxl372_info, !33, !"adxl372_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/accel/adxl372.c", i32 1162, i32 30}
!34 = !{ptr @adxl372_attrs_group, !35, !"adxl372_attrs_group", i1 false, i1 false}
!35 = !{!"../drivers/iio/accel/adxl372.c", i32 1158, i32 37}
!36 = !{ptr @adxl372_attributes, !37, !"adxl372_attributes", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/adxl372.c", i32 1152, i32 26}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/accel/adxl372.c", i32 1148, i32 8}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iio_const_attr_sampling_frequency_available, !39, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/accel/adxl372.c", i32 1149, i32 8}
!44 = !{ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available, !43, !"iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/accel/adxl372.c", i32 974, i32 6}
!47 = !{ptr @adxl372_bw_freq_tbl, !48, !"adxl372_bw_freq_tbl", i1 false, i1 false}
!48 = !{!"../drivers/iio/accel/adxl372.c", i32 221, i32 18}
!49 = !{ptr @adxl372_samp_freq_tbl, !50, !"adxl372_samp_freq_tbl", i1 false, i1 false}
!50 = !{!"../drivers/iio/accel/adxl372.c", i32 217, i32 18}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/accel/adxl372.c", i32 689, i32 3}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adxl372_setup._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @adxl372_setup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"adxl372_th_reg_high_addr", i1 false, i1 false}
!57 = !{!"../drivers/iio/accel/adxl372.c", i32 193, i32 27}
!58 = !{ptr @adxl372_buffer_ops, !59, !"adxl372_buffer_ops", i1 false, i1 false}
!59 = !{!"../drivers/iio/accel/adxl372.c", i32 1096, i32 42}
!60 = !{ptr @adxl372_axis_lookup_table, !61, !"adxl372_axis_lookup_table", i1 false, i1 false}
!61 = !{!"../drivers/iio/accel/adxl372.c", i32 230, i32 41}
!62 = !{ptr @adxl372_fifo_attributes, !63, !"adxl372_fifo_attributes", i1 false, i1 false}
!63 = !{!"../drivers/iio/accel/adxl372.c", i32 1009, i32 32}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/accel/adxl372.c", i32 1001, i32 8}
!66 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @iio_const_attr_hwfifo_watermark_min, !65, !"iio_const_attr_hwfifo_watermark_min", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/accel/adxl372.c", i32 1002, i32 8}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @iio_const_attr_hwfifo_watermark_max, !69, !"iio_const_attr_hwfifo_watermark_max", i1 false, i1 false}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/accel/adxl372.c", i32 1004, i32 8}
!74 = !{ptr @iio_dev_attr_hwfifo_watermark, !73, !"iio_dev_attr_hwfifo_watermark", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/accel/adxl372.c", i32 998, i32 22}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/accel/adxl372.c", i32 1006, i32 8}
!79 = !{ptr @iio_dev_attr_hwfifo_enabled, !78, !"iio_dev_attr_hwfifo_enabled", i1 false, i1 false}
!80 = !{ptr @adxl372_trigger_ops, !81, !"adxl372_trigger_ops", i1 false, i1 false}
!81 = !{!"../drivers/iio/accel/adxl372.c", i32 1124, i32 37}
!82 = !{ptr @adxl372_peak_data_trigger_ops, !83, !"adxl372_peak_data_trigger_ops", i1 false, i1 false}
!83 = !{!"../drivers/iio/accel/adxl372.c", i32 1143, i32 37}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i8 0, i8 2}
!95 = !{i64 2154590034}
!96 = !{i64 762676, i64 762697, i64 762720, i64 762739, i64 762758}
!97 = !{i64 2154590443}
!98 = !{i64 2154595003}
!99 = !{i64 2154595412}
