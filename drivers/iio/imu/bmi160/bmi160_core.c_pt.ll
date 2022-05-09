; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/bmi160/bmi160_core.c_pt.bc'
source_filename = "../drivers/iio/imu/bmi160/bmi160_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bmi160_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_bmi160_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_bmi160_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmi160_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22bmi160_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_bmi160_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bmi160_enable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_bmi160_enable_irq\09\09\09\09"
module asm "\09.long\09__crc_bmi160_enable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmi160_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22bmi160_enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_bmi160_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmi160_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bmi160_core_probe\09\09\09\09"
module asm "\09.long\09__crc_bmi160_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmi160_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bmi160_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bmi160_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bmi160_regs = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bmi160_scale_item = type { ptr, i32 }
%struct.bmi160_scale = type { i8, i32 }
%struct.bmi160_odr_item = type { ptr, i32 }
%struct.bmi160_odr = type { i8, i32, i32 }
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
%struct.bmi160_data = type { ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.iio_mount_matrix, [4 x i8], [12 x i16] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@bmi160_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bmi160_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmi160_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_bmi160_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmi160_regmap_config to i32), ptr @__kstrtab_bmi160_regmap_config, ptr @__kstrtabns_bmi160_regmap_config }, section "___ksymtab+bmi160_regmap_config", align 4
@__kstrtab_bmi160_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmi160_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_bmi160_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmi160_enable_irq to i32), ptr @__kstrtab_bmi160_enable_irq, ptr @__kstrtabns_bmi160_enable_irq }, section "___ksymtab+bmi160_enable_irq", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bmi160\00", [25 x i8] zeroinitializer }, align 32
@bmi160_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @bmi160_data_rdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@bmi160_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 851, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmi160_core_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/iio/imu/bmi160/bmi160_core.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bmi160_core_probe._entry_ptr = internal global ptr @bmi160_core_probe._entry, section ".printk_index", align 4
@bmi160_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 7, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmi160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 8, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmi160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 9, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmi160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 4, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmi160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 5, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmi160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 6, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmi160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 10, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@bmi160_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @bmi160_attrs_group, ptr @bmi160_read_raw, ptr null, ptr null, ptr @bmi160_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bmi160_core_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 887, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to setup IRQ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@bmi160_core_probe._entry_ptr.11 = internal global ptr @bmi160_core_probe._entry.9, section ".printk_index", align 4
@bmi160_core_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 889, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not setting up IRQ trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bmi160_core_probe._entry_ptr.15 = internal global ptr @bmi160_core_probe._entry.12, section ".printk_index", align 4
@__kstrtab_bmi160_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmi160_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bmi160_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmi160_core_probe to i32), ptr @__kstrtab_bmi160_core_probe, ptr @__kstrtabns_bmi160_core_probe }, section "___ksymtab_gpl+bmi160_core_probe", align 4
@__UNIQUE_ID_author288 = internal constant [59 x i8] c"bmi160_core.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [44 x i8] c"bmi160_core.description=Bosch BMI160 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [52 x i8] c"bmi160_core.file=drivers/iio/imu/bmi160/bmi160_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [27 x i8] c"bmi160_core.license=GPL v2\00", section ".modinfo", align 1
@bmi160_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 727, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmi160_chip_init\00", [47 x i8] zeroinitializer }, align 32
@bmi160_chip_init._entry_ptr = internal global ptr @bmi160_chip_init._entry, section ".printk_index", align 4
@bmi160_chip_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 749, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading chip id\0A\00", [41 x i8] zeroinitializer }, align 32
@bmi160_chip_init._entry_ptr.20 = internal global ptr @bmi160_chip_init._entry.18, section ".printk_index", align 4
@bmi160_chip_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.6, i32 754, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Wrong chip id, got %x expected %x\0A\00", [61 x i8] zeroinitializer }, align 32
@bmi160_chip_init._entry_ptr.23 = internal global ptr @bmi160_chip_init._entry.21, section ".printk_index", align 4
@bmi160_regs = internal constant { [2 x %struct.bmi160_regs], [18 x i8] } { [2 x %struct.bmi160_regs] [%struct.bmi160_regs { i8 18, i8 64, i8 15, i8 112, i8 65, i8 17, i8 16 }, %struct.bmi160_regs { i8 12, i8 66, i8 15, i8 48, i8 67, i8 21, i8 20 }], [18 x i8] zeroinitializer }, align 32
@bmi160_chip_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 825, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable regulators: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bmi160_chip_uninit\00", [45 x i8] zeroinitializer }, align 32
@bmi160_chip_uninit._entry_ptr = internal global ptr @bmi160_chip_uninit._entry, section ".printk_index", align 4
@bmi160_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.26, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @bmi160_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@bmi160_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bmi160_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bmi160_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_accel_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_anglvel_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_anglvel_scale_available, i64 4), ptr null], [44 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.27, %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_anglvel_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.29, %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.31, %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_anglvel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.33, %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"0.78125 1.5625 3.125 6.25 12.5 25 50 100 200 400 800 1600\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_accel_sampling_frequency_available\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"25 50 100 200 400 800 1600 3200\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"in_anglvel_sampling_frequency_available\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0.000598 0.001197 0.002394 0.004788\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"0.001065 0.000532 0.000266 0.000133 0.000066\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_anglvel_scale_available\00", [37 x i8] zeroinitializer }, align 32
@bmi160_scale_table = internal constant { [2 x %struct.bmi160_scale_item], [16 x i8] } { [2 x %struct.bmi160_scale_item] [%struct.bmi160_scale_item { ptr @bmi160_accel_scale, i32 4 }, %struct.bmi160_scale_item { ptr @bmi160_gyro_scale, i32 5 }], [16 x i8] zeroinitializer }, align 32
@bmi160_accel_scale = internal constant { [4 x %struct.bmi160_scale], [32 x i8] } { [4 x %struct.bmi160_scale] [%struct.bmi160_scale { i8 3, i32 598 }, %struct.bmi160_scale { i8 5, i32 1197 }, %struct.bmi160_scale { i8 8, i32 2394 }, %struct.bmi160_scale { i8 12, i32 4788 }], [32 x i8] zeroinitializer }, align 32
@bmi160_gyro_scale = internal constant { [5 x %struct.bmi160_scale], [56 x i8] } { [5 x %struct.bmi160_scale] [%struct.bmi160_scale { i8 0, i32 1065 }, %struct.bmi160_scale { i8 1, i32 532 }, %struct.bmi160_scale { i8 2, i32 266 }, %struct.bmi160_scale { i8 3, i32 133 }, %struct.bmi160_scale { i8 4, i32 66 }], [56 x i8] zeroinitializer }, align 32
@bmi160_odr_table = internal constant { [2 x %struct.bmi160_odr_item], [16 x i8] } { [2 x %struct.bmi160_odr_item] [%struct.bmi160_odr_item { ptr @bmi160_accel_odr, i32 12 }, %struct.bmi160_odr_item { ptr @bmi160_gyro_odr, i32 8 }], [16 x i8] zeroinitializer }, align 32
@bmi160_accel_odr = internal constant { [12 x %struct.bmi160_odr], [48 x i8] } { [12 x %struct.bmi160_odr] [%struct.bmi160_odr { i8 1, i32 0, i32 781250 }, %struct.bmi160_odr { i8 2, i32 1, i32 562500 }, %struct.bmi160_odr { i8 3, i32 3, i32 125000 }, %struct.bmi160_odr { i8 4, i32 6, i32 250000 }, %struct.bmi160_odr { i8 5, i32 12, i32 500000 }, %struct.bmi160_odr { i8 6, i32 25, i32 0 }, %struct.bmi160_odr { i8 7, i32 50, i32 0 }, %struct.bmi160_odr { i8 8, i32 100, i32 0 }, %struct.bmi160_odr { i8 9, i32 200, i32 0 }, %struct.bmi160_odr { i8 10, i32 400, i32 0 }, %struct.bmi160_odr { i8 11, i32 800, i32 0 }, %struct.bmi160_odr { i8 12, i32 1600, i32 0 }], [48 x i8] zeroinitializer }, align 32
@bmi160_gyro_odr = internal constant { [8 x %struct.bmi160_odr], [32 x i8] } { [8 x %struct.bmi160_odr] [%struct.bmi160_odr { i8 6, i32 25, i32 0 }, %struct.bmi160_odr { i8 7, i32 50, i32 0 }, %struct.bmi160_odr { i8 8, i32 100, i32 0 }, %struct.bmi160_odr { i8 9, i32 200, i32 0 }, %struct.bmi160_odr { i8 10, i32 400, i32 0 }, %struct.bmi160_odr { i8 11, i32 800, i32 0 }, %struct.bmi160_odr { i8 12, i32 1600, i32 0 }, %struct.bmi160_odr { i8 13, i32 3200, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INT1\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INT2\00", [27 x i8] zeroinitializer }, align 32
@bmi160_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 706, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not find IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmi160_setup_irq\00", [47 x i8] zeroinitializer }, align 32
@bmi160_setup_irq._entry_ptr = internal global ptr @bmi160_setup_irq._entry, section ".printk_index", align 4
@bmi160_config_device_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 687, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid interrupt type 0x%x specified\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bmi160_config_device_irq\00", [39 x i8] zeroinitializer }, align 32
@bmi160_config_device_irq._entry_ptr = internal global ptr @bmi160_config_device_irq._entry, section ".printk_index", align 4
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@bmi160_config_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 631, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to configure %s IRQ pin\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmi160_config_pin\00", [46 x i8] zeroinitializer }, align 32
@bmi160_config_pin._entry_ptr = internal global ptr @bmi160_config_pin._entry, section ".printk_index", align 4
@switch.table.bmi160_setup_irq = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 1, i32 3, i32 2, i32 3, i32 3, i32 3, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"bmi160_regmap_config\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 143, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 787, i32 55 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 796, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"bmi160_trigger_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 778, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 845, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 846, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 851, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"bmi160_channels\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 283, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"bmi160_info\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 522, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 886, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 889, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 727, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 749, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 753, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"bmi160_regs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 159, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 825, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"bmi160_ext_info\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 278, i32 44 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 279, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"bmi160_attrs_group\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 518, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"bmi160_attrs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 510, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [53 x i8] c"iio_const_attr_in_accel_sampling_frequency_available\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [55 x i8] c"iio_const_attr_in_anglvel_sampling_frequency_available\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [42 x i8] c"iio_const_attr_in_anglvel_scale_available\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 498, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 501, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 504, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 507, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"bmi160_scale_table\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 216, i32 40 }
@___asan_gen_.188 = private unnamed_addr constant [19 x i8] c"bmi160_accel_scale\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 196, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"bmi160_gyro_scale\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 203, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"bmi160_odr_table\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 258, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"bmi160_accel_odr\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 227, i32 32 }
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"bmi160_gyro_odr\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 242, i32 32 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 655, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 661, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 706, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 686, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 691, i32 51 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [40 x i8] c"../drivers/iio/imu/bmi160/bmi160_core.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 631, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [30 x i8] c"switch.table.bmi160_setup_irq\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_bmi160_core_probe, ptr @__ksymtab_bmi160_enable_irq, ptr @__ksymtab_bmi160_regmap_config, ptr @bmi160_chip_init._entry, ptr @bmi160_chip_init._entry.18, ptr @bmi160_chip_init._entry.21, ptr @bmi160_chip_init._entry_ptr, ptr @bmi160_chip_init._entry_ptr.20, ptr @bmi160_chip_init._entry_ptr.23, ptr @bmi160_chip_uninit._entry, ptr @bmi160_chip_uninit._entry_ptr, ptr @bmi160_config_device_irq._entry, ptr @bmi160_config_device_irq._entry_ptr, ptr @bmi160_config_pin._entry, ptr @bmi160_config_pin._entry_ptr, ptr @bmi160_core_probe._entry, ptr @bmi160_core_probe._entry.12, ptr @bmi160_core_probe._entry.9, ptr @bmi160_core_probe._entry_ptr, ptr @bmi160_core_probe._entry_ptr.11, ptr @bmi160_core_probe._entry_ptr.15, ptr @bmi160_setup_irq._entry, ptr @bmi160_setup_irq._entry_ptr, ptr @bmi160_regmap_config, ptr @.str, ptr @.str.1, ptr @bmi160_trigger_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @bmi160_channels, ptr @bmi160_info, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @bmi160_regs, ptr @.str.24, ptr @.str.25, ptr @bmi160_ext_info, ptr @.str.26, ptr @bmi160_attrs_group, ptr @bmi160_attrs, ptr @iio_const_attr_in_accel_sampling_frequency_available, ptr @iio_const_attr_in_anglvel_sampling_frequency_available, ptr @iio_const_attr_in_accel_scale_available, ptr @iio_const_attr_in_anglvel_scale_available, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @bmi160_scale_table, ptr @bmi160_accel_scale, ptr @bmi160_gyro_scale, ptr @bmi160_odr_table, ptr @bmi160_accel_odr, ptr @bmi160_gyro_odr, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.bmi160_setup_irq], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_core_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_core_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_chip_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_chip_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_chip_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_anglvel_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_anglvel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_scale_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_accel_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_gyro_scale to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_odr_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_accel_odr to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_gyro_odr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_config_device_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmi160_config_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bmi160_setup_irq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmi160_enable_irq(ptr noundef %regmap, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %call.i = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 81, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bmi160_write_conf_reg.exit_crit_edge

entry.bmi160_write_conf_reg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_write_conf_reg.exit

if.end.i:                                         ; preds = %entry
  %spec.store.select = select i1 %enable, i32 16, i32 0
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  %and.i = and i32 %2, -17
  %or.i = or i32 %and.i, %spec.store.select
  store i32 %or.i, ptr %val.i, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %regmap, i32 noundef 81, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.bmi160_write_conf_reg.exit_crit_edge

if.end.i.bmi160_write_conf_reg.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_write_conf_reg.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 2, i32 noundef 1002, i32 noundef 2) #6
  br label %bmi160_write_conf_reg.exit

bmi160_write_conf_reg.exit:                       ; preds = %if.end4.i, %if.end.i.bmi160_write_conf_reg.exit_crit_edge, %entry.bmi160_write_conf_reg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end4.i ], [ %call.i, %entry.bmi160_write_conf_reg.exit_crit_edge ], [ %call1.i, %if.end.i.bmi160_write_conf_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmi160_probe_trigger(ptr noundef %indio_dev, i32 noundef %irq, i32 noundef %irq_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #6
  %call2 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %3, i32 noundef %call1) #6
  %trig = getelementptr inbounds %struct.bmi160_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %trig, align 4
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef %irq_type, ptr noundef nonnull @.str.1, ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call9 = tail call ptr @regmap_get_device(ptr noundef %6) #6
  %7 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trig, align 4
  %parent = getelementptr inbounds %struct.iio_trigger, ptr %8, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %parent, align 8
  %10 = load ptr, ptr %trig, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bmi160_trigger_ops, ptr %10, align 8
  %12 = load ptr, ptr %trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %12, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %14 = load ptr, ptr %trig, align 4
  %call16 = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef %14, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trig, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %16, i32 0, i32 4
  %call.i42 = tail call ptr @get_device(ptr noundef %dev.i) #6
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %18) #6
  %trig22 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %19 = ptrtoint ptr %trig22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %trig22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call16, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmi160_core_probe(ptr noundef %dev, ptr noundef %regmap, ptr noundef %name, i1 noundef zeroext %use_spi) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %int_pin = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_pin) #6
  %0 = ptrtoint ptr %int_pin to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %int_pin, align 4, !annotation !134
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 96) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %2, align 8
  %supplies = getelementptr inbounds %struct.bmi160_data, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %supplies, align 8
  %arrayidx4 = getelementptr %struct.bmi160_data, ptr %2, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.3, ptr %arrayidx4, align 4
  %call7 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call7) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %orientation = getelementptr inbounds %struct.bmi160_data, ptr %2, i32 0, i32 3
  %call11 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %9) #6
  %call1.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.16, i32 noundef %call1.i) #9
  br label %bmi160_chip_init.exit.thread

if.end.i:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 126, i32 noundef 182) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.bmi160_chip_init.exit.thread_crit_edge

if.end.i.bmi160_chip_init.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_chip_init.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1001, i32 noundef 2) #6
  br i1 %use_spi, label %if.then8.i, label %if.end6.i.if.end14.i_crit_edge

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end6.i
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %call10.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 127, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end14.i_crit_edge, label %if.then8.i.bmi160_chip_init.exit.thread_crit_edge

if.then8.i.bmi160_chip_init.exit.thread_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_chip_init.exit.thread

if.then8.i.if.end14.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i.if.end14.i_crit_edge, %if.end6.i.if.end14.i_crit_edge
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 8
  %call16.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end22.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.19) #9
  br label %bmi160_chip_init.exit.thread

if.end22.i:                                       ; preds = %if.end14.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 209, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 209
  br i1 %cmp.not.i, label %if.end27.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.22, i32 noundef %17, i32 noundef 209) #9
  br label %bmi160_chip_init.exit.thread

if.end27.i:                                       ; preds = %if.end22.i
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 8
  %call.i.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 126, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end31.i, label %if.end27.i.bmi160_chip_init.exit.thread_crit_edge

if.end27.i.bmi160_chip_init.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_chip_init.exit.thread

if.end31.i:                                       ; preds = %if.end27.i
  call void @usleep_range_state(i32 noundef 3800, i32 noundef 4800, i32 noundef 2) #6
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 8
  %call.i58.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 126, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool2.not.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool2.not.i59.i, label %if.end19, label %if.end31.i.bmi160_chip_init.exit.thread_crit_edge

if.end31.i.bmi160_chip_init.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_chip_init.exit.thread

bmi160_chip_init.exit.thread:                     ; preds = %if.end31.i.bmi160_chip_init.exit.thread_crit_edge, %if.end27.i.bmi160_chip_init.exit.thread_crit_edge, %do.end26.i, %do.end21.i, %if.then8.i.bmi160_chip_init.exit.thread_crit_edge, %if.end.i.bmi160_chip_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i58.i, %if.end31.i.bmi160_chip_init.exit.thread_crit_edge ], [ %call.i.i, %if.end27.i.bmi160_chip_init.exit.thread_crit_edge ], [ %call10.i, %if.then8.i.bmi160_chip_init.exit.thread_crit_edge ], [ %call3.i, %if.end.i.bmi160_chip_init.exit.thread_crit_edge ], [ -19, %do.end26.i ], [ %call16.i, %do.end21.i ], [ %call1.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end31.i
  call void @usleep_range_state(i32 noundef 80000, i32 noundef 81000, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call.i93 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @bmi160_chip_uninit, ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end23, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void @bmi160_chip_uninit(ptr noundef %2) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bmi160_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %23 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %num_channels, align 4
  %name28 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %24 = ptrtoint ptr %name28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %name, ptr %name28, align 8
  %25 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %26 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bmi160_info, ptr %info, align 8
  %call29 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @bmi160_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call33 = call fastcc i32 @bmi160_get_irq(ptr noundef %28, ptr noundef nonnull %int_pin)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp sgt i32 %call33, 0
  br i1 %cmp, label %if.then34, label %do.end45

if.then34:                                        ; preds = %if.end32
  %29 = ptrtoint ptr %int_pin to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_pin, align 4
  %call35 = call fastcc i32 @bmi160_setup_irq(ptr noundef nonnull %call, i32 noundef %call33, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end47_crit_edge, label %do.end40

if.then34.if.end47_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %dev41 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.10, i32 noundef %call33) #9
  br label %if.end47

do.end45:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %dev46 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev46, ptr noundef nonnull @.str.13) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %do.end40, %if.then34.if.end47_crit_edge
  %call48 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end23.cleanup_crit_edge, %devm_add_action_or_reset.exit, %bmi160_chip_init.exit.thread, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call48, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i93, %devm_add_action_or_reset.exit ], [ %call29, %if.end23.cleanup_crit_edge ], [ %retval.0.i.ph, %bmi160_chip_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_pin) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bmi160_chip_uninit(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 126, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %entry.bmi160_set_mode.exit_crit_edge

entry.bmi160_set_mode.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_set_mode.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 80000, i32 noundef 81000, i32 noundef 2) #6
  br label %bmi160_set_mode.exit

bmi160_set_mode.exit:                             ; preds = %if.end4.i, %entry.bmi160_set_mode.exit_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %call.i8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 126, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool2.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool2.not.i9, label %if.end4.i10, label %bmi160_set_mode.exit.bmi160_set_mode.exit11_crit_edge

bmi160_set_mode.exit.bmi160_set_mode.exit11_crit_edge: ; preds = %bmi160_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_set_mode.exit11

if.end4.i10:                                      ; preds = %bmi160_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 3800, i32 noundef 4800, i32 noundef 2) #6
  br label %bmi160_set_mode.exit11

bmi160_set_mode.exit11:                           ; preds = %if.end4.i10, %bmi160_set_mode.exit.bmi160_set_mode.exit11_crit_edge
  %supplies = getelementptr inbounds %struct.bmi160_data, ptr %data, i32 0, i32 2
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %bmi160_set_mode.exit11.if.end_crit_edge, label %do.end

bmi160_set_mode.exit11.if.end_crit_edge:          ; preds = %bmi160_set_mode.exit11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %bmi160_set_mode.exit11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.24, i32 noundef %call3) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %bmi160_set_mode.exit11.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi160_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %sample = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sample) #6
  %4 = ptrtoint ptr %sample to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %sample, align 2, !annotation !134
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %6, i32 noundef %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %10)
  %cmp23 = icmp ult i32 %call2, %10
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %j.025 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.024 = phi i32 [ %call8, %if.end.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %mul = shl i32 %i.024, 1
  %add = add i32 %mul, 4
  %call4 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %add, ptr noundef nonnull %sample, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %for.body.done_crit_edge

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %sample to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sample, align 2
  %inc = add i32 %j.025, 1
  %arrayidx = getelementptr %struct.bmi160_data, ptr %3, i32 0, i32 5, i32 %j.025
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx, align 2
  %16 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active_scan_mask, align 4
  %18 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %masklength, align 8
  %add7 = add nuw i32 %i.024, 1
  %call8 = call i32 @_find_next_bit_be(ptr noundef %17, i32 noundef %19, i32 noundef %add7) #6
  %20 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call8, %21
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %buf9 = getelementptr inbounds %struct.bmi160_data, ptr %3, i32 0, i32 5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %scan_timestamp.i, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %24 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %27, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buf9, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %25, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buf9) #6
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %for.body.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %30) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sample) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmi160_get_irq(ptr noundef %of_node, ptr nocapture noundef writeonly %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_irq_get_byname(ptr noundef %of_node, ptr noundef nonnull @.str.35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @of_irq_get_byname(ptr noundef %of_node, ptr noundef nonnull @.str.36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %pin, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmi160_setup_irq(ptr noundef %indio_dev, i32 noundef %irq, i32 noundef %pin) unnamed_addr #0 align 64 {
entry:
  %val.i13.i.i = alloca i32, align 4
  %val.i1.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %irq) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %irq) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 15
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %7) #6
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 8
  br i1 %8, label %switch.hole_check, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %dev11.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.39, i32 noundef %and.i) #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.bmi160_setup_irq, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 8
  %call.i27.i = tail call ptr @regmap_get_device(ptr noundef %14) #6
  %15 = zext i32 %pin to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pin, label %switch.lookup.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

switch.lookup.sw.epilog.i.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.i, %switch.lookup.sw.epilog.i.i_crit_edge
  %int_out_ctrl_shift.0.i.i = phi i32 [ 255, %switch.lookup.sw.epilog.i.i_crit_edge ], [ 4, %sw.bb1.i.i ], [ 0, %sw.bb.i.i ]
  %int_latch_mask.0.i.i = phi i32 [ 255, %switch.lookup.sw.epilog.i.i_crit_edge ], [ 32, %sw.bb1.i.i ], [ 16, %sw.bb.i.i ]
  %int_map_mask.0.i.i = phi i32 [ 255, %switch.lookup.sw.epilog.i.i_crit_edge ], [ 8, %sw.bb1.i.i ], [ 128, %sw.bb.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %16 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !134
  %call.i.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 83, ptr noundef nonnull %val.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.epilog.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge

sw.epilog.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_write_conf_reg.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %sw.epilog.i.i
  %spec.select.i.i = select i1 %tobool.i.not.i, i32 8, i32 12
  %or7.i.i = or i32 %spec.select.i.i, %switch.load
  %shl11.i.i = shl i32 %or7.i.i, %int_out_ctrl_shift.0.i.i
  %conv14.i.i = and i32 %shl11.i.i, 255
  %shl.i.i = shl i32 15, %int_out_ctrl_shift.0.i.i
  %conv13.i.i = and i32 %shl.i.i, 255
  %17 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i.i, align 4
  %neg.i.i.i = xor i32 %conv13.i.i, -1
  %and.i.i.i = and i32 %18, %neg.i.i.i
  %or.i.i.i = or i32 %and.i.i.i, %conv14.i.i
  store i32 %or.i.i.i, ptr %val.i.i.i, align 4
  %call1.i.i.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 83, i32 noundef %or.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end18.i.i, label %if.end.i.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge

if.end.i.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_write_conf_reg.exit.thread.i.i

bmi160_write_conf_reg.exit.thread.i.i:            ; preds = %if.end.i.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge, %sw.epilog.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge ], [ %call.i.i.i, %sw.epilog.i.i.bmi160_write_conf_reg.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  br label %cleanup

if.end18.i.i:                                     ; preds = %if.end.i.i.i
  call void @usleep_range_state(i32 noundef 2, i32 noundef 1002, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i1.i.i) #6
  %19 = ptrtoint ptr %val.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i1.i.i, align 4, !annotation !134
  %call.i2.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 84, ptr noundef nonnull %val.i1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i9.i.i, label %if.end18.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge

if.end18.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_write_conf_reg.exit12.thread.i.i

if.end.i9.i.i:                                    ; preds = %if.end18.i.i
  %20 = ptrtoint ptr %val.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i1.i.i, align 4
  %or.i6.i.i = or i32 %21, %int_latch_mask.0.i.i
  store i32 %or.i6.i.i, ptr %val.i1.i.i, align 4
  %call1.i7.i.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 84, i32 noundef %or.i6.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %tobool2.not.i8.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %tobool2.not.i8.i.i, label %if.end24.i.i, label %if.end.i9.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge

if.end.i9.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge: ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_write_conf_reg.exit12.thread.i.i

bmi160_write_conf_reg.exit12.thread.i.i:          ; preds = %if.end.i9.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge, %if.end18.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge
  %retval.0.i11.ph.i.i = phi i32 [ %call1.i7.i.i, %if.end.i9.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge ], [ %call.i2.i.i, %if.end18.i.i.bmi160_write_conf_reg.exit12.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i1.i.i) #6
  br label %cleanup

if.end24.i.i:                                     ; preds = %if.end.i9.i.i
  call void @usleep_range_state(i32 noundef 2, i32 noundef 1002, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i1.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i13.i.i) #6
  %22 = ptrtoint ptr %val.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i13.i.i, align 4, !annotation !134
  %call.i14.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 86, ptr noundef nonnull %val.i13.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %call.i14.i.i, 0
  br i1 %tobool.not.i15.i.i, label %if.end.i21.i.i, label %if.end24.i.i.if.then29.i.i_crit_edge

if.end24.i.i.if.then29.i.i_crit_edge:             ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29.i.i

if.end.i21.i.i:                                   ; preds = %if.end24.i.i
  %23 = ptrtoint ptr %val.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i13.i.i, align 4
  %or.i18.i.i = or i32 %24, %int_map_mask.0.i.i
  store i32 %or.i18.i.i, ptr %val.i13.i.i, align 4
  %call1.i19.i.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 86, i32 noundef %or.i18.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i.i)
  %tobool2.not.i20.i.i = icmp eq i32 %call1.i19.i.i, 0
  br i1 %tobool2.not.i20.i.i, label %if.end5, label %if.end.i21.i.i.if.then29.i.i_crit_edge

if.end.i21.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end.i21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end.i21.i.i.if.then29.i.i_crit_edge, %if.end24.i.i.if.then29.i.i_crit_edge
  %retval.0.i23.ph.i.i = phi i32 [ %call1.i19.i.i, %if.end.i21.i.i.if.then29.i.i_crit_edge ], [ %call.i14.i.i, %if.end24.i.i.if.then29.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i13.i.i) #6
  %25 = zext i32 %pin to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %pin, label %if.then29.i.i.do.end.i.i_crit_edge [
    i32 0, label %sw.bb30.i.i
    i32 1, label %sw.bb31.i.i
  ]

if.then29.i.i.do.end.i.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sw.bb30.i.i:                                      ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sw.bb31.i.i:                                      ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb31.i.i, %sw.bb30.i.i, %if.then29.i.i.do.end.i.i_crit_edge
  %pin_name.0.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.then29.i.i.do.end.i.i_crit_edge ], [ @.str.36, %sw.bb31.i.i ], [ @.str.35, %sw.bb30.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i27.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %pin_name.0.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end.i21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 2, i32 noundef 1002, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i13.i.i) #6
  %call6 = call i32 @bmi160_probe_trigger(ptr noundef %indio_dev, i32 noundef %irq, i32 noundef %and.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.i.i, %bmi160_write_conf_reg.exit12.thread.i.i, %bmi160_write_conf_reg.exit.thread.i.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %do.end ], [ %retval.0.i11.ph.i.i, %bmi160_write_conf_reg.exit12.thread.i.i ], [ %retval.0.i.ph.i.i, %bmi160_write_conf_reg.exit.thread.i.i ], [ %retval.0.i23.ph.i.i, %do.end.i.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi160_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !134
  %call.i.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 81, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.bmi160_enable_irq.exit_crit_edge

entry.bmi160_enable_irq.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_enable_irq.exit

if.end.i.i:                                       ; preds = %entry
  %spec.store.select.i = select i1 %enable, i32 16, i32 0
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %8, -17
  %or.i.i = or i32 %and.i.i, %spec.store.select.i
  store i32 %or.i.i, ptr %val.i.i, align 4
  %call1.i.i = call i32 @regmap_write(ptr noundef %5, i32 noundef 81, i32 noundef %or.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.bmi160_enable_irq.exit_crit_edge

if.end.i.i.bmi160_enable_irq.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_enable_irq.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 2, i32 noundef 1002, i32 noundef 2) #6
  br label %bmi160_enable_irq.exit

bmi160_enable_irq.exit:                           ; preds = %if.end4.i.i, %if.end.i.i.bmi160_enable_irq.exit_crit_edge, %entry.bmi160_enable_irq.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end4.i.i ], [ %call.i.i, %entry.bmi160_enable_irq.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.bmi160_enable_irq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bmi160_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.bmi160_data, ptr %1, i32 0, i32 3
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi160_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %val.i36 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %sample.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 12, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sample.i) #6
  %7 = ptrtoint ptr %sample.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %sample.i, align 2, !annotation !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch.selectcmp.i.i = icmp eq i32 %4, 4
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %switch.selectcmp2.i.i = icmp eq i32 %4, 3
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 0, i32 %switch.select.i.i
  %arrayidx.i = getelementptr [2 x %struct.bmi160_regs], ptr @bmi160_regs, i32 0, i32 %switch.select3.i.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %axis.tr.i = trunc i32 %6 to i8
  %10 = shl i8 %axis.tr.i, 1
  %11 = add i8 %10, -2
  %conv2.i = add i8 %11, %9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %conv3.i = zext i8 %conv2.i to i32
  %call4.i = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef %conv3.i, ptr noundef nonnull %sample.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.bmi160_get_data.exit_crit_edge

sw.bb.bmi160_get_data.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_get_data.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %sample.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sample.i, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15) #6
  %shr.i.i = sext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i.i, ptr %val, align 4
  br label %bmi160_get_data.exit

bmi160_get_data.exit:                             ; preds = %if.end.i, %sw.bb.bmi160_get_data.exit_crit_edge
  %.call1 = phi i32 [ %call4.i, %sw.bb.bmi160_get_data.exit_crit_edge ], [ 1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sample.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val, align 4
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %switch.selectcmp.i = icmp eq i32 %20, 4
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %switch.selectcmp2.i = icmp eq i32 %20, 3
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %range.i = getelementptr [2 x %struct.bmi160_regs], ptr @bmi160_regs, i32 0, i32 %switch.select3.i, i32 4
  %24 = ptrtoint ptr %range.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %range.i, align 1
  %conv.i = zext i8 %25 to i32
  %call.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i31 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i31, label %for.cond.preheader.i, label %sw.bb2.bmi160_get_scale.exit.thread_crit_edge

sw.bb2.bmi160_get_scale.exit.thread_crit_edge:    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_get_scale.exit.thread

for.cond.preheader.i:                             ; preds = %sw.bb2
  %26 = and i32 %switch.select3.i, 536870890
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %for.body.lr.ph.i, label %for.cond.preheader.i.bmi160_get_scale.exit.thread_crit_edge

for.cond.preheader.i.bmi160_get_scale.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_get_scale.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %num.i = getelementptr [2 x %struct.bmi160_scale_item], ptr @bmi160_scale_table, i32 0, i32 %switch.select3.i, i32 1
  %28 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num.i, align 4
  %arrayidx1.i = getelementptr [2 x %struct.bmi160_scale_item], ptr @bmi160_scale_table, i32 0, i32 %switch.select3.i
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.i, align 4
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  %smax.i = call i32 @llvm.smax.i32(i32 %29, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.bmi160_scale, ptr %31, i32 %i.025.i
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx4.i, align 4
  %conv5.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv5.i)
  %cmp6.i = icmp eq i32 %33, %conv5.i
  br i1 %cmp6.i, label %36, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.bmi160_get_scale.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.bmi160_get_scale.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_get_scale.exit.thread

bmi160_get_scale.exit.thread:                     ; preds = %for.inc.i.bmi160_get_scale.exit.thread_crit_edge, %for.cond.preheader.i.bmi160_get_scale.exit.thread_crit_edge, %sw.bb2.bmi160_get_scale.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %for.cond.preheader.i.bmi160_get_scale.exit.thread_crit_edge ], [ %call.i, %sw.bb2.bmi160_get_scale.exit.thread_crit_edge ], [ -22, %for.inc.i.bmi160_get_scale.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

36:                                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %uscale12.i = getelementptr %struct.bmi160_scale, ptr %31, i32 %i.025.i, i32 1
  %37 = ptrtoint ptr %uscale12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uscale12.i, align 4
  %39 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %40 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %switch.selectcmp.i32 = icmp eq i32 %41, 4
  %switch.select.i33 = select i1 %switch.selectcmp.i32, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %switch.selectcmp2.i34 = icmp eq i32 %41, 3
  %switch.select3.i35 = select i1 %switch.selectcmp2.i34, i32 0, i32 %switch.select.i33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i36) #6
  %42 = ptrtoint ptr %val.i36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val.i36, align 4, !annotation !134
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %config.i = getelementptr [2 x %struct.bmi160_regs], ptr @bmi160_regs, i32 0, i32 %switch.select3.i35, i32 1
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %config.i, align 1
  %conv.i37 = zext i8 %46 to i32
  %call.i38 = call i32 @regmap_read(ptr noundef %44, i32 noundef %conv.i37, ptr noundef nonnull %val.i36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %if.end.i41, label %sw.bb7.bmi160_get_odr.exit.thread_crit_edge

sw.bb7.bmi160_get_odr.exit.thread_crit_edge:      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_get_odr.exit.thread

if.end.i41:                                       ; preds = %sw.bb7
  %config_odr_mask.i = getelementptr [2 x %struct.bmi160_regs], ptr @bmi160_regs, i32 0, i32 %switch.select3.i35, i32 2
  %47 = ptrtoint ptr %config_odr_mask.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %config_odr_mask.i, align 1
  %conv2.i40 = zext i8 %48 to i32
  %49 = ptrtoint ptr %val.i36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i36, align 4
  %and.i = and i32 %50, %conv2.i40
  store i32 %and.i, ptr %val.i36, align 4
  %51 = and i32 %switch.select3.i35, 536870890
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %for.body.lr.ph.i44, label %if.end.i41.bmi160_get_odr.exit.thread_crit_edge

if.end.i41.bmi160_get_odr.exit.thread_crit_edge:  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_get_odr.exit.thread

for.body.lr.ph.i44:                               ; preds = %if.end.i41
  %arrayidx3.i = getelementptr [2 x %struct.bmi160_odr_item], ptr @bmi160_odr_table, i32 0, i32 %switch.select3.i35
  %num.i42 = getelementptr [2 x %struct.bmi160_odr_item], ptr @bmi160_odr_table, i32 0, i32 %switch.select3.i35, i32 1
  %53 = ptrtoint ptr %num.i42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num.i42, align 4
  %55 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx3.i, align 4
  %smax.i43 = call i32 @llvm.smax.i32(i32 %54, i32 1) #6
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.inc.i48.for.body.i45_crit_edge, %for.body.lr.ph.i44
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i44 ], [ %inc.i46, %for.inc.i48.for.body.i45_crit_edge ]
  %arrayidx6.i = getelementptr %struct.bmi160_odr, ptr %56, i32 %i.043.i
  %57 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx6.i, align 4
  %conv7.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv7.i)
  %cmp8.i = icmp eq i32 %and.i, %conv7.i
  br i1 %cmp8.i, label %59, label %for.inc.i48

for.inc.i48:                                      ; preds = %for.body.i45
  %inc.i46 = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, %smax.i43
  br i1 %exitcond.not.i47, label %for.inc.i48.bmi160_get_odr.exit.thread_crit_edge, label %for.inc.i48.for.body.i45_crit_edge

for.inc.i48.for.body.i45_crit_edge:               ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i45

for.inc.i48.bmi160_get_odr.exit.thread_crit_edge: ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %bmi160_get_odr.exit.thread

bmi160_get_odr.exit.thread:                       ; preds = %for.inc.i48.bmi160_get_odr.exit.thread_crit_edge, %if.end.i41.bmi160_get_odr.exit.thread_crit_edge, %sw.bb7.bmi160_get_odr.exit.thread_crit_edge
  %retval.0.i49.ph = phi i32 [ -22, %if.end.i41.bmi160_get_odr.exit.thread_crit_edge ], [ %call.i38, %sw.bb7.bmi160_get_odr.exit.thread_crit_edge ], [ -22, %for.inc.i48.bmi160_get_odr.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #6
  br label %cleanup

59:                                               ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #8
  %odr21.i = getelementptr %struct.bmi160_odr, ptr %56, i32 %i.043.i, i32 1
  %60 = ptrtoint ptr %odr21.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %odr21.i, align 4
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %val, align 4
  %uodr25.i = getelementptr %struct.bmi160_odr, ptr %56, i32 %i.043.i, i32 2
  %63 = ptrtoint ptr %uodr25.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %uodr25.i, align 4
  %65 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %val2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #6
  br label %cleanup

cleanup:                                          ; preds = %59, %bmi160_get_odr.exit.thread, %36, %bmi160_get_scale.exit.thread, %bmi160_get_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.call1, %bmi160_get_data.exit ], [ -22, %entry.cleanup_crit_edge ], [ 2, %36 ], [ %retval.0.i.ph, %bmi160_get_scale.exit.thread ], [ 2, %59 ], [ %retval.0.i49.ph, %bmi160_get_odr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmi160_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch.selectcmp.i = icmp eq i32 %4, 4
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %switch.selectcmp2.i = icmp eq i32 %4, 3
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  %arrayidx.i = getelementptr [2 x %struct.bmi160_scale_item], ptr @bmi160_scale_table, i32 0, i32 %switch.select3.i
  %num.i = getelementptr [2 x %struct.bmi160_scale_item], ptr @bmi160_scale_table, i32 0, i32 %switch.select3.i, i32 1
  %5 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i, align 4
  %7 = and i32 %switch.select3.i, 536870890
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %for.body.lr.ph.i, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %smax.i = tail call i32 @llvm.smax.i32(i32 %6, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %uscale3.i = getelementptr %struct.bmi160_scale, ptr %10, i32 %i.024.i, i32 1
  %11 = ptrtoint ptr %uscale3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uscale3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val2)
  %cmp4.i = icmp eq i32 %12, %val2
  br i1 %cmp4.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.bb.for.end.i_crit_edge ], [ %smax.i, %for.inc.i.for.end.i_crit_edge ], [ %i.024.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %6)
  %cmp7.i = icmp eq i32 %i.0.lcssa.i, %6
  br i1 %cmp7.i, label %for.end.i.cleanup_crit_edge, label %if.end9.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %range.i = getelementptr [2 x %struct.bmi160_regs], ptr @bmi160_regs, i32 0, i32 %switch.select3.i, i32 4
  %15 = ptrtoint ptr %range.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %range.i, align 1
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx13.i = getelementptr %struct.bmi160_scale, ptr %18, i32 %i.0.lcssa.i
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13.i, align 4
  %conv14.i = zext i8 %20 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %conv.i, i32 noundef %conv14.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %switch.selectcmp.i10 = icmp eq i32 %22, 4
  %switch.select.i11 = select i1 %switch.selectcmp.i10, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %switch.selectcmp2.i12 = icmp eq i32 %22, 3
  %switch.select3.i13 = select i1 %switch.selectcmp2.i12, i32 0, i32 %switch.select.i11
  %23 = and i32 %switch.select3.i13, 536870890
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %for.body.lr.ph.i17, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i17:                               ; preds = %sw.bb3
  %arrayidx.i14 = getelementptr [2 x %struct.bmi160_odr_item], ptr @bmi160_odr_table, i32 0, i32 %switch.select3.i13
  %num.i15 = getelementptr [2 x %struct.bmi160_odr_item], ptr @bmi160_odr_table, i32 0, i32 %switch.select3.i13, i32 1
  %25 = ptrtoint ptr %num.i15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num.i15, align 4
  %27 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i14, align 4
  %smax.i16 = tail call i32 @llvm.smax.i32(i32 %26, i32 1) #6
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.inc.i22.for.body.i19_crit_edge, %for.body.lr.ph.i17
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc.i20, %for.inc.i22.for.body.i19_crit_edge ]
  %odr3.i = getelementptr %struct.bmi160_odr, ptr %28, i32 %i.036.i, i32 1
  %29 = ptrtoint ptr %odr3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %odr3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %val)
  %cmp4.i18 = icmp eq i32 %30, %val
  br i1 %cmp4.i18, label %land.lhs.true.i, label %for.body.i19.for.inc.i22_crit_edge

for.body.i19.for.inc.i22_crit_edge:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i22

land.lhs.true.i:                                  ; preds = %for.body.i19
  %uodr8.i = getelementptr %struct.bmi160_odr, ptr %28, i32 %i.036.i, i32 2
  %31 = ptrtoint ptr %uodr8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uodr8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %val2)
  %cmp9.i = icmp eq i32 %32, %val2
  br i1 %cmp9.i, label %if.end14.i, label %land.lhs.true.i.for.inc.i22_crit_edge

land.lhs.true.i.for.inc.i22_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i22

for.inc.i22:                                      ; preds = %land.lhs.true.i.for.inc.i22_crit_edge, %for.body.i19.for.inc.i22_crit_edge
  %inc.i20 = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i21 = icmp eq i32 %inc.i20, %smax.i16
  br i1 %exitcond.not.i21, label %for.inc.i22.cleanup_crit_edge, label %for.inc.i22.for.body.i19_crit_edge

for.inc.i22.for.body.i19_crit_edge:               ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19

for.inc.i22.cleanup_crit_edge:                    ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %config.i = getelementptr [2 x %struct.bmi160_regs], ptr @bmi160_regs, i32 0, i32 %switch.select3.i13, i32 1
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %config.i, align 1
  %conv.i23 = zext i8 %36 to i32
  %config_odr_mask.i = getelementptr [2 x %struct.bmi160_regs], ptr @bmi160_regs, i32 0, i32 %switch.select3.i13, i32 2
  %37 = ptrtoint ptr %config_odr_mask.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %config_odr_mask.i, align 1
  %conv17.i = zext i8 %38 to i32
  %arrayidx20.i = getelementptr %struct.bmi160_odr, ptr %28, i32 %i.036.i
  %39 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx20.i, align 4
  %conv21.i = zext i8 %40 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %conv.i23, i32 noundef %conv17.i, i32 noundef %conv21.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14.i, %for.inc.i22.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end9.i, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end9.i ], [ -22, %for.end.i.cleanup_crit_edge ], [ %call.i.i, %if.end14.i ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %for.inc.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @bmi160_regmap_config, !1, !"bmi160_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 143, i32 28}
!2 = !{ptr @__ksymtab_bmi160_regmap_config, !3, !"__ksymtab_bmi160_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 147, i32 1}
!4 = !{ptr @__ksymtab_bmi160_enable_irq, !5, !"__ksymtab_bmi160_enable_irq", i1 false, i1 false}
!5 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 648, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 787, i32 55}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 796, i32 21}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 845, i32 29}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 846, i32 29}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 851, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bmi160_core_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bmi160_core_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 886, i32 4}
!24 = !{ptr @bmi160_core_probe._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bmi160_core_probe._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 889, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bmi160_core_probe._entry.12, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @bmi160_core_probe._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_bmi160_core_probe, !32, !"__ksymtab_bmi160_core_probe", i1 false, i1 false}
!32 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 894, i32 1}
!33 = !{ptr @__UNIQUE_ID_author288, !34, !"__UNIQUE_ID_author288", i1 false, i1 false}
!34 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 896, i32 1}
!35 = !{ptr @__UNIQUE_ID_description289, !36, !"__UNIQUE_ID_description289", i1 false, i1 false}
!36 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 897, i32 1}
!37 = !{ptr @__UNIQUE_ID_file290, !38, !"__UNIQUE_ID_file290", i1 false, i1 false}
!38 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 898, i32 1}
!39 = !{ptr @__UNIQUE_ID_license291, !38, !"__UNIQUE_ID_license291", i1 false, i1 false}
!40 = !{ptr @bmi160_trigger_ops, !41, !"bmi160_trigger_ops", i1 false, i1 false}
!41 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 778, i32 37}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 727, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bmi160_chip_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @bmi160_chip_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 749, i32 3}
!49 = !{ptr @bmi160_chip_init._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bmi160_chip_init._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 753, i32 3}
!53 = !{ptr @bmi160_chip_init._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bmi160_chip_init._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @bmi160_regs, !56, !"bmi160_regs", i1 false, i1 false}
!56 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 159, i32 27}
!57 = distinct !{null, !58, !"bmi160_pmu_time", i1 false, i1 false}
!58 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 180, i32 22}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 825, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @bmi160_chip_uninit._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @bmi160_chip_uninit._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @bmi160_channels, !65, !"bmi160_channels", i1 false, i1 false}
!65 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 283, i32 35}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 279, i32 2}
!68 = !{ptr @bmi160_ext_info, !69, !"bmi160_ext_info", i1 false, i1 false}
!69 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 278, i32 44}
!70 = !{ptr @bmi160_info, !71, !"bmi160_info", i1 false, i1 false}
!71 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 522, i32 30}
!72 = !{ptr @bmi160_attrs_group, !73, !"bmi160_attrs_group", i1 false, i1 false}
!73 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 518, i32 37}
!74 = !{ptr @bmi160_attrs, !75, !"bmi160_attrs", i1 false, i1 false}
!75 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 510, i32 26}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 498, i32 1}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @iio_const_attr_in_accel_sampling_frequency_available, !77, !"iio_const_attr_in_accel_sampling_frequency_available", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 501, i32 1}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iio_const_attr_in_anglvel_sampling_frequency_available, !81, !"iio_const_attr_in_anglvel_sampling_frequency_available", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 504, i32 1}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @iio_const_attr_in_accel_scale_available, !85, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 507, i32 1}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @iio_const_attr_in_anglvel_scale_available, !89, !"iio_const_attr_in_anglvel_scale_available", i1 false, i1 false}
!92 = !{ptr @bmi160_scale_table, !93, !"bmi160_scale_table", i1 false, i1 false}
!93 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 216, i32 40}
!94 = !{ptr @bmi160_accel_scale, !95, !"bmi160_accel_scale", i1 false, i1 false}
!95 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 196, i32 34}
!96 = !{ptr @bmi160_gyro_scale, !97, !"bmi160_gyro_scale", i1 false, i1 false}
!97 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 203, i32 34}
!98 = !{ptr @bmi160_odr_table, !99, !"bmi160_odr_table", i1 false, i1 false}
!99 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 258, i32 38}
!100 = !{ptr @bmi160_accel_odr, !101, !"bmi160_accel_odr", i1 false, i1 false}
!101 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 227, i32 32}
!102 = !{ptr @bmi160_gyro_odr, !103, !"bmi160_gyro_odr", i1 false, i1 false}
!103 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 242, i32 32}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 655, i32 35}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 661, i32 35}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 706, i32 3}
!110 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @bmi160_setup_irq._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @bmi160_setup_irq._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 686, i32 3}
!115 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @bmi160_config_device_irq._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @bmi160_config_device_irq._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 691, i32 51}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/imu/bmi160/bmi160_core.c", i32 631, i32 3}
!122 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @bmi160_config_pin._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @bmi160_config_pin._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
!135 = !{i8 0, i8 2}
