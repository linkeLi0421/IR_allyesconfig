; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/addac/adt7316.c_pt.bc'
source_filename = "../drivers/staging/iio/addac/adt7316.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adt7316_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_adt7316_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_adt7316_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adt7316_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22adt7316_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_adt7316_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+adt7316_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adt7316_probe\09\09\09\09"
module asm "\09.long\09__crc_adt7316_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adt7316_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adt7316_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adt7316_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.adt7316_chip_info = type { %struct.adt7316_bus, ptr, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.adt7316_bus = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@adt7316_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adt7316_disable, ptr @adt7316_enable, ptr @adt7316_disable, ptr @adt7316_enable, ptr @adt7316_disable, ptr @adt7316_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_adt7316_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_adt7316_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_adt7316_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adt7316_pm_ops to i32), ptr @__kstrtab_adt7316_pm_ops, ptr @__kstrtabns_adt7316_pm_ops }, section "___ksymtab_gpl+adt7316_pm_ops", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adi,ldac\00", [23 x i8] zeroinitializer }, align 32
@adt7316_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request ldac GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adt7316_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/iio/addac/adt7316.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adt7316_probe._entry_ptr = internal global ptr @adt7316_probe._entry, section ".printk_index", align 4
@adt7516_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @adt7516_event_attribute_group, ptr @adt7516_attribute_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adt7316_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @adt7316_event_attribute_group, ptr @adt7316_attribute_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adt7316_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2200, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s temperature sensor, ADC and DAC registered.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adt7316_probe._entry_ptr.9 = internal global ptr @adt7316_probe._entry.6, section ".printk_index", align 4
@__kstrtab_adt7316_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adt7316_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adt7316_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adt7316_probe to i32), ptr @__kstrtab_adt7316_probe, ptr @__kstrtabns_adt7316_probe }, section "___ksymtab+adt7316_probe", align 4
@__UNIQUE_ID_author288 = internal constant [52 x i8] c"adt7316.author=Sonic Zhang <sonic.zhang@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [110 x i8] c"adt7316.description=Analog Devices ADT7316/7/8 and ADT7516/7/9 digital temperature sensor, ADC and DAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [47 x i8] c"adt7316.file=drivers/staging/iio/addac/adt7316\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [23 x i8] c"adt7316.license=GPL v2\00", section ".modinfo", align 1
@adt7516_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.10, ptr null, ptr null, ptr @adt7516_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adt7516_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adt7516_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@adt7516_event_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @iio_dev_attr_int_mask, ptr @iio_dev_attr_in_temp_high_value, ptr @iio_dev_attr_in_temp_low_value, ptr @iio_dev_attr_ex_temp_ain1_high_value, ptr @iio_dev_attr_ex_temp_ain1_low_value, ptr @iio_dev_attr_ain2_high_value, ptr @iio_dev_attr_ain2_low_value, ptr @iio_dev_attr_ain3_high_value, ptr @iio_dev_attr_ain3_low_value, ptr @iio_dev_attr_ain4_high_value, ptr @iio_dev_attr_ain4_low_value, ptr @iio_dev_attr_int_enabled, ptr null], [44 x i8] zeroinitializer }, align 32
@iio_dev_attr_int_mask = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_int_mask, ptr @adt7316_set_int_mask }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 37, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 38, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_temp_ain1_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 39, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_temp_ain1_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 40, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ain2_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 43, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ain2_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 44, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ain3_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 45, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ain3_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 46, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ain4_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 47, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ain4_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 48, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_int_enabled = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_int_enabled, ptr @adt7316_set_int_enabled }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"int_mask\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in_temp_high_value\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in_temp_low_value\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ex_temp_ain1_high_value\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ex_temp_ain1_low_value\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ain2_high_value\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ain2_low_value\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ain3_high_value\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ain3_low_value\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ain4_high_value\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ain4_low_value\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"int_enabled\00", [20 x i8] zeroinitializer }, align 32
@adt7516_attributes = internal global { [38 x ptr], [40 x i8] } { [38 x ptr] [ptr @iio_dev_attr_all_modes, ptr @iio_dev_attr_mode, ptr @iio_dev_attr_select_ex_temp, ptr @iio_dev_attr_enabled, ptr @iio_dev_attr_ad_channel, ptr @iio_dev_attr_all_ad_channels, ptr @iio_dev_attr_disable_averaging, ptr @iio_dev_attr_enable_smbus_timeout, ptr @iio_dev_attr_powerdown, ptr @iio_dev_attr_fast_ad_clock, ptr @iio_dev_attr_AIN_internal_Vref, ptr @iio_dev_attr_da_high_resolution, ptr @iio_dev_attr_enable_proportion_DACA, ptr @iio_dev_attr_enable_proportion_DACB, ptr @iio_dev_attr_DAC_2Vref_channels_mask, ptr @iio_dev_attr_DAC_update_mode, ptr @iio_dev_attr_all_DAC_update_modes, ptr @iio_dev_attr_update_DAC, ptr @iio_dev_attr_DAC_internal_Vref, ptr @iio_dev_attr_VDD, ptr @iio_dev_attr_in_temp, ptr @iio_dev_attr_ex_temp_AIN1, ptr @iio_dev_attr_AIN2, ptr @iio_dev_attr_AIN3, ptr @iio_dev_attr_AIN4, ptr @iio_dev_attr_in_temp_offset, ptr @iio_dev_attr_ex_temp_offset, ptr @iio_dev_attr_in_analog_temp_offset, ptr @iio_dev_attr_ex_analog_temp_offset, ptr @iio_dev_attr_DAC_A, ptr @iio_dev_attr_DAC_B, ptr @iio_dev_attr_DAC_C, ptr @iio_dev_attr_DAC_D, ptr @iio_dev_attr_device_id, ptr @iio_dev_attr_manufactorer_id, ptr @iio_dev_attr_device_rev, ptr @iio_dev_attr_bus_type, ptr null], [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_all_modes = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_all_modes, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_mode = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_mode, ptr @adt7316_store_mode }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_select_ex_temp = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_select_ex_temp, ptr @adt7316_store_select_ex_temp }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_enabled = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_enabled, ptr @adt7316_store_enabled }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ad_channel = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_channel, ptr @adt7316_store_ad_channel }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_all_ad_channels = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_all_ad_channels, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_disable_averaging = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_disable_averaging, ptr @adt7316_store_disable_averaging }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_enable_smbus_timeout = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_enable_smbus_timeout, ptr @adt7316_store_enable_smbus_timeout }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_powerdown = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_powerdown, ptr @adt7316_store_powerdown }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_fast_ad_clock = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_fast_ad_clock, ptr @adt7316_store_fast_ad_clock }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_AIN_internal_Vref = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_AIN_internal_Vref, ptr @adt7316_store_AIN_internal_Vref }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_da_high_resolution = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_da_high_resolution, ptr @adt7316_store_da_high_resolution }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_enable_proportion_DACA = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_enable_prop_DACA, ptr @adt7316_store_enable_prop_DACA }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_enable_proportion_DACB = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_enable_prop_DACB, ptr @adt7316_store_enable_prop_DACB }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DAC_2Vref_channels_mask = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DAC_2Vref_ch_mask, ptr @adt7316_store_DAC_2Vref_ch_mask }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DAC_update_mode = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DAC_update_mode, ptr @adt7316_store_DAC_update_mode }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_all_DAC_update_modes = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_all_DAC_update_modes, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_update_DAC = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @adt7316_store_update_DAC }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DAC_internal_Vref = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DAC_internal_Vref, ptr @adt7316_store_DAC_internal_Vref }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_VDD = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_VDD, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_in_temp, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_temp_AIN1 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ex_temp_AIN1, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_AIN2 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_AIN2, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_AIN3 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_AIN3, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_AIN4 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_AIN4, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp_offset = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_in_temp_offset, ptr @adt7316_store_in_temp_offset }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_temp_offset = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ex_temp_offset, ptr @adt7316_store_ex_temp_offset }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_analog_temp_offset = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_in_analog_temp_offset, ptr @adt7316_store_in_analog_temp_offset }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_analog_temp_offset = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ex_analog_temp_offset, ptr @adt7316_store_ex_analog_temp_offset }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DAC_A = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DAC_A, ptr @adt7316_store_DAC_A }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DAC_B = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DAC_B, ptr @adt7316_store_DAC_B }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DAC_C = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DAC_C, ptr @adt7316_store_DAC_C }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DAC_D = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DAC_D, ptr @adt7316_store_DAC_D }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_device_id = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_device_id, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_manufactorer_id = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_manufactorer_id, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_device_rev = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_device_rev, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_bus_type = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_bus_type, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"all_modes\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"single_channel\0Around_robin\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"single_channel\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"round_robin\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"single_channel\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"select_ex_temp\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ad_channel\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0 - VDD\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1 - Internal Temperature\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"2 - AIN1\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"2 - External Temperature\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3 - AIN2\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"N/A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"4 - AIN3\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"5 - AIN4\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"all_ad_channels\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"0 - VDD\0A1 - Internal Temperature\0A2 - External Temperature or AIN1\0A3 - AIN2\0A4 - AIN3\0A5 - AIN4\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"0 - VDD\0A1 - Internal Temperature\0A2 - External Temperature\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disable_averaging\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable_smbus_timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fast_ad_clock\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIN_internal_Vref\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da_high_resolution\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1 (10 bits)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0 (8 bits)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enable_proportion_DACA\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enable_proportion_DACB\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC_2Vref_channels_mask\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC_update_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0 - auto at any MSB DAC writing\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"1 - auto at MSB DAC AB and CD writing\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"2 - auto at MSB DAC ABCD writing\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"3 - manual\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"all_DAC_update_modes\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"0 - auto at any MSB DAC writing\0A1 - auto at MSB DAC AB and CD writing\0A2 - auto at MSB DAC ABCD writing\0A3 - manual\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"update_DAC\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC_internal_Vref\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDD\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%c%d.%.2d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in_temp\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ex_temp_AIN1\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN4\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in_temp_offset\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ex_temp_offset\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"in_analog_temp_offset\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ex_analog_temp_offset\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC_A\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC_B\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC_C\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC_D\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"device_id\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"manufactorer_id\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_rev\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus_type\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c\0A\00", [27 x i8] zeroinitializer }, align 32
@adt7316_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.10, ptr null, ptr null, ptr @adt7316_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adt7316_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adt7316_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adt7316_event_attributes = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @iio_dev_attr_int_mask, ptr @iio_dev_attr_in_temp_high_value, ptr @iio_dev_attr_in_temp_low_value, ptr @iio_dev_attr_ex_temp_high_value, ptr @iio_dev_attr_ex_temp_low_value, ptr @iio_dev_attr_int_enabled, ptr null], [36 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_temp_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 39, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_temp_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ad_bound, ptr @adt7316_set_ad_bound }, i64 40, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ex_temp_high_value\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ex_temp_low_value\00", [46 x i8] zeroinitializer }, align 32
@adt7316_attributes = internal global { [35 x ptr], [52 x i8] } { [35 x ptr] [ptr @iio_dev_attr_all_modes, ptr @iio_dev_attr_mode, ptr @iio_dev_attr_enabled, ptr @iio_dev_attr_ad_channel, ptr @iio_dev_attr_all_ad_channels, ptr @iio_dev_attr_disable_averaging, ptr @iio_dev_attr_enable_smbus_timeout, ptr @iio_dev_attr_powerdown, ptr @iio_dev_attr_fast_ad_clock, ptr @iio_dev_attr_da_high_resolution, ptr @iio_dev_attr_enable_proportion_DACA, ptr @iio_dev_attr_enable_proportion_DACB, ptr @iio_dev_attr_DAC_2Vref_channels_mask, ptr @iio_dev_attr_DAC_update_mode, ptr @iio_dev_attr_all_DAC_update_modes, ptr @iio_dev_attr_update_DAC, ptr @iio_dev_attr_DA_AB_Vref_bypass, ptr @iio_dev_attr_DA_CD_Vref_bypass, ptr @iio_dev_attr_DAC_internal_Vref, ptr @iio_dev_attr_VDD, ptr @iio_dev_attr_in_temp, ptr @iio_dev_attr_ex_temp, ptr @iio_dev_attr_in_temp_offset, ptr @iio_dev_attr_ex_temp_offset, ptr @iio_dev_attr_in_analog_temp_offset, ptr @iio_dev_attr_ex_analog_temp_offset, ptr @iio_dev_attr_DAC_A, ptr @iio_dev_attr_DAC_B, ptr @iio_dev_attr_DAC_C, ptr @iio_dev_attr_DAC_D, ptr @iio_dev_attr_device_id, ptr @iio_dev_attr_manufactorer_id, ptr @iio_dev_attr_device_rev, ptr @iio_dev_attr_bus_type, ptr null], [52 x i8] zeroinitializer }, align 32
@iio_dev_attr_DA_AB_Vref_bypass = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DA_AB_Vref_bypass, ptr @adt7316_store_DA_AB_Vref_bypass }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_DA_CD_Vref_bypass = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_DA_CD_Vref_bypass, ptr @adt7316_store_DA_CD_Vref_bypass }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_ex_temp = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7316_show_ex_temp_AIN1, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DA_AB_Vref_bypass\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DA_CD_Vref_bypass\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ex_temp\00", [24 x i8] zeroinitializer }, align 32
@adt7316_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1817, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mode %d unsupported, using IRQF_TRIGGER_LOW\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adt7316_setup_irq\00", [46 x i8] zeroinitializer }, align 32
@adt7316_setup_irq._entry_ptr = internal global ptr @adt7316_setup_irq._entry, section ".printk_index", align 4
@adt7316_setup_irq._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 1828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@adt7316_setup_irq._entry_ptr.96 = internal global ptr @adt7316_setup_irq._entry.94, section ".printk_index", align 4
@switch.table.adt7316_probe = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 8], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 51, i64 53]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 17, i64 18]
@__sancov_gen_cov_switch_values.98 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 20]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 20]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"adt7316_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2111, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2157, i32 48 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2161, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"adt7516_info\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2119, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"adt7316_info\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2114, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2199, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [30 x i8] c"adt7516_event_attribute_group\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2089, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"adt7516_attribute_group\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1726, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2091, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant [25 x i8] c"adt7516_event_attributes\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2073, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_int_mask\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_in_temp_high_value\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_in_temp_low_value\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [37 x i8] c"iio_dev_attr_ex_temp_ain1_high_value\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_ex_temp_ain1_low_value\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_ain2_high_value\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_ain2_low_value\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_ain3_high_value\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_ain3_low_value\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_ain4_high_value\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_ain4_low_value\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [25 x i8] c"iio_dev_attr_int_enabled\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1999, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1848, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2003, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1922, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2007, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2021, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2025, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2029, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2033, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2037, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2041, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2045, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2049, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2053, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant [19 x i8] c"adt7516_attributes\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1685, i32 26 }
@___asan_gen_.239 = private unnamed_addr constant [23 x i8] c"iio_dev_attr_all_modes\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [18 x i8] c"iio_dev_attr_mode\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_select_ex_temp\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"iio_dev_attr_enabled\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [24 x i8] c"iio_dev_attr_ad_channel\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_all_ad_channels\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_disable_averaging\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [34 x i8] c"iio_dev_attr_enable_smbus_timeout\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [23 x i8] c"iio_dev_attr_powerdown\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"iio_dev_attr_fast_ad_clock\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_AIN_internal_Vref\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_da_high_resolution\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_enable_proportion_DACA\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_enable_proportion_DACB\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [37 x i8] c"iio_dev_attr_DAC_2Vref_channels_mask\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_DAC_update_mode\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [34 x i8] c"iio_dev_attr_all_DAC_update_modes\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [24 x i8] c"iio_dev_attr_update_DAC\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_DAC_internal_Vref\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"iio_dev_attr_VDD\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"iio_dev_attr_in_temp\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [26 x i8] c"iio_dev_attr_ex_temp_AIN1\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [18 x i8] c"iio_dev_attr_AIN2\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [18 x i8] c"iio_dev_attr_AIN3\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"iio_dev_attr_AIN4\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_in_temp_offset\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_ex_temp_offset\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [35 x i8] c"iio_dev_attr_in_analog_temp_offset\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [35 x i8] c"iio_dev_attr_ex_analog_temp_offset\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [19 x i8] c"iio_dev_attr_DAC_A\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [19 x i8] c"iio_dev_attr_DAC_B\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"iio_dev_attr_DAC_C\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [19 x i8] c"iio_dev_attr_DAC_D\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [23 x i8] c"iio_dev_attr_device_id\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_manufactorer_id\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [24 x i8] c"iio_dev_attr_device_rev\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_bus_type\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 368, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 365, i32 22 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 356, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 328, i32 23 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 330, i32 22 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 344, i32 19 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 315, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 271, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 449, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 382, i32 23 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 384, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 388, i32 24 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 390, i32 23 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 393, i32 24 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 395, i32 23 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 398, i32 24 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 402, i32 23 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 472, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 465, i32 23 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 468, i32 22 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 509, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 548, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 586, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 624, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 716, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 670, i32 8 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 638, i32 24 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 641, i32 22 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 755, i32 8 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 794, i32 8 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 837, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 897, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 855, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 858, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 861, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 863, i32 23 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 917, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 910, i32 23 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 955, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1094, i32 8 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1183, i32 8 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1169, i32 22 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1195, i32 8 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1207, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1220, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1231, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1242, i32 8 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1309, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1335, i32 8 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1362, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1389, i32 8 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1492, i32 8 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1516, i32 8 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1540, i32 8 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1564, i32 8 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1583, i32 8 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1601, i32 8 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1620, i32 8 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1641, i32 8 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1636, i32 23 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1638, i32 22 }
@___asan_gen_.533 = private unnamed_addr constant [30 x i8] c"adt7316_event_attribute_group\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2068, i32 37 }
@___asan_gen_.536 = private unnamed_addr constant [24 x i8] c"adt7316_attribute_group\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1681, i32 37 }
@___asan_gen_.539 = private unnamed_addr constant [25 x i8] c"adt7316_event_attributes\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2058, i32 26 }
@___asan_gen_.542 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_ex_temp_high_value\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_ex_temp_low_value\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2011, i32 8 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2015, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant [19 x i8] c"adt7316_attributes\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1643, i32 26 }
@___asan_gen_.557 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_DA_AB_Vref_bypass\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_DA_CD_Vref_bypass\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [21 x i8] c"iio_dev_attr_ex_temp\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 994, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1033, i32 8 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1209, i32 8 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1816, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.588 = private constant [39 x i8] c"../drivers/staging/iio/addac/adt7316.c\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1827, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant [27 x i8] c"switch.table.adt7316_probe\00", align 1
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_adt7316_pm_ops, ptr @__ksymtab_adt7316_probe, ptr @adt7316_probe._entry, ptr @adt7316_probe._entry.6, ptr @adt7316_probe._entry_ptr, ptr @adt7316_probe._entry_ptr.9, ptr @adt7316_setup_irq._entry, ptr @adt7316_setup_irq._entry.94, ptr @adt7316_setup_irq._entry_ptr, ptr @adt7316_setup_irq._entry_ptr.96, ptr @adt7316_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adt7516_info, ptr @adt7316_info, ptr @.str.7, ptr @.str.8, ptr @adt7516_event_attribute_group, ptr @adt7516_attribute_group, ptr @.str.10, ptr @adt7516_event_attributes, ptr @iio_dev_attr_int_mask, ptr @iio_dev_attr_in_temp_high_value, ptr @iio_dev_attr_in_temp_low_value, ptr @iio_dev_attr_ex_temp_ain1_high_value, ptr @iio_dev_attr_ex_temp_ain1_low_value, ptr @iio_dev_attr_ain2_high_value, ptr @iio_dev_attr_ain2_low_value, ptr @iio_dev_attr_ain3_high_value, ptr @iio_dev_attr_ain3_low_value, ptr @iio_dev_attr_ain4_high_value, ptr @iio_dev_attr_ain4_low_value, ptr @iio_dev_attr_int_enabled, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @adt7516_attributes, ptr @iio_dev_attr_all_modes, ptr @iio_dev_attr_mode, ptr @iio_dev_attr_select_ex_temp, ptr @iio_dev_attr_enabled, ptr @iio_dev_attr_ad_channel, ptr @iio_dev_attr_all_ad_channels, ptr @iio_dev_attr_disable_averaging, ptr @iio_dev_attr_enable_smbus_timeout, ptr @iio_dev_attr_powerdown, ptr @iio_dev_attr_fast_ad_clock, ptr @iio_dev_attr_AIN_internal_Vref, ptr @iio_dev_attr_da_high_resolution, ptr @iio_dev_attr_enable_proportion_DACA, ptr @iio_dev_attr_enable_proportion_DACB, ptr @iio_dev_attr_DAC_2Vref_channels_mask, ptr @iio_dev_attr_DAC_update_mode, ptr @iio_dev_attr_all_DAC_update_modes, ptr @iio_dev_attr_update_DAC, ptr @iio_dev_attr_DAC_internal_Vref, ptr @iio_dev_attr_VDD, ptr @iio_dev_attr_in_temp, ptr @iio_dev_attr_ex_temp_AIN1, ptr @iio_dev_attr_AIN2, ptr @iio_dev_attr_AIN3, ptr @iio_dev_attr_AIN4, ptr @iio_dev_attr_in_temp_offset, ptr @iio_dev_attr_ex_temp_offset, ptr @iio_dev_attr_in_analog_temp_offset, ptr @iio_dev_attr_ex_analog_temp_offset, ptr @iio_dev_attr_DAC_A, ptr @iio_dev_attr_DAC_B, ptr @iio_dev_attr_DAC_C, ptr @iio_dev_attr_DAC_D, ptr @iio_dev_attr_device_id, ptr @iio_dev_attr_manufactorer_id, ptr @iio_dev_attr_device_rev, ptr @iio_dev_attr_bus_type, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @adt7316_event_attribute_group, ptr @adt7316_attribute_group, ptr @adt7316_event_attributes, ptr @iio_dev_attr_ex_temp_high_value, ptr @iio_dev_attr_ex_temp_low_value, ptr @.str.87, ptr @.str.88, ptr @adt7316_attributes, ptr @iio_dev_attr_DA_AB_Vref_bypass, ptr @iio_dev_attr_DA_CD_Vref_bypass, ptr @iio_dev_attr_ex_temp, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @switch.table.adt7316_probe], section "llvm.metadata"
@0 = internal global [162 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7516_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7516_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7516_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7516_event_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_int_mask to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_temp_ain1_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_temp_ain1_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ain2_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ain2_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ain3_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ain3_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ain4_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ain4_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_int_enabled to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7516_attributes to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_all_modes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_select_ex_temp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_enabled to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ad_channel to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_all_ad_channels to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_disable_averaging to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_enable_smbus_timeout to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_powerdown to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_fast_ad_clock to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_AIN_internal_Vref to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_da_high_resolution to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_enable_proportion_DACA to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_enable_proportion_DACB to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DAC_2Vref_channels_mask to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DAC_update_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_all_DAC_update_modes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_update_DAC to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DAC_internal_Vref to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_VDD to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_temp_AIN1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_AIN2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_AIN3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_AIN4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp_offset to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_temp_offset to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_analog_temp_offset to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_analog_temp_offset to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DAC_A to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DAC_B to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DAC_C to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DAC_D to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_device_id to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_manufactorer_id to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_device_rev to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_bus_type to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_event_attributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_temp_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_temp_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_attributes to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DA_AB_Vref_bypass to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_DA_CD_Vref_bypass to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ex_temp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_setup_irq._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adt7316_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_disable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %config13.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %config13.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config13.i, align 2
  %6 = and i8 %5, -2
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 24, i8 noundef zeroext %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %entry._adt7316_store_enabled.exit_crit_edge

entry._adt7316_store_enabled.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %_adt7316_store_enabled.exit

if.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config13.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %config13.i, align 2
  br label %_adt7316_store_enabled.exit

_adt7316_store_enabled.exit:                      ; preds = %if.end9.i, %entry._adt7316_store_enabled.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -5, %entry._adt7316_store_enabled.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_enable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %config13.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %config13.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config13.i, align 2
  %config1.0.i = or i8 %5, 1
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i8 noundef zeroext 24, i8 noundef zeroext %config1.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %entry._adt7316_store_enabled.exit_crit_edge

entry._adt7316_store_enabled.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %_adt7316_store_enabled.exit

if.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %config13.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %config1.0.i, ptr %config13.i, align 2
  br label %_adt7316_store_enabled.exit

_adt7316_store_enabled.exit:                      ; preds = %if.end9.i, %entry._adt7316_store_enabled.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -5, %entry._adt7316_store_enabled.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adt7316_probe(ptr noundef %dev, ptr nocapture noundef readonly %bus, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 40) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %3 = call ptr @memcpy(ptr %1, ptr %bus, i32 24)
  %arrayidx = getelementptr i8, ptr %name, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 51, label %if.end.if.end21_crit_edge
    i8 53, label %if.then12
  ]

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %if.end.if.end21_crit_edge
  %.sink177 = phi i8 [ -37, %if.then12 ], [ -53, %if.end.if.end21_crit_edge ]
  %arrayidx13 = getelementptr i8, ptr %name, i32 6
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  %add16 = add i8 %8, %.sink177
  %id18 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %id18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %add16, ptr %id18, align 4
  %id22 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %10 = zext i8 %add16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %add16, label %if.else43 [
    i8 1, label %if.end21.if.end46_crit_edge
    i8 17, label %if.end21.if.end46_crit_edge178
    i8 2, label %if.end21.if.then41_crit_edge
    i8 18, label %if.end21.if.then41_crit_edge179
  ]

if.end21.if.then41_crit_edge179:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.end21.if.then41_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.end21.if.end46_crit_edge178:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end21.if.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then41:                                        ; preds = %if.end21.if.then41_crit_edge, %if.end21.if.then41_crit_edge179
  br label %if.end46

if.else43:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then41, %if.end21.if.end46_crit_edge, %if.end21.if.end46_crit_edge178
  %.sink = phi i8 [ 10, %if.then41 ], [ 8, %if.else43 ], [ 12, %if.end21.if.end46_crit_edge ], [ 12, %if.end21.if.end46_crit_edge178 ]
  %dac_bits42 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %dac_bits42 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %dac_bits42, align 1
  %call47 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 3) #10
  %ldac_pin = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ldac_pin to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call47, ptr %ldac_pin, align 4
  %cmp.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %13) #13
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  %tobool55.not = icmp eq ptr %call47, null
  br i1 %tobool55.not, label %if.then56, label %if.end53.if.end68_crit_edge

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then56:                                        ; preds = %if.end53
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %config3, align 4
  %16 = or i8 %15, 8
  store i8 %16, ptr %config3, align 4
  %17 = ptrtoint ptr %id22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id22, align 4
  %19 = and i8 %18, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %19)
  %cmp61 = icmp eq i8 %19, 16
  br i1 %cmp61, label %if.then63, label %if.then56.if.end68_crit_edge

if.then56.if.end68_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then63:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %config1, align 2
  %22 = or i8 %21, 8
  store i8 %22, ptr %config1, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.then56.if.end68_crit_edge, %if.end53.if.end68_crit_edge
  %int_mask = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %id22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id22, align 4
  %25 = and i8 %24, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %25)
  %cmp72 = icmp eq i8 %25, 16
  %spec.store.select = select i1 %cmp72, i16 511, i16 287
  %26 = ptrtoint ptr %int_mask to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.store.select, ptr %int_mask, align 4
  %spec.select = select i1 %cmp72, ptr @adt7516_info, ptr @adt7316_info
  %27 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.select, ptr %27, align 8
  %name89 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %29 = ptrtoint ptr %name89 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name, ptr %name89, align 8
  %30 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %call, align 8
  %irq = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp91 = icmp sgt i32 %32, 0
  br i1 %cmp91, label %if.then93, label %if.end68.if.end98_crit_edge

if.end68.if.end98_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then93:                                        ; preds = %if.end68
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 8
  %irq.i = getelementptr inbounds %struct.adt7316_bus, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  %call1.i = tail call ptr @irq_get_irq_data(i32 noundef %36) #10
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call1.i, i32 0, i32 3
  %37 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and.i.i = and i32 %40, 15
  %switch.tableidx = add nsw i32 %and.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %41 = icmp ult i32 %switch.tableidx, 8
  br i1 %41, label %switch.hole_check, label %if.then93.do.end.i_crit_edge

if.then93.do.end.i_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.then93.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.92, i32 noundef %and.i.i) #13
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.then93
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %42 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.lobit.not = icmp eq i8 %42, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.adt7316_probe, i32 0, i32 %switch.tableidx
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %do.end.i
  %irq_type.0.i = phi i32 [ 8, %do.end.i ], [ %switch.load, %switch.lookup ]
  %dev4.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %44 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq.i, align 4
  %or.i = or i32 %irq_type.0.i, 8192
  %46 = ptrtoint ptr %name89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name89, align 8
  %call7.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev4.i, i32 noundef %45, ptr noundef null, ptr noundef nonnull @adt7316_event_handler, i32 noundef %or.i, ptr noundef %47, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %adt7316_setup_irq.exit

if.end.i:                                         ; preds = %sw.epilog.i
  %and.i = and i32 %irq_type.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end98_crit_edge, label %if.then15.i

if.end.i.if.end98_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %config1.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %34, i32 0, i32 3
  %48 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %config1.i, align 2
  %50 = or i8 %49, 64
  store i8 %50, ptr %config1.i, align 2
  br label %if.end98

adt7316_setup_irq.exit:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.95, i32 noundef %52) #13
  br label %cleanup

if.end98:                                         ; preds = %if.then15.i, %if.end.i.if.end98_crit_edge, %if.end68.if.end98_crit_edge
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %config1101 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %config1101 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %config1101, align 2
  %call102 = tail call i32 %54(ptr noundef %56, i8 noundef zeroext 24, i8 noundef zeroext %58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end105:                                        ; preds = %if.end98
  %59 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %config3110 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %config3110 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %config3110, align 4
  %call111 = tail call i32 %60(ptr noundef %62, i8 noundef zeroext 26, i8 noundef zeroext %64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end114:                                        ; preds = %if.end105
  %call115 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.end121, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %name89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name89, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %66) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %if.end114.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %adt7316_setup_irq.exit, %if.then50, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then50 ], [ 0, %do.end121 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call7.i, %adt7316_setup_irq.exit ], [ -5, %if.end98.cleanup_crit_edge ], [ -5, %if.end105.cleanup_crit_edge ], [ %call115, %if.end114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_int_mask(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %int_mask = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %int_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %int_mask, align 4
  %conv = zext i16 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_set_int_mask(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data, align 2, !annotation !284
  %call2 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %4)
  %cmp = icmp ugt i16 %4, 256
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = lshr i16 %4, 4
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 16
  %8 = xor i8 %7, 16
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call9 = call i32 %10(ptr noundef %12, i8 noundef zeroext 30, i8 noundef zeroext %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %int_mask = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %int_mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %int_mask, align 4
  %15 = and i16 %14, -257
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 2
  %18 = and i16 %17, 256
  %or61 = or i16 %18, %15
  store i16 %or61, ptr %int_mask, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end.if.end20_crit_edge
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data, align 2
  %21 = and i16 %20, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool23.not = icmp eq i16 %21, 0
  %22 = trunc i16 %20 to i8
  %23 = and i8 %22, 31
  %conv32 = xor i8 %23, 31
  %mask.1 = select i1 %tobool23.not, i8 %8, i8 %conv32
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call44 = call i32 %25(ptr noundef %27, i8 noundef zeroext 29, i8 noundef zeroext %mask.1) #10
  %conv45 = zext i8 %mask.1 to i16
  %int_mask46 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %int_mask46 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv45, ptr %int_mask46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end20 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_ad_bound(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !284
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp = icmp ult i8 %4, 16
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 40, i64 %6)
  %cmp3 = icmp ugt i64 %6, 40
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %read = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %address6 = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %11 = ptrtoint ptr %address6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %address6, align 8
  %conv7 = trunc i64 %12 to i8
  %call8 = call i32 %8(ptr noundef %10, i8 noundef zeroext %conv7, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %conv11 = zext i8 %14 to i32
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id, align 4
  %17 = and i8 %16, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %17)
  %cmp15 = icmp eq i8 %17, 16
  br i1 %cmp15, label %land.lhs.true17, label %if.then22

land.lhs.true17:                                  ; preds = %if.end10
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config1, align 2
  %20 = and i8 %19, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp20 = icmp eq i8 %20, 0
  %and23 = and i32 %conv11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond = select i1 %cmp20, i1 true, i1 %tobool24.not
  br i1 %or.cond, label %land.lhs.true17.if.end27_crit_edge, label %land.lhs.true17.if.then25_crit_edge

land.lhs.true17.if.then25_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

land.lhs.true17.if.end27_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end10
  %and23.old = and i32 %conv11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.old)
  %tobool24.not.old = icmp eq i32 %and23.old, 0
  br i1 %tobool24.not.old, label %if.then22.if.end27_crit_edge, label %if.then22.if.then25_crit_edge

if.then22.if.then25_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.then22.if.then25_crit_edge, %land.lhs.true17.if.then25_crit_edge
  %sub = or i32 %conv11, -256
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22.if.end27_crit_edge, %land.lhs.true17.if.end27_crit_edge
  %data.0 = phi i32 [ %conv11, %land.lhs.true17.if.end27_crit_edge ], [ %sub, %if.then25 ], [ %conv11, %if.then22.if.end27_crit_edge ]
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %data.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_set_ad_bound(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #6 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !284
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp = icmp ult i8 %4, 16
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 40, i64 %6)
  %cmp3 = icmp ugt i64 %6, 40
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %9 = and i8 %8, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp11 = icmp eq i8 %9, 16
  br i1 %cmp11, label %land.lhs.true13, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true13:                                  ; preds = %if.end7
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config1, align 2
  %12 = and i8 %11, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp16 = icmp eq i8 %12, 0
  br i1 %cmp16, label %if.then18, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true13
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %15 = icmp ugt i32 %14, 255
  br i1 %15, label %if.then18.cleanup_crit_edge, label %if.then18.if.end36_crit_edge

if.then18.if.end36_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %if.end7.if.else_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %18 = add i32 %17, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %18)
  %19 = icmp ult i32 %18, -256
  br i1 %19, label %if.else.cleanup_crit_edge, label %if.end31

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp32 = icmp slt i32 %17, 0
  br i1 %cmp32, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nsw i32 %17, 256
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %data, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge, %if.then18.if.end36_crit_edge
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %conv37 = trunc i32 %22 to i8
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %address39 = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %27 = ptrtoint ptr %address39 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %address39, align 8
  %conv40 = trunc i64 %28 to i8
  %call41 = call i32 %24(ptr noundef %26, i8 noundef zeroext %conv40, i8 noundef zeroext %conv37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %len. = select i1 %tobool42.not, i32 %len, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.else.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %len., %if.end36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_int_enabled(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config1, align 2
  %4 = lshr i8 %3, 5
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_set_int_enabled(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config12 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config12 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config12, align 2
  %4 = and i8 %3, -33
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 32, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 24, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %config12, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adt7316_show_all_modes(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.26, i32 28)
  ret i32 27
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adt7316_show_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config2, align 1
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 16)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.29, i32 13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 15, %if.then ], [ 12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config22 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config22 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config22, align 1
  %4 = and i8 %3, -17
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(14) %buf, ptr noundef nonnull dereferenceable(14) @.str.30, i32 14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %masksel = select i1 %tobool.not, i8 16, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call8 = tail call i32 %6(ptr noundef %8, i8 noundef zeroext 25, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %config22 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %config22, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_select_ex_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %4 = and i8 %3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp.not = icmp eq i8 %4, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config1, align 2
  %7 = lshr i8 %6, 2
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_select_ex_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %4 = and i8 %3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp.not = icmp eq i8 %4, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %config13 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %config13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config13, align 2
  %7 = and i8 %6, -5
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %9)
  %cmp8 = icmp eq i8 %9, 49
  %masksel = select i1 %cmp8, i8 4, i8 0
  %spec.select = or i8 %masksel, %7
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call15 = tail call i32 %11(ptr noundef %13, i8 noundef zeroext 24, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %config13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %config13, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end17 ], [ -1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_enabled(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config1, align 2
  %4 = and i8 %3, 1
  %5 = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_enabled(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %3)
  %cmp = icmp eq i8 %3, 49
  %config13.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %config13.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config13.i, align 2
  %6 = and i8 %5, -2
  %masksel.i = zext i1 %cmp to i8
  %config1.0.i = or i8 %6, %masksel.i
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 24, i8 noundef zeroext %config1.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %_adt7316_store_enabled.exit, label %entry._crit_edge

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %12

_adt7316_store_enabled.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config13.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %config1.0.i, ptr %config13.i, align 2
  br label %12

12:                                               ; preds = %_adt7316_store_enabled.exit, %entry._crit_edge
  %13 = phi i32 [ %len, %_adt7316_store_enabled.exit ], [ -5, %entry._crit_edge ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adt7316_show_ad_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %conv, 7
  %4 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %and4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb20
    i32 4, label %sw.bb30
    i32 5, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.34, i32 9)
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.35, i32 26)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %9 = and i8 %8, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp = icmp eq i8 %9, 16
  br i1 %cmp, label %land.lhs.true, label %sw.bb8.if.end18_crit_edge

sw.bb8.if.end18_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true:                                    ; preds = %sw.bb8
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config1, align 2
  %12 = and i8 %11, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp14 = icmp eq i8 %12, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %13 = call ptr @memcpy(ptr %buf, ptr @.str.36, i32 10)
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %sw.bb8.if.end18_crit_edge
  %14 = call ptr @memcpy(ptr %buf, ptr @.str.37, i32 26)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %config121 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %config121 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %config121, align 2
  %17 = and i8 %16, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp24 = icmp eq i8 %17, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %18 = call ptr @memcpy(ptr %buf, ptr @.str.38, i32 10)
  br label %cleanup

if.end28:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %19 = call ptr @memcpy(ptr %buf, ptr @.str.39, i32 5)
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  %config131 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %config131 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %config131, align 2
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool34.not = icmp eq i8 %22, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  %23 = call ptr @memcpy(ptr %buf, ptr @.str.40, i32 10)
  br label %cleanup

if.end37:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  %24 = call ptr @memcpy(ptr %buf, ptr @.str.39, i32 5)
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = call ptr @memcpy(ptr %buf, ptr @.str.41, i32 10)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call ptr @memcpy(ptr %buf, ptr @.str.39, i32 5)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb39, %if.end37, %if.then35, %if.end28, %if.then26, %if.end18, %if.then16, %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %sw.default ], [ 9, %sw.bb39 ], [ 9, %if.then35 ], [ 4, %if.end37 ], [ 9, %if.then26 ], [ 4, %if.end28 ], [ 9, %if.then16 ], [ 25, %if.end18 ], [ 25, %sw.bb6 ], [ 8, %sw.bb ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_ad_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !284
  %config22 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %config22 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config22, align 1
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %8 = and i8 %7, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp = icmp eq i8 %8, 16
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp12 = icmp ugt i8 %10, 5
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.then10.if.end29_crit_edge

if.then10.if.end29_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp21 = icmp ugt i8 %10, 2
  br i1 %cmp21, label %if.else.cleanup_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.then10.if.end29_crit_edge
  %.sink53 = phi i8 [ -8, %if.then10.if.end29_crit_edge ], [ -4, %if.else.if.end29_crit_edge ]
  %11 = ptrtoint ptr %config22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config22, align 1
  %13 = and i8 %12, %.sink53
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 1
  %or52 = or i8 %15, %13
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call34 = call i32 %17(ptr noundef %19, i8 noundef zeroext 25, i8 noundef zeroext %or52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %config22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or52, ptr %config22, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end29.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end37 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -5, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adt7316_show_all_ad_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config2, align 1
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %7 = and i8 %6, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %cmp = icmp eq i8 %7, 16
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 94)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.44, i32 59)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 93, %if.then5 ], [ 58, %if.end7 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_disable_averaging(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config2, align 1
  %4 = lshr i8 %3, 5
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_disable_averaging(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config22 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config22 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config22, align 1
  %4 = and i8 %3, -33
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 32, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 25, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %config22, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_enable_smbus_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config2, align 1
  %4 = lshr i8 %3, 6
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_enable_smbus_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config22 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config22 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config22, align 1
  %4 = and i8 %3, -65
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 64, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 25, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %config22, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_powerdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config1 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config1, align 2
  %.lobit = lshr i8 %3, 7
  %4 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %4)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_powerdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config12 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config12 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config12, align 2
  %4 = and i8 %3, 127
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 -128, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 24, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %config12, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_fast_ad_clock(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config3, align 4
  %4 = and i8 %3, 1
  %5 = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_fast_ad_clock(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config32 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config32 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config32, align 4
  %4 = and i8 %3, -2
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = zext i1 %cmp to i8
  %spec.select = or i8 %4, %masksel
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 26, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config32 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %config32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_AIN_internal_Vref(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %4 = and i8 %3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp.not = icmp eq i8 %4, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config3, align 4
  %7 = lshr i8 %6, 4
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_AIN_internal_Vref(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %4 = and i8 %3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp.not = icmp eq i8 %4, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp4.not = icmp eq i8 %6, 49
  %config311 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %config311 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config311, align 4
  %9 = and i8 %8, -17
  %masksel = select i1 %cmp4.not, i8 16, i8 0
  %config3.0 = or i8 %9, %masksel
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call16 = tail call i32 %11(ptr noundef %13, i8 noundef zeroext 26, i8 noundef zeroext %config3.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %config319 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %config319 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %config3.0, ptr %config319, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end18 ], [ -1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adt7316_show_da_high_resolution(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config3, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %6, label %if.then8 [
    i8 3, label %if.then.if.end10_crit_edge
    i8 20, label %if.then.if.end10_crit_edge16
  ]

if.then.if.end10_crit_edge16:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.51, i32 13)
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %if.then.if.end10_crit_edge16, %entry.if.end10_crit_edge
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.52, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8
  %retval.0 = phi i32 [ 12, %if.then8 ], [ 11, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_da_high_resolution(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %3, label %if.end [
    i8 3, label %entry.cleanup_crit_edge
    i8 20, label %entry.cleanup_crit_edge32
  ]

entry.cleanup_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %config37 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %config37 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config37, align 4
  %7 = and i8 %6, -3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %9)
  %cmp11 = icmp eq i8 %9, 49
  %masksel = select i1 %cmp11, i8 2, i8 0
  %spec.select = or i8 %masksel, %7
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call18 = tail call i32 %11(ptr noundef %13, i8 noundef zeroext 26, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %config37 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %config37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge32
  %retval.0 = phi i32 [ %len, %if.end20 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge32 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_enable_prop_DACA(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config3, align 4
  %4 = lshr i8 %3, 5
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_enable_prop_DACA(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config32 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config32 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config32, align 4
  %4 = and i8 %3, -33
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 32, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 26, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config32 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %config32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_enable_prop_DACB(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config3, align 4
  %4 = lshr i8 %3, 6
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_enable_prop_DACB(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config32 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config32 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config32, align 4
  %4 = and i8 %3, -65
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 64, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 26, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %config32 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %config32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DAC_2Vref_ch_mask(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dac_config = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dac_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_config, align 1
  %4 = and i8 %3, 15
  %and = zext i8 %4 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %and)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DAC_2Vref_ch_mask(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !284
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp = icmp ugt i8 %4, 15
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dac_config4 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dac_config4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dac_config4, align 1
  %7 = and i8 %6, -16
  %or26 = or i8 %7, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call11 = call i32 %9(ptr noundef %11, i8 noundef zeroext 27, i8 noundef zeroext %or26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dac_config4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or26, ptr %dac_config4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end14 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adt7316_show_DAC_update_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config3, align 4
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 7881702273299778048, ptr %buf, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %dac_config = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dac_config to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dac_config, align 1
  %8 = and i8 %7, 48
  %and4 = zext i8 %8 to i32
  %9 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %and4, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb6
    i32 32, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.58, i32 33)
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.59, i32 39)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = call ptr @memcpy(ptr %buf, ptr @.str.60, i32 34)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = call ptr @memcpy(ptr %buf, ptr @.str.61, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb, %if.then
  %retval.0 = phi i32 [ 11, %sw.default ], [ 33, %sw.bb8 ], [ 38, %sw.bb6 ], [ 32, %sw.bb ], [ 7, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DAC_update_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !284
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config3, align 4
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ugt i8 %7, 3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %dac_config8 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dac_config8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dac_config8, align 1
  %10 = and i8 %9, -49
  %shl = shl nuw nsw i8 %7, 4
  %or = or i8 %10, %shl
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call16 = call i32 %12(ptr noundef %14, i8 noundef zeroext 27, i8 noundef zeroext %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dac_config8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or, ptr %dac_config8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adt7316_show_all_DAC_update_modes(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config3, align 4
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.63, i32 115)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 7881702273299778048, ptr %buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 114, %if.then ], [ 7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_update_DAC(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !284
  %config3 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config3, align 4
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dac_config = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dac_config to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dac_config, align 1
  %8 = and i8 %7, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %8)
  %cmp.not = icmp eq i8 %8, 48
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call6 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %10)
  %cmp9 = icmp ugt i8 %10, 15
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %ldac_config13 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ldac_config13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ldac_config13, align 2
  %13 = and i8 %12, -16
  %or39 = or i8 %13, %10
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call21 = call i32 %15(ptr noundef %17, i8 noundef zeroext 28, i8 noundef zeroext %or39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end12.if.end26_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ldac_pin = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %ldac_pin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ldac_pin, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 0) #10
  %20 = ptrtoint ptr %ldac_pin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ldac_pin, align 4
  tail call void @gpiod_set_value(ptr noundef %21, i32 noundef 1) #10
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end12.if.end26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end26 ], [ -1, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DAC_internal_Vref(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %4 = and i8 %3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp = icmp eq i8 %4, 16
  %ldac_config = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %ldac_config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ldac_config, align 2
  %7 = lshr i8 %6, 4
  %. = select i1 %cmp, i8 3, i8 1
  %.str.12..str.14 = select i1 %cmp, ptr @.str.12, ptr @.str.14
  %.lobit = and i8 %7, %.
  %8 = zext i8 %.lobit to i32
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.12..str.14, i32 noundef %8)
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DAC_internal_Vref(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !284
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 4
  %5 = and i8 %4, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %cmp = icmp eq i8 %5, 16
  %call3 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp5 = icmp ugt i8 %7, 3
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %ldac_config8 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ldac_config8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ldac_config8, align 2
  %10 = and i8 %9, -49
  %11 = shl nuw nsw i8 %7, 4
  %12 = and i8 %11, 48
  %13 = or i8 %12, %10
  br label %if.end42

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end30, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ldac_config31 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %ldac_config31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ldac_config31, align 2
  %and33 = and i8 %15, -17
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool35.not = icmp eq i8 %17, 0
  %masksel = select i1 %tobool35.not, i8 0, i8 16
  %spec.select65 = or i8 %masksel, %and33
  br label %if.end42

if.end42:                                         ; preds = %if.end30, %if.end
  %ldac_config.1 = phi i8 [ %spec.select65, %if.end30 ], [ %13, %if.end ]
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call44 = call i32 %19(ptr noundef %21, i8 noundef zeroext 28, i8 noundef zeroext %ldac_config.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %ldac_config48 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %ldac_config48 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %ldac_config.1, ptr %ldac_config48, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end42.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end47 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -5, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_VDD(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %2 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msb.i, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %lsb.i, align 1, !annotation !284
  %config2.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config2.i, align 1
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.adt7316_show_ad.exit_crit_edge

entry.adt7316_show_ad.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_ad.exit

if.end.i:                                         ; preds = %entry
  %read26.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %read26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read26.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call29.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 3, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.adt7316_show_ad.exit_crit_edge

if.end.i.adt7316_show_ad.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_ad.exit

if.end32.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %read26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read26.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call39.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 6, ptr noundef nonnull %msb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end32.i.adt7316_show_ad.exit_crit_edge

if.end32.i.adt7316_show_ad.exit_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_ad.exit

if.end42.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %msb.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msb.i, align 1
  %conv43.i = zext i8 %15 to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 2
  %16 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lsb.i, align 1
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 3
  %20 = zext i8 %19 to i32
  %or49.i = or i32 %shl44.i, %20
  %call52.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %or49.i) #10
  br label %adt7316_show_ad.exit

adt7316_show_ad.exit:                             ; preds = %if.end42.i, %if.end32.i.adt7316_show_ad.exit_crit_edge, %if.end.i.adt7316_show_ad.exit_crit_edge, %entry.adt7316_show_ad.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end42.i ], [ -1, %entry.adt7316_show_ad.exit_crit_edge ], [ -5, %if.end.i.adt7316_show_ad.exit_crit_edge ], [ -5, %if.end32.i.adt7316_show_ad.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adt7316_show_ad(ptr nocapture noundef readonly %chip, i32 noundef %channel, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb) #10
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %msb, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb) #10
  %1 = ptrtoint ptr %lsb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %lsb, align 1, !annotation !284
  %config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %conv, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %channel)
  %cmp.not = icmp eq i32 %and3, %channel
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %channel, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end
  %read = getelementptr inbounds %struct.adt7316_bus, ptr %chip, i32 0, i32 2
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read, align 4
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %call = call i32 %6(ptr noundef %8, i8 noundef zeroext 3, ptr noundef nonnull %lsb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %9 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read, align 4
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %call14 = call i32 %10(ptr noundef %12, i8 noundef zeroext 7, ptr noundef nonnull %msb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msb, align 1
  %conv18 = zext i8 %14 to i16
  %shl = shl nuw nsw i16 %conv18, 2
  %15 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lsb, align 1
  %17 = and i8 %16, 3
  %and21 = zext i8 %17 to i16
  %or = or i16 %shl, %and21
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %read26 = getelementptr inbounds %struct.adt7316_bus, ptr %chip, i32 0, i32 2
  %18 = ptrtoint ptr %read26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read26, align 4
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %call29 = call i32 %19(ptr noundef %21, i8 noundef zeroext 3, ptr noundef nonnull %lsb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %sw.bb24
  %22 = ptrtoint ptr %read26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read26, align 4
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %call39 = call i32 %23(ptr noundef %25, i8 noundef zeroext 6, ptr noundef nonnull %msb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %msb, align 1
  %conv43 = zext i8 %27 to i32
  %shl44 = shl nuw nsw i32 %conv43, 2
  %28 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lsb, align 1
  %30 = lshr i8 %29, 2
  %31 = and i8 %30, 3
  %32 = zext i8 %31 to i32
  %or49 = or i32 %shl44, %32
  %call52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %or49)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %read54 = getelementptr inbounds %struct.adt7316_bus, ptr %chip, i32 0, i32 2
  %33 = ptrtoint ptr %read54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read54, align 4
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %call57 = call i32 %34(ptr noundef %36, i8 noundef zeroext 4, ptr noundef nonnull %lsb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60:                                         ; preds = %sw.default
  %37 = ptrtoint ptr %read54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read54, align 4
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %41 = trunc i32 %channel to i8
  %conv66 = add i8 %41, 6
  %call67 = call i32 %38(ptr noundef %40, i8 noundef zeroext %conv66, ptr noundef nonnull %msb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end60
  %42 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %msb, align 1
  %conv71 = zext i8 %43 to i32
  %shl72 = shl nuw nsw i32 %conv71, 2
  %44 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %lsb, align 1
  %conv74 = zext i8 %45 to i32
  %sub = shl i32 %channel, 1
  %mul = add i32 %sub, -4
  %shl75 = shl i32 3, %mul
  %and76 = and i32 %shl75, %conv74
  %or78 = or i32 %and76, %shl72
  %conv79 = trunc i32 %or78 to i16
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %chip, i32 0, i32 9
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %id, align 4
  %48 = and i8 %47, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %48)
  %cmp82 = icmp eq i8 %48, 16
  br i1 %cmp82, label %if.then84, label %if.end70.sw.epilog_crit_edge

if.end70.sw.epilog_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then84:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %or78)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end70.sw.epilog_crit_edge, %if.end17
  %data.0 = phi i16 [ %conv79, %if.end70.sw.epilog_crit_edge ], [ %or, %if.end17 ]
  %49 = and i16 %data.0, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool90.not = icmp eq i16 %49, 0
  %sub93 = sub nsw i16 2048, %data.0
  %spec.select = select i1 %tobool90.not, i16 %data.0, i16 %sub93
  %spec.select141 = select i1 %tobool90.not, i32 32, i32 45
  %conv97 = zext i16 %spec.select to i32
  %50 = lshr i32 %conv97, 2
  %and100 = and i32 %conv97, 2
  %mul101 = mul nuw nsw i32 %and100, 25
  %call102 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %spec.select141, i32 noundef %50, i32 noundef %mul101)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then84, %if.end60.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end42, %if.end32.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call86, %if.then84 ], [ %call102, %sw.epilog ], [ %call52, %if.end42 ], [ -1, %entry.cleanup_crit_edge ], [ -5, %sw.bb.cleanup_crit_edge ], [ -5, %if.end8.cleanup_crit_edge ], [ -5, %sw.bb24.cleanup_crit_edge ], [ -5, %if.end32.cleanup_crit_edge ], [ -5, %sw.default.cleanup_crit_edge ], [ -5, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_in_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %2 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msb.i, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %lsb.i, align 1, !annotation !284
  %config2.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config2.i, align 1
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3.i)
  %cmp.not.i = icmp eq i32 %and3.i, 1
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.adt7316_show_ad.exit_crit_edge

entry.adt7316_show_ad.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_ad.exit

if.end.i:                                         ; preds = %entry
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 3, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.adt7316_show_ad.exit_crit_edge

if.end.i.adt7316_show_ad.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_ad.exit

if.end8.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call14.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 7, ptr noundef nonnull %msb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end8.i.adt7316_show_ad.exit_crit_edge

if.end8.i.adt7316_show_ad.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_ad.exit

if.end17.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %msb.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msb.i, align 1
  %conv18.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lsb.i, align 1
  %18 = and i8 %17, 2
  %narrow = mul nuw nsw i8 %18, 25
  %mul101.i = zext i8 %narrow to i32
  %call102.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef 32, i32 noundef %conv18.i, i32 noundef %mul101.i) #10
  br label %adt7316_show_ad.exit

adt7316_show_ad.exit:                             ; preds = %if.end17.i, %if.end8.i.adt7316_show_ad.exit_crit_edge, %if.end.i.adt7316_show_ad.exit_crit_edge, %entry.adt7316_show_ad.exit_crit_edge
  %retval.0.i = phi i32 [ %call102.i, %if.end17.i ], [ -1, %entry.adt7316_show_ad.exit_crit_edge ], [ -5, %if.end.i.adt7316_show_ad.exit_crit_edge ], [ -5, %if.end8.i.adt7316_show_ad.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_ex_temp_AIN1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @adt7316_show_ad(ptr noundef %1, i32 noundef 2, ptr noundef %buf)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_AIN2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @adt7316_show_ad(ptr noundef %1, i32 noundef 3, ptr noundef %buf)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_AIN3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @adt7316_show_ad(ptr noundef %1, i32 noundef 4, ptr noundef %buf)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_AIN4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @adt7316_show_ad(ptr noundef %1, i32 noundef 5, ptr noundef %buf)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_in_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !284
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 %4(ptr noundef %6, i8 noundef zeroext 31, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adt7316_show_temp_offset.exit_crit_edge

entry.adt7316_show_temp_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_temp_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv2.i = zext i8 %8 to i32
  %and.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %sub.i = or i32 %conv2.i, -256
  %spec.select.i = select i1 %tobool4.not.i, i32 %conv2.i, i32 %sub.i
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %spec.select.i) #10
  br label %adt7316_show_temp_offset.exit

adt7316_show_temp_offset.exit:                    ; preds = %if.end.i, %entry.adt7316_show_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ -5, %entry.adt7316_show_temp_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_in_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data.i, align 4, !annotation !284
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.adt7316_store_temp_offset.exit_crit_edge

entry.adt7316_store_temp_offset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 4
  %5 = add i32 %4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %5)
  %6 = icmp ult i32 %5, -256
  br i1 %6, label %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, label %if.end.i

lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.i = icmp slt i32 %4, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %4, 256
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %data.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.i, align 4
  %conv.i = trunc i32 %9 to i8
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call8.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 31, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  %len..i = select i1 %tobool9.not.i, i32 %len, i32 -5
  br label %adt7316_store_temp_offset.exit

adt7316_store_temp_offset.exit:                   ; preds = %if.end5.i, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, %entry.adt7316_store_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge ], [ -22, %entry.adt7316_store_temp_offset.exit_crit_edge ], [ %len..i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_ex_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !284
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 %4(ptr noundef %6, i8 noundef zeroext 32, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adt7316_show_temp_offset.exit_crit_edge

entry.adt7316_show_temp_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_temp_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv2.i = zext i8 %8 to i32
  %and.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %sub.i = or i32 %conv2.i, -256
  %spec.select.i = select i1 %tobool4.not.i, i32 %conv2.i, i32 %sub.i
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %spec.select.i) #10
  br label %adt7316_show_temp_offset.exit

adt7316_show_temp_offset.exit:                    ; preds = %if.end.i, %entry.adt7316_show_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ -5, %entry.adt7316_show_temp_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_ex_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data.i, align 4, !annotation !284
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.adt7316_store_temp_offset.exit_crit_edge

entry.adt7316_store_temp_offset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 4
  %5 = add i32 %4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %5)
  %6 = icmp ult i32 %5, -256
  br i1 %6, label %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, label %if.end.i

lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.i = icmp slt i32 %4, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %4, 256
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %data.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.i, align 4
  %conv.i = trunc i32 %9 to i8
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call8.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 32, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  %len..i = select i1 %tobool9.not.i, i32 %len, i32 -5
  br label %adt7316_store_temp_offset.exit

adt7316_store_temp_offset.exit:                   ; preds = %if.end5.i, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, %entry.adt7316_store_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge ], [ -22, %entry.adt7316_store_temp_offset.exit_crit_edge ], [ %len..i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_in_analog_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !284
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 %4(ptr noundef %6, i8 noundef zeroext 33, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adt7316_show_temp_offset.exit_crit_edge

entry.adt7316_show_temp_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_temp_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv2.i = zext i8 %8 to i32
  %and.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %sub.i = or i32 %conv2.i, -256
  %spec.select.i = select i1 %tobool4.not.i, i32 %conv2.i, i32 %sub.i
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %spec.select.i) #10
  br label %adt7316_show_temp_offset.exit

adt7316_show_temp_offset.exit:                    ; preds = %if.end.i, %entry.adt7316_show_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ -5, %entry.adt7316_show_temp_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_in_analog_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data.i, align 4, !annotation !284
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.adt7316_store_temp_offset.exit_crit_edge

entry.adt7316_store_temp_offset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 4
  %5 = add i32 %4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %5)
  %6 = icmp ult i32 %5, -256
  br i1 %6, label %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, label %if.end.i

lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.i = icmp slt i32 %4, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %4, 256
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %data.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.i, align 4
  %conv.i = trunc i32 %9 to i8
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call8.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 33, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  %len..i = select i1 %tobool9.not.i, i32 %len, i32 -5
  br label %adt7316_store_temp_offset.exit

adt7316_store_temp_offset.exit:                   ; preds = %if.end5.i, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, %entry.adt7316_store_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge ], [ -22, %entry.adt7316_store_temp_offset.exit_crit_edge ], [ %len..i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_ex_analog_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !284
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 %4(ptr noundef %6, i8 noundef zeroext 34, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adt7316_show_temp_offset.exit_crit_edge

entry.adt7316_show_temp_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_temp_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv2.i = zext i8 %8 to i32
  %and.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %sub.i = or i32 %conv2.i, -256
  %spec.select.i = select i1 %tobool4.not.i, i32 %conv2.i, i32 %sub.i
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %spec.select.i) #10
  br label %adt7316_show_temp_offset.exit

adt7316_show_temp_offset.exit:                    ; preds = %if.end.i, %entry.adt7316_show_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ -5, %entry.adt7316_show_temp_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_ex_analog_temp_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data.i, align 4, !annotation !284
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.adt7316_store_temp_offset.exit_crit_edge

entry.adt7316_store_temp_offset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 4
  %5 = add i32 %4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %5)
  %6 = icmp ult i32 %5, -256
  br i1 %6, label %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, label %if.end.i

lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_temp_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.i = icmp slt i32 %4, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %4, 256
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %data.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.i, align 4
  %conv.i = trunc i32 %9 to i8
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call8.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 34, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  %len..i = select i1 %tobool9.not.i, i32 %len, i32 -5
  br label %adt7316_store_temp_offset.exit

adt7316_store_temp_offset.exit:                   ; preds = %if.end5.i, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge, %entry.adt7316_store_temp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.adt7316_store_temp_offset.exit_crit_edge ], [ -22, %entry.adt7316_store_temp_offset.exit_crit_edge ], [ %len..i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DAC_A(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %2 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msb.i, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %lsb.i, align 1, !annotation !284
  %config3.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %config3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config3.i, align 4
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adt7316_show_DAC.exit_crit_edge

entry.adt7316_show_DAC.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.end.i:                                         ; preds = %entry
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %8, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp14.i = icmp ugt i8 %8, 8
  br i1 %cmp14.i, label %if.then16.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then16.i:                                      ; preds = %if.end.i
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = call i32 %10(ptr noundef %12, i8 noundef zeroext 16, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.then16.i.if.end22.i_crit_edge, label %if.then16.i.adt7316_show_DAC.exit_crit_edge

if.then16.i.adt7316_show_DAC.exit_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %read24.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %read24.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read24.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call30.i = call i32 %14(ptr noundef %16, i8 noundef zeroext 17, ptr noundef nonnull %msb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end22.i.adt7316_show_DAC.exit_crit_edge

if.end22.i.adt7316_show_DAC.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.end33.i:                                       ; preds = %if.end22.i
  %17 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dac_bits.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %18, label %if.end33.i.if.end50.i_crit_edge [
    i8 12, label %if.then38.i
    i8 10, label %if.then45.i
  ]

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lsb.i, align 1
  %22 = lshr i8 %21, 4
  br label %if.end50.i

if.then45.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lsb.i, align 1
  %25 = lshr i8 %24, 6
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.then38.i, %if.end33.i.if.end50.i_crit_edge
  %data.0.shrunk.i = phi i8 [ %22, %if.then38.i ], [ %25, %if.then45.i ], [ 0, %if.end33.i.if.end50.i_crit_edge ]
  %data.0.i = zext i8 %data.0.shrunk.i to i32
  %26 = ptrtoint ptr %msb.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %msb.i, align 1
  %conv51.i = zext i8 %27 to i32
  %conv52.i = zext i8 %sub.i to i32
  %shl.i = shl i32 %conv51.i, %conv52.i
  %shl.masked.i = and i32 %shl.i, 65535
  %conv55.i = or i32 %shl.masked.i, %data.0.i
  %call56.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv55.i) #10
  br label %adt7316_show_DAC.exit

adt7316_show_DAC.exit:                            ; preds = %if.end50.i, %if.end22.i.adt7316_show_DAC.exit_crit_edge, %if.then16.i.adt7316_show_DAC.exit_crit_edge, %entry.adt7316_show_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ %call56.i, %if.end50.i ], [ -1, %entry.adt7316_show_DAC.exit_crit_edge ], [ -5, %if.then16.i.adt7316_show_DAC.exit_crit_edge ], [ -5, %if.end22.i.adt7316_show_DAC.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DAC_A(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data.i, align 2, !annotation !284
  %config3.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %config3.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config3.i, align 4
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adt7316_store_DAC.exit_crit_edge

entry.adt7316_store_DAC.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.end.i:                                         ; preds = %entry
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %7, -8
  %call.i = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.end.i.adt7316_store_DAC.exit_crit_edge

if.end.i.adt7316_store_DAC.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

lor.lhs.false13.i:                                ; preds = %if.end.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data.i, align 2
  %conv14.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dac_bits.i, align 1
  %conv16.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 1, %conv16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv14.i)
  %cmp17.not.i = icmp sgt i32 %shl.i, %conv14.i
  br i1 %cmp17.not.i, label %if.end20.i, label %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge

lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.end20.i:                                       ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp23.i = icmp ugt i8 %11, 8
  %conv27.i = zext i8 %sub.i to i32
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.if.end50.i_crit_edge

if.end20.i.if.end50.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then25.i:                                      ; preds = %if.end20.i
  %notmask.i = shl nsw i32 -1, %conv27.i
  %sub29.i = xor i32 %notmask.i, -1
  %and30.i = and i32 %conv14.i, %sub29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %11)
  %cmp34.i = icmp eq i8 %11, 12
  %and30.tr88.i = trunc i32 %and30.i to i8
  %lsb_reg.0.v.i = select i1 %cmp34.i, i8 4, i8 6
  %lsb_reg.0.i = shl i8 %and30.tr88.i, %lsb_reg.0.v.i
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call46.i = call i32 %13(ptr noundef %15, i8 noundef zeroext 16, i8 noundef zeroext %lsb_reg.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then25.i.if.end50.i_crit_edge, label %if.then25.i.adt7316_store_DAC.exit_crit_edge

if.then25.i.adt7316_store_DAC.exit_crit_edge:     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.then25.i.if.end50.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then25.i.if.end50.i_crit_edge, %if.end20.i.if.end50.i_crit_edge
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data.i, align 2
  %conv51.i = zext i16 %17 to i32
  %shr.i = lshr i32 %conv51.i, %conv27.i
  %conv53.i = trunc i32 %shr.i to i8
  %write55.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %write55.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write55.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call61.i = call i32 %19(ptr noundef %21, i8 noundef zeroext 17, i8 noundef zeroext %conv53.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  %len..i = select i1 %tobool62.not.i, i32 %len, i32 -5
  br label %adt7316_store_DAC.exit

adt7316_store_DAC.exit:                           ; preds = %if.end50.i, %if.then25.i.adt7316_store_DAC.exit_crit_edge, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge, %if.end.i.adt7316_store_DAC.exit_crit_edge, %entry.adt7316_store_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.adt7316_store_DAC.exit_crit_edge ], [ -22, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge ], [ -22, %if.end.i.adt7316_store_DAC.exit_crit_edge ], [ -5, %if.then25.i.adt7316_store_DAC.exit_crit_edge ], [ %len..i, %if.end50.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DAC_B(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %2 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msb.i, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %lsb.i, align 1, !annotation !284
  %config36.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %config36.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config36.i, align 4
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not.i = icmp eq i8 %6, 0
  br i1 %tobool9.not.i, label %if.end.i, label %entry.adt7316_show_DAC.exit_crit_edge

entry.adt7316_show_DAC.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.end.i:                                         ; preds = %entry
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %8, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp14.i = icmp ugt i8 %8, 8
  br i1 %cmp14.i, label %if.then16.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then16.i:                                      ; preds = %if.end.i
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = call i32 %10(ptr noundef %12, i8 noundef zeroext 18, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.then16.i.if.end22.i_crit_edge, label %if.then16.i.adt7316_show_DAC.exit_crit_edge

if.then16.i.adt7316_show_DAC.exit_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %read24.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %read24.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read24.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call30.i = call i32 %14(ptr noundef %16, i8 noundef zeroext 19, ptr noundef nonnull %msb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end22.i.adt7316_show_DAC.exit_crit_edge

if.end22.i.adt7316_show_DAC.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.end33.i:                                       ; preds = %if.end22.i
  %17 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dac_bits.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %18, label %if.end33.i.if.end50.i_crit_edge [
    i8 12, label %if.then38.i
    i8 10, label %if.then45.i
  ]

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lsb.i, align 1
  %22 = lshr i8 %21, 4
  br label %if.end50.i

if.then45.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lsb.i, align 1
  %25 = lshr i8 %24, 6
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.then38.i, %if.end33.i.if.end50.i_crit_edge
  %data.0.shrunk.i = phi i8 [ %22, %if.then38.i ], [ %25, %if.then45.i ], [ 0, %if.end33.i.if.end50.i_crit_edge ]
  %data.0.i = zext i8 %data.0.shrunk.i to i32
  %26 = ptrtoint ptr %msb.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %msb.i, align 1
  %conv51.i = zext i8 %27 to i32
  %conv52.i = zext i8 %sub.i to i32
  %shl.i = shl i32 %conv51.i, %conv52.i
  %shl.masked.i = and i32 %shl.i, 65535
  %conv55.i = or i32 %shl.masked.i, %data.0.i
  %call56.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv55.i) #10
  br label %adt7316_show_DAC.exit

adt7316_show_DAC.exit:                            ; preds = %if.end50.i, %if.end22.i.adt7316_show_DAC.exit_crit_edge, %if.then16.i.adt7316_show_DAC.exit_crit_edge, %entry.adt7316_show_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ %call56.i, %if.end50.i ], [ -1, %entry.adt7316_show_DAC.exit_crit_edge ], [ -5, %if.then16.i.adt7316_show_DAC.exit_crit_edge ], [ -5, %if.end22.i.adt7316_show_DAC.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DAC_B(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data.i, align 2, !annotation !284
  %config36.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %config36.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config36.i, align 4
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not.i = icmp eq i8 %5, 0
  br i1 %tobool9.not.i, label %if.end.i, label %entry.adt7316_store_DAC.exit_crit_edge

entry.adt7316_store_DAC.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.end.i:                                         ; preds = %entry
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %7, -8
  %call.i = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.end.i.adt7316_store_DAC.exit_crit_edge

if.end.i.adt7316_store_DAC.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

lor.lhs.false13.i:                                ; preds = %if.end.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data.i, align 2
  %conv14.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dac_bits.i, align 1
  %conv16.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 1, %conv16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv14.i)
  %cmp17.not.i = icmp sgt i32 %shl.i, %conv14.i
  br i1 %cmp17.not.i, label %if.end20.i, label %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge

lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.end20.i:                                       ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp23.i = icmp ugt i8 %11, 8
  %conv27.i = zext i8 %sub.i to i32
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.if.end50.i_crit_edge

if.end20.i.if.end50.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then25.i:                                      ; preds = %if.end20.i
  %notmask.i = shl nsw i32 -1, %conv27.i
  %sub29.i = xor i32 %notmask.i, -1
  %and30.i = and i32 %conv14.i, %sub29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %11)
  %cmp34.i = icmp eq i8 %11, 12
  %and30.tr88.i = trunc i32 %and30.i to i8
  %lsb_reg.0.v.i = select i1 %cmp34.i, i8 4, i8 6
  %lsb_reg.0.i = shl i8 %and30.tr88.i, %lsb_reg.0.v.i
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call46.i = call i32 %13(ptr noundef %15, i8 noundef zeroext 18, i8 noundef zeroext %lsb_reg.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then25.i.if.end50.i_crit_edge, label %if.then25.i.adt7316_store_DAC.exit_crit_edge

if.then25.i.adt7316_store_DAC.exit_crit_edge:     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.then25.i.if.end50.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then25.i.if.end50.i_crit_edge, %if.end20.i.if.end50.i_crit_edge
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data.i, align 2
  %conv51.i = zext i16 %17 to i32
  %shr.i = lshr i32 %conv51.i, %conv27.i
  %conv53.i = trunc i32 %shr.i to i8
  %write55.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %write55.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write55.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call61.i = call i32 %19(ptr noundef %21, i8 noundef zeroext 19, i8 noundef zeroext %conv53.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  %len..i = select i1 %tobool62.not.i, i32 %len, i32 -5
  br label %adt7316_store_DAC.exit

adt7316_store_DAC.exit:                           ; preds = %if.end50.i, %if.then25.i.adt7316_store_DAC.exit_crit_edge, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge, %if.end.i.adt7316_store_DAC.exit_crit_edge, %entry.adt7316_store_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.adt7316_store_DAC.exit_crit_edge ], [ -22, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge ], [ -22, %if.end.i.adt7316_store_DAC.exit_crit_edge ], [ -5, %if.then25.i.adt7316_store_DAC.exit_crit_edge ], [ %len..i, %if.end50.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DAC_C(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %2 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msb.i, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %lsb.i, align 1, !annotation !284
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %5, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp14.i = icmp ugt i8 %5, 8
  br i1 %cmp14.i, label %if.then16.i, label %entry.if.end22.i_crit_edge

entry.if.end22.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then16.i:                                      ; preds = %entry
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 20, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.then16.i.if.end22.i_crit_edge, label %if.then16.i.adt7316_show_DAC.exit_crit_edge

if.then16.i.adt7316_show_DAC.exit_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i.if.end22.i_crit_edge, %entry.if.end22.i_crit_edge
  %read24.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %read24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read24.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call30.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 21, ptr noundef nonnull %msb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end22.i.adt7316_show_DAC.exit_crit_edge

if.end22.i.adt7316_show_DAC.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.end33.i:                                       ; preds = %if.end22.i
  %14 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dac_bits.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %15, label %if.end33.i.if.end50.i_crit_edge [
    i8 12, label %if.then38.i
    i8 10, label %if.then45.i
  ]

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lsb.i, align 1
  %19 = lshr i8 %18, 4
  br label %if.end50.i

if.then45.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lsb.i, align 1
  %22 = lshr i8 %21, 6
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.then38.i, %if.end33.i.if.end50.i_crit_edge
  %data.0.shrunk.i = phi i8 [ %19, %if.then38.i ], [ %22, %if.then45.i ], [ 0, %if.end33.i.if.end50.i_crit_edge ]
  %data.0.i = zext i8 %data.0.shrunk.i to i32
  %23 = ptrtoint ptr %msb.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msb.i, align 1
  %conv51.i = zext i8 %24 to i32
  %conv52.i = zext i8 %sub.i to i32
  %shl.i = shl i32 %conv51.i, %conv52.i
  %shl.masked.i = and i32 %shl.i, 65535
  %conv55.i = or i32 %shl.masked.i, %data.0.i
  %call56.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv55.i) #10
  br label %adt7316_show_DAC.exit

adt7316_show_DAC.exit:                            ; preds = %if.end50.i, %if.end22.i.adt7316_show_DAC.exit_crit_edge, %if.then16.i.adt7316_show_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ %call56.i, %if.end50.i ], [ -5, %if.then16.i.adt7316_show_DAC.exit_crit_edge ], [ -5, %if.end22.i.adt7316_show_DAC.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DAC_C(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data.i, align 2, !annotation !284
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %4, -8
  %call.i = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %entry.adt7316_store_DAC.exit_crit_edge

entry.adt7316_store_DAC.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

lor.lhs.false13.i:                                ; preds = %entry
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data.i, align 2
  %conv14.i = zext i16 %6 to i32
  %7 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dac_bits.i, align 1
  %conv16.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv14.i)
  %cmp17.not.i = icmp sgt i32 %shl.i, %conv14.i
  br i1 %cmp17.not.i, label %if.end20.i, label %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge

lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.end20.i:                                       ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp23.i = icmp ugt i8 %8, 8
  %conv27.i = zext i8 %sub.i to i32
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.if.end50.i_crit_edge

if.end20.i.if.end50.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then25.i:                                      ; preds = %if.end20.i
  %notmask.i = shl nsw i32 -1, %conv27.i
  %sub29.i = xor i32 %notmask.i, -1
  %and30.i = and i32 %conv14.i, %sub29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %cmp34.i = icmp eq i8 %8, 12
  %and30.tr88.i = trunc i32 %and30.i to i8
  %lsb_reg.0.v.i = select i1 %cmp34.i, i8 4, i8 6
  %lsb_reg.0.i = shl i8 %and30.tr88.i, %lsb_reg.0.v.i
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call46.i = call i32 %10(ptr noundef %12, i8 noundef zeroext 20, i8 noundef zeroext %lsb_reg.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then25.i.if.end50.i_crit_edge, label %if.then25.i.adt7316_store_DAC.exit_crit_edge

if.then25.i.adt7316_store_DAC.exit_crit_edge:     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.then25.i.if.end50.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then25.i.if.end50.i_crit_edge, %if.end20.i.if.end50.i_crit_edge
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data.i, align 2
  %conv51.i = zext i16 %14 to i32
  %shr.i = lshr i32 %conv51.i, %conv27.i
  %conv53.i = trunc i32 %shr.i to i8
  %write55.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %write55.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write55.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call61.i = call i32 %16(ptr noundef %18, i8 noundef zeroext 21, i8 noundef zeroext %conv53.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  %len..i = select i1 %tobool62.not.i, i32 %len, i32 -5
  br label %adt7316_store_DAC.exit

adt7316_store_DAC.exit:                           ; preds = %if.end50.i, %if.then25.i.adt7316_store_DAC.exit_crit_edge, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge, %entry.adt7316_store_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge ], [ -22, %entry.adt7316_store_DAC.exit_crit_edge ], [ -5, %if.then25.i.adt7316_store_DAC.exit_crit_edge ], [ %len..i, %if.end50.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DAC_D(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %2 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msb.i, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %lsb.i, align 1, !annotation !284
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %5, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp14.i = icmp ugt i8 %5, 8
  br i1 %cmp14.i, label %if.then16.i, label %entry.if.end22.i_crit_edge

entry.if.end22.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then16.i:                                      ; preds = %entry
  %read.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = call i32 %7(ptr noundef %9, i8 noundef zeroext 22, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.then16.i.if.end22.i_crit_edge, label %if.then16.i.adt7316_show_DAC.exit_crit_edge

if.then16.i.adt7316_show_DAC.exit_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i.if.end22.i_crit_edge, %entry.if.end22.i_crit_edge
  %read24.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %read24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read24.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call30.i = call i32 %11(ptr noundef %13, i8 noundef zeroext 23, ptr noundef nonnull %msb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end22.i.adt7316_show_DAC.exit_crit_edge

if.end22.i.adt7316_show_DAC.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_show_DAC.exit

if.end33.i:                                       ; preds = %if.end22.i
  %14 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dac_bits.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %15, label %if.end33.i.if.end50.i_crit_edge [
    i8 12, label %if.then38.i
    i8 10, label %if.then45.i
  ]

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lsb.i, align 1
  %19 = lshr i8 %18, 4
  br label %if.end50.i

if.then45.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lsb.i, align 1
  %22 = lshr i8 %21, 6
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.then38.i, %if.end33.i.if.end50.i_crit_edge
  %data.0.shrunk.i = phi i8 [ %19, %if.then38.i ], [ %22, %if.then45.i ], [ 0, %if.end33.i.if.end50.i_crit_edge ]
  %data.0.i = zext i8 %data.0.shrunk.i to i32
  %23 = ptrtoint ptr %msb.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msb.i, align 1
  %conv51.i = zext i8 %24 to i32
  %conv52.i = zext i8 %sub.i to i32
  %shl.i = shl i32 %conv51.i, %conv52.i
  %shl.masked.i = and i32 %shl.i, 65535
  %conv55.i = or i32 %shl.masked.i, %data.0.i
  %call56.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv55.i) #10
  br label %adt7316_show_DAC.exit

adt7316_show_DAC.exit:                            ; preds = %if.end50.i, %if.end22.i.adt7316_show_DAC.exit_crit_edge, %if.then16.i.adt7316_show_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ %call56.i, %if.end50.i ], [ -5, %if.then16.i.adt7316_show_DAC.exit_crit_edge ], [ -5, %if.end22.i.adt7316_show_DAC.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DAC_D(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data.i, align 2, !annotation !284
  %dac_bits.i = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dac_bits.i, align 1
  %sub.i = add i8 %4, -8
  %call.i = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %entry.adt7316_store_DAC.exit_crit_edge

entry.adt7316_store_DAC.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

lor.lhs.false13.i:                                ; preds = %entry
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data.i, align 2
  %conv14.i = zext i16 %6 to i32
  %7 = ptrtoint ptr %dac_bits.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dac_bits.i, align 1
  %conv16.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv14.i)
  %cmp17.not.i = icmp sgt i32 %shl.i, %conv14.i
  br i1 %cmp17.not.i, label %if.end20.i, label %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge

lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.end20.i:                                       ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp23.i = icmp ugt i8 %8, 8
  %conv27.i = zext i8 %sub.i to i32
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.if.end50.i_crit_edge

if.end20.i.if.end50.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then25.i:                                      ; preds = %if.end20.i
  %notmask.i = shl nsw i32 -1, %conv27.i
  %sub29.i = xor i32 %notmask.i, -1
  %and30.i = and i32 %conv14.i, %sub29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %cmp34.i = icmp eq i8 %8, 12
  %and30.tr88.i = trunc i32 %and30.i to i8
  %lsb_reg.0.v.i = select i1 %cmp34.i, i8 4, i8 6
  %lsb_reg.0.i = shl i8 %and30.tr88.i, %lsb_reg.0.v.i
  %write.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call46.i = call i32 %10(ptr noundef %12, i8 noundef zeroext 22, i8 noundef zeroext %lsb_reg.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then25.i.if.end50.i_crit_edge, label %if.then25.i.adt7316_store_DAC.exit_crit_edge

if.then25.i.adt7316_store_DAC.exit_crit_edge:     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adt7316_store_DAC.exit

if.then25.i.if.end50.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then25.i.if.end50.i_crit_edge, %if.end20.i.if.end50.i_crit_edge
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data.i, align 2
  %conv51.i = zext i16 %14 to i32
  %shr.i = lshr i32 %conv51.i, %conv27.i
  %conv53.i = trunc i32 %shr.i to i8
  %write55.i = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %write55.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write55.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call61.i = call i32 %16(ptr noundef %18, i8 noundef zeroext 23, i8 noundef zeroext %conv53.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  %len..i = select i1 %tobool62.not.i, i32 %len, i32 -5
  br label %adt7316_store_DAC.exit

adt7316_store_DAC.exit:                           ; preds = %if.end50.i, %if.then25.i.adt7316_store_DAC.exit_crit_edge, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge, %entry.adt7316_store_DAC.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false13.i.adt7316_store_DAC.exit_crit_edge ], [ -22, %entry.adt7316_store_DAC.exit_crit_edge ], [ -5, %if.then25.i.adt7316_store_DAC.exit_crit_edge ], [ %len..i, %if.end50.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_device_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #10
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %id, align 1, !annotation !284
  %read = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3 = call i32 %4(ptr noundef %6, i8 noundef zeroext 77, ptr noundef nonnull %id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 1
  %conv = zext i8 %8 to i32
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_manufactorer_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #10
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %id, align 1, !annotation !284
  %read = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3 = call i32 %4(ptr noundef %6, i8 noundef zeroext 78, ptr noundef nonnull %id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 1
  %conv = zext i8 %8 to i32
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_device_rev(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %rev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rev) #10
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rev, align 1, !annotation !284
  %read = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3 = call i32 %4(ptr noundef %6, i8 noundef zeroext 79, ptr noundef nonnull %rev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rev, align 1
  %conv = zext i8 %8 to i32
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rev) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_bus_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #10
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %stat, align 1, !annotation !284
  %read = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3 = call i32 %4(ptr noundef %6, i8 noundef zeroext 127, ptr noundef nonnull %stat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.85, i32 5)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.86, i32 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.then5 ], [ 4, %if.end7 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DA_AB_Vref_bypass(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dac_config = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dac_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_config, align 1
  %4 = lshr i8 %3, 6
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DA_AB_Vref_bypass(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dac_config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dac_config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_config2, align 1
  %4 = and i8 %3, -65
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 64, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 27, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dac_config2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %dac_config2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_show_DA_CD_Vref_bypass(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dac_config = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dac_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_config, align 1
  %.lobit = lshr i8 %3, 7
  %4 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %4)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_store_DA_CD_Vref_bypass(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dac_config2 = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dac_config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_config2, align 1
  %4 = and i8 %3, 127
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %6)
  %cmp = icmp eq i8 %6, 49
  %masksel = select i1 %cmp, i8 -128, i8 0
  %spec.select = or i8 %masksel, %4
  %write = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 27, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dac_config2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %dac_config2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_event_handler(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  %stat1 = alloca i8, align 1
  %stat2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat1) #10
  %2 = ptrtoint ptr %stat1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %stat1, align 1, !annotation !284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat2) #10
  %3 = ptrtoint ptr %stat2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %stat2, align 1, !annotation !284
  %read = getelementptr inbounds %struct.adt7316_bus, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2 = call i32 %5(ptr noundef %7, i8 noundef zeroext 0, ptr noundef nonnull %stat1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end51_crit_edge

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.adt7316_chip_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %10 = and i8 %9, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %cmp.not = icmp eq i8 %10, 16
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %stat1, align 1
  %13 = and i8 %12, 31
  store i8 %13, ptr %stat1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call8 = call i64 @iio_get_time_ns(ptr noundef %private) #10
  %14 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %stat1, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 281513631416320, i64 noundef %call8) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %17 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stat1, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.then18

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 562988608126976, i64 noundef %call8) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %20 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stat1, align 1
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 281513631416321, i64 noundef %call8) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %23 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %stat1, align 1
  %25 = and i8 %24, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool29.not = icmp eq i8 %25, 0
  br i1 %tobool29.not, label %if.end26.if.end32_crit_edge, label %if.then30

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 562988608126977, i64 noundef %call8) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge
  %26 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stat1, align 1
  %28 = and i8 %27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool35.not = icmp eq i8 %28, 0
  br i1 %tobool35.not, label %if.end32.if.end38_crit_edge, label %if.then36

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 1, i64 noundef %call8) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %29 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stat1, align 1
  %31 = and i8 %30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool41.not = icmp eq i8 %31, 0
  br i1 %tobool41.not, label %if.end38.if.end44_crit_edge, label %if.then42

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 2, i64 noundef %call8) #10
  %32 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %stat1, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end38.if.end44_crit_edge
  %33 = phi i8 [ %.pr, %if.then42 ], [ %30, %if.end38.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %tobool47.not = icmp sgt i8 %33, -1
  br i1 %tobool47.not, label %if.end44.if.end51_crit_edge, label %if.then48

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 3, i64 noundef %call8) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end44.if.end51_crit_edge, %entry.if.end51_crit_edge
  %34 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call56 = call i32 %35(ptr noundef %37, i8 noundef zeroext 1, ptr noundef nonnull %stat2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %if.end51.if.end66_crit_edge

if.end51.if.end66_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then58:                                        ; preds = %if.end51
  %38 = ptrtoint ptr %stat2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stat2, align 1
  %40 = and i8 %39, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool61.not = icmp eq i8 %40, 0
  br i1 %tobool61.not, label %if.then58.if.end66_crit_edge, label %if.then62

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = call i64 @iio_get_time_ns(ptr noundef %private) #10
  %call64 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 281474976710656, i64 noundef %call63) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.then58.if.end66_crit_edge, %if.end51.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat1) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !82, !83, !85, !87, !88, !90, !92, !94, !96, !97, !99, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !124, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !164, !166, !168, !170, !172, !173, !175, !177, !178, !180, !181, !183, !184, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !241, !243, !245, !247, !249, !250, !252, !253, !255, !257, !259, !260, !262, !263, !265, !266, !268, !269, !270, !271, !273, !274}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__ksymtab_adt7316_pm_ops, !1, !"__ksymtab_adt7316_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2110, i32 1}
!2 = !{ptr @adt7316_pm_ops, !3, !"adt7316_pm_ops", i1 false, i1 false}
!3 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2111, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2157, i32 48}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2161, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @adt7316_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @adt7316_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2199, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adt7316_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @adt7316_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_adt7316_probe, !20, !"__ksymtab_adt7316_probe", i1 false, i1 false}
!20 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2204, i32 1}
!21 = !{ptr @__UNIQUE_ID_author288, !22, !"__UNIQUE_ID_author288", i1 false, i1 false}
!22 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2206, i32 1}
!23 = !{ptr @__UNIQUE_ID_description289, !24, !"__UNIQUE_ID_description289", i1 false, i1 false}
!24 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2207, i32 1}
!25 = !{ptr @__UNIQUE_ID_file290, !26, !"__UNIQUE_ID_file290", i1 false, i1 false}
!26 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2208, i32 1}
!27 = !{ptr @__UNIQUE_ID_license291, !26, !"__UNIQUE_ID_license291", i1 false, i1 false}
!28 = !{ptr @adt7516_info, !29, !"adt7516_info", i1 false, i1 false}
!29 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2119, i32 30}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2091, i32 10}
!32 = !{ptr @adt7516_event_attribute_group, !33, !"adt7516_event_attribute_group", i1 false, i1 false}
!33 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2089, i32 37}
!34 = !{ptr @adt7516_event_attributes, !35, !"adt7516_event_attributes", i1 false, i1 false}
!35 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2073, i32 26}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1999, i32 8}
!38 = !{ptr @iio_dev_attr_int_mask, !37, !"iio_dev_attr_int_mask", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1848, i32 22}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2003, i32 8}
!43 = !{ptr @iio_dev_attr_in_temp_high_value, !42, !"iio_dev_attr_in_temp_high_value", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1922, i32 22}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2007, i32 8}
!48 = !{ptr @iio_dev_attr_in_temp_low_value, !47, !"iio_dev_attr_in_temp_low_value", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2021, i32 8}
!51 = !{ptr @iio_dev_attr_ex_temp_ain1_high_value, !50, !"iio_dev_attr_ex_temp_ain1_high_value", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2025, i32 8}
!54 = !{ptr @iio_dev_attr_ex_temp_ain1_low_value, !53, !"iio_dev_attr_ex_temp_ain1_low_value", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2029, i32 8}
!57 = !{ptr @iio_dev_attr_ain2_high_value, !56, !"iio_dev_attr_ain2_high_value", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2033, i32 8}
!60 = !{ptr @iio_dev_attr_ain2_low_value, !59, !"iio_dev_attr_ain2_low_value", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2037, i32 8}
!63 = !{ptr @iio_dev_attr_ain3_high_value, !62, !"iio_dev_attr_ain3_high_value", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2041, i32 8}
!66 = !{ptr @iio_dev_attr_ain3_low_value, !65, !"iio_dev_attr_ain3_low_value", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2045, i32 8}
!69 = !{ptr @iio_dev_attr_ain4_high_value, !68, !"iio_dev_attr_ain4_high_value", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2049, i32 8}
!72 = !{ptr @iio_dev_attr_ain4_low_value, !71, !"iio_dev_attr_ain4_low_value", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2053, i32 8}
!75 = !{ptr @iio_dev_attr_int_enabled, !74, !"iio_dev_attr_int_enabled", i1 false, i1 false}
!76 = !{ptr @adt7516_attribute_group, !77, !"adt7516_attribute_group", i1 false, i1 false}
!77 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1726, i32 37}
!78 = !{ptr @adt7516_attributes, !79, !"adt7516_attributes", i1 false, i1 false}
!79 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1685, i32 26}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 368, i32 8}
!82 = !{ptr @iio_dev_attr_all_modes, !81, !"iio_dev_attr_all_modes", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 365, i32 22}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 356, i32 8}
!87 = !{ptr @iio_dev_attr_mode, !86, !"iio_dev_attr_mode", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 328, i32 23}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 330, i32 22}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 344, i32 19}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 315, i32 8}
!96 = !{ptr @iio_dev_attr_select_ex_temp, !95, !"iio_dev_attr_select_ex_temp", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 271, i32 8}
!99 = !{ptr @iio_dev_attr_enabled, !98, !"iio_dev_attr_enabled", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 449, i32 8}
!102 = !{ptr @iio_dev_attr_ad_channel, !101, !"iio_dev_attr_ad_channel", i1 false, i1 false}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 382, i32 23}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 384, i32 23}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 388, i32 24}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 390, i32 23}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 393, i32 24}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 395, i32 23}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 398, i32 24}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 402, i32 23}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 472, i32 8}
!121 = !{ptr @iio_dev_attr_all_ad_channels, !120, !"iio_dev_attr_all_ad_channels", i1 false, i1 false}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 465, i32 23}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 468, i32 22}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 509, i32 8}
!128 = !{ptr @iio_dev_attr_disable_averaging, !127, !"iio_dev_attr_disable_averaging", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 548, i32 8}
!131 = !{ptr @iio_dev_attr_enable_smbus_timeout, !130, !"iio_dev_attr_enable_smbus_timeout", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 586, i32 8}
!134 = !{ptr @iio_dev_attr_powerdown, !133, !"iio_dev_attr_powerdown", i1 false, i1 false}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 624, i32 8}
!137 = !{ptr @iio_dev_attr_fast_ad_clock, !136, !"iio_dev_attr_fast_ad_clock", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 716, i32 8}
!140 = !{ptr @iio_dev_attr_AIN_internal_Vref, !139, !"iio_dev_attr_AIN_internal_Vref", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 670, i32 8}
!143 = !{ptr @iio_dev_attr_da_high_resolution, !142, !"iio_dev_attr_da_high_resolution", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 638, i32 24}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 641, i32 22}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 755, i32 8}
!150 = !{ptr @iio_dev_attr_enable_proportion_DACA, !149, !"iio_dev_attr_enable_proportion_DACA", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 794, i32 8}
!153 = !{ptr @iio_dev_attr_enable_proportion_DACB, !152, !"iio_dev_attr_enable_proportion_DACB", i1 false, i1 false}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 837, i32 8}
!156 = !{ptr @iio_dev_attr_DAC_2Vref_channels_mask, !155, !"iio_dev_attr_DAC_2Vref_channels_mask", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 897, i32 8}
!159 = !{ptr @iio_dev_attr_DAC_update_mode, !158, !"iio_dev_attr_DAC_update_mode", i1 false, i1 false}
!160 = distinct !{null, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 850, i32 23}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 855, i32 4}
!164 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 858, i32 4}
!166 = !{ptr @.str.60, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 861, i32 4}
!168 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 863, i32 23}
!170 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 917, i32 8}
!172 = !{ptr @iio_dev_attr_all_DAC_update_modes, !171, !"iio_dev_attr_all_DAC_update_modes", i1 false, i1 false}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 910, i32 23}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 955, i32 8}
!177 = !{ptr @iio_dev_attr_update_DAC, !176, !"iio_dev_attr_update_DAC", i1 false, i1 false}
!178 = !{ptr @.str.65, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1094, i32 8}
!180 = !{ptr @iio_dev_attr_DAC_internal_Vref, !179, !"iio_dev_attr_DAC_internal_Vref", i1 false, i1 false}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1183, i32 8}
!183 = !{ptr @iio_dev_attr_VDD, !182, !"iio_dev_attr_VDD", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1169, i32 22}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1195, i32 8}
!188 = !{ptr @iio_dev_attr_in_temp, !187, !"iio_dev_attr_in_temp", i1 false, i1 false}
!189 = !{ptr @.str.69, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1207, i32 8}
!191 = !{ptr @iio_dev_attr_ex_temp_AIN1, !190, !"iio_dev_attr_ex_temp_AIN1", i1 false, i1 false}
!192 = !{ptr @.str.70, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1220, i32 8}
!194 = !{ptr @iio_dev_attr_AIN2, !193, !"iio_dev_attr_AIN2", i1 false, i1 false}
!195 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1231, i32 8}
!197 = !{ptr @iio_dev_attr_AIN3, !196, !"iio_dev_attr_AIN3", i1 false, i1 false}
!198 = !{ptr @.str.72, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1242, i32 8}
!200 = !{ptr @iio_dev_attr_AIN4, !199, !"iio_dev_attr_AIN4", i1 false, i1 false}
!201 = !{ptr @.str.73, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1309, i32 8}
!203 = !{ptr @iio_dev_attr_in_temp_offset, !202, !"iio_dev_attr_in_temp_offset", i1 false, i1 false}
!204 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1335, i32 8}
!206 = !{ptr @iio_dev_attr_ex_temp_offset, !205, !"iio_dev_attr_ex_temp_offset", i1 false, i1 false}
!207 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1362, i32 8}
!209 = !{ptr @iio_dev_attr_in_analog_temp_offset, !208, !"iio_dev_attr_in_analog_temp_offset", i1 false, i1 false}
!210 = !{ptr @.str.76, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1389, i32 8}
!212 = !{ptr @iio_dev_attr_ex_analog_temp_offset, !211, !"iio_dev_attr_ex_analog_temp_offset", i1 false, i1 false}
!213 = !{ptr @.str.77, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1492, i32 8}
!215 = !{ptr @iio_dev_attr_DAC_A, !214, !"iio_dev_attr_DAC_A", i1 false, i1 false}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1516, i32 8}
!218 = !{ptr @iio_dev_attr_DAC_B, !217, !"iio_dev_attr_DAC_B", i1 false, i1 false}
!219 = !{ptr @.str.79, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1540, i32 8}
!221 = !{ptr @iio_dev_attr_DAC_C, !220, !"iio_dev_attr_DAC_C", i1 false, i1 false}
!222 = !{ptr @.str.80, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1564, i32 8}
!224 = !{ptr @iio_dev_attr_DAC_D, !223, !"iio_dev_attr_DAC_D", i1 false, i1 false}
!225 = !{ptr @.str.81, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1583, i32 8}
!227 = !{ptr @iio_dev_attr_device_id, !226, !"iio_dev_attr_device_id", i1 false, i1 false}
!228 = !{ptr @.str.82, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1601, i32 8}
!230 = !{ptr @iio_dev_attr_manufactorer_id, !229, !"iio_dev_attr_manufactorer_id", i1 false, i1 false}
!231 = !{ptr @.str.83, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1620, i32 8}
!233 = !{ptr @iio_dev_attr_device_rev, !232, !"iio_dev_attr_device_rev", i1 false, i1 false}
!234 = !{ptr @.str.84, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1641, i32 8}
!236 = !{ptr @iio_dev_attr_bus_type, !235, !"iio_dev_attr_bus_type", i1 false, i1 false}
!237 = !{ptr @.str.85, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1636, i32 23}
!239 = !{ptr @.str.86, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1638, i32 22}
!241 = !{ptr @adt7316_info, !242, !"adt7316_info", i1 false, i1 false}
!242 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2114, i32 30}
!243 = !{ptr @adt7316_event_attribute_group, !244, !"adt7316_event_attribute_group", i1 false, i1 false}
!244 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2068, i32 37}
!245 = !{ptr @adt7316_event_attributes, !246, !"adt7316_event_attributes", i1 false, i1 false}
!246 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2058, i32 26}
!247 = !{ptr @.str.87, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2011, i32 8}
!249 = !{ptr @iio_dev_attr_ex_temp_high_value, !248, !"iio_dev_attr_ex_temp_high_value", i1 false, i1 false}
!250 = !{ptr @.str.88, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 2015, i32 8}
!252 = !{ptr @iio_dev_attr_ex_temp_low_value, !251, !"iio_dev_attr_ex_temp_low_value", i1 false, i1 false}
!253 = !{ptr @adt7316_attribute_group, !254, !"adt7316_attribute_group", i1 false, i1 false}
!254 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1681, i32 37}
!255 = !{ptr @adt7316_attributes, !256, !"adt7316_attributes", i1 false, i1 false}
!256 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1643, i32 26}
!257 = !{ptr @.str.89, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 994, i32 8}
!259 = !{ptr @iio_dev_attr_DA_AB_Vref_bypass, !258, !"iio_dev_attr_DA_AB_Vref_bypass", i1 false, i1 false}
!260 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1033, i32 8}
!262 = !{ptr @iio_dev_attr_DA_CD_Vref_bypass, !261, !"iio_dev_attr_DA_CD_Vref_bypass", i1 false, i1 false}
!263 = !{ptr @.str.91, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1209, i32 8}
!265 = !{ptr @iio_dev_attr_ex_temp, !264, !"iio_dev_attr_ex_temp", i1 false, i1 false}
!266 = !{ptr @.str.92, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1816, i32 3}
!268 = !{ptr @.str.93, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @adt7316_setup_irq._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @adt7316_setup_irq._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.95, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/staging/iio/addac/adt7316.c", i32 1827, i32 3}
!273 = !{ptr @adt7316_setup_irq._entry.94, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @adt7316_setup_irq._entry_ptr.96, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{!"auto-init"}
