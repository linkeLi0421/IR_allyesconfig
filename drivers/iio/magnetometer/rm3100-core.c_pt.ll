; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/rm3100-core.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/rm3100-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rm3100_readable_table\22, \22a\22\09"
module asm "\09.weak\09__crc_rm3100_readable_table\09\09\09\09"
module asm "\09.long\09__crc_rm3100_readable_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rm3100_readable_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rm3100_readable_table\22\09\09\09\09\09"
module asm "__kstrtabns_rm3100_readable_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rm3100_writable_table\22, \22a\22\09"
module asm "\09.weak\09__crc_rm3100_writable_table\09\09\09\09"
module asm "\09.long\09__crc_rm3100_writable_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rm3100_writable_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rm3100_writable_table\22\09\09\09\09\09"
module asm "__kstrtabns_rm3100_writable_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rm3100_volatile_table\22, \22a\22\09"
module asm "\09.weak\09__crc_rm3100_volatile_table\09\09\09\09"
module asm "\09.long\09__crc_rm3100_volatile_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rm3100_volatile_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rm3100_volatile_table\22\09\09\09\09\09"
module asm "__kstrtabns_rm3100_volatile_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rm3100_common_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_rm3100_common_probe\09\09\09\09"
module asm "\09.long\09__crc_rm3100_common_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rm3100_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22rm3100_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_rm3100_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_range = type { i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.rm3100_data = type { ptr, %struct.completion, i8, i32, i32, [24 x i8], ptr, %struct.mutex }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@rm3100_readable_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 52 }], [24 x i8] zeroinitializer }, align 32
@rm3100_readable_table = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @rm3100_readable_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_rm3100_readable_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rm3100_readable_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rm3100_readable_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rm3100_readable_table to i32), ptr @__kstrtab_rm3100_readable_table, ptr @__kstrtabns_rm3100_readable_table }, section "___ksymtab_gpl+rm3100_readable_table", align 4
@rm3100_writable_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 11 }], [24 x i8] zeroinitializer }, align 32
@rm3100_writable_table = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @rm3100_writable_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_rm3100_writable_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rm3100_writable_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rm3100_writable_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rm3100_writable_table to i32), ptr @__kstrtab_rm3100_writable_table, ptr @__kstrtabns_rm3100_writable_table }, section "___ksymtab_gpl+rm3100_writable_table", align 4
@rm3100_volatile_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 52 }], [24 x i8] zeroinitializer }, align 32
@rm3100_volatile_table = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @rm3100_volatile_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_rm3100_volatile_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rm3100_volatile_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rm3100_volatile_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rm3100_volatile_table to i32), ptr @__kstrtab_rm3100_volatile_table, ptr @__kstrtabns_rm3100_volatile_table }, section "___ksymtab_gpl+rm3100_volatile_table", align 4
@rm3100_common_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rm3100\00", [25 x i8] zeroinitializer }, align 32
@rm3100_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @rm3100_attribute_group, ptr @rm3100_read_raw, ptr null, ptr null, ptr @rm3100_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rm3100_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 { i8 115, i8 24, i8 32, i8 8, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 1, %struct.anon.43 { i8 115, i8 24, i8 32, i8 8, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 2, %struct.anon.43 { i8 115, i8 24, i8 32, i8 8, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@rm3100_common_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 573, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"request irq line failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rm3100_common_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/iio/magnetometer/rm3100-core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rm3100_common_probe._entry_ptr = internal global ptr @rm3100_common_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-drdy%d\00", [22 x i8] zeroinitializer }, align 32
@rm3100_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @rm3100_buffer_preenable, ptr null, ptr null, ptr @rm3100_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@rm3100_samp_rates = internal constant { [14 x [3 x i32]], [56 x i8] } { [14 x [3 x i32]] [[3 x i32] [i32 600, i32 0, i32 2], [3 x i32] [i32 300, i32 0, i32 3], [3 x i32] [i32 150, i32 0, i32 7], [3 x i32] [i32 75, i32 0, i32 13], [3 x i32] [i32 37, i32 0, i32 27], [3 x i32] [i32 18, i32 0, i32 55], [3 x i32] [i32 9, i32 0, i32 110], [3 x i32] [i32 4, i32 500000, i32 220], [3 x i32] [i32 2, i32 300000, i32 440], [3 x i32] [i32 1, i32 200000, i32 800], [3 x i32] [i32 0, i32 600000, i32 1600], [3 x i32] [i32 0, i32 300000, i32 3300], [3 x i32] [i32 0, i32 15000, i32 6700], [3 x i32] [i32 0, i32 75000, i32 13000]], [56 x i8] zeroinitializer }, align 32
@__kstrtab_rm3100_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rm3100_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_rm3100_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rm3100_common_probe to i32), ptr @__kstrtab_rm3100_common_probe, ptr @__kstrtabns_rm3100_common_probe }, section "___ksymtab_gpl+rm3100_common_probe", align 4
@__UNIQUE_ID_author187 = internal constant [59 x i8] c"rm3100_core.author=Song Qiang <songqiang1304521@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [66 x i8] c"rm3100_core.description=PNI RM3100 3-axis magnetometer i2c driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [54 x i8] c"rm3100_core.file=drivers/iio/magnetometer/rm3100-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [27 x i8] c"rm3100_core.license=GPL v2\00", section ".modinfo", align 1
@rm3100_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rm3100_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@rm3100_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.8, %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"600 300 150 75 37 18 9 4.5 2.3 1.2 0.6 0.3 0.015 0.075\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rm3100_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"device mode out of control, current mode: %d\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rm3100_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@rm3100_irq_handler._entry_ptr = internal global ptr @rm3100_irq_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.15 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 4, i64 9, i64 18, i64 37, i64 75, i64 150, i64 300, i64 600]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 15000, i64 75000, i64 300000, i64 600000]
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"rm3100_readable_ranges\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 95, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"rm3100_readable_table\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 99, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"rm3100_writable_ranges\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 105, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"rm3100_writable_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 109, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"rm3100_volatile_ranges\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 115, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"rm3100_volatile_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 119, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 549, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 551, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"rm3100_info\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 442, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"rm3100_channels\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 256, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 573, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 577, i32 49 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"rm3100_buffer_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 465, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"rm3100_samp_rates\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 283, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"rm3100_attribute_group\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 272, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"rm3100_attributes\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 267, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 263, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 87, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [42 x i8] c"../drivers/iio/magnetometer/rm3100-core.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 152, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_rm3100_common_probe, ptr @__ksymtab_rm3100_readable_table, ptr @__ksymtab_rm3100_volatile_table, ptr @__ksymtab_rm3100_writable_table, ptr @rm3100_common_probe._entry, ptr @rm3100_common_probe._entry_ptr, ptr @rm3100_irq_handler._entry, ptr @rm3100_irq_handler._entry_ptr, ptr @rm3100_readable_ranges, ptr @rm3100_readable_table, ptr @rm3100_writable_ranges, ptr @rm3100_writable_table, ptr @rm3100_volatile_ranges, ptr @rm3100_volatile_table, ptr @rm3100_common_probe.__key, ptr @.str, ptr @.str.1, ptr @rm3100_info, ptr @rm3100_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rm3100_buffer_ops, ptr @rm3100_samp_rates, ptr @rm3100_attribute_group, ptr @rm3100_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_readable_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_writable_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_writable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_volatile_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_common_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_common_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_samp_rates to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm3100_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rm3100_common_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !75
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 192) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %2, align 8
  %lock = getelementptr inbounds %struct.rm3100_data, ptr %2, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @rm3100_common_probe.__key) #4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rm3100_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rm3100_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %num_channels, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %call, align 8
  %currentmode = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %currentmode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %currentmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool3.not = icmp eq i32 %irq, 0
  %use_interrupt = getelementptr inbounds %struct.rm3100_data, ptr %2, i32 0, i32 2
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %use_interrupt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %use_interrupt, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %use_interrupt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %use_interrupt, align 4
  %measuring_done = getelementptr inbounds %struct.rm3100_data, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %measuring_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %measuring_done, align 4
  %wait.i = getelementptr inbounds %struct.rm3100_data, ptr %2, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %call7 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef nonnull @rm3100_irq_handler, ptr noundef nonnull @rm3100_thread_fn, i32 noundef 8196, ptr noundef %14, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %call14 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #4
  %call15 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %16, i32 noundef %call14) #4
  %drdy_trig = getelementptr inbounds %struct.rm3100_data, ptr %2, i32 0, i32 6
  %17 = ptrtoint ptr %drdy_trig to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call15, ptr %drdy_trig, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call21 = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef nonnull %call15, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.cleanup_crit_edge, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end19.if.end25_crit_edge, %if.then4
  %call26 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @rm3100_trigger_handler, i32 noundef 0, ptr noundef nonnull @rm3100_buffer_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 11, ptr noundef nonnull %tmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %sub = add i32 %19, -146
  %arrayidx34 = getelementptr [14 x [3 x i32]], ptr @rm3100_samp_rates, i32 0, i32 %sub, i32 2
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx34, align 4
  %mul = shl i32 %21, 1
  %conversion_time = getelementptr inbounds %struct.rm3100_data, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %conversion_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %conversion_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %19)
  %cmp36 = icmp eq i32 %19, 146
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 8
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end33
  %call.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 5, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then37.if.end41_crit_edge, label %for.cond.i

if.then37.if.end41_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

for.cond.i:                                       ; preds = %if.then37
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 8
  %call.1.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 7, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp3.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp3.1.i, label %for.cond.i.if.end41_crit_edge, label %for.cond.1.i

for.cond.i.if.end41_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

for.cond.1.i:                                     ; preds = %for.cond.i
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 8
  %call.2.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 9, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp3.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp3.2.i, label %for.cond.1.i.if.end41_crit_edge, label %for.cond.1.i.if.end41.sink.split_crit_edge

for.cond.1.i.if.end41.sink.split_crit_edge:       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.sink.split

for.cond.1.i.if.end41_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.else39:                                        ; preds = %if.end33
  %call.i84 = call i32 @regmap_write(ptr noundef %24, i32 noundef 5, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp3.i85 = icmp slt i32 %call.i84, 0
  br i1 %cmp3.i85, label %if.else39.if.end41_crit_edge, label %for.cond.i88

if.else39.if.end41_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

for.cond.i88:                                     ; preds = %if.else39
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 8
  %call.1.i86 = call i32 @regmap_write(ptr noundef %30, i32 noundef 7, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i86)
  %cmp3.1.i87 = icmp slt i32 %call.1.i86, 0
  br i1 %cmp3.1.i87, label %for.cond.i88.if.end41_crit_edge, label %for.cond.1.i91

for.cond.i88.if.end41_crit_edge:                  ; preds = %for.cond.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

for.cond.1.i91:                                   ; preds = %for.cond.i88
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 8
  %call.2.i89 = call i32 @regmap_write(ptr noundef %32, i32 noundef 9, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i89)
  %cmp3.2.i90 = icmp slt i32 %call.2.i89, 0
  br i1 %cmp3.2.i90, label %for.cond.1.i91.if.end41_crit_edge, label %for.cond.1.i91.if.end41.sink.split_crit_edge

for.cond.1.i91.if.end41.sink.split_crit_edge:     ; preds = %for.cond.1.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.sink.split

for.cond.1.i91.if.end41_crit_edge:                ; preds = %for.cond.1.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.end41.sink.split:                              ; preds = %for.cond.1.i91.if.end41.sink.split_crit_edge, %for.cond.1.i.if.end41.sink.split_crit_edge
  %.sink = phi i32 [ 263, %for.cond.1.i.if.end41.sink.split_crit_edge ], [ 133, %for.cond.1.i91.if.end41.sink.split_crit_edge ]
  %scale6.i92 = getelementptr inbounds %struct.rm3100_data, ptr %2, i32 0, i32 4
  %33 = ptrtoint ptr %scale6.i92 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %scale6.i92, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %for.cond.1.i91.if.end41_crit_edge, %for.cond.i88.if.end41_crit_edge, %if.else39.if.end41_crit_edge, %for.cond.1.i.if.end41_crit_edge, %for.cond.i.if.end41_crit_edge, %if.then37.if.end41_crit_edge
  %call42 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end11 ], [ %call42, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm3100_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %d, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %currentmode = getelementptr inbounds %struct.iio_dev, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %measuring_done = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %measuring_done) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %drdy_trig = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %drdy_trig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drdy_trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %6) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %parent = getelementptr inbounds %struct.iio_dev, ptr %d, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm3100_thread_fn(i32 noundef %irq, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %d, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm3100_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %scan_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_mask) #4
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %scan_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %lock = getelementptr inbounds %struct.rm3100_data, ptr %10, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %13 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %5, label %sw.default [
    i32 7, label %sw.bb
    i32 3, label %sw.bb12
    i32 6, label %sw.bb26
    i32 5, label %sw.bb40
  ]

sw.bb:                                            ; preds = %entry
  %buffer = getelementptr inbounds %struct.rm3100_data, ptr %10, i32 0, i32 5
  %call3 = tail call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 36, ptr noundef %buffer, i32 noundef 9) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %sw.bb.done_crit_edge, label %for.body.preheader

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

for.body.preheader:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 8
  %add.ptr11 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 6
  %14 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr11, i32 3)
  %add.ptr.1 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 4
  %add.ptr11.1 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 3
  %15 = call ptr @memmove(ptr %add.ptr.1, ptr %add.ptr11.1, i32 3)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %buffer13 = getelementptr inbounds %struct.rm3100_data, ptr %10, i32 0, i32 5
  %call15 = tail call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 36, ptr noundef %buffer13, i32 noundef 6) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %sw.bb12.done_crit_edge, label %if.end19

sw.bb12.done_crit_edge:                           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end19:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr22 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 4
  %add.ptr25 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 3
  %16 = call ptr @memmove(ptr %add.ptr22, ptr %add.ptr25, i32 3)
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %buffer27 = getelementptr inbounds %struct.rm3100_data, ptr %10, i32 0, i32 5
  %call29 = tail call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 39, ptr noundef %buffer27, i32 noundef 6) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31 = icmp slt i32 %call29, 0
  br i1 %cmp31, label %sw.bb26.done_crit_edge, label %if.end33

sw.bb26.done_crit_edge:                           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end33:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr36 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 4
  %add.ptr39 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 3
  %17 = call ptr @memmove(ptr %add.ptr36, ptr %add.ptr39, i32 3)
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %buffer41 = getelementptr inbounds %struct.rm3100_data, ptr %10, i32 0, i32 5
  %call43 = tail call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 36, ptr noundef %buffer41, i32 noundef 9) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %sw.bb40.done_crit_edge, label %if.end47

sw.bb40.done_crit_edge:                           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end47:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr50 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 4
  %add.ptr53 = getelementptr %struct.rm3100_data, ptr %10, i32 0, i32 5, i32 6
  %18 = call ptr @memmove(ptr %add.ptr50, ptr %add.ptr53, i32 3)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call54 = call i32 @_find_next_bit_be(ptr noundef nonnull %scan_mask, i32 noundef %8, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call54, i32 %8)
  %cmp56116 = icmp ult i32 %call54, %8
  br i1 %cmp56116, label %for.body57.lr.ph, label %sw.default.for.end69_crit_edge

sw.default.for.end69_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end69

for.body57.lr.ph:                                 ; preds = %sw.default
  %buffer59 = getelementptr inbounds %struct.rm3100_data, ptr %10, i32 0, i32 5
  br label %for.body57

for.body57:                                       ; preds = %for.inc66.for.body57_crit_edge, %for.body57.lr.ph
  %bit.0117 = phi i32 [ %call54, %for.body57.lr.ph ], [ %call68, %for.inc66.for.body57_crit_edge ]
  %mul58 = mul i32 %bit.0117, 3
  %add = add i32 %mul58, 36
  %call61 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %add, ptr noundef %buffer59, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %for.inc66

if.then63:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock) #4
  br label %done

for.inc66:                                        ; preds = %for.body57
  %add67 = add nuw i32 %bit.0117, 1
  %call68 = call i32 @_find_next_bit_be(ptr noundef nonnull %scan_mask, i32 noundef %8, i32 noundef %add67) #4
  %cmp56 = icmp ult i32 %call68, %8
  br i1 %cmp56, label %for.inc66.for.body57_crit_edge, label %for.inc66.for.end69_crit_edge

for.inc66.for.end69_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end69

for.inc66.for.body57_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body57

for.end69:                                        ; preds = %for.inc66.for.end69_crit_edge, %sw.default.for.end69_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end69, %if.end47, %if.end33, %if.end19, %for.body.preheader
  %buffer71 = getelementptr inbounds %struct.rm3100_data, ptr %10, i32 0, i32 5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scan_timestamp.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %sw.epilog.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

sw.epilog.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %21 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %24, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer71, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %22, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %sw.epilog.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer71) #4
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then63, %sw.bb40.done_crit_edge, %sw.bb26.done_crit_edge, %sw.bb12.done_crit_edge, %sw.bb.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %27) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_mask) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm3100_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %buffer.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 12, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_index, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i) #4
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %buffer.i, align 1, !annotation !75
  %8 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !75
  %10 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !75
  %lock.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %add.i = add i32 %4, 4
  %shl.i = shl nuw i32 1, %add.i
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef %shl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.unlock_return.i_crit_edge, label %if.end.i

if.end.unlock_return.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #4
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i.i, align 4, !annotation !75
  %use_interrupt.i.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %use_interrupt.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_interrupt.i.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %measuring_done.i.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %measuring_done.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %measuring_done.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %call.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 52, ptr noundef nonnull %val.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge, label %if.end3.i.i

if.end.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rm3100_wait_measurement.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp4.not.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp4.not.not.i.i, label %if.then5.i.i, label %if.end3.i.i.if.end5.i_crit_edge

if.end3.i.i.if.end5.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  %20 = ptrtoint ptr %use_interrupt.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_interrupt.i.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i.i, label %if.then5.i.i.do.body.i.i_crit_edge, label %if.then8.i.i

if.then5.i.i.do.body.i.i_crit_edge:               ; preds = %if.then5.i.i
  br label %do.body.i.i

if.then8.i.i:                                     ; preds = %if.then5.i.i
  %measuring_done9.i.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 1
  %conversion_time.i.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %conversion_time.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %conversion_time.i.i, align 8
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %23) #4
  %call11.i.i = call i32 @wait_for_completion_timeout(ptr noundef %measuring_done9.i.i, i32 noundef %call2.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then8.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge, label %if.then8.i.i.if.end5.i_crit_edge

if.then8.i.i.if.end5.i_crit_edge:                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then8.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rm3100_wait_measurement.exit.thread.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.then5.i.i.do.body.i.i_crit_edge
  %tries.0.i.i = phi i32 [ %dec.i.i, %do.cond.i.i.do.body.i.i_crit_edge ], [ 20, %if.then5.i.i.do.body.i.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #4
  %call15.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 52, ptr noundef nonnull %val.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %do.body.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge, label %if.end18.i.i

do.body.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rm3100_wait_measurement.exit.thread.i

if.end18.i.i:                                     ; preds = %do.body.i.i
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i.i, align 4
  %and19.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.cond.i.i, label %if.end18.i.i.if.end5.i_crit_edge

if.end18.i.i.if.end5.i_crit_edge:                 ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

do.cond.i.i:                                      ; preds = %if.end18.i.i
  %dec.i.i = add nsw i32 %tries.0.i.i, -1
  %tobool23.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool23.not.i.i, label %do.cond.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

do.cond.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rm3100_wait_measurement.exit.thread.i

rm3100_wait_measurement.exit.thread.i:            ; preds = %do.cond.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge, %do.body.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge, %if.then8.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge, %if.end.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -110, %if.then8.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge ], [ %call.i.i, %if.end.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge ], [ %call15.i.i, %do.body.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge ], [ -110, %do.cond.i.i.rm3100_wait_measurement.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #4
  br label %unlock_return.i

if.end5.i:                                        ; preds = %if.end18.i.i.if.end5.i_crit_edge, %if.then8.i.i.if.end5.i_crit_edge, %if.end3.i.i.if.end5.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #4
  %mul.i = mul i32 %4, 3
  %add6.i = add i32 %mul.i, 36
  %call7.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %add6.i, ptr noundef nonnull %buffer.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.unlock_return.i_crit_edge, label %if.end10.i

if.end5.i.unlock_return.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock.i) #4
  %26 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buffer.i, align 1
  %conv.i.i.i = zext i8 %27 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 1
  %conv2.i.i.i = zext i8 %29 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %10, align 1
  %conv5.i.i.i = zext i8 %31 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %shl.i.i = shl nuw i32 %or6.i.i.i, 8
  %shr.i.i = ashr exact i32 %shl.i.i, 8
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr.i.i, ptr %val, align 4
  br label %rm3100_read_mag.exit

unlock_return.i:                                  ; preds = %if.end5.i.unlock_return.i_crit_edge, %rm3100_wait_measurement.exit.thread.i, %if.end.unlock_return.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end.unlock_return.i_crit_edge ], [ %call7.i, %if.end5.i.unlock_return.i_crit_edge ], [ %retval.0.i.ph.i, %rm3100_wait_measurement.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %rm3100_read_mag.exit

rm3100_read_mag.exit:                             ; preds = %unlock_return.i, %if.end10.i
  %retval.0.i = phi i32 [ %ret.0.i, %unlock_return.i ], [ 1, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #4
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %val, align 4
  %scale = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scale, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %37 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %tmp.i, align 4, !annotation !75
  %lock.i16 = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i16, i32 noundef 0) #4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %call.i17 = call i32 @regmap_read(ptr noundef %39, i32 noundef 11, ptr noundef nonnull %tmp.i) #4
  call void @mutex_unlock(ptr noundef %lock.i16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i18 = icmp slt i32 %call.i17, 0
  br i1 %cmp.i18, label %sw.bb4.rm3100_get_samp_freq.exit_crit_edge, label %if.end.i19

sw.bb4.rm3100_get_samp_freq.exit_crit_edge:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %rm3100_get_samp_freq.exit

if.end.i19:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tmp.i, align 4
  %sub.i = add i32 %41, -146
  %arrayidx.i = getelementptr [14 x [3 x i32]], ptr @rm3100_samp_rates, i32 0, i32 %sub.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  %arrayidx5.i = getelementptr [14 x [3 x i32]], ptr @rm3100_samp_rates, i32 0, i32 %sub.i, i32 1
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.i, align 4
  %47 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val2, align 4
  br label %rm3100_get_samp_freq.exit

rm3100_get_samp_freq.exit:                        ; preds = %if.end.i19, %sw.bb4.rm3100_get_samp_freq.exit_crit_edge
  %retval.0.i20 = phi i32 [ 2, %if.end.i19 ], [ %call.i17, %sw.bb4.rm3100_get_samp_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  br label %cleanup

cleanup:                                          ; preds = %rm3100_get_samp_freq.exit, %sw.bb3, %rm3100_read_mag.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %rm3100_get_samp_freq.exit ], [ 2, %sw.bb3 ], [ %retval.0.i, %rm3100_read_mag.exit ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm3100_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  %cycle_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cycle_count.i) #4
  %4 = ptrtoint ptr %cycle_count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cycle_count.i, align 4, !annotation !75
  %lock.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %call2.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 5, ptr noundef nonnull %cycle_count.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %sw.bb.unlock_return.i_crit_edge, label %for.body.preheader.i

sw.bb.unlock_return.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

for.body.preheader.i:                             ; preds = %sw.bb
  %5 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %val, label %for.body.preheader.i.unlock_return.i_crit_edge [
    i32 600, label %land.lhs.true.i
    i32 300, label %land.lhs.true.1.i
    i32 150, label %land.lhs.true.2.i
    i32 75, label %land.lhs.true.3.i
    i32 37, label %land.lhs.true.4.i
    i32 18, label %land.lhs.true.5.i
    i32 9, label %land.lhs.true.6.i
    i32 4, label %land.lhs.true.7.i
    i32 2, label %land.lhs.true.8.i
    i32 1, label %land.lhs.true.9.i
    i32 0, label %land.lhs.true.10.i
  ]

for.body.preheader.i.unlock_return.i_crit_edge:   ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp8.i = icmp eq i32 %val2, 0
  br i1 %cmp8.i, label %if.end13.thread.i, label %land.lhs.true.i.unlock_return.i_crit_edge

land.lhs.true.i.unlock_return.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.1.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp8.1.i = icmp eq i32 %val2, 0
  br i1 %cmp8.1.i, label %land.lhs.true.1.i.if.end13.i_crit_edge, label %land.lhs.true.1.i.unlock_return.i_crit_edge

land.lhs.true.1.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.1.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.2.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp8.2.i = icmp eq i32 %val2, 0
  br i1 %cmp8.2.i, label %land.lhs.true.2.i.if.end13.i_crit_edge, label %land.lhs.true.2.i.unlock_return.i_crit_edge

land.lhs.true.2.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.2.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.3.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp8.3.i = icmp eq i32 %val2, 0
  br i1 %cmp8.3.i, label %land.lhs.true.3.i.if.end13.i_crit_edge, label %land.lhs.true.3.i.unlock_return.i_crit_edge

land.lhs.true.3.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.3.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.4.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp8.4.i = icmp eq i32 %val2, 0
  br i1 %cmp8.4.i, label %land.lhs.true.4.i.if.end13.i_crit_edge, label %land.lhs.true.4.i.unlock_return.i_crit_edge

land.lhs.true.4.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.4.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.5.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp8.5.i = icmp eq i32 %val2, 0
  br i1 %cmp8.5.i, label %land.lhs.true.5.i.if.end13.i_crit_edge, label %land.lhs.true.5.i.unlock_return.i_crit_edge

land.lhs.true.5.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.5.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.6.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp8.6.i = icmp eq i32 %val2, 0
  br i1 %cmp8.6.i, label %land.lhs.true.6.i.if.end13.i_crit_edge, label %land.lhs.true.6.i.unlock_return.i_crit_edge

land.lhs.true.6.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.6.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.7.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp8.7.i = icmp eq i32 %val2, 500000
  br i1 %cmp8.7.i, label %land.lhs.true.7.i.if.end13.i_crit_edge, label %land.lhs.true.7.i.unlock_return.i_crit_edge

land.lhs.true.7.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.7.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.8.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %val2)
  %cmp8.8.i = icmp eq i32 %val2, 300000
  br i1 %cmp8.8.i, label %land.lhs.true.8.i.if.end13.i_crit_edge, label %land.lhs.true.8.i.unlock_return.i_crit_edge

land.lhs.true.8.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.8.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.9.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %val2)
  %cmp8.9.i = icmp eq i32 %val2, 200000
  br i1 %cmp8.9.i, label %land.lhs.true.9.i.if.end13.i_crit_edge, label %land.lhs.true.9.i.unlock_return.i_crit_edge

land.lhs.true.9.i.unlock_return.i_crit_edge:      ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true.9.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.10.i:                               ; preds = %for.body.preheader.i
  %6 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %val2, label %land.lhs.true.10.i.unlock_return.i_crit_edge [
    i32 600000, label %land.lhs.true.10.i.if.end13.i_crit_edge
    i32 300000, label %if.end13.fold.split.i
    i32 15000, label %if.end13.fold.split130.i
    i32 75000, label %if.end13.fold.split131.i
  ]

land.lhs.true.10.i.if.end13.i_crit_edge:          ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

land.lhs.true.10.i.unlock_return.i_crit_edge:     ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

if.end13.fold.split.i:                            ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end13.fold.split130.i:                         ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end13.fold.split131.i:                         ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13.fold.split131.i, %if.end13.fold.split130.i, %if.end13.fold.split.i, %land.lhs.true.10.i.if.end13.i_crit_edge, %land.lhs.true.9.i.if.end13.i_crit_edge, %land.lhs.true.8.i.if.end13.i_crit_edge, %land.lhs.true.7.i.if.end13.i_crit_edge, %land.lhs.true.6.i.if.end13.i_crit_edge, %land.lhs.true.5.i.if.end13.i_crit_edge, %land.lhs.true.4.i.if.end13.i_crit_edge, %land.lhs.true.3.i.if.end13.i_crit_edge, %land.lhs.true.2.i.if.end13.i_crit_edge, %land.lhs.true.1.i.if.end13.i_crit_edge
  %i.0100.lcssa.i = phi i32 [ 1, %land.lhs.true.1.i.if.end13.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.end13.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.end13.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.end13.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.end13.i_crit_edge ], [ 6, %land.lhs.true.6.i.if.end13.i_crit_edge ], [ 7, %land.lhs.true.7.i.if.end13.i_crit_edge ], [ 8, %land.lhs.true.8.i.if.end13.i_crit_edge ], [ 9, %land.lhs.true.9.i.if.end13.i_crit_edge ], [ 10, %land.lhs.true.10.i.if.end13.i_crit_edge ], [ 11, %if.end13.fold.split.i ], [ 12, %if.end13.fold.split130.i ], [ 13, %if.end13.fold.split131.i ]
  %add.i = add nuw nsw i32 %i.0100.lcssa.i, 146
  %call14.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 11, i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end13.i.unlock_return.i_crit_edge, label %land.lhs.true27.i

if.end13.i.unlock_return.i_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

if.end13.thread.i:                                ; preds = %land.lhs.true.i
  %call14124.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 11, i32 noundef 146) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14124.i)
  %cmp15125.i = icmp slt i32 %call14124.i, 0
  br i1 %cmp15125.i, label %if.end13.thread.i.unlock_return.i_crit_edge, label %land.lhs.true19.i

if.end13.thread.i.unlock_return.i_crit_edge:      ; preds = %if.end13.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true19.i:                                ; preds = %if.end13.thread.i
  %7 = ptrtoint ptr %cycle_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cycle_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %8)
  %cmp20.i = icmp eq i32 %8, 200
  br i1 %cmp20.i, label %if.then21.i, label %land.lhs.true19.i.if.end35.i_crit_edge

land.lhs.true19.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.then21.i:                                      ; preds = %land.lhs.true19.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 5, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then21.i.unlock_return.i_crit_edge, label %for.cond.i.i

if.then21.i.unlock_return.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

for.cond.i.i:                                     ; preds = %if.then21.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call.1.i.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 7, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp3.1.i.i = icmp slt i32 %call.1.i.i, 0
  br i1 %cmp3.1.i.i, label %for.cond.i.i.unlock_return.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.unlock_return.i_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call.2.i.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 9, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %cmp3.2.i.i = icmp slt i32 %call.2.i.i, 0
  br i1 %cmp3.2.i.i, label %for.cond.1.i.i.unlock_return.i_crit_edge, label %for.cond.1.i.i.if.end35.sink.split.i_crit_edge

for.cond.1.i.i.if.end35.sink.split.i_crit_edge:   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.sink.split.i

for.cond.1.i.i.unlock_return.i_crit_edge:         ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

land.lhs.true27.i:                                ; preds = %if.end13.i
  %15 = ptrtoint ptr %cycle_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cycle_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %16)
  %cmp28.i = icmp eq i32 %16, 100
  br i1 %cmp28.i, label %if.then29.i, label %land.lhs.true27.i.if.end35.i_crit_edge

land.lhs.true27.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.then29.i:                                      ; preds = %land.lhs.true27.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call.i81.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 5, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp3.i82.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp3.i82.i, label %if.then29.i.unlock_return.i_crit_edge, label %for.cond.i85.i

if.then29.i.unlock_return.i_crit_edge:            ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

for.cond.i85.i:                                   ; preds = %if.then29.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.1.i83.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 7, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i83.i)
  %cmp3.1.i84.i = icmp slt i32 %call.1.i83.i, 0
  br i1 %cmp3.1.i84.i, label %for.cond.i85.i.unlock_return.i_crit_edge, label %for.cond.1.i88.i

for.cond.i85.i.unlock_return.i_crit_edge:         ; preds = %for.cond.i85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

for.cond.1.i88.i:                                 ; preds = %for.cond.i85.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call.2.i86.i = call i32 @regmap_write(ptr noundef %22, i32 noundef 9, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i86.i)
  %cmp3.2.i87.i = icmp slt i32 %call.2.i86.i, 0
  br i1 %cmp3.2.i87.i, label %for.cond.1.i88.i.unlock_return.i_crit_edge, label %for.cond.1.i88.i.if.end35.sink.split.i_crit_edge

for.cond.1.i88.i.if.end35.sink.split.i_crit_edge: ; preds = %for.cond.1.i88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.sink.split.i

for.cond.1.i88.i.unlock_return.i_crit_edge:       ; preds = %for.cond.1.i88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

if.end35.sink.split.i:                            ; preds = %for.cond.1.i88.i.if.end35.sink.split.i_crit_edge, %for.cond.1.i.i.if.end35.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 263, %for.cond.1.i.i.if.end35.sink.split.i_crit_edge ], [ 133, %for.cond.1.i88.i.if.end35.sink.split.i_crit_edge ]
  %i.0100.lcssa126128.ph.i = phi i32 [ 0, %for.cond.1.i.i.if.end35.sink.split.i_crit_edge ], [ %i.0100.lcssa.i, %for.cond.1.i88.i.if.end35.sink.split.i_crit_edge ]
  %scale6.i89.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %scale6.i89.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %scale6.i89.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.sink.split.i, %land.lhs.true27.i.if.end35.i_crit_edge, %land.lhs.true19.i.if.end35.i_crit_edge
  %i.0100.lcssa126128.i = phi i32 [ 0, %land.lhs.true19.i.if.end35.i_crit_edge ], [ %i.0100.lcssa.i, %land.lhs.true27.i.if.end35.i_crit_edge ], [ %i.0100.lcssa126128.ph.i, %if.end35.sink.split.i ]
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %24 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %currentmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp36.i = icmp eq i32 %25, 2
  br i1 %cmp36.i, label %if.then37.i, label %if.end35.i.if.end47.i_crit_edge

if.end35.i.if.end47.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.i

if.then37.i:                                      ; preds = %if.end35.i
  %call38.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.then37.i.unlock_return.i_crit_edge, label %if.end41.i

if.then37.i.unlock_return.i_crit_edge:            ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

if.end41.i:                                       ; preds = %if.then37.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %28 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %active_scan_mask.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and.i = shl i32 %31, 4
  %shl.i = and i32 %and.i, 112
  %or.i = or i32 %shl.i, 1
  %call43.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 1, i32 noundef %or.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %if.end41.i.unlock_return.i_crit_edge, label %if.end41.i.if.end47.i_crit_edge

if.end41.i.if.end47.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.i

if.end41.i.unlock_return.i_crit_edge:             ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_return.i

if.end47.i:                                       ; preds = %if.end41.i.if.end47.i_crit_edge, %if.end35.i.if.end47.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  %arrayidx50.i = getelementptr [14 x [3 x i32]], ptr @rm3100_samp_rates, i32 0, i32 %i.0100.lcssa126128.i, i32 2
  %32 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx50.i, align 4
  %mul.i = shl i32 %33, 1
  %conversion_time.i = getelementptr inbounds %struct.rm3100_data, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %conversion_time.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i, ptr %conversion_time.i, align 8
  br label %rm3100_set_samp_freq.exit

unlock_return.i:                                  ; preds = %if.end41.i.unlock_return.i_crit_edge, %if.then37.i.unlock_return.i_crit_edge, %for.cond.1.i88.i.unlock_return.i_crit_edge, %for.cond.i85.i.unlock_return.i_crit_edge, %if.then29.i.unlock_return.i_crit_edge, %for.cond.1.i.i.unlock_return.i_crit_edge, %for.cond.i.i.unlock_return.i_crit_edge, %if.then21.i.unlock_return.i_crit_edge, %if.end13.thread.i.unlock_return.i_crit_edge, %if.end13.i.unlock_return.i_crit_edge, %land.lhs.true.10.i.unlock_return.i_crit_edge, %land.lhs.true.9.i.unlock_return.i_crit_edge, %land.lhs.true.8.i.unlock_return.i_crit_edge, %land.lhs.true.7.i.unlock_return.i_crit_edge, %land.lhs.true.6.i.unlock_return.i_crit_edge, %land.lhs.true.5.i.unlock_return.i_crit_edge, %land.lhs.true.4.i.unlock_return.i_crit_edge, %land.lhs.true.3.i.unlock_return.i_crit_edge, %land.lhs.true.2.i.unlock_return.i_crit_edge, %land.lhs.true.1.i.unlock_return.i_crit_edge, %land.lhs.true.i.unlock_return.i_crit_edge, %for.body.preheader.i.unlock_return.i_crit_edge, %sw.bb.unlock_return.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %sw.bb.unlock_return.i_crit_edge ], [ %call14.i, %if.end13.i.unlock_return.i_crit_edge ], [ %call38.i, %if.then37.i.unlock_return.i_crit_edge ], [ %call43.i, %if.end41.i.unlock_return.i_crit_edge ], [ %call.2.i.i, %for.cond.1.i.i.unlock_return.i_crit_edge ], [ %call.1.i.i, %for.cond.i.i.unlock_return.i_crit_edge ], [ %call.i.i, %if.then21.i.unlock_return.i_crit_edge ], [ %call.2.i86.i, %for.cond.1.i88.i.unlock_return.i_crit_edge ], [ %call.1.i83.i, %for.cond.i85.i.unlock_return.i_crit_edge ], [ %call.i81.i, %if.then29.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.9.i.unlock_return.i_crit_edge ], [ %call14124.i, %if.end13.thread.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.8.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.7.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.6.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.5.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.4.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.3.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.2.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.1.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.i.unlock_return.i_crit_edge ], [ -22, %land.lhs.true.10.i.unlock_return.i_crit_edge ], [ -22, %for.body.preheader.i.unlock_return.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %rm3100_set_samp_freq.exit

rm3100_set_samp_freq.exit:                        ; preds = %unlock_return.i, %if.end47.i
  %retval.0.i = phi i32 [ %ret.0.i, %unlock_return.i ], [ 0, %if.end47.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cycle_count.i) #4
  br label %return

return:                                           ; preds = %rm3100_set_samp_freq.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rm3100_set_samp_freq.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm3100_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = shl i32 %7, 4
  %shl = and i32 %and, 112
  %or = or i32 %shl, 1
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1, i32 noundef %or) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm3100_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1, i32 noundef 0) #4
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !56, !57, !59, !60, !61, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @rm3100_readable_table, !1, !"rm3100_readable_table", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 99, i32 34}
!2 = !{ptr @__ksymtab_rm3100_readable_table, !3, !"__ksymtab_rm3100_readable_table", i1 false, i1 false}
!3 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 103, i32 1}
!4 = !{ptr @rm3100_writable_table, !5, !"rm3100_writable_table", i1 false, i1 false}
!5 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 109, i32 34}
!6 = !{ptr @__ksymtab_rm3100_writable_table, !7, !"__ksymtab_rm3100_writable_table", i1 false, i1 false}
!7 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 113, i32 1}
!8 = !{ptr @rm3100_volatile_table, !9, !"rm3100_volatile_table", i1 false, i1 false}
!9 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 119, i32 34}
!10 = !{ptr @__ksymtab_rm3100_volatile_table, !11, !"__ksymtab_rm3100_volatile_table", i1 false, i1 false}
!11 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 123, i32 1}
!12 = !{ptr @rm3100_common_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 549, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 551, i32 20}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 573, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rm3100_common_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rm3100_common_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 577, i32 49}
!27 = !{ptr @__ksymtab_rm3100_common_probe, !28, !"__ksymtab_rm3100_common_probe", i1 false, i1 false}
!28 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 610, i32 1}
!29 = !{ptr @__UNIQUE_ID_author187, !30, !"__UNIQUE_ID_author187", i1 false, i1 false}
!30 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 612, i32 1}
!31 = !{ptr @__UNIQUE_ID_description188, !32, !"__UNIQUE_ID_description188", i1 false, i1 false}
!32 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 613, i32 1}
!33 = !{ptr @__UNIQUE_ID_file189, !34, !"__UNIQUE_ID_file189", i1 false, i1 false}
!34 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 614, i32 1}
!35 = !{ptr @__UNIQUE_ID_license190, !34, !"__UNIQUE_ID_license190", i1 false, i1 false}
!36 = !{ptr @rm3100_readable_ranges, !37, !"rm3100_readable_ranges", i1 false, i1 false}
!37 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 95, i32 34}
!38 = !{ptr @rm3100_writable_ranges, !39, !"rm3100_writable_ranges", i1 false, i1 false}
!39 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 105, i32 34}
!40 = !{ptr @rm3100_volatile_ranges, !41, !"rm3100_volatile_ranges", i1 false, i1 false}
!41 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 115, i32 34}
!42 = !{ptr @rm3100_info, !43, !"rm3100_info", i1 false, i1 false}
!43 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 442, i32 30}
!44 = !{ptr @rm3100_attribute_group, !45, !"rm3100_attribute_group", i1 false, i1 false}
!45 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 272, i32 37}
!46 = !{ptr @rm3100_attributes, !47, !"rm3100_attributes", i1 false, i1 false}
!47 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 267, i32 26}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 263, i32 8}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @iio_const_attr_sampling_frequency_available, !49, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!52 = !{ptr @rm3100_channels, !53, !"rm3100_channels", i1 false, i1 false}
!53 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 256, i32 35}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 152, i32 3}
!59 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rm3100_irq_handler._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rm3100_irq_handler._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @rm3100_buffer_ops, !63, !"rm3100_buffer_ops", i1 false, i1 false}
!63 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 465, i32 42}
!64 = !{ptr @rm3100_samp_rates, !65, !"rm3100_samp_rates", i1 false, i1 false}
!65 = !{!"../drivers/iio/magnetometer/rm3100-core.c", i32 283, i32 18}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
