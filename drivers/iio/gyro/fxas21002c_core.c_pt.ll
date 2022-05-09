; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/fxas21002c_core.c_pt.bc'
source_filename = "../drivers/iio/gyro/fxas21002c_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fxas21002c_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_fxas21002c_core_probe\09\09\09\09"
module asm "\09.long\09__crc_fxas21002c_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxas21002c_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22fxas21002c_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_fxas21002c_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fxas21002c_core_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_fxas21002c_core_remove\09\09\09\09"
module asm "\09.long\09__crc_fxas21002c_core_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxas21002c_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22fxas21002c_core_remove\22\09\09\09\09\09"
module asm "__kstrtabns_fxas21002c_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fxas21002c_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_fxas21002c_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_fxas21002c_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxas21002c_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22fxas21002c_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_fxas21002c_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.fxas21002c_data = type { i8, i32, i32, %struct.mutex, ptr, [63 x ptr], ptr, i64, i32, ptr, ptr, [124 x i8], [8 x i16], [112 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@fxas21002c_reg_fields = internal constant { [63 x %struct.reg_field], [308 x i8] } { [63 x %struct.reg_field] [%struct.reg_field { i32 0, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 0, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 0, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 0, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 3, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 14, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 14, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 14, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 14, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 17, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 18, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 2, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 21, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 21, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 21, i32 0, i32 0, i32 0, i32 0 }], [308 x i8] zeroinitializer }, align 32
@fxas21002c_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@fxas21002c_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 7172, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 1, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 7172, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 2, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 7172, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [64 x i8] zeroinitializer }, align 32
@fxas21002c_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @fxas21002c_attrs_group, ptr @fxas21002c_read_raw, ptr null, ptr null, ptr @fxas21002c_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_fxas21002c_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxas21002c_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_fxas21002c_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxas21002c_core_probe to i32), ptr @__kstrtab_fxas21002c_core_probe, ptr @__kstrtabns_fxas21002c_core_probe }, section "___ksymtab_gpl+fxas21002c_core_probe", align 4
@__kstrtab_fxas21002c_core_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxas21002c_core_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_fxas21002c_core_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxas21002c_core_remove to i32), ptr @__kstrtab_fxas21002c_core_remove, ptr @__kstrtabns_fxas21002c_core_remove }, section "___ksymtab_gpl+fxas21002c_core_remove", align 4
@fxas21002c_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fxas21002c_suspend, ptr @fxas21002c_resume, ptr @fxas21002c_suspend, ptr @fxas21002c_resume, ptr @fxas21002c_suspend, ptr @fxas21002c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fxas21002c_runtime_suspend, ptr @fxas21002c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_fxas21002c_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxas21002c_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_fxas21002c_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxas21002c_pm_ops to i32), ptr @__kstrtab_fxas21002c_pm_ops, ptr @__kstrtabns_fxas21002c_pm_ops }, section "___ksymtab_gpl+fxas21002c_pm_ops", align 4
@__UNIQUE_ID_author297 = internal constant [63 x i8] c"fxas21002c_core.author=Rui Miguel Silva <rui.silva@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [54 x i8] c"fxas21002c_core.file=drivers/iio/gyro/fxas21002c_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [31 x i8] c"fxas21002c_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [51 x i8] c"fxas21002c_core.description=FXAS21002C Gyro driver\00", section ".modinfo", align 1
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@fxas21002c_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 761, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"chip id 0x%02x is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fxas21002c_chip_init\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/gyro/fxas21002c_core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fxas21002c_chip_init._entry_ptr = internal global ptr @fxas21002c_chip_init._entry, section ".printk_index", align 4
@fxas21002c_chip_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 774, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to set ODR: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@fxas21002c_chip_init._entry_ptr.10 = internal global ptr @fxas21002c_chip_init._entry.8, section ".printk_index", align 4
@fxas21002c_odr_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 800, i32 400, i32 200, i32 100, i32 50, i32 25, i32 12, i32 12], [32 x i8] zeroinitializer }, align 32
@fxas21002c_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fxas21002c_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@fxas21002c_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_anglvel_filter_low_pass_3db_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_anglvel_filter_high_pass_3db_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_anglvel_scale_available, i64 4), ptr null], [44 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.11, %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_anglvel_filter_low_pass_3db_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.13, %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_anglvel_filter_high_pass_3db_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.15, %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_anglvel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.17, %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"12.5 25 50 100 200 400 800\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0.32 0.16 0.08\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"in_anglvel_filter_low_pass_3db_frequency_available\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0.018750 0.009625 0.004875 0.002475\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"in_anglvel_filter_high_pass_3db_frequency_available\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"125.0 62.5 31.25 15.625 7.8125\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_anglvel_scale_available\00", [37 x i8] zeroinitializer }, align 32
@fxas21002c_temp_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read temp: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fxas21002c_temp_get\00", [44 x i8] zeroinitializer }, align 32
@fxas21002c_temp_get._entry_ptr = internal global ptr @fxas21002c_temp_get._entry, section ".printk_index", align 4
@fxas21002c_axis_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 428, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read axis: %d: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fxas21002c_axis_get\00", [44 x i8] zeroinitializer }, align 32
@fxas21002c_axis_get._entry_ptr = internal global ptr @fxas21002c_axis_get._entry, section ".printk_index", align 4
@fxas21002c_range_values = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4000, i32 2000, i32 1000, i32 500, i32 250], [44 x i8] zeroinitializer }, align 32
@fxas21002c_lpf_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32, i32 16, i32 8], [20 x i8] zeroinitializer }, align 32
@fxas21002c_hpf_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 18750, i32 9625, i32 4875, i32 2475], [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INT1\00", [27 x i8] zeroinitializer }, align 32
@fxas21002c_trigger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 837, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using interrupt line INT1\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fxas21002c_trigger_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fxas21002c_trigger_probe._entry_ptr = internal global ptr @fxas21002c_trigger_probe._entry, section ".printk_index", align 4
@fxas21002c_trigger_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.5, i32 844, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using interrupt line INT2\0A\00", [37 x i8] zeroinitializer }, align 32
@fxas21002c_trigger_probe._entry_ptr.29 = internal global ptr @fxas21002c_trigger_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fxas21002c_data_ready\00", [42 x i8] zeroinitializer }, align 32
@fxas21002c_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @fxas21002c_data_rdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.35 = internal global [9 x i64] [i64 7, i64 32, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 250, i64 500, i64 1000, i64 2000, i64 4000]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 2475, i64 4875, i64 9625, i64 18750]
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"fxas21002c_reg_fields\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 45, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 949, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"fxas21002c_channels\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 708, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"fxas21002c_info\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 719, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"fxas21002c_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1052, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 913, i32 46 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 917, i32 48 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 761, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 774, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"fxas21002c_odr_values\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 111, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"fxas21002c_attrs_group\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 686, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"fxas21002c_attributes\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 678, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [66 x i8] c"iio_const_attr_in_anglvel_filter_low_pass_3db_frequency_available\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [67 x i8] c"iio_const_attr_in_anglvel_filter_high_pass_3db_frequency_available\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [42 x i8] c"iio_const_attr_in_anglvel_scale_available\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 667, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 669, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 672, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 675, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 394, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 428, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [24 x i8] c"fxas21002c_range_values\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 133, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"fxas21002c_lpf_values\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 120, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant [22 x i8] c"fxas21002c_hpf_values\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 129, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 834, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 837, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 844, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 846, i32 45 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 848, i32 50 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 868, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"fxas21002c_trigger_ops\00", align 1
@___asan_gen_.190 = private constant [38 x i8] c"../drivers/iio/gyro/fxas21002c_core.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 788, i32 37 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__ksymtab_fxas21002c_core_probe, ptr @__ksymtab_fxas21002c_core_remove, ptr @__ksymtab_fxas21002c_pm_ops, ptr @fxas21002c_axis_get._entry, ptr @fxas21002c_axis_get._entry_ptr, ptr @fxas21002c_chip_init._entry, ptr @fxas21002c_chip_init._entry.8, ptr @fxas21002c_chip_init._entry_ptr, ptr @fxas21002c_chip_init._entry_ptr.10, ptr @fxas21002c_temp_get._entry, ptr @fxas21002c_temp_get._entry_ptr, ptr @fxas21002c_trigger_probe._entry, ptr @fxas21002c_trigger_probe._entry.27, ptr @fxas21002c_trigger_probe._entry_ptr, ptr @fxas21002c_trigger_probe._entry_ptr.29, ptr @fxas21002c_reg_fields, ptr @fxas21002c_core_probe.__key, ptr @.str, ptr @fxas21002c_channels, ptr @fxas21002c_info, ptr @fxas21002c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @fxas21002c_odr_values, ptr @fxas21002c_attrs_group, ptr @fxas21002c_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_const_attr_in_anglvel_filter_low_pass_3db_frequency_available, ptr @iio_const_attr_in_anglvel_filter_high_pass_3db_frequency_available, ptr @iio_const_attr_in_anglvel_scale_available, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @fxas21002c_range_values, ptr @fxas21002c_lpf_values, ptr @fxas21002c_hpf_values, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @fxas21002c_trigger_ops], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_reg_fields to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_chip_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_odr_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_anglvel_filter_low_pass_3db_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_anglvel_filter_high_pass_3db_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_anglvel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_temp_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_axis_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_range_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_lpf_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_hpf_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_trigger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_trigger_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxas21002c_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fxas21002c_core_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, ptr noundef %name) #0 align 64 {
entry:
  %chip_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 640) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %irq2 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq, ptr %irq2, align 8
  %regmap3 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %regmap3, align 8
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %if.end
  %i.0144 = phi i32 [ 0, %if.end ], [ %inc, %if.end9.for.body_crit_edge ]
  %5 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap3, align 8
  %arrayidx = getelementptr [63 x %struct.reg_field], ptr @fxas21002c_reg_fields, i32 0, i32 %i.0144
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack = load i32, ptr %arrayidx, align 4
  %8 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt97 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %.elt97 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack98 = load i32, ptr %.elt97, align 4
  %10 = insertvalue [5 x i32] %8, i32 %.unpack98, 1
  %.elt99 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %11 = ptrtoint ptr %.elt99 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack100 = load i32, ptr %.elt99, align 4
  %12 = insertvalue [5 x i32] %10, i32 %.unpack100, 2
  %.elt101 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %.elt101 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack102 = load i32, ptr %.elt101, align 4
  %14 = insertvalue [5 x i32] %12, i32 %.unpack102, 3
  %.elt103 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %15 = ptrtoint ptr %.elt103 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack104 = load i32, ptr %.elt103, align 4
  %16 = insertvalue [5 x i32] %14, i32 %.unpack104, 4
  %call5 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %6, [5 x i32] %16) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %arrayidx10 = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 %i.0144
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %do.body, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body:                                          ; preds = %if.end9
  %lock = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @fxas21002c_core_probe.__key) #6
  %19 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %20) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  %call1.i = tail call ptr @devm_regulator_get(ptr noundef %22, ptr noundef nonnull @.str.1) #6
  %vdd.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i, ptr %vdd.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.fxas21002c_regulators_get.exit_crit_edge, label %if.end.i

do.body.fxas21002c_regulators_get.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_regulators_get.exit

if.end.i:                                         ; preds = %do.body
  %24 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i, align 8
  %call7.i = tail call ptr @devm_regulator_get(ptr noundef %25, ptr noundef nonnull @.str.2) #6
  %vddio.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %vddio.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %vddio.i, align 128
  %cmp.i.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.fxas21002c_regulators_get.exit_crit_edge, label %if.end.i.if.end14_crit_edge

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end.i.fxas21002c_regulators_get.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_regulators_get.exit

fxas21002c_regulators_get.exit:                   ; preds = %if.end.i.fxas21002c_regulators_get.exit_crit_edge, %do.body.fxas21002c_regulators_get.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call7.i, %if.end.i.fxas21002c_regulators_get.exit_crit_edge ], [ %call1.i, %do.body.fxas21002c_regulators_get.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %cmp12 = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp12, label %fxas21002c_regulators_get.exit.cleanup_crit_edge, label %fxas21002c_regulators_get.exit.if.end14_crit_edge

fxas21002c_regulators_get.exit.if.end14_crit_edge: ; preds = %fxas21002c_regulators_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

fxas21002c_regulators_get.exit.cleanup_crit_edge: ; preds = %fxas21002c_regulators_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %fxas21002c_regulators_get.exit.if.end14_crit_edge, %if.end.i.if.end14_crit_edge
  %27 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdd.i, align 4
  %call.i106 = tail call i32 @regulator_enable(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  br i1 %cmp.i107, label %if.end14.cleanup_crit_edge, label %if.end.i110

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i110:                                      ; preds = %if.end14
  %vddio.i108 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %vddio.i108 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vddio.i108, align 128
  %call1.i109 = tail call i32 @regulator_enable(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %cmp2.i = icmp slt i32 %call1.i109, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end18

if.then3.i:                                       ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdd.i, align 4
  %call5.i = tail call i32 @regulator_disable(ptr noundef %32) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end.i110
  %call.i112 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @fxas21002c_power_disable_action, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i, label %if.end18.if.end22_crit_edge, label %devm_add_action_or_reset.exit

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

devm_add_action_or_reset.exit:                    ; preds = %if.end18
  %33 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdd.i, align 4
  %call.i.i.i = tail call i32 @regulator_disable(ptr noundef %34) #6
  %35 = ptrtoint ptr %vddio.i108 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vddio.i108, align 128
  %call1.i.i.i = tail call i32 @regulator_disable(ptr noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp20 = icmp slt i32 %call.i112, 0
  br i1 %cmp20, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end22_crit_edge

devm_add_action_or_reset.exit.if.end22_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %devm_add_action_or_reset.exit.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %37 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap3, align 8
  %call.i116 = tail call ptr @regmap_get_device(ptr noundef %38) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id.i) #6
  %39 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %chip_id.i, align 4, !annotation !107
  %arrayidx.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 26
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %call1.i117 = call i32 @regmap_field_read(ptr noundef %41, ptr noundef nonnull %chip_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i117)
  %cmp.i118 = icmp slt i32 %call1.i117, 0
  br i1 %cmp.i118, label %if.end22.fxas21002c_chip_init.exit.thread_crit_edge, label %if.end.i119

if.end22.fxas21002c_chip_init.exit.thread_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_chip_init.exit.thread

if.end.i119:                                      ; preds = %if.end22
  %42 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chip_id.i, align 4
  %44 = and i32 %43, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %44)
  %switch.i = icmp eq i32 %44, 214
  br i1 %switch.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i116, ptr noundef nonnull @.str.3, i32 noundef %43) #9
  br label %fxas21002c_chip_init.exit.thread

if.end5.i:                                        ; preds = %if.end.i119
  %conv.i = trunc i32 %43 to i8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %1, align 128
  %mode1.i.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i120 = icmp eq i32 %47, 0
  br i1 %cmp.i.i120, label %if.end5.i.if.end11.i_crit_edge, label %if.end.i.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end.i.i:                                       ; preds = %if.end5.i
  %arrayidx.i.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 51
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i54.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.i)
  %cmp8.i.i = icmp slt i32 %call.i54.i.i, 0
  br i1 %cmp8.i.i, label %if.end.i.i.fxas21002c_chip_init.exit.thread_crit_edge, label %if.end10.i.i

if.end.i.i.fxas21002c_chip_init.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_chip_init.exit.thread

if.end10.i.i:                                     ; preds = %if.end.i.i
  %arrayidx18.i.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 50
  %50 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx18.i.i, align 4
  %call.i56.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %51, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i)
  %cmp2164.i.i = icmp slt i32 %call.i56.i.i, 0
  br i1 %cmp2164.i.i, label %if.end10.i.i.fxas21002c_chip_init.exit.thread_crit_edge, label %if.end29thread-pre-split.i.i

if.end10.i.i.fxas21002c_chip_init.exit.thread_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_chip_init.exit.thread

if.end29thread-pre-split.i.i:                     ; preds = %if.end10.i.i
  %52 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i.i = load i32, ptr %mode1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp31.i.i = icmp eq i32 %.pr.i.i, 1
  br i1 %cmp31.i.i, label %if.then32.i.i, label %if.end29thread-pre-split.i.i.if.end34.i.i_crit_edge

if.end29thread-pre-split.i.i.if.end34.i.i_crit_edge: ; preds = %if.end29thread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i.i

if.then32.i.i:                                    ; preds = %if.end29thread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i.i = call i32 @msleep_interruptible(i32 noundef 7) #6
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then32.i.i, %if.end29thread-pre-split.i.i.if.end34.i.i_crit_edge
  %53 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode1.i.i, align 4
  %prev_mode.i.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %prev_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %prev_mode.i.i, align 8
  store i32 0, ptr %mode1.i.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end34.i.i, %if.end5.i.if.end11.i_crit_edge
  %call1.i.i = call fastcc i32 @fxas21002c_write(ptr noundef %1, i32 noundef 49, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp13.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %if.end26

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i116, ptr noundef nonnull @.str.9, i32 noundef %call1.i.i) #9
  br label %fxas21002c_chip_init.exit.thread

fxas21002c_chip_init.exit.thread:                 ; preds = %do.end18.i, %if.end10.i.i.fxas21002c_chip_init.exit.thread_crit_edge, %if.end.i.i.fxas21002c_chip_init.exit.thread_crit_edge, %do.end.i, %if.end22.fxas21002c_chip_init.exit.thread_crit_edge
  %retval.0.i121.ph = phi i32 [ %call.i54.i.i, %if.end.i.i.fxas21002c_chip_init.exit.thread_crit_edge ], [ %call.i56.i.i, %if.end10.i.i.fxas21002c_chip_init.exit.thread_crit_edge ], [ %call1.i.i, %do.end18.i ], [ %call1.i117, %if.end22.fxas21002c_chip_init.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id.i) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end11.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id.i) #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %56 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @fxas21002c_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %57 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %num_channels, align 4
  %name27 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %58 = ptrtoint ptr %name27 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %name, ptr %name27, align 8
  %59 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %60 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @fxas21002c_info, ptr %info, align 8
  %61 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap3, align 8
  %call.i123 = call ptr @regmap_get_device(ptr noundef %62) #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i123, i32 0, i32 8
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.iio_dev, ptr %64, i32 0, i32 2, i32 27
  %65 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node.i, align 8
  %67 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i124 = icmp eq i32 %68, 0
  br i1 %tobool.not.i124, label %if.end26.if.end31_crit_edge, label %if.end.i126

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i126:                                      ; preds = %if.end26
  %call3.i = call i32 @of_irq_get_byname(ptr noundef %66, ptr noundef nonnull @.str.23) #6
  %69 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %70)
  %cmp.i125 = icmp eq i32 %call3.i, %70
  br i1 %cmp.i125, label %do.end.i128, label %if.end.i126.do.end13.i_crit_edge

if.end.i126.do.end13.i_crit_edge:                 ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.end.i128:                                      ; preds = %if.end.i126
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i123, ptr noundef nonnull @.str.24) #9
  %arrayidx.i127 = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 56
  %71 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i127, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %72, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %do.end.i128.cleanup_crit_edge, label %do.end.i128.do.end13.i_crit_edge

do.end.i128.do.end13.i_crit_edge:                 ; preds = %do.end.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.end.i128.cleanup_crit_edge:                    ; preds = %do.end.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13.i:                                       ; preds = %do.end.i128.do.end13.i_crit_edge, %if.end.i126.do.end13.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i123, ptr noundef nonnull @.str.28) #9
  %call.i79.i = call ptr @of_find_property(ptr noundef %66, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i79.i, null
  %name.i = getelementptr inbounds %struct.iio_dev, ptr %64, i32 0, i32 15
  %73 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name.i, align 8
  %call15.i = call i32 @iio_device_id(ptr noundef %64) #6
  %call16.i = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %call.i123, ptr noundef nonnull @.str.31, ptr noundef %74, i32 noundef %call15.i) #6
  %dready_trig.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call16.i, ptr %dready_trig.i, align 8
  %tobool18.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool18.not.i, label %do.end13.i.cleanup_crit_edge, label %if.end20.i

do.end13.i.cleanup_crit_edge:                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.i:                                       ; preds = %do.end13.i
  %76 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq2, align 8
  %call22.i = call ptr @irq_get_irq_data(i32 noundef %77) #6
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call22.i, i32 0, i32 3
  %78 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %common.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %and.i.i = and i32 %81, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp24.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp24.i, label %if.then25.i, label %if.end20.i.if.end32.i_crit_edge

if.end20.i.if.end32.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then25.i:                                      ; preds = %if.end20.i
  %arrayidx27.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 58
  %82 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx27.i, align 4
  %call.i80.i = call i32 @regmap_field_update_bits_base(ptr noundef %83, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %cmp29.i = icmp slt i32 %call.i80.i, 0
  br i1 %cmp29.i, label %if.then25.i.cleanup_crit_edge, label %if.then25.i.if.end32.i_crit_edge

if.then25.i.if.end32.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then25.i.cleanup_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32.i:                                       ; preds = %if.then25.i.if.end32.i_crit_edge, %if.end20.i.if.end32.i_crit_edge
  %or.i = or i32 %and.i.i, 128
  %spec.select.i = select i1 %tobool.i.not.i, i32 %and.i.i, i32 %or.i
  %84 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq2, align 8
  %call37.i = call i32 @devm_request_threaded_irq(ptr noundef %call.i123, i32 noundef %85, ptr noundef nonnull @fxas21002c_data_rdy_handler, ptr noundef nonnull @fxas21002c_data_rdy_thread, i32 noundef %spec.select.i, ptr noundef nonnull @.str.32, ptr noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end32.i.cleanup_crit_edge, label %fxas21002c_trigger_probe.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fxas21002c_trigger_probe.exit:                    ; preds = %if.end32.i
  %86 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dready_trig.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @fxas21002c_trigger_ops, ptr %87, align 8
  %89 = load ptr, ptr %dready_trig.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %89, i32 0, i32 4, i32 8
  %90 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %64, ptr %driver_data.i.i.i, align 4
  %91 = load ptr, ptr %dready_trig.i, align 8
  %call44.i = call i32 @__devm_iio_trigger_register(ptr noundef %call.i123, ptr noundef %91, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp29 = icmp slt i32 %call44.i, 0
  br i1 %cmp29, label %fxas21002c_trigger_probe.exit.cleanup_crit_edge, label %fxas21002c_trigger_probe.exit.if.end31_crit_edge

fxas21002c_trigger_probe.exit.if.end31_crit_edge: ; preds = %fxas21002c_trigger_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

fxas21002c_trigger_probe.exit.cleanup_crit_edge:  ; preds = %fxas21002c_trigger_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %fxas21002c_trigger_probe.exit.if.end31_crit_edge, %if.end26.if.end31_crit_edge
  %call32 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @fxas21002c_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call.i130 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool37.not = icmp eq i32 %call.i130, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @pm_runtime_enable(ptr noundef %dev) #6
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #6
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  %call40 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %pm_disable, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pm_disable:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i131 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %pm_disable, %if.end39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %fxas21002c_trigger_probe.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %if.then25.i.cleanup_crit_edge, %do.end13.i.cleanup_crit_edge, %do.end.i128.cleanup_crit_edge, %fxas21002c_chip_init.exit.thread, %devm_add_action_or_reset.exit.cleanup_crit_edge, %if.then3.i, %if.end14.cleanup_crit_edge, %fxas21002c_regulators_get.exit.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then7 ], [ %call40, %pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %fxas21002c_regulators_get.exit.cleanup_crit_edge ], [ %call.i112, %devm_add_action_or_reset.exit.cleanup_crit_edge ], [ %call44.i, %fxas21002c_trigger_probe.exit.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call.i130, %if.end35.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %retval.0.i121.ph, %fxas21002c_chip_init.exit.thread ], [ %call.i106, %if.end14.cleanup_crit_edge ], [ %call1.i109, %if.then3.i ], [ %call37.i, %if.end32.i.cleanup_crit_edge ], [ %call.i80.i, %if.then25.i.cleanup_crit_edge ], [ -12, %do.end13.i.cleanup_crit_edge ], [ %call.i.i, %do.end.i128.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fxas21002c_power_disable_action(ptr nocapture noundef readonly %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd.i = getelementptr inbounds %struct.fxas21002c_data, ptr %_data, i32 0, i32 9
  %0 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %1) #6
  %vddio.i = getelementptr inbounds %struct.fxas21002c_data, ptr %_data, i32 0, i32 10
  %2 = ptrtoint ptr %vddio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddio.i, align 128
  %call1.i = tail call i32 @regulator_disable(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %buffer = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 12
  %call2 = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 1, ptr noundef %buffer, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %timestamp = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timestamp, align 16
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %11, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #6
  br label %out_unlock

out_unlock:                                       ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %14) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fxas21002c_core_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %mode1.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.fxas21002c_mode_set.exit_crit_edge, label %if.end.i

entry.fxas21002c_mode_set.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_set.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.fxas21002c_data, ptr %3, i32 0, i32 5, i32 51
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i54.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp8.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp8.i, label %if.end.i.fxas21002c_mode_set.exit_crit_edge, label %if.end10.i

if.end.i.fxas21002c_mode_set.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_set.exit

if.end10.i:                                       ; preds = %if.end.i
  %arrayidx18.i = getelementptr %struct.fxas21002c_data, ptr %3, i32 0, i32 5, i32 50
  %8 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18.i, align 4
  %call.i56.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %cmp2164.i = icmp slt i32 %call.i56.i, 0
  br i1 %cmp2164.i, label %if.end10.i.fxas21002c_mode_set.exit_crit_edge, label %if.end29thread-pre-split.i

if.end10.i.fxas21002c_mode_set.exit_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_set.exit

if.end29thread-pre-split.i:                       ; preds = %if.end10.i
  %10 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp31.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp31.i, label %if.then32.i, label %if.end29thread-pre-split.i.if.end34.i_crit_edge

if.end29thread-pre-split.i.if.end34.i_crit_edge:  ; preds = %if.end29thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = tail call i32 @msleep_interruptible(i32 noundef 7) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29thread-pre-split.i.if.end34.i_crit_edge
  %11 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode1.i, align 4
  %prev_mode.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %prev_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %prev_mode.i, align 8
  store i32 0, ptr %mode1.i, align 4
  br label %fxas21002c_mode_set.exit

fxas21002c_mode_set.exit:                         ; preds = %if.end34.i, %if.end10.i.fxas21002c_mode_set.exit_crit_edge, %if.end.i.fxas21002c_mode_set.exit_crit_edge, %entry.fxas21002c_mode_set.exit_crit_edge
  %vdd.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %15) #6
  %vddio.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %vddio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vddio.i, align 128
  %call1.i = tail call i32 @regulator_disable(ptr noundef %17) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %vdd.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %vddio.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %vddio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vddio.i, align 128
  %call1.i = tail call i32 @regulator_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd.i, align 4
  %call5.i = tail call i32 @regulator_disable(ptr noundef %9) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev_mode = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %prev_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prev_mode, align 8
  %call3 = tail call fastcc i32 @fxas21002c_mode_set(ptr noundef %3, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %mode1.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %entry.fxas21002c_mode_set.exit_crit_edge, label %if.end.i

entry.fxas21002c_mode_set.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_set.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.fxas21002c_data, ptr %3, i32 0, i32 5, i32 51
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp858.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp858.i, label %if.end.i.fxas21002c_mode_set.exit_crit_edge, label %if.end20.thread.i

if.end.i.fxas21002c_mode_set.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_set.exit

if.end20.thread.i:                                ; preds = %if.end.i
  %arrayidx18.i = getelementptr %struct.fxas21002c_data, ptr %3, i32 0, i32 5, i32 50
  %8 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18.i, align 4
  %call.i56.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %cmp2164.i = icmp slt i32 %call.i56.i, 0
  br i1 %cmp2164.i, label %if.end20.thread.i.fxas21002c_mode_set.exit_crit_edge, label %if.end29thread-pre-split.i

if.end20.thread.i.fxas21002c_mode_set.exit_crit_edge: ; preds = %if.end20.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_set.exit

if.end29thread-pre-split.i:                       ; preds = %if.end20.thread.i
  %10 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp31.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp31.i, label %if.then32.i, label %if.end29thread-pre-split.i.if.end34.i_crit_edge

if.end29thread-pre-split.i.if.end34.i_crit_edge:  ; preds = %if.end29thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = tail call i32 @msleep_interruptible(i32 noundef 7) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29thread-pre-split.i.if.end34.i_crit_edge
  %11 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode1.i, align 4
  %prev_mode.i = getelementptr inbounds %struct.fxas21002c_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %prev_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %prev_mode.i, align 8
  store i32 1, ptr %mode1.i, align 4
  br label %fxas21002c_mode_set.exit

fxas21002c_mode_set.exit:                         ; preds = %if.end34.i, %if.end20.thread.i.fxas21002c_mode_set.exit_crit_edge, %if.end.i.fxas21002c_mode_set.exit_crit_edge, %entry.fxas21002c_mode_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i56.i, %if.end34.i ], [ 0, %entry.fxas21002c_mode_set.exit_crit_edge ], [ %call.i.i, %if.end.i.fxas21002c_mode_set.exit_crit_edge ], [ %call.i56.i, %if.end20.thread.i.fxas21002c_mode_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %call2 = tail call fastcc i32 @fxas21002c_mode_set(ptr noundef %3, i32 noundef 2)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fxas21002c_mode_set(ptr nocapture noundef %data, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.fxas21002c_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 1
  %arrayidx = getelementptr %struct.fxas21002c_data, ptr %data, i32 0, i32 5, i32 51
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp2, label %if.end7.thread, label %if.end7

if.end7:                                          ; preds = %if.end
  %call.i54 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp8 = icmp slt i32 %call.i54, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.thread:                                   ; preds = %if.end
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp858 = icmp slt i32 %call.i, 0
  br i1 %cmp858, label %if.end7.thread.cleanup_crit_edge, label %if.end7.thread.if.end20.thread_crit_edge

if.end7.thread.if.end20.thread_crit_edge:         ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.thread

if.end7.thread.cleanup_crit_edge:                 ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp11 = icmp eq i32 %mode, 2
  br i1 %cmp11, label %if.end20, label %if.end10.if.end20.thread_crit_edge

if.end10.if.end20.thread_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.thread

if.end20:                                         ; preds = %if.end10
  %arrayidx14 = getelementptr %struct.fxas21002c_data, ptr %data, i32 0, i32 5, i32 50
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx14, align 4
  %call.i55 = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp21 = icmp slt i32 %call.i55, 0
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %land.lhs.true

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.thread:                                  ; preds = %if.end10.if.end20.thread_crit_edge, %if.end7.thread.if.end20.thread_crit_edge
  %arrayidx18 = getelementptr %struct.fxas21002c_data, ptr %data, i32 0, i32 5, i32 50
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx18, align 4
  %call.i56 = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp2164 = icmp slt i32 %call.i56, 0
  br i1 %cmp2164, label %if.end20.thread.cleanup_crit_edge, label %if.end20.thread.if.end29thread-pre-split_crit_edge

if.end20.thread.if.end29thread-pre-split_crit_edge: ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29thread-pre-split

if.end20.thread.cleanup_crit_edge:                ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end20
  %8 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp26 = icmp eq i32 %9, 0
  br i1 %cmp26, label %if.then27, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @msleep_interruptible(i32 noundef 62) #6
  br label %if.end29thread-pre-split

if.end29thread-pre-split:                         ; preds = %if.then27, %if.end20.thread.if.end29thread-pre-split_crit_edge
  %ret.16670 = phi i32 [ %call.i55, %if.then27 ], [ %call.i56, %if.end20.thread.if.end29thread-pre-split_crit_edge ]
  %10 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %mode1, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %land.lhs.true.if.end29_crit_edge
  %ret.16669 = phi i32 [ %ret.16670, %if.end29thread-pre-split ], [ %call.i55, %land.lhs.true.if.end29_crit_edge ]
  %11 = phi i32 [ %.pr, %if.end29thread-pre-split ], [ %9, %land.lhs.true.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp31 = icmp eq i32 %11, 1
  br i1 %cmp31, label %if.then32, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 @msleep_interruptible(i32 noundef 7) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %12 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode1, align 4
  %prev_mode = getelementptr inbounds %struct.fxas21002c_data, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %prev_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %prev_mode, align 8
  store i32 %mode, ptr %mode1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end20.thread.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end7.thread.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.16669, %if.end34 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i54, %if.end7.cleanup_crit_edge ], [ %call.i55, %if.end20.cleanup_crit_edge ], [ %call.i, %if.end7.thread.cleanup_crit_edge ], [ %call.i56, %if.end20.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fxas21002c_write(ptr noundef %data, i32 noundef %field, i32 noundef %bits) unnamed_addr #0 align 64 {
entry:
  %active.i = alloca i32, align 4
  %ready.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fxas21002c_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active.i) #6
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %active.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ready.i) #6
  %1 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ready.i, align 4, !annotation !107
  %arrayidx.i = getelementptr %struct.fxas21002c_data, ptr %data, i32 0, i32 5, i32 50
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %3, ptr noundef nonnull %active.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.fxas21002c_mode_get.exit.thread_crit_edge, label %if.end.i

entry.fxas21002c_mode_get.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_get.exit.thread

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  %arrayidx4.i = getelementptr %struct.fxas21002c_data, ptr %data, i32 0, i32 5, i32 51
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.i, align 4
  %call5.i = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %ready.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end2.i.fxas21002c_mode_get.exit.thread_crit_edge, label %if.end2.i.if.end_crit_edge

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end2.i.fxas21002c_mode_get.exit.thread_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_mode_get.exit.thread

fxas21002c_mode_get.exit.thread:                  ; preds = %if.end2.i.fxas21002c_mode_get.exit.thread_crit_edge, %entry.fxas21002c_mode_get.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end2.i.fxas21002c_mode_get.exit.thread_crit_edge ], [ %call.i, %entry.fxas21002c_mode_get.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active.i) #6
  br label %out_unlock

if.end:                                           ; preds = %if.end2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active.i) #6
  %mode1.i = getelementptr inbounds %struct.fxas21002c_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i20 = icmp eq i32 %9, 1
  br i1 %cmp.i20, label %if.end.if.end4_crit_edge, label %if.end.i22

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i22:                                       ; preds = %if.end
  %arrayidx.i21 = getelementptr %struct.fxas21002c_data, ptr %data, i32 0, i32 5, i32 51
  %10 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i21, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp858.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp858.i, label %if.end.i22.out_unlock_crit_edge, label %if.end20.thread.i

if.end.i22.out_unlock_crit_edge:                  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end20.thread.i:                                ; preds = %if.end.i22
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call.i56.i = call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %cmp2164.i = icmp slt i32 %call.i56.i, 0
  br i1 %cmp2164.i, label %if.end20.thread.i.out_unlock_crit_edge, label %if.end29thread-pre-split.i

if.end20.thread.i.out_unlock_crit_edge:           ; preds = %if.end20.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end29thread-pre-split.i:                       ; preds = %if.end20.thread.i
  %14 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp31.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp31.i, label %if.then32.i, label %if.end29thread-pre-split.i.if.end34.i_crit_edge

if.end29thread-pre-split.i.if.end34.i_crit_edge:  ; preds = %if.end29thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = call i32 @msleep_interruptible(i32 noundef 7) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29thread-pre-split.i.if.end34.i_crit_edge
  %15 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode1.i, align 4
  %prev_mode.i = getelementptr inbounds %struct.fxas21002c_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %prev_mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %prev_mode.i, align 8
  store i32 1, ptr %mode1.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end34.i, %if.end.if.end4_crit_edge
  %arrayidx = getelementptr %struct.fxas21002c_data, ptr %data, i32 0, i32 5, i32 %field
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call.i24 = call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef %bits, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp6 = icmp slt i32 %call.i24, 0
  br i1 %cmp6, label %if.end4.out_unlock_crit_edge, label %if.end8

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %prev_mode = getelementptr inbounds %struct.fxas21002c_data, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %prev_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prev_mode, align 8
  %call9 = call fastcc i32 @fxas21002c_mode_set(ptr noundef %data, i32 noundef %21)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end8, %if.end4.out_unlock_crit_edge, %if.end20.thread.i.out_unlock_crit_edge, %if.end.i22.out_unlock_crit_edge, %fxas21002c_mode_get.exit.thread
  %ret.0 = phi i32 [ %call.i24, %if.end4.out_unlock_crit_edge ], [ %call9, %if.end8 ], [ %retval.0.i.ph, %fxas21002c_mode_get.exit.thread ], [ %call.i56.i, %if.end20.thread.i.out_unlock_crit_edge ], [ %call.i.i, %if.end.i22.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %odr_bits.i = alloca i32, align 4
  %sel_bits.i = alloca i32, align 4
  %bw_bits.i = alloca i32, align 4
  %fs_double.i.i = alloca i32, align 4
  %fs_bits.i = alloca i32, align 4
  %axis_be.i = alloca i16, align 2
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
    i32 10, label %sw.bb10
    i32 11, label %sw.bb12
    i32 12, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb1
    i32 4, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %8 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %temp.i, align 4, !annotation !107
  %lock.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call ptr @regmap_get_device(ptr noundef %10) #6
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i

if.then.i.i.i:                                    ; preds = %sw.bb1
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #6, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.fxas21002c_temp_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.fxas21002c_temp_get.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_temp_get.exit

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !111
  br label %fxas21002c_temp_get.exit

if.end.i:                                         ; preds = %sw.bb1
  %arrayidx.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 46
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = call i32 @regmap_field_read(ptr noundef %13, ptr noundef nonnull %temp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.19, i32 noundef %call2.i) #9
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  %call.i24.i = call ptr @regmap_get_device(ptr noundef %15) #6
  %call.i.i25.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %call.i24.i, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i.i25.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i24.i, i32 noundef 13) #6
  br label %fxas21002c_temp_get.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp.i, align 4
  %shl.i.i = shl i32 %18, 24
  %shr.i.i = ashr exact i32 %shl.i.i, 24
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i.i, ptr %val, align 4
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 8
  %call.i27.i = call ptr @regmap_get_device(ptr noundef %21) #6
  %call.i.i28.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i29.i = getelementptr inbounds %struct.device, ptr %call.i27.i, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i29.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i.i28.i, ptr %last_busy.i.i29.i, align 8
  %call.i3.i30.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i27.i, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i30.i)
  %cmp9.i = icmp slt i32 %call.i3.i30.i, 0
  %spec.store.select.i = select i1 %cmp9.i, i32 %call.i3.i30.i, i32 1
  br label %fxas21002c_temp_get.exit

fxas21002c_temp_get.exit:                         ; preds = %if.end6.i, %do.end.i, %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.fxas21002c_temp_get.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %do.end.i ], [ %spec.store.select.i, %if.end6.i ], [ %call.i.i.i, %if.then.i.i.i.fxas21002c_temp_get.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %23 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_index, align 4
  %regmap.i34 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i34, align 8
  %call.i35 = tail call ptr @regmap_get_device(ptr noundef %26) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %axis_be.i) #6
  %27 = ptrtoint ptr %axis_be.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %axis_be.i, align 2, !annotation !107
  %lock.i36 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i36, i32 noundef 0) #6
  %28 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i34, align 8
  %call.i.i37 = tail call ptr @regmap_get_device(ptr noundef %29) #6
  %call.i.i.i38 = tail call i32 @__pm_runtime_resume(ptr noundef %call.i.i37, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i38)
  %cmp.i.i.i39 = icmp slt i32 %call.i.i.i38, 0
  br i1 %cmp.i.i.i39, label %if.then.i.i.i44, label %if.end.i46

if.then.i.i.i44:                                  ; preds = %sw.bb3
  %usage_count.i.i.i.i40 = getelementptr inbounds %struct.device, ptr %call.i.i37, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i40, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i40, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i40, ptr %usage_count.i.i.i.i40, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i40) #6, !srcloc !110
  %asmresult.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i42)
  %cmp.not.i.i.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i42, 0
  br i1 %cmp.not.i.i.i.i.i.i.i43, label %if.then.i.i.i44.fxas21002c_axis_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i.i45

if.then.i.i.i44.fxas21002c_axis_get.exit_crit_edge: ; preds = %if.then.i.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_axis_get.exit

do.end11.i.i.i.i.i.i.i45:                         ; preds = %if.then.i.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !111
  br label %fxas21002c_axis_get.exit

if.end.i46:                                       ; preds = %sw.bb3
  %31 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i34, align 8
  %mul.i = shl i32 %24, 1
  %add.i = or i32 %mul.i, 1
  %call3.i = call i32 @regmap_bulk_read(ptr noundef %32, i32 noundef %add.i, ptr noundef nonnull %axis_be.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i51, label %if.end7.i

do.end.i51:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i35, ptr noundef nonnull @.str.21, i32 noundef %24, i32 noundef %call3.i) #9
  %33 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i34, align 8
  %call.i27.i47 = call ptr @regmap_get_device(ptr noundef %34) #6
  %call.i.i28.i48 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i.i49 = getelementptr inbounds %struct.device, ptr %call.i27.i47, i32 0, i32 12, i32 22
  %35 = ptrtoint ptr %last_busy.i.i.i49 to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i.i28.i48, ptr %last_busy.i.i.i49, align 8
  %call.i3.i.i50 = call i32 @__pm_runtime_suspend(ptr noundef %call.i27.i47, i32 noundef 13) #6
  br label %fxas21002c_axis_get.exit

if.end7.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %axis_be.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %axis_be.i, align 2
  %shr.i.i52 = sext i16 %37 to i32
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr.i.i52, ptr %val, align 4
  %39 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i34, align 8
  %call.i30.i = call ptr @regmap_get_device(ptr noundef %40) #6
  %call.i.i31.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i32.i = getelementptr inbounds %struct.device, ptr %call.i30.i, i32 0, i32 12, i32 22
  %41 = ptrtoint ptr %last_busy.i.i32.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store volatile i64 %call.i.i31.i, ptr %last_busy.i.i32.i, align 8
  %call.i3.i33.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i30.i, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i33.i)
  %cmp10.i = icmp slt i32 %call.i3.i33.i, 0
  %spec.store.select.i53 = select i1 %cmp10.i, i32 %call.i3.i33.i, i32 1
  br label %fxas21002c_axis_get.exit

fxas21002c_axis_get.exit:                         ; preds = %if.end7.i, %do.end.i51, %do.end11.i.i.i.i.i.i.i45, %if.then.i.i.i44.fxas21002c_axis_get.exit_crit_edge
  %ret.0.i54 = phi i32 [ %call3.i, %do.end.i51 ], [ %spec.store.select.i53, %if.end7.i ], [ %call.i.i.i38, %if.then.i.i.i44.fxas21002c_axis_get.exit_crit_edge ], [ %call.i.i.i38, %do.end11.i.i.i.i.i.i.i45 ]
  call void @mutex_unlock(ptr noundef %lock.i36) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %axis_be.i) #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %42 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cond = icmp eq i32 %43, 4
  br i1 %cond, label %sw.bb7, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb5
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fs_bits.i) #6
  %45 = ptrtoint ptr %fs_bits.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %fs_bits.i, align 4, !annotation !107
  %lock.i55 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i55, i32 noundef 0) #6
  %arrayidx.i56 = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 31
  %46 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i56, align 4
  %call.i57 = call i32 @regmap_field_read(ptr noundef %47, ptr noundef nonnull %fs_bits.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i = icmp slt i32 %call.i57, 0
  br i1 %cmp.i, label %sw.bb7.fxas21002c_scale_get.exit_crit_edge, label %if.end.i59

sw.bb7.fxas21002c_scale_get.exit_crit_edge:       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_scale_get.exit

if.end.i59:                                       ; preds = %sw.bb7
  %48 = ptrtoint ptr %fs_bits.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fs_bits.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fs_double.i.i) #6
  %50 = ptrtoint ptr %fs_double.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %fs_double.i.i, align 4, !annotation !107
  %arrayidx.i.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 62
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i58 = call i32 @regmap_field_read(ptr noundef %52, ptr noundef nonnull %fs_double.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i.i = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i.i, label %fxas21002c_range_fs_from_value.exit.thread.i, label %fxas21002c_range_fs_from_value.exit.i

fxas21002c_range_fs_from_value.exit.thread.i:     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fs_double.i.i) #6
  br label %fxas21002c_scale_get.exit

fxas21002c_range_fs_from_value.exit.i:            ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %49 to i8
  %53 = ptrtoint ptr %fs_double.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fs_double.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  %add.i.i = zext i1 %tobool.not.i.i to i8
  %spec.select.i.i = add i8 %add.i.i, %conv.i
  %55 = call i8 @llvm.umin.i8(i8 %spec.select.i.i, i8 4) #6
  %idxprom.i.i = zext i8 %55 to i32
  %arrayidx12.i.i = getelementptr [5 x i32], ptr @fxas21002c_range_values, i32 0, i32 %idxprom.i.i
  %56 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx12.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fs_double.i.i) #6
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val, align 4
  br label %fxas21002c_scale_get.exit

fxas21002c_scale_get.exit:                        ; preds = %fxas21002c_range_fs_from_value.exit.i, %fxas21002c_range_fs_from_value.exit.thread.i, %sw.bb7.fxas21002c_scale_get.exit_crit_edge
  %ret.0.i60 = phi i32 [ %call.i57, %sw.bb7.fxas21002c_scale_get.exit_crit_edge ], [ %call.i57, %fxas21002c_range_fs_from_value.exit.i ], [ %call.i.i58, %fxas21002c_range_fs_from_value.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %lock.i55) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fs_bits.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i60)
  %cmp = icmp slt i32 %ret.0.i60, 0
  %call8. = select i1 %cmp, i32 %ret.0.i60, i32 10
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw_bits.i) #6
  %60 = ptrtoint ptr %bw_bits.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %bw_bits.i, align 4, !annotation !107
  %lock.i61 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i61, i32 noundef 0) #6
  %arrayidx.i62 = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 27
  %61 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i62, align 4
  %call.i63 = call i32 @regmap_field_read(ptr noundef %62, ptr noundef nonnull %bw_bits.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i64, label %sw.bb10.fxas21002c_lpf_get.exit_crit_edge, label %if.end.i68

sw.bb10.fxas21002c_lpf_get.exit_crit_edge:        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_lpf_get.exit

if.end.i68:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %bw_bits.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bw_bits.i, align 4
  %conv.i65 = trunc i32 %64 to i8
  %65 = call i8 @llvm.umin.i8(i8 %conv.i65, i8 2) #6
  %cond.i.i = zext i8 %65 to i32
  %arrayidx.i.i66 = getelementptr [3 x i32], ptr @fxas21002c_lpf_values, i32 0, i32 %cond.i.i
  %66 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i66, align 4
  %mul.i67 = mul i32 %67, 10000
  %68 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul.i67, ptr %val2, align 4
  br label %fxas21002c_lpf_get.exit

fxas21002c_lpf_get.exit:                          ; preds = %if.end.i68, %sw.bb10.fxas21002c_lpf_get.exit_crit_edge
  %ret.0.i69 = phi i32 [ %call.i63, %sw.bb10.fxas21002c_lpf_get.exit_crit_edge ], [ 2, %if.end.i68 ]
  call void @mutex_unlock(ptr noundef %lock.i61) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw_bits.i) #6
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel_bits.i) #6
  %70 = ptrtoint ptr %sel_bits.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %sel_bits.i, align 4, !annotation !107
  %lock.i70 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i70, i32 noundef 0) #6
  %arrayidx.i71 = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 29
  %71 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i71, align 4
  %call.i72 = call i32 @regmap_field_read(ptr noundef %72, ptr noundef nonnull %sel_bits.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp.i73 = icmp slt i32 %call.i72, 0
  br i1 %cmp.i73, label %sw.bb12.fxas21002c_hpf_get.exit_crit_edge, label %if.end.i77

sw.bb12.fxas21002c_hpf_get.exit_crit_edge:        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_hpf_get.exit

if.end.i77:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %sel_bits.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sel_bits.i, align 4
  %conv.i74 = trunc i32 %74 to i8
  %75 = call i8 @llvm.umin.i8(i8 %conv.i74, i8 3) #6
  %cond.i.i75 = zext i8 %75 to i32
  %arrayidx.i.i76 = getelementptr [4 x i32], ptr @fxas21002c_hpf_values, i32 0, i32 %cond.i.i75
  %76 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i76, align 4
  %78 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %val2, align 4
  br label %fxas21002c_hpf_get.exit

fxas21002c_hpf_get.exit:                          ; preds = %if.end.i77, %sw.bb12.fxas21002c_hpf_get.exit_crit_edge
  %ret.0.i78 = phi i32 [ %call.i72, %sw.bb12.fxas21002c_hpf_get.exit_crit_edge ], [ 2, %if.end.i77 ]
  call void @mutex_unlock(ptr noundef %lock.i70) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel_bits.i) #6
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %79 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %odr_bits.i) #6
  %80 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %odr_bits.i, align 4, !annotation !107
  %lock.i79 = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i79, i32 noundef 0) #6
  %arrayidx.i80 = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 49
  %81 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i80, align 4
  %call.i81 = call i32 @regmap_field_read(ptr noundef %82, ptr noundef nonnull %odr_bits.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp slt i32 %call.i81, 0
  br i1 %cmp.i82, label %sw.bb14.fxas21002c_odr_get.exit_crit_edge, label %if.end.i86

sw.bb14.fxas21002c_odr_get.exit_crit_edge:        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %fxas21002c_odr_get.exit

if.end.i86:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %odr_bits.i, align 4
  %conv.i83 = trunc i32 %84 to i8
  %85 = call i8 @llvm.umin.i8(i8 %conv.i83, i8 7) #6
  %cond.i.i84 = zext i8 %85 to i32
  %arrayidx.i.i85 = getelementptr [8 x i32], ptr @fxas21002c_odr_values, i32 0, i32 %cond.i.i84
  %86 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i85, align 4
  %88 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %val, align 4
  br label %fxas21002c_odr_get.exit

fxas21002c_odr_get.exit:                          ; preds = %if.end.i86, %sw.bb14.fxas21002c_odr_get.exit_crit_edge
  %ret.0.i87 = phi i32 [ %call.i81, %sw.bb14.fxas21002c_odr_get.exit_crit_edge ], [ 1, %if.end.i86 ]
  call void @mutex_unlock(ptr noundef %lock.i79) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %odr_bits.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fxas21002c_odr_get.exit, %fxas21002c_hpf_get.exit, %fxas21002c_lpf_get.exit, %fxas21002c_scale_get.exit, %sw.bb5.cleanup_crit_edge, %fxas21002c_axis_get.exit, %fxas21002c_temp_get.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i87, %fxas21002c_odr_get.exit ], [ %ret.0.i78, %fxas21002c_hpf_get.exit ], [ %ret.0.i69, %fxas21002c_lpf_get.exit ], [ %ret.0.i54, %fxas21002c_axis_get.exit ], [ %ret.0.i, %fxas21002c_temp_get.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call8., %fxas21002c_scale_get.exit ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  %odr_bits.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 10, label %sw.bb2
    i32 2, label %sw.bb7
    i32 11, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not = icmp eq i32 %val2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %val, label %if.end.cleanup_crit_edge [
    i32 800, label %if.end.if.end.i_crit_edge
    i32 400, label %cleanup.fold.split.i.i
    i32 200, label %cleanup.fold.split2.i.i
    i32 100, label %cleanup.fold.split3.i.i
    i32 50, label %cleanup.fold.split4.i.i
    i32 25, label %cleanup.fold.split5.i.i
    i32 12, label %cleanup.fold.split6.i.i
  ]

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cleanup.fold.split2.i.i:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cleanup.fold.split3.i.i:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cleanup.fold.split4.i.i:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cleanup.fold.split5.i.i:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cleanup.fold.split6.i.i:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.fold.split6.i.i, %cleanup.fold.split5.i.i, %cleanup.fold.split4.i.i, %cleanup.fold.split3.i.i, %cleanup.fold.split2.i.i, %cleanup.fold.split.i.i, %if.end.if.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 6, %cleanup.fold.split6.i.i ], [ 5, %cleanup.fold.split5.i.i ], [ 4, %cleanup.fold.split4.i.i ], [ 3, %cleanup.fold.split3.i.i ], [ 2, %cleanup.fold.split2.i.i ], [ 1, %cleanup.fold.split.i.i ], [ 0, %if.end.if.end.i_crit_edge ]
  %call1.i = tail call fastcc i32 @fxas21002c_write(ptr noundef %1, i32 noundef 49, i32 noundef %retval.0.i.ph.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool3.not = icmp eq i32 %val, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %sw.bb2
  %div = sdiv i32 %val2, 10000
  %4 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %div, label %if.end5.cleanup_crit_edge [
    i32 32, label %if.end5.if.end.i29_crit_edge
    i32 16, label %cleanup.fold.split.i.i26
    i32 8, label %cleanup.fold.split2.i.i27
  ]

if.end5.if.end.i29_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split.i.i26:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

cleanup.fold.split2.i.i27:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

if.end.i29:                                       ; preds = %cleanup.fold.split2.i.i27, %cleanup.fold.split.i.i26, %if.end5.if.end.i29_crit_edge
  %cmp6.i = phi i1 [ false, %if.end5.if.end.i29_crit_edge ], [ false, %cleanup.fold.split.i.i26 ], [ true, %cleanup.fold.split2.i.i27 ]
  %cmp9.i = phi i1 [ false, %if.end5.if.end.i29_crit_edge ], [ true, %cleanup.fold.split.i.i26 ], [ true, %cleanup.fold.split2.i.i27 ]
  %retval.0.i.ph.i28 = phi i32 [ 0, %if.end5.if.end.i29_crit_edge ], [ 1, %cleanup.fold.split.i.i26 ], [ 2, %cleanup.fold.split2.i.i27 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %odr_bits.i.i) #6
  %5 = ptrtoint ptr %odr_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %odr_bits.i.i, align 4, !annotation !107
  %lock.i.i = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %arrayidx.i.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 49
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %odr_bits.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fxas21002c_odr_get.exit.thread.i, label %if.end4.i

fxas21002c_odr_get.exit.thread.i:                 ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %odr_bits.i.i) #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i29
  %8 = ptrtoint ptr %odr_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %odr_bits.i.i, align 4
  %conv.i.i = trunc i32 %9 to i8
  %10 = call i8 @llvm.umin.i8(i8 %conv.i.i, i8 7) #6
  call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %odr_bits.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp5.i = icmp eq i8 %10, 5
  %or.cond.i = and i1 %cmp6.i, %cmp5.i
  br i1 %or.cond.i, label %if.end4.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %11 = icmp eq i8 %10, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv.i.i)
  %12 = icmp ugt i8 %conv.i.i, 6
  %cmp7.i = or i1 %12, %11
  %or.cond21.i = and i1 %cmp9.i, %cmp7.i
  br i1 %or.cond21.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end11.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call fastcc i32 @fxas21002c_write(ptr noundef %1, i32 noundef 27, i32 noundef %retval.0.i.ph.i28) #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cond = icmp eq i32 %14, 4
  br i1 %cond, label %sw.bb8, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb7
  %mul = mul i32 %val, 1000
  %div9 = sdiv i32 %val2, 1000
  %add = add i32 %div9, %mul
  %mul10 = shl i32 %add, 5
  %div11 = sdiv i32 %mul10, 1000
  %15 = zext i32 %div11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %div11, label %sw.bb8.cleanup_crit_edge [
    i32 4000, label %sw.bb8.if.end3.i.i_crit_edge
    i32 2000, label %if.end3.fold.split.i.i
    i32 1000, label %if.end3.fold.split24.i.i
    i32 500, label %if.end3.fold.split25.i.i
    i32 250, label %if.end3.fold.split26.i.i
  ]

sw.bb8.if.end3.i.i_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.fold.split.i.i:                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i

if.end3.fold.split24.i.i:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i

if.end3.fold.split25.i.i:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i

if.end3.fold.split26.i.i:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end3.fold.split26.i.i, %if.end3.fold.split25.i.i, %if.end3.fold.split24.i.i, %if.end3.fold.split.i.i, %sw.bb8.if.end3.i.i_crit_edge
  %i.022.lcssa.i.i = phi i32 [ 0, %sw.bb8.if.end3.i.i_crit_edge ], [ 1, %if.end3.fold.split.i.i ], [ 2, %if.end3.fold.split24.i.i ], [ 3, %if.end3.fold.split25.i.i ], [ 4, %if.end3.fold.split26.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %div11)
  %cmp4.i.i = icmp ugt i32 %div11, 2000
  %spec.select.i.i = zext i1 %cmp4.i.i to i32
  %arrayidx7.i.i = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 62
  %16 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %17, i32 noundef -1, i32 noundef %spec.select.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp8.i.i, label %if.end3.i.i.cleanup_crit_edge, label %if.end.i32

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i32:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i31 = tail call fastcc i32 @fxas21002c_write(ptr noundef %1, i32 noundef 31, i32 noundef %i.022.lcssa.i.i) #6
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %18 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %val2, label %sw.bb13.cleanup_crit_edge [
    i32 18750, label %sw.bb13.if.end.i39_crit_edge
    i32 9625, label %cleanup.fold.split.i.i34
    i32 4875, label %cleanup.fold.split2.i.i35
    i32 2475, label %cleanup.fold.split3.i.i36
  ]

sw.bb13.if.end.i39_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i39

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split.i.i34:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i39

cleanup.fold.split2.i.i35:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i39

cleanup.fold.split3.i.i36:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i39

if.end.i39:                                       ; preds = %cleanup.fold.split3.i.i36, %cleanup.fold.split2.i.i35, %cleanup.fold.split.i.i34, %sw.bb13.if.end.i39_crit_edge
  %retval.0.i.ph.i37 = phi i32 [ 3, %cleanup.fold.split3.i.i36 ], [ 2, %cleanup.fold.split2.i.i35 ], [ 1, %cleanup.fold.split.i.i34 ], [ 0, %sw.bb13.if.end.i39_crit_edge ]
  %call1.i38 = tail call fastcc i32 @fxas21002c_write(ptr noundef %1, i32 noundef 29, i32 noundef %retval.0.i.ph.i37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i39, %sw.bb13.cleanup_crit_edge, %if.end.i32, %if.end3.i.i.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %if.end11.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %fxas21002c_odr_get.exit.thread.i, %if.end5.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end.i, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call1.i, %if.end.i ], [ -22, %if.end.cleanup_crit_edge ], [ %call12.i, %if.end11.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %fxas21002c_odr_get.exit.thread.i ], [ %call1.i31, %if.end.i32 ], [ -22, %sw.bb8.cleanup_crit_edge ], [ %call.i.i.i, %if.end3.i.i.cleanup_crit_edge ], [ %call1.i38, %if.end.i39 ], [ -22, %sw.bb13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_data_rdy_handler(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %timestamp = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1, ptr %timestamp, align 16
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_data_rdy_thread(i32 noundef %irq, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  %data_ready = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_ready) #6
  %2 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data_ready, align 4, !annotation !107
  %arrayidx = getelementptr %struct.fxas21002c_data, ptr %1, i32 0, i32 5, i32 25
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %data_ready) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dready_trig = getelementptr inbounds %struct.fxas21002c_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dready_trig, align 8
  call void @iio_trigger_poll_chained(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_ready) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxas21002c_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %arrayidx = getelementptr %struct.fxas21002c_data, ptr %3, i32 0, i32 5, i32 57
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %conv = zext i1 %state to i32
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @fxas21002c_core_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 949, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_fxas21002c_core_probe, !4, !"__ksymtab_fxas21002c_core_probe", i1 false, i1 false}
!4 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 1003, i32 1}
!5 = !{ptr @__ksymtab_fxas21002c_core_remove, !6, !"__ksymtab_fxas21002c_core_remove", i1 false, i1 false}
!6 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 1014, i32 1}
!7 = !{ptr @fxas21002c_pm_ops, !8, !"fxas21002c_pm_ops", i1 false, i1 false}
!8 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 1052, i32 25}
!9 = !{ptr @__ksymtab_fxas21002c_pm_ops, !10, !"__ksymtab_fxas21002c_pm_ops", i1 false, i1 false}
!10 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 1057, i32 1}
!11 = !{ptr @__UNIQUE_ID_author297, !12, !"__UNIQUE_ID_author297", i1 false, i1 false}
!12 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 1059, i32 1}
!13 = !{ptr @__UNIQUE_ID_file298, !14, !"__UNIQUE_ID_file298", i1 false, i1 false}
!14 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 1060, i32 1}
!15 = !{ptr @__UNIQUE_ID_license299, !14, !"__UNIQUE_ID_license299", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_description300, !17, !"__UNIQUE_ID_description300", i1 false, i1 false}
!17 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 1061, i32 1}
!18 = !{ptr @fxas21002c_reg_fields, !19, !"fxas21002c_reg_fields", i1 false, i1 false}
!19 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 45, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 913, i32 46}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 917, i32 48}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 761, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fxas21002c_chip_init._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @fxas21002c_chip_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 774, i32 3}
!34 = !{ptr @fxas21002c_chip_init._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @fxas21002c_chip_init._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @fxas21002c_odr_values, !37, !"fxas21002c_odr_values", i1 false, i1 false}
!37 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 111, i32 18}
!38 = !{ptr @fxas21002c_channels, !39, !"fxas21002c_channels", i1 false, i1 false}
!39 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 708, i32 35}
!40 = !{ptr @fxas21002c_info, !41, !"fxas21002c_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 719, i32 30}
!42 = !{ptr @fxas21002c_attrs_group, !43, !"fxas21002c_attrs_group", i1 false, i1 false}
!43 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 686, i32 37}
!44 = !{ptr @fxas21002c_attributes, !45, !"fxas21002c_attributes", i1 false, i1 false}
!45 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 678, i32 26}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 667, i32 8}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @iio_const_attr_sampling_frequency_available, !47, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 669, i32 8}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iio_const_attr_in_anglvel_filter_low_pass_3db_frequency_available, !51, !"iio_const_attr_in_anglvel_filter_low_pass_3db_frequency_available", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 672, i32 8}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @iio_const_attr_in_anglvel_filter_high_pass_3db_frequency_available, !55, !"iio_const_attr_in_anglvel_filter_high_pass_3db_frequency_available", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 675, i32 8}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iio_const_attr_in_anglvel_scale_available, !59, !"iio_const_attr_in_anglvel_scale_available", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 394, i32 3}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @fxas21002c_temp_get._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @fxas21002c_temp_get._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 428, i32 3}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @fxas21002c_axis_get._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @fxas21002c_axis_get._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @fxas21002c_range_values, !73, !"fxas21002c_range_values", i1 false, i1 false}
!73 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 133, i32 18}
!74 = !{ptr @fxas21002c_lpf_values, !75, !"fxas21002c_lpf_values", i1 false, i1 false}
!75 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 120, i32 18}
!76 = !{ptr @fxas21002c_hpf_values, !77, !"fxas21002c_hpf_values", i1 false, i1 false}
!77 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 129, i32 18}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 834, i32 31}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 837, i32 3}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @fxas21002c_trigger_probe._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @fxas21002c_trigger_probe._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 844, i32 2}
!88 = !{ptr @fxas21002c_trigger_probe._entry.27, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @fxas21002c_trigger_probe._entry_ptr.29, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 846, i32 45}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 848, i32 50}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 868, i32 16}
!96 = !{ptr @fxas21002c_trigger_ops, !97, !"fxas21002c_trigger_ops", i1 false, i1 false}
!97 = !{!"../drivers/iio/gyro/fxas21002c_core.c", i32 788, i32 37}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i8 0, i8 2}
!109 = !{i64 2148259312}
!110 = !{i64 744135, i64 744160, i64 744182, i64 744198, i64 744210, i64 744230, i64 744254, i64 744270, i64 744282}
!111 = !{i64 2148259500}
