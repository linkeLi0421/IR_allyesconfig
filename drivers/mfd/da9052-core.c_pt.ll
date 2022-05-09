; ModuleID = '/llk/IR_all_yes/drivers/mfd/da9052-core.c_pt.bc'
source_filename = "../drivers/mfd/da9052-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+da9052_adc_manual_read\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_adc_manual_read\09\09\09\09"
module asm "\09.long\09__crc_da9052_adc_manual_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_adc_manual_read:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_adc_manual_read\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_adc_manual_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da9052_adc_read_temp\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_adc_read_temp\09\09\09\09"
module asm "\09.long\09__crc_da9052_adc_read_temp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_adc_read_temp:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_adc_read_temp\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_adc_read_temp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da9052_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_da9052_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.da9052_pdata = type { ptr, ptr, i32, i32, i32, [14 x ptr] }

@chan_mux = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\01\02\03\04\05\06\00\00\09", [22 x i8] zeroinitializer }, align 32
@da9052_adc_manual_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timeout waiting for ADC conversion interrupt\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9052_adc_manual_read\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/da9052-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_adc_manual_read._entry_ptr = internal global ptr @da9052_adc_manual_read._entry, section ".printk_index", align 4
@__kstrtab_da9052_adc_manual_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_adc_manual_read = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_adc_manual_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_adc_manual_read to i32), ptr @__kstrtab_da9052_adc_manual_read, ptr @__kstrtabns_da9052_adc_manual_read }, section "___ksymtab_gpl+da9052_adc_manual_read", align 4
@tbat_lookup = internal constant { [255 x i32], [228 x i8] } { [255 x i32] [i32 183258, i32 144221, i32 124334, i32 111336, i32 101826, i32 94397, i32 88343, i32 83257, i32 78889, i32 75071, i32 71688, i32 68656, i32 65914, i32 63414, i32 61120, i32 59001, i32 570366, i32 55204, i32 53490, i32 51881, i32 50364, i32 48931, i32 47574, i32 46285, i32 45059, i32 43889, i32 42772, i32 41703, i32 40678, i32 39694, i32 38748, i32 37838, i32 36961, i32 36115, i32 35297, i32 34507, i32 33743, i32 33002, i32 32284, i32 31588, i32 30911, i32 30254, i32 29615, i32 28994, i32 28389, i32 27799, i32 27225, i32 26664, i32 26117, i32 25584, i32 25062, i32 24553, i32 24054, i32 23567, i32 23091, i32 22624, i32 22167, i32 21719, i32 21281, i32 20851, i32 20429, i32 20015, i32 19610, i32 19211, i32 18820, i32 18436, i32 18058, i32 17688, i32 17323, i32 16965, i32 16612, i32 16266, i32 15925, i32 15589, i32 15259, i32 14933, i32 14613, i32 14298, i32 13987, i32 13681, i32 13379, i32 13082, i32 12788, i32 12499, i32 12214, i32 11933, i32 11655, i32 11382, i32 11112, i32 10845, i32 10582, i32 10322, i32 10066, i32 9812, i32 9562, i32 9315, i32 9071, i32 8830, i32 8591, i32 8356, i32 8123, i32 7893, i32 7665, i32 7440, i32 7218, i32 6998, i32 6780, i32 6565, i32 6352, i32 6141, i32 5933, i32 5726, i32 5522, i32 5320, i32 5120, i32 4922, i32 4726, i32 4532, i32 4340, i32 4149, i32 3961, i32 3774, i32 3589, i32 3406, i32 3225, i32 3045, i32 2867, i32 2690, i32 2516, i32 2342, i32 2170, i32 2000, i32 1831, i32 1664, i32 1498, i32 1334, i32 1171, i32 1009, i32 849, i32 690, i32 532, i32 376, i32 221, i32 67, i32 -84, i32 -236, i32 -386, i32 -535, i32 -683, i32 -830, i32 -975, i32 -1119, i32 -1263, i32 -1405, i32 -1546, i32 -1686, i32 -1825, i32 -1964, i32 -2101, i32 -2237, i32 -2372, i32 -2506, i32 -2639, i32 -2771, i32 -2902, i32 -3033, i32 -3162, i32 -3291, i32 -3418, i32 -3545, i32 -3671, i32 -3796, i32 -3920, i32 -4044, i32 -4166, i32 -4288, i32 -4409, i32 -4529, i32 -4649, i32 -4767, i32 -4885, i32 -5002, i32 -5119, i32 -5235, i32 -5349, i32 -5464, i32 -5577, i32 -5690, i32 -5802, i32 -5913, i32 -6024, i32 -6134, i32 -6244, i32 -6352, i32 -6461, i32 -6568, i32 -6675, i32 -6781, i32 -6887, i32 -6992, i32 -7096, i32 -7200, i32 -7303, i32 -7406, i32 -7508, i32 -7609, i32 -7710, i32 -7810, i32 -7910, i32 -8009, i32 -8108, i32 -8206, i32 -8304, i32 -8401, i32 -8497, i32 -8593, i32 -8689, i32 -8784, i32 -8878, i32 -8972, i32 -9066, i32 -9159, i32 -9251, i32 -9343, i32 -9435, i32 -9526, i32 -9617, i32 -9707, i32 -9796, i32 -9886, i32 -9975, i32 -10063, i32 -10151, i32 -10238, i32 -10325, i32 -10412, i32 -10839, i32 -10923, i32 -11007, i32 -11090, i32 -11173, i32 -11256, i32 -11338, i32 -11420, i32 -11501, i32 -11583, i32 -11663, i32 -11744, i32 -11823, i32 -11903, i32 -11982, i32 0, i32 0, i32 0, i32 0], [228 x i8] zeroinitializer }, align 32
@__kstrtab_da9052_adc_read_temp = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_adc_read_temp = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_adc_read_temp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_adc_read_temp to i32), ptr @__kstrtab_da9052_adc_read_temp, ptr @__kstrtabns_da9052_adc_read_temp }, section "___ksymtab_gpl+da9052_adc_read_temp", align 4
@da9052_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @da9052_reg_writeable, ptr @da9052_reg_readable, ptr @da9052_reg_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_da9052_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_regmap_config to i32), ptr @__kstrtab_da9052_regmap_config, ptr @__kstrtabns_da9052_regmap_config }, section "___ksymtab_gpl+da9052_regmap_config", align 4
@da9052_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&da9052->auxadc_lock\00", [43 x i8] zeroinitializer }, align 32
@da9052_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 601, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot clear FAULT_LOG\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9052_device_init\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9052_device_init._entry_ptr = internal global ptr @da9052_device_init._entry, section ".printk_index", align 4
@da9052_device_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 610, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da9052_irq_init failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@da9052_device_init._entry_ptr.11 = internal global ptr @da9052_device_init._entry.9, section ".printk_index", align 4
@da9052_subdev_info = internal constant { [24 x %struct.mfd_cell], [512 x i8] } { [24 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 4, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 5, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 6, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 7, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 8, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 9, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 10, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 11, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 12, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 13, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.36, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [512 x i8] zeroinitializer }, align 32
@da9052_device_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 618, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mfd_add_devices failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@da9052_device_init._entry_ptr.14 = internal global ptr @da9052_device_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlg,tsi-as-adc\00", [17 x i8] zeroinitializer }, align 32
@da9052_tsi_subdev_info = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@da9052_device_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 634, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add TSI subdev: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@da9052_device_init._entry_ptr.18 = internal global ptr @da9052_device_init._entry.16, section ".printk_index", align 4
@__UNIQUE_ID_author234 = internal constant [56 x i8] c"da9052_core.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [40 x i8] c"da9052_core.description=DA9052 MFD Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [41 x i8] c"da9052_core.file=drivers/mfd/da9052-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [24 x i8] c"da9052_core.license=GPL\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot read FAULT_LOG %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9052_clear_fault_log\00", [41 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log._entry_ptr = internal global ptr @da9052_clear_fault_log._entry, section ".printk_index", align 4
@da9052_clear_fault_log.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9052_core\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: TWD_ERROR\0A\00", [59 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: VDD_FAULT\0A\00", [59 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: VDD_START\0A\00", [59 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.26, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: TEMP_OVER\0A\00", [59 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.27, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fault log entry detected: KEY_SHUT\0A\00", [60 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.28, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fault log entry detected: nSD_SHUT\0A\00", [60 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.2, ptr @.str.29, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: WAIT_SHUT\0A\00", [59 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.2, i32 585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot reset FAULT_LOG values %d\0A\00", [62 x i8] zeroinitializer }, align 32
@da9052_clear_fault_log._entry_ptr.32 = internal global ptr @da9052_clear_fault_log._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9052-regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9052-onkey\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9052-rtc\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9052-gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9052-hwmon\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9052-leds\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9052-wled1\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9052-wled2\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9052-wled3\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9052-bat\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9052-watchdog\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9052-tsi\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [109 x i64] [i64 107, i64 32, i64 0, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 88, i64 89, i64 91, i64 92, i64 93, i64 94, i64 96, i64 97, i64 99, i64 100, i64 102, i64 103, i64 105, i64 106, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 128]
@__sancov_gen_cov_switch_values.45 = internal global [129 x i64] [i64 127, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 128]
@__sancov_gen_cov_switch_values.46 = internal global [35 x i64] [i64 33, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 15, i64 17, i64 60, i64 68, i64 83, i64 84, i64 85, i64 87, i64 90, i64 95, i64 98, i64 101, i64 104, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117]
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"chan_mux\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 363, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 398, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"tbat_lookup\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 328, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"da9052_regmap_config\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 532, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 596, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 601, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 610, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"da9052_subdev_info\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 439, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 618, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 627, i32 46 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"da9052_tsi_subdev_info\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 528, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 633, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 87, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 552, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 559, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 562, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 565, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 568, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 571, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 574, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 577, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 584, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 441, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 497, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 500, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 503, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 506, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 509, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 512, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 515, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 518, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 521, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 524, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [29 x i8] c"../drivers/mfd/da9052-core.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 529, i32 12 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__ksymtab_da9052_adc_manual_read, ptr @__ksymtab_da9052_adc_read_temp, ptr @__ksymtab_da9052_regmap_config, ptr @da9052_adc_manual_read._entry, ptr @da9052_adc_manual_read._entry_ptr, ptr @da9052_clear_fault_log._entry, ptr @da9052_clear_fault_log._entry.30, ptr @da9052_clear_fault_log._entry_ptr, ptr @da9052_clear_fault_log._entry_ptr.32, ptr @da9052_device_init._entry, ptr @da9052_device_init._entry.12, ptr @da9052_device_init._entry.16, ptr @da9052_device_init._entry.9, ptr @da9052_device_init._entry_ptr, ptr @da9052_device_init._entry_ptr.11, ptr @da9052_device_init._entry_ptr.14, ptr @da9052_device_init._entry_ptr.18, ptr @chan_mux, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tbat_lookup, ptr @da9052_regmap_config, ptr @da9052_device_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @da9052_subdev_info, ptr @.str.13, ptr @.str.15, ptr @da9052_tsi_subdev_info, ptr @.str.17, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_mux to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_adc_manual_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbat_lookup to i32), i32 1020, i32 1248, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_device_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_subdev_info to i32), i32 2112, i32 2624, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_device_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_tsi_subdev_info to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_device_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_clear_fault_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_clear_fault_log._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_adc_manual_read(ptr noundef %da9052, i8 noundef zeroext %channel) #0 align 64 {
entry:
  %val.i58 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %channel)
  %cmp = icmp ugt i8 %channel, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %channel to i32
  %auxadc_lock = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %auxadc_lock, i32 noundef 0) #5
  %done = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 3
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %done, align 4
  %arrayidx = getelementptr [10 x i8], ptr @chan_mux, i32 0, i32 %conv
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = or i8 %2, 16
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv1.i = zext i8 %3 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 81, i32 noundef %conv1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.err_crit_edge, label %if.end.i

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i:                                         ; preds = %if.end
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.if.end7_crit_edge, label %da9052_reg_write.exit

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

da9052_reg_write.exit:                            ; preds = %if.end.i
  %call5.i = tail call i32 %7(ptr noundef %da9052, i8 noundef zeroext 81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp4 = icmp slt i32 %call5.i, 0
  br i1 %cmp4, label %da9052_reg_write.exit.err_crit_edge, label %da9052_reg_write.exit.if.end7_crit_edge

da9052_reg_write.exit.if.end7_crit_edge:          ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

da9052_reg_write.exit.err_crit_edge:              ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end7:                                          ; preds = %da9052_reg_write.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %da9052, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #8
  br label %err

if.end12:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !121
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i52 = call i32 @regmap_read(ptr noundef %12, i32 noundef 84, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %if.end12.da9052_reg_read.exit.thread_crit_edge, label %if.end.i56

if.end12.da9052_reg_read.exit.thread_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

if.end.i56:                                       ; preds = %if.end12
  %13 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i55 = icmp eq ptr %14, null
  br i1 %tobool.not.i55, label %if.end.i56.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i56.da9052_reg_read.exit_crit_edge:        ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i56
  %call4.i = call i32 %14(ptr noundef %da9052, i8 noundef zeroext 84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %if.end12.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i57.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i52, %if.end12.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %err

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i56.da9052_reg_read.exit_crit_edge
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp slt i32 %16, 0
  br i1 %cmp14, label %da9052_reg_read.exit.err_crit_edge, label %if.end17

da9052_reg_read.exit.err_crit_edge:               ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end17:                                         ; preds = %da9052_reg_read.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i58) #5
  %17 = ptrtoint ptr %val.i58 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i58, align 4, !annotation !121
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i60 = call i32 @regmap_read(ptr noundef %19, i32 noundef 83, ptr noundef nonnull %val.i58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  br i1 %cmp.i61, label %if.end17.da9052_reg_read.exit70.thread_crit_edge, label %if.end.i64

if.end17.da9052_reg_read.exit70.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit70.thread

if.end.i64:                                       ; preds = %if.end17
  %20 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i63 = icmp eq ptr %21, null
  br i1 %tobool.not.i63, label %if.end.i64.da9052_reg_read.exit70_crit_edge, label %if.then2.i67

if.end.i64.da9052_reg_read.exit70_crit_edge:      ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit70

if.then2.i67:                                     ; preds = %if.end.i64
  %call4.i65 = call i32 %21(ptr noundef %da9052, i8 noundef zeroext 83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i65)
  %cmp5.i66 = icmp slt i32 %call4.i65, 0
  br i1 %cmp5.i66, label %if.then2.i67.da9052_reg_read.exit70.thread_crit_edge, label %if.then2.i67.da9052_reg_read.exit70_crit_edge

if.then2.i67.da9052_reg_read.exit70_crit_edge:    ; preds = %if.then2.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit70

if.then2.i67.da9052_reg_read.exit70.thread_crit_edge: ; preds = %if.then2.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit70.thread

da9052_reg_read.exit70.thread:                    ; preds = %if.then2.i67.da9052_reg_read.exit70.thread_crit_edge, %if.end17.da9052_reg_read.exit70.thread_crit_edge
  %retval.0.i69.ph = phi i32 [ %call4.i65, %if.then2.i67.da9052_reg_read.exit70.thread_crit_edge ], [ %call.i60, %if.end17.da9052_reg_read.exit70.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i58) #5
  br label %err

da9052_reg_read.exit70:                           ; preds = %if.then2.i67.da9052_reg_read.exit70_crit_edge, %if.end.i64.da9052_reg_read.exit70_crit_edge
  %22 = ptrtoint ptr %val.i58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp22 = icmp slt i32 %23, 0
  br i1 %cmp22, label %da9052_reg_read.exit70.err_crit_edge, label %if.end25

da9052_reg_read.exit70.err_crit_edge:             ; preds = %da9052_reg_read.exit70
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end25:                                         ; preds = %da9052_reg_read.exit70
  call void @__sanitizer_cov_trace_pc() #7
  %conv20 = shl i32 %16, 2
  %conv26 = and i32 %23, 3
  %conv20.masked = and i32 %conv20, 65532
  %conv31 = or i32 %conv26, %conv20.masked
  br label %err

err:                                              ; preds = %if.end25, %da9052_reg_read.exit70.err_crit_edge, %da9052_reg_read.exit70.thread, %da9052_reg_read.exit.err_crit_edge, %da9052_reg_read.exit.thread, %do.end, %da9052_reg_write.exit.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call5.i, %da9052_reg_write.exit.err_crit_edge ], [ %16, %da9052_reg_read.exit.err_crit_edge ], [ %23, %da9052_reg_read.exit70.err_crit_edge ], [ %conv31, %if.end25 ], [ -110, %do.end ], [ %retval.0.i57.ph, %da9052_reg_read.exit.thread ], [ %retval.0.i69.ph, %da9052_reg_read.exit70.thread ], [ %call.i, %if.end.err_crit_edge ]
  call void @mutex_unlock(ptr noundef %auxadc_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_adc_read_temp(ptr noundef %da9052) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !121
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 90, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

entry.da9052_reg_read.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 8
  %3 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %4(ptr noundef %da9052, i8 noundef zeroext 90) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %entry.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i, %entry.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %da9052_reg_read.exit.cleanup_crit_edge, label %if.end

da9052_reg_read.exit.cleanup_crit_edge:           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %6, -1
  %arrayidx = getelementptr [255 x i32], ptr @tbat_lookup, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %da9052_reg_read.exit.cleanup_crit_edge, %da9052_reg_read.exit.thread
  %retval.0 = phi i32 [ %8, %if.end ], [ %6, %da9052_reg_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %da9052_reg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da9052_reg_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 5, label %entry.return_crit_edge1
    i32 6, label %entry.return_crit_edge2
    i32 7, label %entry.return_crit_edge3
    i32 8, label %entry.return_crit_edge4
    i32 9, label %entry.return_crit_edge5
    i32 10, label %entry.return_crit_edge6
    i32 11, label %entry.return_crit_edge7
    i32 12, label %entry.return_crit_edge8
    i32 13, label %entry.return_crit_edge9
    i32 14, label %entry.return_crit_edge10
    i32 15, label %entry.return_crit_edge11
    i32 16, label %entry.return_crit_edge12
    i32 17, label %entry.return_crit_edge13
    i32 18, label %entry.return_crit_edge14
    i32 20, label %entry.return_crit_edge15
    i32 21, label %entry.return_crit_edge16
    i32 22, label %entry.return_crit_edge17
    i32 23, label %entry.return_crit_edge18
    i32 24, label %entry.return_crit_edge19
    i32 25, label %entry.return_crit_edge20
    i32 26, label %entry.return_crit_edge21
    i32 27, label %entry.return_crit_edge22
    i32 28, label %entry.return_crit_edge23
    i32 29, label %entry.return_crit_edge24
    i32 30, label %entry.return_crit_edge25
    i32 31, label %entry.return_crit_edge26
    i32 32, label %entry.return_crit_edge27
    i32 33, label %entry.return_crit_edge28
    i32 34, label %entry.return_crit_edge29
    i32 35, label %entry.return_crit_edge30
    i32 36, label %entry.return_crit_edge31
    i32 37, label %entry.return_crit_edge32
    i32 38, label %entry.return_crit_edge33
    i32 39, label %entry.return_crit_edge34
    i32 40, label %entry.return_crit_edge35
    i32 41, label %entry.return_crit_edge36
    i32 42, label %entry.return_crit_edge37
    i32 43, label %entry.return_crit_edge38
    i32 44, label %entry.return_crit_edge39
    i32 45, label %entry.return_crit_edge40
    i32 46, label %entry.return_crit_edge41
    i32 47, label %entry.return_crit_edge42
    i32 48, label %entry.return_crit_edge43
    i32 49, label %entry.return_crit_edge44
    i32 50, label %entry.return_crit_edge45
    i32 51, label %entry.return_crit_edge46
    i32 52, label %entry.return_crit_edge47
    i32 53, label %entry.return_crit_edge48
    i32 54, label %entry.return_crit_edge49
    i32 55, label %entry.return_crit_edge50
    i32 56, label %entry.return_crit_edge51
    i32 57, label %entry.return_crit_edge52
    i32 58, label %entry.return_crit_edge53
    i32 59, label %entry.return_crit_edge54
    i32 60, label %entry.return_crit_edge55
    i32 61, label %entry.return_crit_edge56
    i32 62, label %entry.return_crit_edge57
    i32 63, label %entry.return_crit_edge58
    i32 64, label %entry.return_crit_edge59
    i32 65, label %entry.return_crit_edge60
    i32 66, label %entry.return_crit_edge61
    i32 67, label %entry.return_crit_edge62
    i32 69, label %entry.return_crit_edge63
    i32 70, label %entry.return_crit_edge64
    i32 71, label %entry.return_crit_edge65
    i32 72, label %entry.return_crit_edge66
    i32 73, label %entry.return_crit_edge67
    i32 74, label %entry.return_crit_edge68
    i32 75, label %entry.return_crit_edge69
    i32 76, label %entry.return_crit_edge70
    i32 77, label %entry.return_crit_edge71
    i32 78, label %entry.return_crit_edge72
    i32 79, label %entry.return_crit_edge73
    i32 80, label %entry.return_crit_edge74
    i32 81, label %entry.return_crit_edge75
    i32 82, label %entry.return_crit_edge76
    i32 83, label %entry.return_crit_edge77
    i32 84, label %entry.return_crit_edge78
    i32 85, label %entry.return_crit_edge79
    i32 86, label %entry.return_crit_edge80
    i32 88, label %entry.return_crit_edge81
    i32 89, label %entry.return_crit_edge82
    i32 91, label %entry.return_crit_edge83
    i32 92, label %entry.return_crit_edge84
    i32 93, label %entry.return_crit_edge85
    i32 94, label %entry.return_crit_edge86
    i32 96, label %entry.return_crit_edge87
    i32 97, label %entry.return_crit_edge88
    i32 99, label %entry.return_crit_edge89
    i32 100, label %entry.return_crit_edge90
    i32 102, label %entry.return_crit_edge91
    i32 103, label %entry.return_crit_edge92
    i32 105, label %entry.return_crit_edge93
    i32 106, label %entry.return_crit_edge94
    i32 111, label %entry.return_crit_edge95
    i32 112, label %entry.return_crit_edge96
    i32 113, label %entry.return_crit_edge97
    i32 114, label %entry.return_crit_edge98
    i32 115, label %entry.return_crit_edge99
    i32 116, label %entry.return_crit_edge100
    i32 117, label %entry.return_crit_edge101
    i32 118, label %entry.return_crit_edge102
    i32 119, label %entry.return_crit_edge103
    i32 120, label %entry.return_crit_edge104
    i32 121, label %entry.return_crit_edge105
    i32 128, label %entry.return_crit_edge106
  ]

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da9052_reg_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 6, label %entry.return_crit_edge6
    i32 7, label %entry.return_crit_edge7
    i32 8, label %entry.return_crit_edge8
    i32 9, label %entry.return_crit_edge9
    i32 10, label %entry.return_crit_edge10
    i32 11, label %entry.return_crit_edge11
    i32 12, label %entry.return_crit_edge12
    i32 13, label %entry.return_crit_edge13
    i32 14, label %entry.return_crit_edge14
    i32 15, label %entry.return_crit_edge15
    i32 16, label %entry.return_crit_edge16
    i32 17, label %entry.return_crit_edge17
    i32 18, label %entry.return_crit_edge18
    i32 19, label %entry.return_crit_edge19
    i32 20, label %entry.return_crit_edge20
    i32 21, label %entry.return_crit_edge21
    i32 22, label %entry.return_crit_edge22
    i32 23, label %entry.return_crit_edge23
    i32 24, label %entry.return_crit_edge24
    i32 25, label %entry.return_crit_edge25
    i32 26, label %entry.return_crit_edge26
    i32 27, label %entry.return_crit_edge27
    i32 28, label %entry.return_crit_edge28
    i32 29, label %entry.return_crit_edge29
    i32 30, label %entry.return_crit_edge30
    i32 31, label %entry.return_crit_edge31
    i32 32, label %entry.return_crit_edge32
    i32 33, label %entry.return_crit_edge33
    i32 34, label %entry.return_crit_edge34
    i32 35, label %entry.return_crit_edge35
    i32 36, label %entry.return_crit_edge36
    i32 37, label %entry.return_crit_edge37
    i32 38, label %entry.return_crit_edge38
    i32 39, label %entry.return_crit_edge39
    i32 40, label %entry.return_crit_edge40
    i32 41, label %entry.return_crit_edge41
    i32 42, label %entry.return_crit_edge42
    i32 43, label %entry.return_crit_edge43
    i32 44, label %entry.return_crit_edge44
    i32 45, label %entry.return_crit_edge45
    i32 46, label %entry.return_crit_edge46
    i32 47, label %entry.return_crit_edge47
    i32 48, label %entry.return_crit_edge48
    i32 49, label %entry.return_crit_edge49
    i32 50, label %entry.return_crit_edge50
    i32 51, label %entry.return_crit_edge51
    i32 52, label %entry.return_crit_edge52
    i32 53, label %entry.return_crit_edge53
    i32 54, label %entry.return_crit_edge54
    i32 55, label %entry.return_crit_edge55
    i32 56, label %entry.return_crit_edge56
    i32 57, label %entry.return_crit_edge57
    i32 58, label %entry.return_crit_edge58
    i32 59, label %entry.return_crit_edge59
    i32 60, label %entry.return_crit_edge60
    i32 61, label %entry.return_crit_edge61
    i32 62, label %entry.return_crit_edge62
    i32 63, label %entry.return_crit_edge63
    i32 64, label %entry.return_crit_edge64
    i32 65, label %entry.return_crit_edge65
    i32 66, label %entry.return_crit_edge66
    i32 67, label %entry.return_crit_edge67
    i32 68, label %entry.return_crit_edge68
    i32 69, label %entry.return_crit_edge69
    i32 70, label %entry.return_crit_edge70
    i32 71, label %entry.return_crit_edge71
    i32 72, label %entry.return_crit_edge72
    i32 73, label %entry.return_crit_edge73
    i32 74, label %entry.return_crit_edge74
    i32 75, label %entry.return_crit_edge75
    i32 76, label %entry.return_crit_edge76
    i32 77, label %entry.return_crit_edge77
    i32 78, label %entry.return_crit_edge78
    i32 79, label %entry.return_crit_edge79
    i32 80, label %entry.return_crit_edge80
    i32 81, label %entry.return_crit_edge81
    i32 82, label %entry.return_crit_edge82
    i32 83, label %entry.return_crit_edge83
    i32 84, label %entry.return_crit_edge84
    i32 85, label %entry.return_crit_edge85
    i32 86, label %entry.return_crit_edge86
    i32 87, label %entry.return_crit_edge87
    i32 88, label %entry.return_crit_edge88
    i32 89, label %entry.return_crit_edge89
    i32 90, label %entry.return_crit_edge90
    i32 91, label %entry.return_crit_edge91
    i32 92, label %entry.return_crit_edge92
    i32 93, label %entry.return_crit_edge93
    i32 94, label %entry.return_crit_edge94
    i32 95, label %entry.return_crit_edge95
    i32 96, label %entry.return_crit_edge96
    i32 97, label %entry.return_crit_edge97
    i32 98, label %entry.return_crit_edge98
    i32 99, label %entry.return_crit_edge99
    i32 100, label %entry.return_crit_edge100
    i32 101, label %entry.return_crit_edge101
    i32 102, label %entry.return_crit_edge102
    i32 103, label %entry.return_crit_edge103
    i32 104, label %entry.return_crit_edge104
    i32 105, label %entry.return_crit_edge105
    i32 106, label %entry.return_crit_edge106
    i32 107, label %entry.return_crit_edge107
    i32 108, label %entry.return_crit_edge108
    i32 109, label %entry.return_crit_edge109
    i32 110, label %entry.return_crit_edge110
    i32 111, label %entry.return_crit_edge111
    i32 112, label %entry.return_crit_edge112
    i32 113, label %entry.return_crit_edge113
    i32 114, label %entry.return_crit_edge114
    i32 115, label %entry.return_crit_edge115
    i32 116, label %entry.return_crit_edge116
    i32 117, label %entry.return_crit_edge117
    i32 118, label %entry.return_crit_edge118
    i32 119, label %entry.return_crit_edge119
    i32 120, label %entry.return_crit_edge120
    i32 121, label %entry.return_crit_edge121
    i32 122, label %entry.return_crit_edge122
    i32 123, label %entry.return_crit_edge123
    i32 124, label %entry.return_crit_edge124
    i32 125, label %entry.return_crit_edge125
    i32 128, label %entry.return_crit_edge126
  ]

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da9052_reg_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 4, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 6, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 8, label %entry.return_crit_edge7
    i32 15, label %entry.return_crit_edge8
    i32 17, label %entry.return_crit_edge9
    i32 60, label %entry.return_crit_edge10
    i32 9, label %entry.return_crit_edge11
    i32 68, label %entry.return_crit_edge12
    i32 83, label %entry.return_crit_edge13
    i32 84, label %entry.return_crit_edge14
    i32 85, label %entry.return_crit_edge15
    i32 87, label %entry.return_crit_edge16
    i32 90, label %entry.return_crit_edge17
    i32 95, label %entry.return_crit_edge18
    i32 98, label %entry.return_crit_edge19
    i32 101, label %entry.return_crit_edge20
    i32 104, label %entry.return_crit_edge21
    i32 107, label %entry.return_crit_edge22
    i32 108, label %entry.return_crit_edge23
    i32 109, label %entry.return_crit_edge24
    i32 110, label %entry.return_crit_edge25
    i32 111, label %entry.return_crit_edge26
    i32 112, label %entry.return_crit_edge27
    i32 113, label %entry.return_crit_edge28
    i32 114, label %entry.return_crit_edge29
    i32 115, label %entry.return_crit_edge30
    i32 116, label %entry.return_crit_edge31
    i32 117, label %entry.return_crit_edge32
  ]

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_device_init(ptr noundef %da9052, i8 noundef zeroext %chip_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da9052, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %auxadc_lock = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %auxadc_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @da9052_device_init.__key) #5
  %done = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 3
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #5
  %call1 = tail call fastcc i32 @da9052_clear_fault_log(ptr noundef %da9052)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %da9052, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.6) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %init = getelementptr inbounds %struct.da9052_pdata, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init, align 4
  %cmp6.not = icmp eq ptr %8, null
  br i1 %cmp6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 %8(ptr noundef %da9052) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %chip_id11 = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 6
  %9 = ptrtoint ptr %chip_id11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %chip_id, ptr %chip_id11, align 4
  %call12 = tail call i32 @da9052_irq_init(ptr noundef %da9052) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  %10 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %da9052, align 4
  br i1 %cmp13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %call12) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call21 = tail call i32 @mfd_add_devices(ptr noundef %11, i32 noundef -2, ptr noundef nonnull @da9052_subdev_info, i32 noundef 24, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %12 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %da9052, align 4
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %call21) #8
  br label %err

if.end28:                                         ; preds = %if.end19
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %13, ptr noundef nonnull @.str.15) #5
  br i1 %call.i, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  %14 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %da9052, align 4
  %call33 = tail call i32 @mfd_add_devices(ptr noundef %15, i32 noundef -2, ptr noundef nonnull @da9052_tsi_subdev_info, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.cleanup_crit_edge, label %do.end38

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %da9052, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.17, i32 noundef %call33) #8
  br label %err

err:                                              ; preds = %do.end38, %do.end26
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ %call33, %do.end38 ]
  %18 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %da9052, align 4
  tail call void @mfd_remove_devices(ptr noundef %19) #5
  %call43 = tail call i32 @da9052_irq_exit(ptr noundef %da9052) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ %ret.0, %err ], [ 0, %if.then31.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9052_clear_fault_log(ptr noundef %da9052) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !121
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 9, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

entry.da9052_reg_read.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 8
  %3 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %4(ptr noundef %da9052, i8 noundef zeroext 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %entry.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i191.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i, %entry.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %do.end

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %da9052_reg_read.exit.do.end_crit_edge, label %if.end

da9052_reg_read.exit.do.end_crit_edge:            ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %da9052_reg_read.exit.do.end_crit_edge, %da9052_reg_read.exit.thread
  %retval.0.i191201 = phi i32 [ %retval.0.i191.ph, %da9052_reg_read.exit.thread ], [ %6, %da9052_reg_read.exit.do.end_crit_edge ]
  %7 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i191201) #8
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then1.if.end14_crit_edge, label %do.body4

if.then1.if.end14_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.body4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9052_clear_fault_log, %if.then9)) #5
          to label %if.end14 [label %if.then9], !srcloc !122

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9052_clear_fault_log.__UNIQUE_ID_ddebug227, ptr noundef %10, ptr noundef nonnull @.str.23) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %do.body4, %if.then1.if.end14_crit_edge
  %and15 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end35_crit_edge, label %do.body18

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9052_clear_fault_log, %if.then30)) #5
          to label %if.end35 [label %if.then30], !srcloc !122

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9052_clear_fault_log.__UNIQUE_ID_ddebug228, ptr noundef %12, ptr noundef nonnull @.str.24) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %do.body18, %if.end14.if.end35_crit_edge
  %and36 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end56_crit_edge, label %do.body39

if.end35.if.end56_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.body39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9052_clear_fault_log, %if.then51)) #5
          to label %if.end56 [label %if.then51], !srcloc !122

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9052_clear_fault_log.__UNIQUE_ID_ddebug229, ptr noundef %14, ptr noundef nonnull @.str.25) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %do.body39, %if.end35.if.end56_crit_edge
  %and57 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end77_crit_edge, label %do.body60

if.end56.if.end77_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

do.body60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9052_clear_fault_log, %if.then72)) #5
          to label %if.end77 [label %if.then72], !srcloc !122

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9052_clear_fault_log.__UNIQUE_ID_ddebug230, ptr noundef %16, ptr noundef nonnull @.str.26) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %do.body60, %if.end56.if.end77_crit_edge
  %and78 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end98_crit_edge, label %do.body81

if.end77.if.end98_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

do.body81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9052_clear_fault_log, %if.then93)) #5
          to label %if.end98 [label %if.then93], !srcloc !122

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9052_clear_fault_log.__UNIQUE_ID_ddebug231, ptr noundef %18, ptr noundef nonnull @.str.27) #5
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %do.body81, %if.end77.if.end98_crit_edge
  %and99 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end119_crit_edge, label %do.body102

if.end98.if.end119_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

do.body102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9052_clear_fault_log, %if.then114)) #5
          to label %if.end119 [label %if.then114], !srcloc !122

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9052_clear_fault_log.__UNIQUE_ID_ddebug232, ptr noundef %20, ptr noundef nonnull @.str.28) #5
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %do.body102, %if.end98.if.end119_crit_edge
  %and120 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end140_crit_edge, label %do.body123

if.end119.if.end140_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.body123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9052_clear_fault_log, %if.then135)) #5
          to label %if.end140 [label %if.then135], !srcloc !122

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9052_clear_fault_log.__UNIQUE_ID_ddebug233, ptr noundef %22, ptr noundef nonnull @.str.29) #5
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %do.body123, %if.end119.if.end140_crit_edge
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i193 = call i32 @regmap_write(ptr noundef %24, i32 noundef 9, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp.i194 = icmp slt i32 %call.i193, 0
  br i1 %cmp.i194, label %if.end140.do.end146_crit_edge, label %if.end.i197

if.end140.do.end146_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end146

if.end.i197:                                      ; preds = %if.end140
  %25 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i196 = icmp eq ptr %26, null
  br i1 %tobool.not.i196, label %if.end.i197.cleanup_crit_edge, label %da9052_reg_write.exit

if.end.i197.cleanup_crit_edge:                    ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

da9052_reg_write.exit:                            ; preds = %if.end.i197
  %call5.i = call i32 %26(ptr noundef %da9052, i8 noundef zeroext 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp142 = icmp slt i32 %call5.i, 0
  br i1 %cmp142, label %da9052_reg_write.exit.do.end146_crit_edge, label %da9052_reg_write.exit.cleanup_crit_edge

da9052_reg_write.exit.cleanup_crit_edge:          ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

da9052_reg_write.exit.do.end146_crit_edge:        ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end146

do.end146:                                        ; preds = %da9052_reg_write.exit.do.end146_crit_edge, %if.end140.do.end146_crit_edge
  %retval.0.i198211 = phi i32 [ %call5.i, %da9052_reg_write.exit.do.end146_crit_edge ], [ %call.i193, %if.end140.do.end146_crit_edge ]
  %27 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %da9052, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i198211) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end146, %da9052_reg_write.exit.cleanup_crit_edge, %if.end.i197.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i191201, %do.end ], [ %retval.0.i198211, %do.end146 ], [ %call5.i, %da9052_reg_write.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i193, %if.end.i197.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_irq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_irq_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @da9052_device_exit(ptr noundef %da9052) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da9052, align 4
  tail call void @mfd_remove_devices(ptr noundef %1) #5
  %call = tail call i32 @da9052_irq_exit(ptr noundef %da9052) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !46, !48, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/da9052-core.c", i32 398, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @da9052_adc_manual_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @da9052_adc_manual_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_da9052_adc_manual_read, !9, !"__ksymtab_da9052_adc_manual_read", i1 false, i1 false}
!9 = !{!"../drivers/mfd/da9052-core.c", i32 424, i32 1}
!10 = !{ptr @__ksymtab_da9052_adc_read_temp, !11, !"__ksymtab_da9052_adc_read_temp", i1 false, i1 false}
!11 = !{!"../drivers/mfd/da9052-core.c", i32 437, i32 1}
!12 = !{ptr @da9052_regmap_config, !13, !"da9052_regmap_config", i1 false, i1 false}
!13 = !{!"../drivers/mfd/da9052-core.c", i32 532, i32 28}
!14 = !{ptr @__ksymtab_da9052_regmap_config, !15, !"__ksymtab_da9052_regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/mfd/da9052-core.c", i32 543, i32 1}
!16 = !{ptr @da9052_device_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/da9052-core.c", i32 596, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/da9052-core.c", i32 601, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9052_device_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9052_device_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/da9052-core.c", i32 610, i32 3}
!27 = !{ptr @da9052_device_init._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9052_device_init._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/da9052-core.c", i32 618, i32 3}
!31 = !{ptr @da9052_device_init._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9052_device_init._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/da9052-core.c", i32 627, i32 46}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/da9052-core.c", i32 633, i32 4}
!37 = !{ptr @da9052_device_init._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @da9052_device_init._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_author234, !40, !"__UNIQUE_ID_author234", i1 false, i1 false}
!40 = !{!"../drivers/mfd/da9052-core.c", i32 654, i32 1}
!41 = !{ptr @__UNIQUE_ID_description235, !42, !"__UNIQUE_ID_description235", i1 false, i1 false}
!42 = !{!"../drivers/mfd/da9052-core.c", i32 655, i32 1}
!43 = !{ptr @__UNIQUE_ID_file236, !44, !"__UNIQUE_ID_file236", i1 false, i1 false}
!44 = !{!"../drivers/mfd/da9052-core.c", i32 656, i32 1}
!45 = !{ptr @__UNIQUE_ID_license237, !44, !"__UNIQUE_ID_license237", i1 false, i1 false}
!46 = !{ptr @chan_mux, !47, !"chan_mux", i1 false, i1 false}
!47 = !{!"../drivers/mfd/da9052-core.c", i32 363, i32 17}
!48 = !{ptr @tbat_lookup, !49, !"tbat_lookup", i1 false, i1 false}
!49 = !{!"../drivers/mfd/da9052-core.c", i32 328, i32 22}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/da9052-core.c", i32 552, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @da9052_clear_fault_log._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @da9052_clear_fault_log._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/da9052-core.c", i32 559, i32 4}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug227, !59, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/da9052-core.c", i32 562, i32 4}
!64 = !{ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug228, !63, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/da9052-core.c", i32 565, i32 4}
!67 = !{ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug229, !66, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/da9052-core.c", i32 568, i32 4}
!70 = !{ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug230, !69, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/da9052-core.c", i32 571, i32 4}
!73 = !{ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug231, !72, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mfd/da9052-core.c", i32 574, i32 4}
!76 = !{ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug232, !75, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/da9052-core.c", i32 577, i32 4}
!79 = !{ptr @da9052_clear_fault_log.__UNIQUE_ID_ddebug233, !78, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/da9052-core.c", i32 584, i32 4}
!82 = !{ptr @da9052_clear_fault_log._entry.30, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @da9052_clear_fault_log._entry_ptr.32, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/da9052-core.c", i32 441, i32 11}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/da9052-core.c", i32 497, i32 11}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/da9052-core.c", i32 500, i32 11}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/da9052-core.c", i32 503, i32 11}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/da9052-core.c", i32 506, i32 11}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/da9052-core.c", i32 509, i32 11}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/da9052-core.c", i32 512, i32 11}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/da9052-core.c", i32 515, i32 11}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/da9052-core.c", i32 518, i32 11}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/da9052-core.c", i32 521, i32 11}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mfd/da9052-core.c", i32 524, i32 11}
!106 = !{ptr @da9052_subdev_info, !107, !"da9052_subdev_info", i1 false, i1 false}
!107 = !{!"../drivers/mfd/da9052-core.c", i32 439, i32 30}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/da9052-core.c", i32 529, i32 12}
!110 = !{ptr @da9052_tsi_subdev_info, !111, !"da9052_tsi_subdev_info", i1 false, i1 false}
!111 = !{!"../drivers/mfd/da9052-core.c", i32 528, i32 30}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i64 2148291973, i64 2148291978, i64 2148291991, i64 2148292035, i64 2148292069, i64 2148292090}
