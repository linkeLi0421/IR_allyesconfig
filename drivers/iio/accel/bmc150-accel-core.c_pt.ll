; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/bmc150-accel-core.c_pt.bc'
source_filename = "../drivers/iio/accel/bmc150-accel-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bmc150_regmap_conf\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_regmap_conf\09\09\09\09"
module asm "\09.long\09__crc_bmc150_regmap_conf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_regmap_conf\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmc150_accel_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_accel_core_probe\09\09\09\09"
module asm "\09.long\09__crc_bmc150_accel_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_accel_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_accel_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_accel_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmc150_accel_core_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_accel_core_remove\09\09\09\09"
module asm "\09.long\09__crc_bmc150_accel_core_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_accel_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_accel_core_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_accel_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmc150_accel_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_accel_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_bmc150_accel_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_accel_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_accel_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_accel_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bmc150_accel_chip_info = type { ptr, i8, ptr, i32, [4 x %struct.bmc150_scale_info] }
%struct.bmc150_scale_info = type { i32, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.anon.87 = type { i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.bmc150_accel_interrupt_info = type { i8, i8, i8, i8 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.anon.90 = type { i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.bmc150_accel_data = type { ptr, [2 x %struct.regulator_bulk_data], [3 x %struct.bmc150_accel_interrupt], [2 x %struct.bmc150_accel_trigger], %struct.mutex, i8, i8, [8 x i16], %struct.anon.85, i8, i32, i32, i32, i32, i64, i64, ptr, i32, ptr, ptr, %struct.delayed_work, %struct.iio_mount_matrix }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.bmc150_accel_interrupt = type { ptr, %struct.atomic_t }
%struct.bmc150_accel_trigger = type { ptr, ptr, ptr, i32, i8 }
%struct.anon.85 = type { [3 x i16], i64 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@bmc150_regmap_conf = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bmc150_regmap_conf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_regmap_conf = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_regmap_conf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_regmap_conf to i32), ptr @__kstrtab_bmc150_regmap_conf, ptr @__kstrtabns_bmc150_regmap_conf }, section "___ksymtab_gpl+bmc150_regmap_conf", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@bmc150_accel_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1704, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bmc150_accel_core_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/iio/accel/bmc150-accel-core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bmc150_accel_core_probe._entry_ptr = internal global ptr @bmc150_accel_core_probe._entry, section ".printk_index", align 4
@bmc150_accel_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@bmc150_accel_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@bmc150_accel_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @bmc150_accel_attrs_group, ptr @bmc150_accel_read_raw, ptr null, ptr null, ptr @bmc150_accel_write_raw, ptr null, ptr null, ptr @bmc150_accel_read_event_config, ptr @bmc150_accel_write_event_config, ptr @bmc150_accel_read_event, ptr @bmc150_accel_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bmc150_accel_info_fifo = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @bmc150_accel_attrs_group, ptr @bmc150_accel_read_raw, ptr null, ptr null, ptr @bmc150_accel_write_raw, ptr null, ptr null, ptr @bmc150_accel_read_event_config, ptr @bmc150_accel_write_event_config, ptr @bmc150_accel_read_event, ptr @bmc150_accel_write_event, ptr @bmc150_accel_validate_trigger, ptr null, ptr null, ptr null, ptr @bmc150_accel_set_watermark, ptr @bmc150_accel_fifo_flush }, [56 x i8] zeroinitializer }, align 32
@bmc150_accel_fifo_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_min, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_max, i64 4), ptr @iio_dev_attr_hwfifo_watermark, ptr @iio_dev_attr_hwfifo_enabled, ptr null], [44 x i8] zeroinitializer }, align 32
@bmc150_accel_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @bmc150_accel_buffer_preenable, ptr @bmc150_accel_buffer_postenable, ptr @bmc150_accel_buffer_predisable, ptr @bmc150_accel_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@bmc150_accel_core_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1741, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed: iio triggered buffer setup\0A\00", [60 x i8] zeroinitializer }, align 32
@bmc150_accel_core_probe._entry_ptr.11 = internal global ptr @bmc150_accel_core_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bmc150_accel_event\00", [45 x i8] zeroinitializer }, align 32
@bmc150_accel_core_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 1764, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error writing reg_int_rst_latch\0A\00", [63 x i8] zeroinitializer }, align 32
@bmc150_accel_core_probe._entry_ptr.15 = internal global ptr @bmc150_accel_core_probe._entry.13, section ".printk_index", align 4
@bmc150_accel_core_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1785, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@bmc150_accel_core_probe._entry_ptr.18 = internal global ptr @bmc150_accel_core_probe._entry.16, section ".printk_index", align 4
@__kstrtab_bmc150_accel_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_accel_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_accel_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_accel_core_probe to i32), ptr @__kstrtab_bmc150_accel_core_probe, ptr @__kstrtabns_bmc150_accel_core_probe }, section "___ksymtab_gpl+bmc150_accel_core_probe", align 4
@__kstrtab_bmc150_accel_core_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_accel_core_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_accel_core_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_accel_core_remove to i32), ptr @__kstrtab_bmc150_accel_core_remove, ptr @__kstrtabns_bmc150_accel_core_remove }, section "___ksymtab_gpl+bmc150_accel_core_remove", align 4
@bmc150_accel_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bmc150_accel_suspend, ptr @bmc150_accel_resume, ptr @bmc150_accel_suspend, ptr @bmc150_accel_resume, ptr @bmc150_accel_suspend, ptr @bmc150_accel_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bmc150_accel_runtime_suspend, ptr @bmc150_accel_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bmc150_accel_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_accel_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_accel_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_accel_pm_ops to i32), ptr @__kstrtab_bmc150_accel_pm_ops, ptr @__kstrtabns_bmc150_accel_pm_ops }, section "___ksymtab_gpl+bmc150_accel_pm_ops", align 4
@__UNIQUE_ID_author292 = internal constant [83 x i8] c"bmc150_accel_core.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [59 x i8] c"bmc150_accel_core.file=drivers/iio/accel/bmc150-accel-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [33 x i8] c"bmc150_accel_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [58 x i8] c"bmc150_accel_core.description=BMC150 accelerometer driver\00", section ".modinfo", align 1
@bmc150_accel_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 1609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error: Reading chip id\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bmc150_accel_chip_init\00", [41 x i8] zeroinitializer }, align 32
@bmc150_accel_chip_init._entry_ptr = internal global ptr @bmc150_accel_chip_init._entry, section ".printk_index", align 4
@bmc150_accel_chip_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.20, ptr @.str.5, ptr @.str.22, i8 1, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmc150_accel_core\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Chip Id %x\0A\00", [20 x i8] zeroinitializer }, align 32
@bmc150_accel_chip_info_tbl = internal constant { [5 x %struct.bmc150_accel_chip_info], [48 x i8] } { [5 x %struct.bmc150_accel_chip_info] [%struct.bmc150_accel_chip_info { ptr @.str.31, i8 3, ptr @bma222e_accel_channels, i32 5, [4 x %struct.bmc150_scale_info] [%struct.bmc150_scale_info { i32 153229, i8 3 }, %struct.bmc150_scale_info { i32 306458, i8 5 }, %struct.bmc150_scale_info { i32 612916, i8 8 }, %struct.bmc150_scale_info { i32 1225831, i8 12 }] }, %struct.bmc150_accel_chip_info { ptr @.str.32, i8 -8, ptr @bma222e_accel_channels, i32 5, [4 x %struct.bmc150_scale_info] [%struct.bmc150_scale_info { i32 153229, i8 3 }, %struct.bmc150_scale_info { i32 306458, i8 5 }, %struct.bmc150_scale_info { i32 612916, i8 8 }, %struct.bmc150_scale_info { i32 1225831, i8 12 }] }, %struct.bmc150_accel_chip_info { ptr @.str.33, i8 -7, ptr @bma250e_accel_channels, i32 5, [4 x %struct.bmc150_scale_info] [%struct.bmc150_scale_info { i32 38307, i8 3 }, %struct.bmc150_scale_info { i32 76614, i8 5 }, %struct.bmc150_scale_info { i32 153229, i8 8 }, %struct.bmc150_scale_info { i32 306458, i8 12 }] }, %struct.bmc150_accel_chip_info { ptr @.str.34, i8 -6, ptr @bmc150_accel_channels, i32 5, [4 x %struct.bmc150_scale_info] [%struct.bmc150_scale_info { i32 9577, i8 3 }, %struct.bmc150_scale_info { i32 19154, i8 5 }, %struct.bmc150_scale_info { i32 38307, i8 8 }, %struct.bmc150_scale_info { i32 76614, i8 12 }] }, %struct.bmc150_accel_chip_info { ptr @.str.35, i8 -5, ptr @bma280_accel_channels, i32 5, [4 x %struct.bmc150_scale_info] [%struct.bmc150_scale_info { i32 2394, i8 3 }, %struct.bmc150_scale_info { i32 4788, i8 5 }, %struct.bmc150_scale_info { i32 9577, i8 8 }, %struct.bmc150_scale_info { i32 19154, i8 12 }] }], [48 x i8] zeroinitializer }, align 32
@bmc150_accel_chip_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.5, i32 1622, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid chip %x\0A\00", [47 x i8] zeroinitializer }, align 32
@bmc150_accel_chip_init._entry_ptr.25 = internal global ptr @bmc150_accel_chip_init._entry.23, section ".printk_index", align 4
@bmc150_accel_chip_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.5, i32 1639, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error writing reg_pmu_range\0A\00", [35 x i8] zeroinitializer }, align 32
@bmc150_accel_chip_init._entry_ptr.28 = internal global ptr @bmc150_accel_chip_init._entry.26, section ".printk_index", align 4
@bmc150_accel_chip_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.20, ptr @.str.5, i32 1657, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@bmc150_accel_chip_init._entry_ptr.30 = internal global ptr @bmc150_accel_chip_init._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BMA222\00", [25 x i8] zeroinitializer }, align 32
@bma222e_accel_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 8, i8 16, i8 8, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.84 { i8 115, i8 8, i8 16, i8 8, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.84 { i8 115, i8 8, i8 16, i8 8, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BMA222E\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BMA250E\00", [24 x i8] zeroinitializer }, align 32
@bma250e_accel_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.84 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.84 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BMA253/BMA254/BMA255/BMC150/BMC156/BMI055\00", [54 x i8] zeroinitializer }, align 32
@bmc150_accel_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.84 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.84 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BMA280\00", [25 x i8] zeroinitializer }, align 32
@bma280_accel_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.84 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.84 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmc150_accel_event, i32 1, ptr @bmc150_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@bmc150_accel_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 2, i32 0, i32 11, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@bmc150_accel_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.36, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @bmc150_accel_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@bmc150_accel_samp_freq_table = internal constant { [8 x %struct.anon.87], [32 x i8] } { [8 x %struct.anon.87] [%struct.anon.87 { i32 15, i32 620000, i8 8 }, %struct.anon.87 { i32 31, i32 260000, i8 9 }, %struct.anon.87 { i32 62, i32 500000, i8 10 }, %struct.anon.87 { i32 125, i32 0, i8 11 }, %struct.anon.87 { i32 250, i32 0, i8 12 }, %struct.anon.87 { i32 500, i32 0, i8 13 }, %struct.anon.87 { i32 1000, i32 0, i8 14 }, %struct.anon.87 { i32 2000, i32 0, i8 15 }], [32 x i8] zeroinitializer }, align 32
@bmc150_accel_update_slope._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 279, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing reg_int_6\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bmc150_accel_update_slope\00", [38 x i8] zeroinitializer }, align 32
@bmc150_accel_update_slope._entry_ptr = internal global ptr @bmc150_accel_update_slope._entry, section ".printk_index", align 4
@bmc150_accel_update_slope._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 286, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error updating reg_int_5\0A\00", [38 x i8] zeroinitializer }, align 32
@bmc150_accel_update_slope._entry_ptr.41 = internal global ptr @bmc150_accel_update_slope._entry.39, section ".printk_index", align 4
@bmc150_accel_update_slope.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.38, ptr @.str.5, ptr @.str.42, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x %x\0A\00", [25 x i8] zeroinitializer }, align 32
@bmc150_accel_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bmc150_accel_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@bmc150_accel_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.43, %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"15.620000 31.260000 62.50000 125 250 500 1000 2000\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@bmc150_accel_get_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 649, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_temp\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bmc150_accel_get_temp\00", [42 x i8] zeroinitializer }, align 32
@bmc150_accel_get_temp._entry_ptr = internal global ptr @bmc150_accel_get_temp._entry, section ".printk_index", align 4
@bmc150_accel_get_axis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 679, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading axis %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bmc150_accel_get_axis\00", [42 x i8] zeroinitializer }, align 32
@bmc150_accel_get_axis._entry_ptr = internal global ptr @bmc150_accel_get_axis._entry, section ".printk_index", align 4
@bmc150_accel_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed: %s for %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bmc150_accel_set_power_state\00", [35 x i8] zeroinitializer }, align 32
@bmc150_accel_set_power_state._entry_ptr = internal global ptr @bmc150_accel_set_power_state._entry, section ".printk_index", align 4
@bmc150_accel_set_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 627, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing pmu_range\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bmc150_accel_set_scale\00", [41 x i8] zeroinitializer }, align 32
@bmc150_accel_set_scale._entry_ptr = internal global ptr @bmc150_accel_set_scale._entry, section ".printk_index", align 4
@bmc150_accel_set_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 597, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error updating reg_int_map\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bmc150_accel_set_interrupt\00", [37 x i8] zeroinitializer }, align 32
@bmc150_accel_set_interrupt._entry_ptr = internal global ptr @bmc150_accel_set_interrupt._entry, section ".printk_index", align 4
@bmc150_accel_set_interrupt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.5, i32 605, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error updating reg_int_en\0A\00", [37 x i8] zeroinitializer }, align 32
@bmc150_accel_set_interrupt._entry_ptr.57 = internal global ptr @bmc150_accel_set_interrupt._entry.55, section ".printk_index", align 4
@__bmc150_accel_fifo_flush._entry = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 993, ptr @.str.6, ptr @.str.7 }, align 1
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error reading reg_fifo_status\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__bmc150_accel_fifo_flush\00", [38 x i8] zeroinitializer }, align 32
@__bmc150_accel_fifo_flush._entry_ptr = internal global ptr @__bmc150_accel_fifo_flush._entry, section ".printk_index", align 4
@bmc150_accel_fifo_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 974, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error transferring data from fifo: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bmc150_accel_fifo_transfer\00", [37 x i8] zeroinitializer }, align 32
@bmc150_accel_fifo_transfer._entry_ptr = internal global ptr @bmc150_accel_fifo_transfer._entry, section ".printk_index", align 4
@iio_const_attr_hwfifo_watermark_min = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.62, %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_hwfifo_watermark_max = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.64, %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_hwfifo_watermark = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bmc150_accel_get_fifo_watermark, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_hwfifo_enabled = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bmc150_accel_get_fifo_state, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwfifo_watermark_min\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwfifo_watermark_max\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hwfifo_watermark\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwfifo_enabled\00", [17 x i8] zeroinitializer }, align 32
@bmc150_accel_fifo_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 1501, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error writing reg_fifo_config1\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bmc150_accel_fifo_set_mode\00", [37 x i8] zeroinitializer }, align 32
@bmc150_accel_fifo_set_mode._entry_ptr = internal global ptr @bmc150_accel_fifo_set_mode._entry, section ".printk_index", align 4
@bmc150_accel_fifo_set_mode._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.5, i32 1511, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error writing reg_fifo_config0\0A\00", [32 x i8] zeroinitializer }, align 32
@bmc150_accel_fifo_set_mode._entry_ptr.73 = internal global ptr @bmc150_accel_fifo_set_mode._entry.71, section ".printk_index", align 4
@bmc150_accel_irq_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.74, ptr @.str.5, i32 1386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bmc150_accel_irq_thread_handler\00", [32 x i8] zeroinitializer }, align 32
@bmc150_accel_irq_thread_handler._entry_ptr = internal global ptr @bmc150_accel_irq_thread_handler._entry, section ".printk_index", align 4
@bmc150_accel_handle_roc_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 1319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error reading reg_int_status_2\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bmc150_accel_handle_roc_event\00", [34 x i8] zeroinitializer }, align 32
@bmc150_accel_handle_roc_event._entry_ptr = internal global ptr @bmc150_accel_handle_roc_event._entry, section ".printk_index", align 4
@bmc150_accel_interrupts_int1 = internal constant { [3 x %struct.bmc150_accel_interrupt_info], [20 x i8] } { [3 x %struct.bmc150_accel_interrupt_info] [%struct.bmc150_accel_interrupt_info { i8 26, i8 1, i8 23, i8 16 }, %struct.bmc150_accel_interrupt_info { i8 25, i8 4, i8 22, i8 7 }, %struct.bmc150_accel_interrupt_info { i8 26, i8 2, i8 23, i8 64 }], [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INT2\00", [27 x i8] zeroinitializer }, align 32
@bmc150_accel_interrupts_int2 = internal constant { [3 x %struct.bmc150_accel_interrupt_info], [20 x i8] } { [3 x %struct.bmc150_accel_interrupt_info] [%struct.bmc150_accel_interrupt_info { i8 26, i8 -128, i8 23, i8 16 }, %struct.bmc150_accel_interrupt_info { i8 27, i8 4, i8 22, i8 7 }, %struct.bmc150_accel_interrupt_info { i8 26, i8 64, i8 23, i8 64 }], [20 x i8] zeroinitializer }, align 32
@bmc150_accel_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @bmc150_accel_trigger_set_state, ptr @bmc150_accel_trig_reen, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s-any-motion-dev%d\00", [44 x i8] zeroinitializer }, align 32
@bmc150_accel_trig_reen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.80, ptr @.str.5, i32 1266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bmc150_accel_trig_reen\00", [41 x i8] zeroinitializer }, align 32
@bmc150_accel_trig_reen._entry_ptr = internal global ptr @bmc150_accel_trig_reen._entry, section ".printk_index", align 4
@bmc150_accel_set_mode.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.81, ptr @.str.5, ptr @.str.82, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bmc150_accel_set_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set Mode bits %x\0A\00", [46 x i8] zeroinitializer }, align 32
@bmc150_accel_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.5, i32 240, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error writing reg_pmu_lpw\0A\00", [37 x i8] zeroinitializer }, align 32
@bmc150_accel_set_mode._entry_ptr = internal global ptr @bmc150_accel_set_mode._entry, section ".printk_index", align 4
@bmc150_accel_sample_upd_time = internal constant { [8 x %struct.anon.90], [32 x i8] } { [8 x %struct.anon.90] [%struct.anon.90 { i32 8, i32 64 }, %struct.anon.90 { i32 9, i32 32 }, %struct.anon.90 { i32 10, i32 16 }, %struct.anon.90 { i32 11, i32 8 }, %struct.anon.90 { i32 12, i32 4 }, %struct.anon.90 { i32 13, i32 2 }, %struct.anon.90 { i32 14, i32 1 }, %struct.anon.90 { i32 15, i32 1 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 248, i64 249, i64 250, i64 251]
@__sancov_gen_cov_switch_values.84 = internal global [10 x i64] [i64 8, i64 8, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.89 = internal global [10 x i64] [i64 8, i64 32, i64 15, i64 31, i64 62, i64 125, i64 250, i64 500, i64 1000, i64 2000]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"bmc150_regmap_conf\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 201, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1693, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1694, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1699, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1704, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1717, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"bmc150_accel_scan_masks\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1222, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"bmc150_accel_info\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1199, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"bmc150_accel_info_fifo\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1209, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant [29 x i8] c"bmc150_accel_fifo_attributes\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 936, i32 32 }
@___asan_gen_.140 = private unnamed_addr constant [24 x i8] c"bmc150_accel_buffer_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1586, i32 42 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1741, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1750, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1764, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1785, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c"bmc150_accel_pm_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1897, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1609, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1613, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"bmc150_accel_chip_info_tbl\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1146, i32 44 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1622, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1639, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1657, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1148, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant [23 x i8] c"bma222e_accel_channels\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1130, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1158, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1168, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [23 x i8] c"bma250e_accel_channels\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1132, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1178, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant [22 x i8] c"bmc150_accel_channels\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1134, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1188, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant [22 x i8] c"bma280_accel_channels\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1136, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"bmc150_accel_event\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1088, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"bmc150_accel_ext_info\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 923, i32 44 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 924, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [29 x i8] c"bmc150_accel_samp_freq_table\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 164, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 279, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 286, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 290, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [25 x i8] c"bmc150_accel_attrs_group\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1084, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"bmc150_accel_attributes\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1079, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1076, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 649, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 679, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 346, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 627, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 597, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 605, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 993, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 973, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [36 x i8] c"iio_const_attr_hwfifo_watermark_min\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [36 x i8] c"iio_const_attr_hwfifo_watermark_max\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_hwfifo_watermark\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_hwfifo_enabled\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 928, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 929, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 933, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 896, i32 22 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 931, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1501, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1511, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1386, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1319, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [29 x i8] c"bmc150_accel_interrupts_int1\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 495, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 557, i32 45 }
@___asan_gen_.407 = private unnamed_addr constant [29 x i8] c"bmc150_accel_interrupts_int2\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 519, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant [25 x i8] c"bmc150_accel_trigger_ops\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1304, i32 37 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1432, i32 11 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1436, i32 11 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1266, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 236, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 240, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [29 x i8] c"bmc150_accel_sample_upd_time\00", align 1
@___asan_gen_.438 = private constant [41 x i8] c"../drivers/iio/accel/bmc150-accel-core.c\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 176, i32 3 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__bmc150_accel_fifo_flush._entry, ptr @__bmc150_accel_fifo_flush._entry_ptr, ptr @__ksymtab_bmc150_accel_core_probe, ptr @__ksymtab_bmc150_accel_core_remove, ptr @__ksymtab_bmc150_accel_pm_ops, ptr @__ksymtab_bmc150_regmap_conf, ptr @bmc150_accel_chip_init._entry, ptr @bmc150_accel_chip_init._entry.23, ptr @bmc150_accel_chip_init._entry.26, ptr @bmc150_accel_chip_init._entry.29, ptr @bmc150_accel_chip_init._entry_ptr, ptr @bmc150_accel_chip_init._entry_ptr.25, ptr @bmc150_accel_chip_init._entry_ptr.28, ptr @bmc150_accel_chip_init._entry_ptr.30, ptr @bmc150_accel_core_probe._entry, ptr @bmc150_accel_core_probe._entry.13, ptr @bmc150_accel_core_probe._entry.16, ptr @bmc150_accel_core_probe._entry.9, ptr @bmc150_accel_core_probe._entry_ptr, ptr @bmc150_accel_core_probe._entry_ptr.11, ptr @bmc150_accel_core_probe._entry_ptr.15, ptr @bmc150_accel_core_probe._entry_ptr.18, ptr @bmc150_accel_fifo_set_mode._entry, ptr @bmc150_accel_fifo_set_mode._entry.71, ptr @bmc150_accel_fifo_set_mode._entry_ptr, ptr @bmc150_accel_fifo_set_mode._entry_ptr.73, ptr @bmc150_accel_fifo_transfer._entry, ptr @bmc150_accel_fifo_transfer._entry_ptr, ptr @bmc150_accel_get_axis._entry, ptr @bmc150_accel_get_axis._entry_ptr, ptr @bmc150_accel_get_temp._entry, ptr @bmc150_accel_get_temp._entry_ptr, ptr @bmc150_accel_handle_roc_event._entry, ptr @bmc150_accel_handle_roc_event._entry_ptr, ptr @bmc150_accel_irq_thread_handler._entry, ptr @bmc150_accel_irq_thread_handler._entry_ptr, ptr @bmc150_accel_set_interrupt._entry, ptr @bmc150_accel_set_interrupt._entry.55, ptr @bmc150_accel_set_interrupt._entry_ptr, ptr @bmc150_accel_set_interrupt._entry_ptr.57, ptr @bmc150_accel_set_mode._entry, ptr @bmc150_accel_set_mode._entry_ptr, ptr @bmc150_accel_set_power_state._entry, ptr @bmc150_accel_set_power_state._entry_ptr, ptr @bmc150_accel_set_scale._entry, ptr @bmc150_accel_set_scale._entry_ptr, ptr @bmc150_accel_trig_reen._entry, ptr @bmc150_accel_trig_reen._entry_ptr, ptr @bmc150_accel_update_slope._entry, ptr @bmc150_accel_update_slope._entry.39, ptr @bmc150_accel_update_slope._entry_ptr, ptr @bmc150_accel_update_slope._entry_ptr.41, ptr @bmc150_regmap_conf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bmc150_accel_core_probe.__key, ptr @.str.8, ptr @bmc150_accel_scan_masks, ptr @bmc150_accel_info, ptr @bmc150_accel_info_fifo, ptr @bmc150_accel_fifo_attributes, ptr @bmc150_accel_buffer_ops, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @bmc150_accel_pm_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @bmc150_accel_chip_info_tbl, ptr @.str.24, ptr @.str.27, ptr @.str.31, ptr @bma222e_accel_channels, ptr @.str.32, ptr @.str.33, ptr @bma250e_accel_channels, ptr @.str.34, ptr @bmc150_accel_channels, ptr @.str.35, ptr @bma280_accel_channels, ptr @bmc150_accel_event, ptr @bmc150_accel_ext_info, ptr @.str.36, ptr @bmc150_accel_samp_freq_table, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @bmc150_accel_attrs_group, ptr @bmc150_accel_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @iio_const_attr_hwfifo_watermark_min, ptr @iio_const_attr_hwfifo_watermark_max, ptr @iio_dev_attr_hwfifo_watermark, ptr @iio_dev_attr_hwfifo_enabled, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @bmc150_accel_interrupts_int1, ptr @.str.77, ptr @bmc150_accel_interrupts_int2, ptr @bmc150_accel_trigger_ops, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @bmc150_accel_sample_upd_time], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_info_fifo to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_fifo_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_core_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_core_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_core_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_chip_info_tbl to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_chip_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_chip_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_chip_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma222e_accel_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma250e_accel_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma280_accel_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_samp_freq_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_update_slope._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_update_slope._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_get_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_get_axis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_set_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_set_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_set_interrupt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_fifo_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_hwfifo_watermark_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_hwfifo_watermark_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_watermark to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_enabled to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_fifo_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_fifo_set_mode._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_irq_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_handle_roc_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_interrupts_int1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_interrupts_int2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_trig_reen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_accel_sample_upd_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmc150_accel_core_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, i32 noundef %type, ptr noundef %name, i1 noundef zeroext %block_supported) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 416) #11
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
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %1, align 8
  %type3 = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type3, align 4
  %orientation = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 21
  %call7 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %regulators = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %regulators, align 4
  %arrayidx13 = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %arrayidx13, align 4
  %call16 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call16, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call23 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call23) #14
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  tail call void @msleep(i32 noundef 5) #11
  %call27 = tail call fastcc i32 @bmc150_accel_chip_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end26.err_disable_regulators_crit_edge, label %do.body30

if.end26.err_disable_regulators_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_regulators

do.body30:                                        ; preds = %if.end26
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @bmc150_accel_core_probe.__key) #11
  %chip_info = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info, align 8
  %channels = getelementptr inbounds %struct.bmc150_accel_chip_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels, align 4
  %channels33 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %channels33, align 8
  %12 = load ptr, ptr %chip_info, align 8
  %num_channels = getelementptr inbounds %struct.bmc150_accel_chip_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_channels, align 4
  %num_channels35 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_channels35, align 4
  %tobool36.not = icmp eq ptr %name, null
  br i1 %tobool36.not, label %cond.false, label %do.body30.cond.end_crit_edge

do.body30.cond.end_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_info, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body30.cond.end_crit_edge
  %cond = phi ptr [ %19, %cond.false ], [ %name, %do.body30.cond.end_crit_edge ]
  %name39 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %20 = ptrtoint ptr %name39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cond, ptr %name39, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %21 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bmc150_accel_scan_masks, ptr %available_scan_masks, align 4
  %22 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bmc150_accel_info, ptr %info, align 8
  br i1 %block_supported, label %if.then41, label %cond.end.if.end44_crit_edge

cond.end.if.end44_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %call, align 8
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bmc150_accel_info_fifo, ptr %info, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %cond.end.if.end44_crit_edge
  %fifo_attrs.0 = phi ptr [ @bmc150_accel_fifo_attributes, %if.then41 ], [ null, %cond.end.if.end44_crit_edge ]
  %call45 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @bmc150_accel_trigger_handler, i32 noundef 0, ptr noundef nonnull @bmc150_accel_buffer_ops, ptr noundef %fifo_attrs.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end50, label %if.end51

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %err_disable_regulators

if.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp52 = icmp sgt i32 %irq, 0
  br i1 %cmp52, label %if.then53, label %if.end51.if.end70_crit_edge

if.end51.if.end70_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %if.end51
  %call54 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef nonnull @bmc150_accel_irq_handler, ptr noundef nonnull @bmc150_accel_irq_thread_handler, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then53.err_buffer_cleanup_crit_edge

if.then53.err_buffer_cleanup_crit_edge:           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_buffer_cleanup

if.end57:                                         ; preds = %if.then53
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %call59 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 33, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end65

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #14
  br label %err_buffer_cleanup

if.end65:                                         ; preds = %if.end57
  tail call fastcc void @bmc150_accel_interrupts_setup(ptr noundef %1, i32 noundef %irq)
  %call66 = tail call fastcc i32 @bmc150_accel_triggers_setup(ptr noundef nonnull %call, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.end65.err_buffer_cleanup_crit_edge

if.end65.err_buffer_cleanup_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_buffer_cleanup

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.end70:                                         ; preds = %if.end65.if.end70_crit_edge, %if.end51.if.end70_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool72.not = icmp eq i32 %call.i, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.err_trigger_unregister_crit_edge

if.end70.err_trigger_unregister_crit_edge:        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_trigger_unregister

if.end74:                                         ; preds = %if.end70
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  %call75 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end80, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #14
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %err_trigger_unregister

err_trigger_unregister:                           ; preds = %do.end80, %if.end70.err_trigger_unregister_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end70.err_trigger_unregister_crit_edge ], [ %call75, %do.end80 ]
  %indio_trig.i = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 3, i32 1, i32 1
  %28 = ptrtoint ptr %indio_trig.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %indio_trig.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %err_trigger_unregister.for.inc.i_crit_edge, label %if.then.i

err_trigger_unregister.for.inc.i_crit_edge:       ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iio_trigger_unregister(ptr noundef nonnull %29) #11
  %30 = ptrtoint ptr %indio_trig.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %indio_trig.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %err_trigger_unregister.for.inc.i_crit_edge
  %indio_trig.i.1 = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %indio_trig.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %indio_trig.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %32, null
  br i1 %tobool.not.i.1, label %for.inc.i.err_buffer_cleanup_crit_edge, label %if.then.i.1

for.inc.i.err_buffer_cleanup_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_buffer_cleanup

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iio_trigger_unregister(ptr noundef nonnull %32) #11
  %33 = ptrtoint ptr %indio_trig.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %indio_trig.i.1, align 4
  br label %err_buffer_cleanup

err_buffer_cleanup:                               ; preds = %if.then.i.1, %for.inc.i.err_buffer_cleanup_crit_edge, %if.end65.err_buffer_cleanup_crit_edge, %do.end64, %if.then53.err_buffer_cleanup_crit_edge
  %ret.1 = phi i32 [ %call54, %if.then53.err_buffer_cleanup_crit_edge ], [ %call59, %do.end64 ], [ %call66, %if.end65.err_buffer_cleanup_crit_edge ], [ %ret.0, %if.then.i.1 ], [ %ret.0, %for.inc.i.err_buffer_cleanup_crit_edge ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #11
  br label %err_disable_regulators

err_disable_regulators:                           ; preds = %err_buffer_cleanup, %do.end50, %if.end26.err_disable_regulators_crit_edge
  %ret.2 = phi i32 [ %call27, %if.end26.err_disable_regulators_crit_edge ], [ %call45, %do.end50 ], [ %ret.1, %err_buffer_cleanup ]
  %call84 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #11
  br label %cleanup

cleanup:                                          ; preds = %err_disable_regulators, %if.end74.cleanup_crit_edge, %do.end, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.then18 ], [ %call23, %do.end ], [ %ret.2, %err_disable_regulators ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_accel_chip_init(ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !240
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 20, i32 noundef 182) #11
  tail call void @usleep_range_state(i32 noundef 1800, i32 noundef 2500, i32 noundef 2) #11
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %call4 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.19) #14
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_chip_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_chip_init, %if.then9)) #11
          to label %do.end12 [label %if.then9], !srcloc !241

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_chip_init.__UNIQUE_ID_ddebug291, ptr noundef %call, ptr noundef nonnull @.str.22, i32 noundef %8) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body5
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end12.for.end_crit_edge [
    i32 3, label %do.end12.if.then16_crit_edge
    i32 248, label %if.then16.fold.split
    i32 249, label %if.then16.fold.split103
    i32 250, label %if.then16.fold.split104
    i32 251, label %if.then16.fold.split105
  ]

do.end12.if.then16_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then16.fold.split:                             ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16.fold.split103:                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16.fold.split104:                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16.fold.split105:                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %if.then16.fold.split105, %if.then16.fold.split104, %if.then16.fold.split103, %if.then16.fold.split, %do.end12.if.then16_crit_edge
  %i.0101.lcssa = phi i32 [ 0, %do.end12.if.then16_crit_edge ], [ 1, %if.then16.fold.split ], [ 2, %if.then16.fold.split103 ], [ 3, %if.then16.fold.split104 ], [ 4, %if.then16.fold.split105 ]
  %arrayidx = getelementptr [5 x %struct.bmc150_accel_chip_info], ptr @bmc150_accel_chip_info_tbl, i32 0, i32 %i.0101.lcssa
  %chip_info = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 16
  %12 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %chip_info, align 8
  br label %for.end

for.end:                                          ; preds = %if.then16, %do.end12.for.end_crit_edge
  %chip_info19 = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 16
  %13 = ptrtoint ptr %chip_info19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info19, align 8
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %do.end24, label %if.end25

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.24, i32 noundef %16) #14
  br label %cleanup

if.end25:                                         ; preds = %for.end
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %call.i = call ptr @regmap_get_device(ptr noundef %18) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_chip_init, %if.then17.i)) #11
          to label %do.end.i [label %if.then17.i], !srcloc !241

if.then17.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %call.i, ptr noundef nonnull @.str.82, i32 noundef 0) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %if.end25
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %call22.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 17, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %bmc150_accel_set_mode.exit.thread, label %if.end30

bmc150_accel_set_mode.exit.thread:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.83) #14
  br label %cleanup

if.end30:                                         ; preds = %do.end.i
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 8
  %call.i93 = call i32 @regmap_write(ptr noundef %22, i32 noundef 16, i32 noundef 11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp7.i = icmp slt i32 %call.i93, 0
  br i1 %cmp7.i, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %bw_bits12.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 9
  %23 = ptrtoint ptr %bw_bits12.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 11, ptr %bw_bits12.i, align 8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %call37 = call i32 @regmap_write(ptr noundef %25, i32 noundef 15, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end43, label %if.end44

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  %range = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 12
  %26 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %range, align 4
  %slope_thres = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 11
  %27 = ptrtoint ptr %slope_thres to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %slope_thres, align 8
  %slope_dur = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 10
  %28 = ptrtoint ptr %slope_dur to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %slope_dur, align 4
  %call45 = call fastcc i32 @bmc150_accel_update_slope(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %call51 = call i32 @regmap_write(ptr noundef %30, i32 noundef 33, i32 noundef 143) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end57, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.14) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end49.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end43, %if.end30.cleanup_crit_edge, %bmc150_accel_set_mode.exit.thread, %do.end24, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call37, %do.end43 ], [ %call51, %do.end57 ], [ -19, %do.end24 ], [ %call45, %if.end44.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %call22.i, %bmc150_accel_set_mode.exit.thread ], [ %call.i93, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %buffer = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 7
  %call2 = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 2, ptr noundef %buffer, i32 noundef 6) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_read_crit_edge, label %if.end

entry.err_read_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_read

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timestamp, align 8
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
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #11
  br label %err_read

err_read:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.err_read_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %14) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_irq_handler(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %timestamp = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timestamp, align 8
  %old_timestamp = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %old_timestamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %old_timestamp, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #11
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call1, ptr %timestamp, align 8
  %enabled = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 3, i32 0, i32 4
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.028.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ]
  %indio_trig = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 3, i32 %i.028.lcssa, i32 1
  %8 = ptrtoint ptr %indio_trig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %indio_trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %9) #11
  br label %for.end

for.inc:                                          ; preds = %entry
  %enabled.1 = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 3, i32 1, i32 4
  %10 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.1, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.1 = icmp eq i8 %11, 0
  br i1 %tobool.not.1, label %for.inc.for.end_crit_edge, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %cmp26 = phi i32 [ 1, %if.then ], [ 0, %for.inc.for.end_crit_edge ]
  %ev_enable_state = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %fifo_mode = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool6.not, i32 %cmp26, i32 2
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %for.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_irq_thread_handler(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #11
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %fifo_mode = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end4.thread, label %if.end4

if.end4:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @__bmc150_accel_fifo_flush(ptr noundef %private, i32 noundef 32, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  %ev_enable_state = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end11, label %if.end4.if.then6_crit_edge

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end4.thread:                                   ; preds = %entry
  %ev_enable_state34 = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %ev_enable_state34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ev_enable_state34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not35 = icmp eq i32 %9, 0
  br i1 %tobool5.not35, label %if.end4.thread.if.end19_crit_edge, label %if.end4.thread.if.then6_crit_edge

if.end4.thread.if.then6_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end4.thread.if.end19_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then6:                                         ; preds = %if.end4.thread.if.then6_crit_edge, %if.end4.if.then6_crit_edge
  %ack.0.off036 = phi i1 [ false, %if.end4.thread.if.then6_crit_edge ], [ %cmp, %if.end4.if.then6_crit_edge ]
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %13) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !240
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 8
  %call3.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 11, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.75) #14
  br label %bmc150_accel_handle_roc_event.exit

if.end.i:                                         ; preds = %if.then6
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %and.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 2
  %and6.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then8.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = zext i32 %..i to i64
  %shl.i = shl nuw nsw i64 %19, 48
  %or10.i = or i64 %shl.i, 144116300472385536
  %timestamp.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %11, i32 0, i32 14
  %20 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %timestamp.i, align 8
  %call14.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or10.i, i64 noundef %21) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then8.i, %if.end.i.if.end15.i_crit_edge
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %and16.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end29.i_crit_edge, label %if.then18.i

if.end15.i.if.end29.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = zext i32 %..i to i64
  %shl20.i = shl nuw nsw i64 %24, 48
  %or23.i = or i64 %shl20.i, 144117399984013312
  %timestamp27.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %11, i32 0, i32 14
  %25 = ptrtoint ptr %timestamp27.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %timestamp27.i, align 8
  %call28.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or23.i, i64 noundef %26) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end29.i_crit_edge
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %and30.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.bmc150_accel_handle_roc_event.exit_crit_edge, label %if.then32.i

if.end29.i.bmc150_accel_handle_roc_event.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_handle_roc_event.exit

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = zext i32 %..i to i64
  %shl34.i = shl nuw nsw i64 %29, 48
  %or37.i = or i64 %shl34.i, 144118499495641088
  %timestamp41.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %11, i32 0, i32 14
  %30 = ptrtoint ptr %timestamp41.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %timestamp41.i, align 8
  %call42.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or37.i, i64 noundef %31) #11
  br label %bmc150_accel_handle_roc_event.exit

bmc150_accel_handle_roc_event.exit:               ; preds = %if.then32.i, %if.end29.i.bmc150_accel_handle_roc_event.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp8 = icmp sgt i32 %call3.i, 0
  %spec.select32 = select i1 %cmp8, i1 true, i1 %ack.0.off036
  br i1 %spec.select32, label %bmc150_accel_handle_roc_event.exit.if.then13_crit_edge, label %bmc150_accel_handle_roc_event.exit.if.end19_crit_edge

bmc150_accel_handle_roc_event.exit.if.end19_crit_edge: ; preds = %bmc150_accel_handle_roc_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

bmc150_accel_handle_roc_event.exit.if.then13_crit_edge: ; preds = %bmc150_accel_handle_roc_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end11:                                         ; preds = %if.end4
  br i1 %cmp, label %if.end11.if.then13_crit_edge, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %bmc150_accel_handle_roc_event.exit.if.then13_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %call15 = call i32 @regmap_write(ptr noundef %33, i32 noundef 33, i32 noundef 143) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %do.end

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.14) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then13.if.end19_crit_edge, %if.end11.if.end19_crit_edge, %bmc150_accel_handle_roc_event.exit.if.end19_crit_edge, %if.end4.thread.if.end19_crit_edge
  %ret.0 = phi i32 [ 1, %do.end ], [ 1, %if.then13.if.end19_crit_edge ], [ 0, %if.end11.if.end19_crit_edge ], [ 0, %bmc150_accel_handle_roc_event.exit.if.end19_crit_edge ], [ 0, %if.end4.thread.if.end19_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bmc150_accel_interrupts_setup(ptr nocapture noundef %data, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #11
  %type = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 17
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call1 = tail call i32 @of_irq_get_byname(ptr noundef %5, ptr noundef nonnull @.str.77) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %irq)
  %cmp2 = icmp eq i32 %call1, %irq
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %irq_info.0 = phi ptr [ @bmc150_accel_interrupts_int2, %if.then ], [ @bmc150_accel_interrupts_int1, %lor.lhs.false.if.end_crit_edge ]
  %arrayidx4 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %irq_info.0, ptr %arrayidx4, align 4
  %arrayidx.1 = getelementptr %struct.bmc150_accel_interrupt_info, ptr %irq_info.0, i32 1
  %arrayidx4.1 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.1, ptr %arrayidx4.1, align 4
  %arrayidx.2 = getelementptr %struct.bmc150_accel_interrupt_info, ptr %irq_info.0, i32 2
  %arrayidx4.2 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.2, ptr %arrayidx4.2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_accel_triggers_setup(ptr noundef %indio_dev, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #11
  %name2 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 8
  %call3 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #11
  %call4 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %call, ptr noundef nonnull @.str.78, ptr noundef %3, i32 noundef %call3) #11
  %indio_trig = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %indio_trig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %indio_trig, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 0
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bmc150_accel_trigger_ops, ptr %call4, align 8
  %intr8 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %intr8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %intr8, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %arrayidx, align 4
  %setup11 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %setup11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %setup11, align 4
  %9 = ptrtoint ptr %indio_trig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %indio_trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %10, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %12 = load ptr, ptr %indio_trig, align 4
  %call14 = tail call i32 @__iio_trigger_register(ptr noundef %12, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.inc, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.inc:                                          ; preds = %if.end
  %13 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name2, align 8
  %call3.1 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #11
  %call4.1 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %call, ptr noundef nonnull @.str.79, ptr noundef %14, i32 noundef %call3.1) #11
  %indio_trig.1 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %indio_trig.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4.1, ptr %indio_trig.1, align 4
  %tobool.not.1 = icmp eq ptr %call4.1, null
  br i1 %tobool.not.1, label %for.inc.for.body.i.preheader_crit_edge, label %if.end.1

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.end.1:                                         ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %call4.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bmc150_accel_trigger_ops, ptr %call4.1, align 8
  %intr8.1 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 1, i32 3
  %17 = ptrtoint ptr %intr8.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %intr8.1, align 4
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %arrayidx.1, align 4
  %setup11.1 = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 1, i32 2
  %19 = ptrtoint ptr %setup11.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bmc150_accel_any_motion_setup, ptr %setup11.1, align 4
  %20 = ptrtoint ptr %indio_trig.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %indio_trig.1, align 4
  %driver_data.i.i.1 = getelementptr inbounds %struct.iio_trigger, ptr %21, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.1, ptr %driver_data.i.i.1, align 4
  %23 = load ptr, ptr %indio_trig.1, align 4
  %call14.1 = tail call i32 @__iio_trigger_register(ptr noundef %23, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %if.end.1.if.end20_crit_edge, label %if.end.1.for.body.i.preheader_crit_edge

if.end.1.for.body.i.preheader_crit_edge:          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.end.1.if.end20_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body.i.preheader:                             ; preds = %if.end.1.for.body.i.preheader_crit_edge, %for.inc.for.body.i.preheader_crit_edge
  %ret.249.ph = phi i32 [ %call14.1, %if.end.1.for.body.i.preheader_crit_edge ], [ -12, %for.inc.for.body.i.preheader_crit_edge ]
  %indio_trig.i = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %indio_trig.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %indio_trig.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.i.preheader.if.end20_crit_edge, label %if.then.i

for.body.i.preheader.if.end20_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then.i:                                        ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iio_trigger_unregister(ptr noundef nonnull %25) #11
  %26 = ptrtoint ptr %indio_trig.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %indio_trig.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then.i, %for.body.i.preheader.if.end20_crit_edge, %if.end.1.if.end20_crit_edge, %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %ret.250 = phi i32 [ 0, %if.end.1.if.end20_crit_edge ], [ %ret.249.ph, %if.then.i ], [ %ret.249.ph, %for.body.i.preheader.if.end20_crit_edge ], [ %call14, %if.end.if.end20_crit_edge ], [ -12, %entry.if.end20_crit_edge ]
  ret i32 %ret.250
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bmc150_accel_core_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  %indio_trig.i = getelementptr %struct.bmc150_accel_data, ptr %3, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %indio_trig.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indio_trig.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iio_trigger_unregister(ptr noundef nonnull %5) #11
  %6 = ptrtoint ptr %indio_trig.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %indio_trig.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %indio_trig.i.1 = getelementptr %struct.bmc150_accel_data, ptr %3, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %indio_trig.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %indio_trig.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %8, null
  br i1 %tobool.not.i.1, label %for.inc.i.for.inc.i.1_crit_edge, label %if.then.i.1

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iio_trigger_unregister(ptr noundef nonnull %8) #11
  %9 = ptrtoint ptr %indio_trig.i.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %indio_trig.i.1, align 4
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.inc.i.for.inc.i.1_crit_edge
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #11
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call.i14 = tail call ptr @regmap_get_device(ptr noundef %11) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_core_remove, %if.then17.i)) #11
          to label %do.end.i [label %if.then17.i], !srcloc !241

if.then17.i:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %call.i14, ptr noundef nonnull @.str.82, i32 noundef 32) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %for.inc.i.1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %call22.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 17, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %do.end.i.bmc150_accel_set_mode.exit_crit_edge

do.end.i.bmc150_accel_set_mode.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_set_mode.exit

do.end28.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i14, ptr noundef nonnull @.str.83) #14
  br label %bmc150_accel_set_mode.exit

bmc150_accel_set_mode.exit:                       ; preds = %do.end28.i, %do.end.i.bmc150_accel_set_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %regulators = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 1
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_suspend, %if.then17.i)) #11
          to label %do.end.i [label %if.then17.i], !srcloc !241

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %call.i, ptr noundef nonnull @.str.82, i32 noundef 128) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call22.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %do.end.i.bmc150_accel_set_mode.exit_crit_edge

do.end.i.bmc150_accel_set_mode.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_set_mode.exit

do.end28.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.83) #14
  br label %bmc150_accel_set_mode.exit

bmc150_accel_set_mode.exit:                       ; preds = %do.end28.i, %do.end.i.bmc150_accel_set_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_resume, %if.then17.i)) #11
          to label %do.end.i [label %if.then17.i], !srcloc !241

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %call.i, ptr noundef nonnull @.str.82, i32 noundef 0) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call22.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %do.end.i.bmc150_accel_set_mode.exit_crit_edge

do.end.i.bmc150_accel_set_mode.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_set_mode.exit

do.end28.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.83) #14
  br label %bmc150_accel_set_mode.exit

bmc150_accel_set_mode.exit:                       ; preds = %do.end28.i, %do.end.i.bmc150_accel_set_mode.exit_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call.i12 = tail call ptr @regmap_get_device(ptr noundef %9) #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %fifo_mode.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %fifo_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fifo_mode.i, align 8
  %conv2.i = zext i8 %13 to i32
  %call3.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 62, i32 noundef %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %bmc150_accel_set_mode.exit.cleanup.sink.split.i_crit_edge, label %if.end.i

bmc150_accel_set_mode.exit.cleanup.sink.split.i_crit_edge: ; preds = %bmc150_accel_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %bmc150_accel_set_mode.exit
  %14 = ptrtoint ptr %fifo_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fifo_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i.bmc150_accel_fifo_set_mode.exit_crit_edge, label %if.end7.i

if.end.i.bmc150_accel_fifo_set_mode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_fifo_set_mode.exit

if.end7.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %watermark.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %watermark.i, align 1
  %conv9.i = zext i8 %19 to i32
  %call10.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 48, i32 noundef %conv9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge

if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_fifo_set_mode.exit

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end7.i.cleanup.sink.split.i_crit_edge, %bmc150_accel_set_mode.exit.cleanup.sink.split.i_crit_edge
  %.str.72.sink.i = phi ptr [ @.str.69, %bmc150_accel_set_mode.exit.cleanup.sink.split.i_crit_edge ], [ @.str.72, %if.end7.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i12, ptr noundef nonnull %.str.72.sink.i) #14
  br label %bmc150_accel_fifo_set_mode.exit

bmc150_accel_fifo_set_mode.exit:                  ; preds = %cleanup.sink.split.i, %if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge, %if.end.i.bmc150_accel_fifo_set_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %resume_callback = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 19
  %20 = ptrtoint ptr %resume_callback to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resume_callback, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %bmc150_accel_fifo_set_mode.exit.if.end_crit_edge, label %if.then

bmc150_accel_fifo_set_mode.exit.if.end_crit_edge: ; preds = %bmc150_accel_fifo_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %bmc150_accel_fifo_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %21(ptr noundef %dev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %bmc150_accel_fifo_set_mode.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_runtime_suspend, %if.then17.i)) #11
          to label %do.end.i [label %if.then17.i], !srcloc !241

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %call.i, ptr noundef nonnull @.str.82, i32 noundef 128) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call22.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %8, label %do.end.i.bmc150_accel_set_mode.exit_crit_edge

do.end.i.bmc150_accel_set_mode.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_set_mode.exit

8:                                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.83) #14
  br label %bmc150_accel_set_mode.exit

bmc150_accel_set_mode.exit:                       ; preds = %8, %do.end.i.bmc150_accel_set_mode.exit_crit_edge
  %9 = phi i32 [ -11, %8 ], [ 0, %do.end.i.bmc150_accel_set_mode.exit_crit_edge ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_runtime_resume, %if.then17.i)) #11
          to label %do.end.i [label %if.then17.i], !srcloc !241

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %call.i, ptr noundef nonnull @.str.82, i32 noundef 0) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call22.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %bmc150_accel_set_mode.exit.thread, label %if.end

bmc150_accel_set_mode.exit.thread:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.83) #14
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call.i22 = tail call ptr @regmap_get_device(ptr noundef %9) #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %fifo_mode.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %fifo_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fifo_mode.i, align 8
  %conv2.i = zext i8 %13 to i32
  %call3.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 62, i32 noundef %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.bmc150_accel_fifo_set_mode.exit_crit_edge, label %if.end.i

if.end.bmc150_accel_fifo_set_mode.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_fifo_set_mode.exit

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %fifo_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fifo_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6_crit_edge, label %if.end7.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end7.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %watermark.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %watermark.i, align 1
  %conv9.i = zext i8 %19 to i32
  %call10.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 48, i32 noundef %conv9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge, label %if.end7.i.if.end6_crit_edge

if.end7.i.if.end6_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_fifo_set_mode.exit

bmc150_accel_fifo_set_mode.exit:                  ; preds = %if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge, %if.end.bmc150_accel_fifo_set_mode.exit_crit_edge
  %.str.72.sink.i = phi ptr [ @.str.69, %if.end.bmc150_accel_fifo_set_mode.exit_crit_edge ], [ @.str.72, %if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call3.i, %if.end.bmc150_accel_fifo_set_mode.exit_crit_edge ], [ %call10.i, %if.end7.i.bmc150_accel_fifo_set_mode.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i22, ptr noundef nonnull %.str.72.sink.i) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %bw_bits1.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %bw_bits1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bw_bits1.i, align 8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %21, label %if.end6.if.else_crit_edge [
    i8 8, label %if.end6.bmc150_accel_get_startup_times.exit.thread_crit_edge
    i8 9, label %if.then.fold.split.i
    i8 10, label %if.end6.bmc150_accel_get_startup_times.exit_crit_edge
    i8 11, label %if.then.fold.split12.i
    i8 12, label %if.then.fold.split13.i
    i8 13, label %if.then.fold.split14.i
    i8 14, label %if.then.fold.split15.i
    i8 15, label %if.then.fold.split16.i
  ]

if.end6.bmc150_accel_get_startup_times.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit

if.end6.bmc150_accel_get_startup_times.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit.thread

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.fold.split.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit.thread

if.then.fold.split12.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit

if.then.fold.split13.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit

if.then.fold.split14.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit

if.then.fold.split15.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit

if.then.fold.split16.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_startup_times.exit

bmc150_accel_get_startup_times.exit.thread:       ; preds = %if.then.fold.split.i, %if.end6.bmc150_accel_get_startup_times.exit.thread_crit_edge
  %i.09.lcssa.i.ph = phi i32 [ 1, %if.then.fold.split.i ], [ 0, %if.end6.bmc150_accel_get_startup_times.exit.thread_crit_edge ]
  %msec.i34 = getelementptr [8 x %struct.anon.90], ptr @bmc150_accel_sample_upd_time, i32 0, i32 %i.09.lcssa.i.ph, i32 1
  %23 = ptrtoint ptr %msec.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msec.i34, align 4
  br label %if.else

bmc150_accel_get_startup_times.exit:              ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.end6.bmc150_accel_get_startup_times.exit_crit_edge
  %i.09.lcssa.i = phi i32 [ 3, %if.then.fold.split12.i ], [ 4, %if.then.fold.split13.i ], [ 5, %if.then.fold.split14.i ], [ 6, %if.then.fold.split15.i ], [ 7, %if.then.fold.split16.i ], [ 2, %if.end6.bmc150_accel_get_startup_times.exit_crit_edge ]
  %msec.i = getelementptr [8 x %struct.anon.90], ptr @bmc150_accel_sample_upd_time, i32 0, i32 %i.09.lcssa.i, i32 1
  %25 = ptrtoint ptr %msec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msec.i, align 4
  %mul = mul i32 %26, 1000
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef 20000, i32 noundef 2) #11
  br label %cleanup

if.else:                                          ; preds = %bmc150_accel_get_startup_times.exit.thread, %if.end6.if.else_crit_edge
  %retval.0.i2431 = phi i32 [ 100, %if.end6.if.else_crit_edge ], [ %24, %bmc150_accel_get_startup_times.exit.thread ]
  %call10 = tail call i32 @msleep_interruptible(i32 noundef %retval.0.i2431) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %bmc150_accel_get_startup_times.exit, %bmc150_accel_fifo_set_mode.exit, %bmc150_accel_set_mode.exit.thread
  %retval.0 = phi i32 [ %retval.0.ph.i, %bmc150_accel_fifo_set_mode.exit ], [ 0, %if.else ], [ 0, %bmc150_accel_get_startup_times.exit ], [ %call22.i, %bmc150_accel_set_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_accel_update_slope(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %slope_thres = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %slope_thres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slope_thres, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 40, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.37) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %slope_dur = getelementptr inbounds %struct.bmc150_accel_data, ptr %data, i32 0, i32 10
  %8 = ptrtoint ptr %slope_dur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slope_dur, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 39, i32 noundef 3, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %do.end9, label %do.body11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.40) #14
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_accel_update_slope.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_accel_update_slope, %if.then15)) #11
          to label %cleanup [label %if.then15], !srcloc !241

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %slope_thres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slope_thres, align 8
  %12 = ptrtoint ptr %slope_dur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slope_dur, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_accel_update_slope.__UNIQUE_ID_ddebug290, ptr noundef %call, ptr noundef nonnull @.str.42, i32 noundef %11, i32 noundef %13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body11, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call.i, %do.end9 ], [ %call.i, %if.then15 ], [ %call.i, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bmc150_accel_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 21
  ret ptr %orientation
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %raw_val.i = alloca i16, align 2
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %mask, label %entry.cleanup25_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb6
    i32 2, label %sw.bb10
    i32 12, label %sw.bb21
  ]

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %4, label %sw.bb.cleanup25_crit_edge [
    i32 9, label %sw.bb1
    i32 3, label %sw.bb3
  ]

sw.bb.cleanup25_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

sw.bb1:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #11
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value.i, align 4, !annotation !240
  %mutex.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %value.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.45) #14
  br label %bmc150_accel_get_temp.exit

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i, align 4
  %shl.i.i = shl i32 %12, 24
  %shr.i.i = ashr exact i32 %shl.i.i, 24
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i.i, ptr %val, align 4
  br label %bmc150_accel_get_temp.exit

bmc150_accel_get_temp.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ 1, %if.end.i ]
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  br label %cleanup25

sw.bb3:                                           ; preds = %sw.bb
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %14 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %15, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %sw.bb3.cleanup25_crit_edge

sw.bb3.cleanup25_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.else:                                          ; preds = %sw.bb3
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i46 = tail call ptr @regmap_get_device(ptr noundef %17) #11
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %18 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_index.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_val.i) #11
  %20 = ptrtoint ptr %raw_val.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %raw_val.i, align 2, !annotation !240
  %mutex.i47 = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i47, i32 noundef 0) #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call.i.i = tail call ptr @regmap_get_device(ptr noundef %22) #11
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i48

if.then.i.i.i:                                    ; preds = %if.else
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #11, !srcloc !244
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.if.then.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.if.then.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !245
  br label %if.then.i

if.then.i:                                        ; preds = %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.if.then.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %mutex.i47) #11
  br label %bmc150_accel_get_axis.exit

if.end.i48:                                       ; preds = %if.else
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %mul.i = shl i32 %19, 1
  %add.i = add i32 %mul.i, 2
  %call4.i = call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef %add.i, ptr noundef nonnull %raw_val.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i49, label %if.end9.i

do.end.i49:                                       ; preds = %if.end.i48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i46, ptr noundef nonnull @.str.47, i32 noundef %19) #14
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %call.i39.i = call ptr @regmap_get_device(ptr noundef %27) #11
  %call.i12.i.i = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %call.i39.i, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i12.i.i, ptr %last_busy.i.i.i, align 8
  %call.i13.i.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i39.i, i32 noundef 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i.i)
  %cmp.i.i = icmp slt i32 %call.i13.i.i, 0
  br i1 %cmp.i.i, label %do.end.i40.i, label %do.end.i49.bmc150_accel_set_power_state.exit42.i_crit_edge

do.end.i49.bmc150_accel_set_power_state.exit42.i_crit_edge: ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_set_power_state.exit42.i

do.end.i40.i:                                     ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i39.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 0) #14
  br label %bmc150_accel_set_power_state.exit42.i

bmc150_accel_set_power_state.exit42.i:            ; preds = %do.end.i40.i, %do.end.i49.bmc150_accel_set_power_state.exit42.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i47) #11
  br label %bmc150_accel_get_axis.exit

if.end9.i:                                        ; preds = %if.end.i48
  %29 = ptrtoint ptr %raw_val.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %raw_val.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #11
  %conv.i = zext i16 %31 to i32
  %shift.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shift.i, align 1
  %conv10.i = zext i8 %33 to i32
  %shr.i = lshr i32 %conv.i, %conv10.i
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %realbits.i, align 1
  %36 = sub i8 32, %35
  %conv1.i.i = zext i8 %36 to i32
  %shl.i.i50 = shl i32 %shr.i, %conv1.i.i
  %shr.i.i51 = ashr i32 %shl.i.i50, %conv1.i.i
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr.i.i51, ptr %val, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %call.i43.i = call ptr @regmap_get_device(ptr noundef %39) #11
  %call.i12.i44.i = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i45.i = getelementptr inbounds %struct.device, ptr %call.i43.i, i32 0, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i.i45.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i12.i44.i, ptr %last_busy.i.i45.i, align 8
  %call.i13.i46.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i43.i, i32 noundef 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i46.i)
  %cmp.i47.i = icmp slt i32 %call.i13.i46.i, 0
  br i1 %cmp.i47.i, label %41, label %bmc150_accel_set_power_state.exit50.i

bmc150_accel_set_power_state.exit50.i:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mutex.i47) #11
  br label %bmc150_accel_get_axis.exit

41:                                               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i43.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 0) #14
  call void @mutex_unlock(ptr noundef %mutex.i47) #11
  br label %bmc150_accel_get_axis.exit

bmc150_accel_get_axis.exit:                       ; preds = %41, %bmc150_accel_set_power_state.exit50.i, %bmc150_accel_set_power_state.exit42.i, %if.then.i
  %retval.0.i52 = phi i32 [ %call.i.i.i, %if.then.i ], [ %call4.i, %bmc150_accel_set_power_state.exit42.i ], [ %call.i13.i46.i, %41 ], [ 1, %bmc150_accel_set_power_state.exit50.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_val.i) #11
  br label %cleanup25

sw.bb6:                                           ; preds = %entry
  %42 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %43)
  %cmp = icmp eq i32 %43, 9
  br i1 %cmp, label %if.then8, label %sw.bb6.cleanup25_crit_edge

sw.bb6.cleanup25_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 23, ptr %val, align 4
  br label %cleanup25

sw.bb10:                                          ; preds = %entry
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %val, align 4
  %46 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %47, label %sw.bb10.cleanup25_crit_edge [
    i32 9, label %sw.bb12
    i32 3, label %for.cond.preheader
  ]

sw.bb10.cleanup25_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

for.cond.preheader:                               ; preds = %sw.bb10
  %chip_info = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 16
  %49 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip_info, align 8
  %range = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %range, align 4
  %reg_range = getelementptr %struct.bmc150_accel_chip_info, ptr %50, i32 0, i32 4, i32 0, i32 1
  %53 = ptrtoint ptr %reg_range to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reg_range, align 4
  %conv = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv)
  %cmp15 = icmp eq i32 %52, %conv
  br i1 %cmp15, label %for.cond.preheader.if.then17_crit_edge, label %for.inc

for.cond.preheader.if.then17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

sw.bb12:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 500000, ptr %val2, align 4
  br label %cleanup25

if.then17:                                        ; preds = %for.inc.2.if.then17_crit_edge, %for.inc.1.if.then17_crit_edge, %for.inc.if.then17_crit_edge, %for.cond.preheader.if.then17_crit_edge
  %i.056.lcssa = phi i32 [ 0, %for.cond.preheader.if.then17_crit_edge ], [ 1, %for.inc.if.then17_crit_edge ], [ 2, %for.inc.1.if.then17_crit_edge ], [ 3, %for.inc.2.if.then17_crit_edge ]
  %arrayidx = getelementptr %struct.bmc150_accel_chip_info, ptr %50, i32 0, i32 4, i32 %i.056.lcssa
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %58 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val2, align 4
  br label %cleanup25

for.inc:                                          ; preds = %for.cond.preheader
  %reg_range.1 = getelementptr %struct.bmc150_accel_chip_info, ptr %50, i32 0, i32 4, i32 1, i32 1
  %59 = ptrtoint ptr %reg_range.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %reg_range.1, align 4
  %conv.1 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv.1)
  %cmp15.1 = icmp eq i32 %52, %conv.1
  br i1 %cmp15.1, label %for.inc.if.then17_crit_edge, label %for.inc.1

for.inc.if.then17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.1:                                        ; preds = %for.inc
  %reg_range.2 = getelementptr %struct.bmc150_accel_chip_info, ptr %50, i32 0, i32 4, i32 2, i32 1
  %61 = ptrtoint ptr %reg_range.2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %reg_range.2, align 4
  %conv.2 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv.2)
  %cmp15.2 = icmp eq i32 %52, %conv.2
  br i1 %cmp15.2, label %for.inc.1.if.then17_crit_edge, label %for.inc.2

for.inc.1.if.then17_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.inc.2:                                        ; preds = %for.inc.1
  %reg_range.3 = getelementptr %struct.bmc150_accel_chip_info, ptr %50, i32 0, i32 4, i32 3, i32 1
  %63 = ptrtoint ptr %reg_range.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg_range.3, align 4
  %conv.3 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv.3)
  %cmp15.3 = icmp eq i32 %52, %conv.3
  br i1 %cmp15.3, label %for.inc.2.if.then17_crit_edge, label %for.inc.2.cleanup25_crit_edge

for.inc.2.cleanup25_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

for.inc.2.if.then17_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

sw.bb21:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %bw_bits1.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 9
  %65 = ptrtoint ptr %bw_bits1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bw_bits1.i, align 8
  %switch.tableidx = add i8 %66, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %67 = icmp ult i8 %switch.tableidx, 8
  br i1 %67, label %switch.lookup, label %sw.bb21.bmc150_accel_get_bw.exit_crit_edge

sw.bb21.bmc150_accel_get_bw.exit_crit_edge:       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_get_bw.exit

switch.lookup:                                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %arrayidx.i = getelementptr [8 x %struct.anon.87], ptr @bmc150_accel_samp_freq_table, i32 0, i32 %switch.idx.cast
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %val, align 4
  %val28.i = getelementptr [8 x %struct.anon.87], ptr @bmc150_accel_samp_freq_table, i32 0, i32 %switch.idx.cast, i32 1
  %71 = ptrtoint ptr %val28.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val28.i, align 4
  %73 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %val2, align 4
  br label %bmc150_accel_get_bw.exit

bmc150_accel_get_bw.exit:                         ; preds = %switch.lookup, %sw.bb21.bmc150_accel_get_bw.exit_crit_edge
  %retval.0.i54 = phi i32 [ 2, %switch.lookup ], [ -22, %sw.bb21.bmc150_accel_get_bw.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup25

cleanup25:                                        ; preds = %bmc150_accel_get_bw.exit, %for.inc.2.cleanup25_crit_edge, %if.then17, %sw.bb12, %sw.bb10.cleanup25_crit_edge, %if.then8, %sw.bb6.cleanup25_crit_edge, %bmc150_accel_get_axis.exit, %sw.bb3.cleanup25_crit_edge, %bmc150_accel_get_temp.exit, %sw.bb.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ %retval.0.i54, %bmc150_accel_get_bw.exit ], [ 2, %sw.bb12 ], [ 1, %if.then8 ], [ %retval.0.i52, %bmc150_accel_get_axis.exit ], [ %retval.0.i, %bmc150_accel_get_temp.exit ], [ -16, %sw.bb3.cleanup25_crit_edge ], [ -22, %sw.bb.cleanup25_crit_edge ], [ -22, %sw.bb6.cleanup25_crit_edge ], [ 2, %if.then17 ], [ -22, %sw.bb10.cleanup25_crit_edge ], [ -22, %entry.cleanup25_crit_edge ], [ -22, %for.inc.2.cleanup25_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %val, label %sw.bb.cleanup.sink.split_crit_edge [
    i32 15, label %land.lhs.true.i
    i32 31, label %land.lhs.true.1.i
    i32 62, label %land.lhs.true.2.i
    i32 125, label %land.lhs.true.3.i
    i32 250, label %land.lhs.true.4.i
    i32 500, label %land.lhs.true.5.i
    i32 1000, label %land.lhs.true.6.i
    i32 2000, label %land.lhs.true.7.i
  ]

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 620000
  br i1 %cmp5.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.7.i.if.then.i_crit_edge, %land.lhs.true.6.i.if.then.i_crit_edge, %land.lhs.true.5.i.if.then.i_crit_edge, %land.lhs.true.4.i.if.then.i_crit_edge, %land.lhs.true.3.i.if.then.i_crit_edge, %land.lhs.true.2.i.if.then.i_crit_edge, %land.lhs.true.1.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.then.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.then.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.then.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.then.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.then.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.then.i_crit_edge ], [ 6, %land.lhs.true.6.i.if.then.i_crit_edge ], [ 7, %land.lhs.true.7.i.if.then.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %bw_bits.i = getelementptr [8 x %struct.anon.87], ptr @bmc150_accel_samp_freq_table, i32 0, i32 %i.023.lcssa.i, i32 2
  %6 = ptrtoint ptr %bw_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bw_bits.i, align 4
  %conv.i = zext i8 %7 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 16, i32 noundef %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.end.i

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %bw_bits12.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %bw_bits12.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %bw_bits12.i, align 8
  br label %cleanup.sink.split

land.lhs.true.1.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 260000
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.if.then.i_crit_edge, label %land.lhs.true.1.i.cleanup.sink.split_crit_edge

land.lhs.true.1.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.1.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.2.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.if.then.i_crit_edge, label %land.lhs.true.2.i.cleanup.sink.split_crit_edge

land.lhs.true.2.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.2.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.3.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.then.i_crit_edge, label %land.lhs.true.3.i.cleanup.sink.split_crit_edge

land.lhs.true.3.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.3.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.4.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 0
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.if.then.i_crit_edge, label %land.lhs.true.4.i.cleanup.sink.split_crit_edge

land.lhs.true.4.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.4.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.5.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.if.then.i_crit_edge, label %land.lhs.true.5.i.cleanup.sink.split_crit_edge

land.lhs.true.5.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.5.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.6.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.if.then.i_crit_edge, label %land.lhs.true.6.i.cleanup.sink.split_crit_edge

land.lhs.true.6.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.6.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.7.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.if.then.i_crit_edge, label %land.lhs.true.7.i.cleanup.sink.split_crit_edge

land.lhs.true.7.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.7.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  %mutex4 = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex4, i32 noundef 0) #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i16 = tail call ptr @regmap_get_device(ptr noundef %10) #11
  %chip_info.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info.i, align 8
  %arrayidx.i = getelementptr %struct.bmc150_accel_chip_info, ptr %12, i32 0, i32 4, i32 0
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val2)
  %cmp1.i = icmp eq i32 %14, %val2
  br i1 %cmp1.i, label %if.end.if.then.i19_crit_edge, label %for.inc.i

if.end.if.then.i19_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19

if.then.i19:                                      ; preds = %for.inc.2.i.if.then.i19_crit_edge, %for.inc.1.i.if.then.i19_crit_edge, %for.inc.i.if.then.i19_crit_edge, %if.end.if.then.i19_crit_edge
  %i.029.lcssa.i = phi i32 [ 0, %if.end.if.then.i19_crit_edge ], [ 1, %for.inc.i.if.then.i19_crit_edge ], [ 2, %for.inc.1.i.if.then.i19_crit_edge ], [ 3, %for.inc.2.i.if.then.i19_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %reg_range.i = getelementptr %struct.bmc150_accel_chip_info, ptr %12, i32 0, i32 4, i32 %i.029.lcssa.i, i32 1
  %17 = ptrtoint ptr %reg_range.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_range.i, align 4
  %conv.i17 = zext i8 %18 to i32
  %call6.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 15, i32 noundef %conv.i17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i18 = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i18, label %do.end.i, label %if.end.i20

do.end.i:                                         ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i16, ptr noundef nonnull @.str.51) #14
  br label %cleanup.sink.split

if.end.i20:                                       ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info.i, align 8
  %reg_range13.i = getelementptr %struct.bmc150_accel_chip_info, ptr %20, i32 0, i32 4, i32 %i.029.lcssa.i, i32 1
  %21 = ptrtoint ptr %reg_range13.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg_range13.i, align 4
  %conv14.i = zext i8 %22 to i32
  %range.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv14.i, ptr %range.i, align 4
  br label %cleanup.sink.split

for.inc.i:                                        ; preds = %if.end
  %arrayidx.1.i = getelementptr %struct.bmc150_accel_chip_info, ptr %12, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %val2)
  %cmp1.1.i = icmp eq i32 %25, %val2
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i19_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i19_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.bmc150_accel_chip_info, ptr %12, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %val2)
  %cmp1.2.i = icmp eq i32 %27, %val2
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i19_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i19_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.bmc150_accel_chip_info, ptr %12, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %val2)
  %cmp1.3.i = icmp eq i32 %29, %val2
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i19_crit_edge, label %for.inc.2.i.cleanup.sink.split_crit_edge

for.inc.2.i.cleanup.sink.split_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.inc.2.i.if.then.i19_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19

cleanup.sink.split:                               ; preds = %for.inc.2.i.cleanup.sink.split_crit_edge, %if.end.i20, %do.end.i, %land.lhs.true.7.i.cleanup.sink.split_crit_edge, %land.lhs.true.6.i.cleanup.sink.split_crit_edge, %land.lhs.true.5.i.cleanup.sink.split_crit_edge, %land.lhs.true.4.i.cleanup.sink.split_crit_edge, %land.lhs.true.3.i.cleanup.sink.split_crit_edge, %land.lhs.true.2.i.cleanup.sink.split_crit_edge, %land.lhs.true.1.i.cleanup.sink.split_crit_edge, %if.end.i, %if.then.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %mutex.sink = phi ptr [ %mutex, %sw.bb.cleanup.sink.split_crit_edge ], [ %mutex, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ %mutex, %if.then.i.cleanup.sink.split_crit_edge ], [ %mutex, %if.end.i ], [ %mutex, %land.lhs.true.1.i.cleanup.sink.split_crit_edge ], [ %mutex, %land.lhs.true.2.i.cleanup.sink.split_crit_edge ], [ %mutex, %land.lhs.true.3.i.cleanup.sink.split_crit_edge ], [ %mutex, %land.lhs.true.4.i.cleanup.sink.split_crit_edge ], [ %mutex, %land.lhs.true.5.i.cleanup.sink.split_crit_edge ], [ %mutex, %land.lhs.true.6.i.cleanup.sink.split_crit_edge ], [ %mutex, %land.lhs.true.7.i.cleanup.sink.split_crit_edge ], [ %mutex4, %do.end.i ], [ %mutex4, %if.end.i20 ], [ %mutex4, %for.inc.2.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %sw.bb.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ %call.i, %if.then.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i ], [ -22, %land.lhs.true.1.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.4.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.5.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.6.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.7.i.cleanup.sink.split_crit_edge ], [ %call6.i, %do.end.i ], [ 0, %if.end.i20 ], [ -22, %for.inc.2.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmc150_accel_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ev_enable_state = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ev_enable_state = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp eq i32 %3, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %call1 = tail call fastcc i32 @bmc150_accel_set_interrupt(ptr noundef %1, i32 noundef 1, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %state, ptr %ev_enable_state, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end5 ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmc150_accel_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val2, align 4
  %3 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %slope_thres = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %slope_dur = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %storemerge.in = phi ptr [ %slope_dur, %sw.bb1 ], [ %slope_thres, %sw.bb ]
  %4 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmc150_accel_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ev_enable_state = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %val, 255
  %slope_thres = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %slope_thres to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %slope_thres, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and2 = and i32 %val, 3
  %slope_dur = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %slope_dur to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and2, ptr %slope_dur, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_accel_set_power_state(ptr nocapture noundef readonly %data, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #11
  br i1 %on, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !244
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !245
  br label %do.end

if.end:                                           ; preds = %entry
  %call.i12 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 22
  %3 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store volatile i64 %call.i12, ptr %last_busy.i, align 8
  %call.i13 = tail call i32 @__pm_runtime_suspend(ptr noundef %call, i32 noundef 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp = icmp slt i32 %call.i13, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %ret.016 = phi i32 [ %call.i13, %if.end.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %conv = zext i1 %on to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.016, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_accel_set_interrupt(ptr noundef %data, i32 noundef %i, i1 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #11
  %arrayidx = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 2, i32 %i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %users = getelementptr %struct.bmc150_accel_data, ptr %data, i32 0, i32 2, i32 %i, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #11
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #11, !srcloc !246
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #11, !srcloc !248
  %asmresult.i.i.i.i71 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i71)
  %cmp6 = icmp sgt i32 %asmresult.i.i.i.i71, 0
  br i1 %cmp6, label %if.else.cleanup_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %call11 = tail call fastcc i32 @bmc150_accel_set_power_state(ptr noundef %data, i1 noundef zeroext %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  %conv = zext i8 %9 to i32
  %map_bitmask = getelementptr inbounds %struct.bmc150_accel_interrupt_info, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %map_bitmask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %map_bitmask, align 1
  %conv16 = zext i8 %11 to i32
  %spec.select = select i1 %state, i32 %conv16, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %conv, i32 noundef %conv16, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %if.end14.out_fix_power_state_crit_edge, label %if.end25

if.end14.out_fix_power_state_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fix_power_state

if.end25:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %en_reg = getelementptr inbounds %struct.bmc150_accel_interrupt_info, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %en_reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %en_reg, align 1
  %conv27 = zext i8 %15 to i32
  %en_bitmask = getelementptr inbounds %struct.bmc150_accel_interrupt_info, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %en_bitmask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %en_bitmask, align 1
  %conv28 = zext i8 %17 to i32
  %spec.select69 = select i1 %state, i32 %conv28, i32 0
  %call.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %spec.select69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp38 = icmp slt i32 %call.i72, 0
  br i1 %cmp38, label %if.end25.out_fix_power_state_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25.out_fix_power_state_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fix_power_state

out_fix_power_state:                              ; preds = %if.end25.out_fix_power_state_crit_edge, %if.end14.out_fix_power_state_crit_edge
  %.str.56.sink = phi ptr [ @.str.53, %if.end14.out_fix_power_state_crit_edge ], [ @.str.56, %if.end25.out_fix_power_state_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %if.end14.out_fix_power_state_crit_edge ], [ %call.i72, %if.end25.out_fix_power_state_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull %.str.56.sink) #14
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %call.i73 = tail call ptr @regmap_get_device(ptr noundef %19) #11
  %call.i12.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i73, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i12.i, ptr %last_busy.i.i, align 8
  %call.i13.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i73, i32 noundef 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp.i = icmp slt i32 %call.i13.i, 0
  br i1 %cmp.i, label %do.end.i, label %out_fix_power_state.cleanup_crit_edge

out_fix_power_state.cleanup_crit_edge:            ; preds = %out_fix_power_state
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %out_fix_power_state
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i73, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %out_fix_power_state.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ %ret.0, %out_fix_power_state.cleanup_crit_edge ], [ %ret.0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr noundef readnone %trig) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %indio_trig = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %indio_trig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indio_trig, align 4
  %cmp1 = icmp eq ptr %3, %trig
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %indio_trig.1 = getelementptr %struct.bmc150_accel_data, ptr %1, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %indio_trig.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indio_trig.1, align 4
  %cmp1.1 = icmp eq ptr %5, %trig
  %spec.select = select i1 %cmp1.1, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_set_watermark(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %val, i32 32)
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %conv = trunc i32 %2 to i8
  %watermark = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %watermark to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %watermark, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_fifo_flush(ptr noundef %indio_dev, i32 noundef %samples) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call1 = tail call fastcc i32 @__bmc150_accel_fifo_flush(ptr noundef %indio_dev, i32 noundef %samples, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bmc150_accel_fifo_flush(ptr noundef %indio_dev, i32 noundef %samples, i1 noundef zeroext %irq) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [96 x i16], align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #11
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %buffer) #11
  %4 = call ptr @memset(ptr %buffer, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !240
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 14, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.58) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = trunc i32 %9 to i8
  %conv = and i8 %10, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %irq, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %timestamp = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %timestamp, align 8
  %old_timestamp = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %old_timestamp to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %old_timestamp, align 8
  %call8 = call i64 @iio_get_time_ns(ptr noundef %indio_dev) #11
  %14 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call8, ptr %timestamp, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %timestamp11 = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %timestamp11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %timestamp11, align 8
  %old_timestamp12 = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %old_timestamp12 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %old_timestamp12, align 8
  %sub = sub i64 %16, %18
  %conv13 = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp186 = icmp ult i64 %sub, 4294967296
  br i1 %cmp186, label %if.then190, label %if.else196, !prof !250

if.then190:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %conv191 = trunc i64 %sub to i32
  %div194 = udiv i32 %conv191, %conv13
  %conv195 = zext i32 %div194 to i64
  br label %if.end200

if.else196:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %19 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv13, i64 %sub) #15, !srcloc !251
  %asmresult1.i = extractvalue { i64, i64 } %19, 1
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %if.then190
  %sample_period.0 = phi i64 [ %conv195, %if.then190 ], [ %asmresult1.i, %if.else196 ]
  %sub204 = add nsw i32 %conv13, -1
  %20 = zext i32 %sub204 to i64
  %mul206 = mul i64 %sample_period.0, %20
  %sub207 = sub i64 %16, %mul206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %tobool208.not = icmp ne i32 %samples, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %samples)
  %cmp211 = icmp ugt i32 %conv13, %samples
  %or.cond = select i1 %tobool208.not, i1 %cmp211, i1 false
  %conv214 = trunc i32 %samples to i8
  %count.0 = select i1 %or.cond, i8 %conv214, i8 %conv
  %conv216 = zext i8 %count.0 to i32
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call.i = call ptr @regmap_get_device(ptr noundef %22) #11
  %mul.i = mul nuw nsw i32 %conv216, 6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %call2.i = call i32 @regmap_raw_read(ptr noundef %24, i32 noundef 63, ptr noundef nonnull %buffer, i32 noundef %mul.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %bmc150_accel_fifo_transfer.exit.thread

for.cond.preheader:                               ; preds = %if.end200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count.0)
  %cmp222395.not = icmp eq i8 %count.0, 0
  br i1 %cmp222395.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %scan = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  br label %for.body

bmc150_accel_fifo_transfer.exit.thread:           ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.60, i32 noundef %call2.i) #14
  br label %cleanup

for.body:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit.for.body_crit_edge, %for.body.lr.ph
  %tstamp.0398 = phi i64 [ %sub207, %for.body.lr.ph ], [ %add239, %iio_push_to_buffers_with_timestamp.exit.for.body_crit_edge ]
  %i.0396 = phi i32 [ 0, %for.body.lr.ph ], [ %inc241, %iio_push_to_buffers_with_timestamp.exit.for.body_crit_edge ]
  %25 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %active_scan_mask, align 4
  %27 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %masklength, align 8
  %call224 = call i32 @_find_next_bit_be(ptr noundef %26, i32 noundef %28, i32 noundef 0) #11
  %29 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call224, i32 %30)
  %cmp227392 = icmp ult i32 %call224, %30
  br i1 %cmp227392, label %for.body229.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body229.lr.ph:                                ; preds = %for.body
  %mul230 = mul nuw nsw i32 %i.0396, 3
  br label %for.body229

for.body229:                                      ; preds = %for.body229.for.body229_crit_edge, %for.body229.lr.ph
  %bit.0394 = phi i32 [ %call224, %for.body229.lr.ph ], [ %call236, %for.body229.for.body229_crit_edge ]
  %j.0393 = phi i32 [ 0, %for.body229.lr.ph ], [ %inc, %for.body229.for.body229_crit_edge ]
  %inc = add i32 %j.0393, 1
  %arrayidx = getelementptr [3 x i16], ptr %scan, i32 0, i32 %j.0393
  %add231 = add i32 %bit.0394, %mul230
  %arrayidx232 = getelementptr [96 x i16], ptr %buffer, i32 0, i32 %add231
  %31 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx232, align 2
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx, align 2
  %34 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %active_scan_mask, align 4
  %36 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %masklength, align 8
  %add235 = add nuw i32 %bit.0394, 1
  %call236 = call i32 @_find_next_bit_be(ptr noundef %35, i32 noundef %37, i32 noundef %add235) #11
  %38 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %masklength, align 8
  %cmp227 = icmp ult i32 %call236, %39
  br i1 %cmp227, label %for.body229.for.body229_crit_edge, label %for.body229.for.end_crit_edge

for.body229.for.end_crit_edge:                    ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body229.for.body229_crit_edge:                ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body229

for.end:                                          ; preds = %for.body229.for.end_crit_edge, %for.body.for.end_crit_edge
  %40 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %scan_timestamp.i, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i366 = icmp eq i8 %41, 0
  br i1 %tobool.not.i366, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %43, 3
  %sub.i367 = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i367
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %tstamp.0398, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i368 = call i32 @iio_push_to_buffers(ptr noundef %indio_dev, ptr noundef %scan) #11
  %add239 = add i64 %tstamp.0398, %sample_period.0
  %inc241 = add nuw nsw i32 %i.0396, 1
  %exitcond.not = icmp eq i32 %inc241, %conv216
  br i1 %exitcond.not, label %iio_push_to_buffers_with_timestamp.exit.cleanup_crit_edge, label %iio_push_to_buffers_with_timestamp.exit.for.body_crit_edge

iio_push_to_buffers_with_timestamp.exit.for.body_crit_edge: ; preds = %iio_push_to_buffers_with_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

iio_push_to_buffers_with_timestamp.exit.cleanup_crit_edge: ; preds = %iio_push_to_buffers_with_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit.cleanup_crit_edge, %bmc150_accel_fifo_transfer.exit.thread, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %call2.i, %bmc150_accel_fifo_transfer.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %conv216, %iio_push_to_buffers_with_timestamp.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %buffer) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_get_fifo_watermark(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %watermark = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %watermark to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %watermark, align 1
  %conv = zext i8 %3 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %conv)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_get_fifo_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %fifo_mode = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %conv = zext i1 %tobool to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %conv)
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %3) #11
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.bmc150_accel_set_power_state.exit_crit_edge

entry.bmc150_accel_set_power_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_set_power_state.exit

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #11, !srcloc !244
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !245
  br label %do.end.i

do.end.i:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1) #14
  br label %bmc150_accel_set_power_state.exit

bmc150_accel_set_power_state.exit:                ; preds = %do.end.i, %entry.bmc150_accel_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ 0, %entry.bmc150_accel_set_power_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %currentmode = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %watermark = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %watermark to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %watermark, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc i32 @bmc150_accel_set_interrupt(ptr noundef %1, i32 noundef 2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.out_crit_edge

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6:                                          ; preds = %if.end2
  %fifo_mode = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %fifo_mode, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %8) #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fifo_mode, align 8
  %conv2.i = zext i8 %12 to i32
  %call3.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 62, i32 noundef %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end6.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge, label %if.end.i

if.end6.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_fifo_set_mode.exit.thread27

if.end.i:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end7.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %watermark to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %watermark, align 1
  %conv9.i = zext i8 %18 to i32
  %call10.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 48, i32 noundef %conv9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end7.i.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge, label %bmc150_accel_fifo_set_mode.exit

if.end7.i.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_fifo_set_mode.exit.thread27

bmc150_accel_fifo_set_mode.exit.thread27:         ; preds = %if.end7.i.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge, %if.end6.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge
  %.str.72.sink.i = phi ptr [ @.str.69, %if.end6.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge ], [ @.str.72, %if.end7.i.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call3.i, %if.end6.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge ], [ %call10.i, %if.end7.i.bmc150_accel_fifo_set_mode.exit.thread27_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull %.str.72.sink.i) #14
  br label %if.then9

bmc150_accel_fifo_set_mode.exit:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool8.not = icmp eq i32 %call10.i, 0
  br i1 %tobool8.not, label %bmc150_accel_fifo_set_mode.exit.out_crit_edge, label %bmc150_accel_fifo_set_mode.exit.if.then9_crit_edge

bmc150_accel_fifo_set_mode.exit.if.then9_crit_edge: ; preds = %bmc150_accel_fifo_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

bmc150_accel_fifo_set_mode.exit.out_crit_edge:    ; preds = %bmc150_accel_fifo_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then9:                                         ; preds = %bmc150_accel_fifo_set_mode.exit.if.then9_crit_edge, %bmc150_accel_fifo_set_mode.exit.thread27
  %retval.0.i30 = phi i32 [ %retval.0.ph.i, %bmc150_accel_fifo_set_mode.exit.thread27 ], [ %call10.i, %bmc150_accel_fifo_set_mode.exit.if.then9_crit_edge ]
  %19 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %fifo_mode, align 8
  %call11 = tail call fastcc i32 @bmc150_accel_set_interrupt(ptr noundef %1, i32 noundef 2, i1 noundef zeroext false)
  br label %out

out:                                              ; preds = %if.then9, %bmc150_accel_fifo_set_mode.exit.out_crit_edge, %if.end.i.out_crit_edge, %if.end2.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end2.out_crit_edge ], [ %retval.0.i30, %if.then9 ], [ 0, %bmc150_accel_fifo_set_mode.exit.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_buffer_predisable(ptr noundef %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %currentmode = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %fifo_mode = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc i32 @bmc150_accel_set_interrupt(ptr noundef %1, i32 noundef 2, i1 noundef zeroext false)
  %call4 = tail call fastcc i32 @__bmc150_accel_fifo_flush(ptr noundef %indio_dev, i32 noundef 32, i1 noundef zeroext false)
  %6 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fifo_mode, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %8) #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fifo_mode, align 8
  %conv2.i = zext i8 %12 to i32
  %call3.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 62, i32 noundef %conv2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end2.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end2.cleanup.sink.split.i_crit_edge:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end2
  %13 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end7.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %watermark.i = getelementptr inbounds %struct.bmc150_accel_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %watermark.i, align 1
  %conv9.i = zext i8 %18 to i32
  %call10.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 48, i32 noundef %conv9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end7.i.out_crit_edge

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end2.cleanup.sink.split.i_crit_edge
  %.str.72.sink.i = phi ptr [ @.str.69, %if.end2.cleanup.sink.split.i_crit_edge ], [ @.str.72, %if.end7.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull %.str.72.sink.i) #14
  br label %out

out:                                              ; preds = %cleanup.sink.split.i, %if.end7.i.out_crit_edge, %if.end.i.out_crit_edge, %if.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %3) #11
  %call.i12.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i12.i, ptr %last_busy.i.i, align 8
  %call.i13.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp.i = icmp slt i32 %call.i13.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.bmc150_accel_set_power_state.exit_crit_edge

entry.bmc150_accel_set_power_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bmc150_accel_set_power_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 0) #14
  br label %bmc150_accel_set_power_state.exit

bmc150_accel_set_power_state.exit:                ; preds = %do.end.i, %entry.bmc150_accel_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i13.i, %do.end.i ], [ 0, %entry.bmc150_accel_set_power_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_any_motion_setup(ptr nocapture noundef readonly %t, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %state, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  %call = tail call fastcc i32 @bmc150_accel_update_slope(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_accel_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %enabled = getelementptr inbounds %struct.bmc150_accel_trigger, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !242
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp = icmp eq i8 %5, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %setup = getelementptr inbounds %struct.bmc150_accel_trigger, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %setup, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %call10 = tail call i32 %7(ptr noundef %1, i1 noundef zeroext %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then7.cleanup_crit_edge, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.then7.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %intr = getelementptr inbounds %struct.bmc150_accel_trigger, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr, align 4
  %call18 = tail call fastcc i32 @bmc150_accel_set_interrupt(ptr noundef %3, i32 noundef %9, i1 noundef zeroext %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end16.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.then7.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bmc150_accel_trig_reen(ptr nocapture noundef readonly %trig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call2 = tail call ptr @regmap_get_device(ptr noundef %5) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %triggers = getelementptr inbounds %struct.bmc150_accel_data, ptr %7, i32 0, i32 3
  %cmp = icmp eq ptr %1, %triggers
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmc150_accel_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 33, i32 noundef 143) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp7 = icmp slt i32 %call5, 0
  br i1 %cmp7, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2, ptr noundef nonnull @.str.14) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !112, !114, !116, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !167, !168, !169, !171, !172, !173, !175, !176, !178, !180, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @bmc150_regmap_conf, !1, !"bmc150_regmap_conf", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 201, i32 28}
!2 = !{ptr @__ksymtab_bmc150_regmap_conf, !3, !"__ksymtab_bmc150_regmap_conf", i1 false, i1 false}
!3 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 206, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1693, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1694, i32 31}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1699, i32 34}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1704, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bmc150_accel_core_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @bmc150_accel_core_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @bmc150_accel_core_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1717, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1741, i32 3}
!23 = !{ptr @bmc150_accel_core_probe._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bmc150_accel_core_probe._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1750, i32 7}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1764, i32 4}
!29 = !{ptr @bmc150_accel_core_probe._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bmc150_accel_core_probe._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1785, i32 3}
!33 = !{ptr @bmc150_accel_core_probe._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bmc150_accel_core_probe._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_bmc150_accel_core_probe, !36, !"__ksymtab_bmc150_accel_core_probe", i1 false, i1 false}
!36 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1804, i32 1}
!37 = !{ptr @__ksymtab_bmc150_accel_core_remove, !38, !"__ksymtab_bmc150_accel_core_remove", i1 false, i1 false}
!38 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1827, i32 1}
!39 = !{ptr @bmc150_accel_pm_ops, !40, !"bmc150_accel_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1897, i32 25}
!41 = !{ptr @__ksymtab_bmc150_accel_pm_ops, !42, !"__ksymtab_bmc150_accel_pm_ops", i1 false, i1 false}
!42 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1902, i32 1}
!43 = !{ptr @__UNIQUE_ID_author292, !44, !"__UNIQUE_ID_author292", i1 false, i1 false}
!44 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1904, i32 1}
!45 = !{ptr @__UNIQUE_ID_file293, !46, !"__UNIQUE_ID_file293", i1 false, i1 false}
!46 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1905, i32 1}
!47 = !{ptr @__UNIQUE_ID_license294, !46, !"__UNIQUE_ID_license294", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_description295, !49, !"__UNIQUE_ID_description295", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1906, i32 1}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1609, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @bmc150_accel_chip_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @bmc150_accel_chip_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1613, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @bmc150_accel_chip_init.__UNIQUE_ID_ddebug291, !56, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1622, i32 3}
!61 = !{ptr @bmc150_accel_chip_init._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bmc150_accel_chip_init._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1639, i32 3}
!65 = !{ptr @bmc150_accel_chip_init._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bmc150_accel_chip_init._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @bmc150_accel_chip_init._entry.29, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1657, i32 3}
!69 = !{ptr @bmc150_accel_chip_init._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1148, i32 11}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1158, i32 11}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1168, i32 11}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1178, i32 11}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1188, i32 11}
!80 = !{ptr @bmc150_accel_chip_info_tbl, !81, !"bmc150_accel_chip_info_tbl", i1 false, i1 false}
!81 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1146, i32 44}
!82 = !{ptr @bma222e_accel_channels, !83, !"bma222e_accel_channels", i1 false, i1 false}
!83 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1130, i32 35}
!84 = !{ptr @bmc150_accel_event, !85, !"bmc150_accel_event", i1 false, i1 false}
!85 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1088, i32 36}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 924, i32 2}
!88 = !{ptr @bmc150_accel_ext_info, !89, !"bmc150_accel_ext_info", i1 false, i1 false}
!89 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 923, i32 44}
!90 = !{ptr @bma250e_accel_channels, !91, !"bma250e_accel_channels", i1 false, i1 false}
!91 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1132, i32 35}
!92 = !{ptr @bmc150_accel_channels, !93, !"bmc150_accel_channels", i1 false, i1 false}
!93 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1134, i32 35}
!94 = !{ptr @bma280_accel_channels, !95, !"bma280_accel_channels", i1 false, i1 false}
!95 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1136, i32 35}
!96 = !{ptr @bmc150_accel_samp_freq_table, !97, !"bmc150_accel_samp_freq_table", i1 false, i1 false}
!97 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 164, i32 3}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 279, i32 3}
!100 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @bmc150_accel_update_slope._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @bmc150_accel_update_slope._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 286, i32 3}
!105 = !{ptr @bmc150_accel_update_slope._entry.39, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @bmc150_accel_update_slope._entry_ptr.41, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 290, i32 2}
!109 = !{ptr @bmc150_accel_update_slope.__UNIQUE_ID_ddebug290, !108, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!110 = !{ptr @bmc150_accel_scan_masks, !111, !"bmc150_accel_scan_masks", i1 false, i1 false}
!111 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1222, i32 28}
!112 = !{ptr @bmc150_accel_info, !113, !"bmc150_accel_info", i1 false, i1 false}
!113 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1199, i32 30}
!114 = !{ptr @bmc150_accel_attrs_group, !115, !"bmc150_accel_attrs_group", i1 false, i1 false}
!115 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1084, i32 37}
!116 = !{ptr @bmc150_accel_attributes, !117, !"bmc150_accel_attributes", i1 false, i1 false}
!117 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1079, i32 26}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1076, i32 8}
!120 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @iio_const_attr_sampling_frequency_available, !119, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 649, i32 3}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @bmc150_accel_get_temp._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @bmc150_accel_get_temp._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 679, i32 3}
!129 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @bmc150_accel_get_axis._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @bmc150_accel_get_axis._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 346, i32 3}
!134 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bmc150_accel_set_power_state._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bmc150_accel_set_power_state._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 627, i32 5}
!139 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @bmc150_accel_set_scale._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @bmc150_accel_set_scale._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 597, i32 3}
!144 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @bmc150_accel_set_interrupt._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @bmc150_accel_set_interrupt._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 605, i32 3}
!149 = !{ptr @bmc150_accel_set_interrupt._entry.55, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @bmc150_accel_set_interrupt._entry_ptr.57, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @bmc150_accel_info_fifo, !152, !"bmc150_accel_info_fifo", i1 false, i1 false}
!152 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1209, i32 30}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 993, i32 3}
!155 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @__bmc150_accel_fifo_flush._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @__bmc150_accel_fifo_flush._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 973, i32 3}
!160 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @bmc150_accel_fifo_transfer._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @bmc150_accel_fifo_transfer._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @bmc150_accel_fifo_attributes, !164, !"bmc150_accel_fifo_attributes", i1 false, i1 false}
!164 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 936, i32 32}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 928, i32 8}
!167 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @iio_const_attr_hwfifo_watermark_min, !166, !"iio_const_attr_hwfifo_watermark_min", i1 false, i1 false}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 929, i32 8}
!171 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @iio_const_attr_hwfifo_watermark_max, !170, !"iio_const_attr_hwfifo_watermark_max", i1 false, i1 false}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 933, i32 8}
!175 = !{ptr @iio_dev_attr_hwfifo_watermark, !174, !"iio_dev_attr_hwfifo_watermark", i1 false, i1 false}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 896, i32 22}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 931, i32 8}
!180 = !{ptr @iio_dev_attr_hwfifo_enabled, !179, !"iio_dev_attr_hwfifo_enabled", i1 false, i1 false}
!181 = !{ptr @bmc150_accel_buffer_ops, !182, !"bmc150_accel_buffer_ops", i1 false, i1 false}
!182 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1586, i32 42}
!183 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1501, i32 3}
!185 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @bmc150_accel_fifo_set_mode._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @bmc150_accel_fifo_set_mode._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.72, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1511, i32 3}
!190 = !{ptr @bmc150_accel_fifo_set_mode._entry.71, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @bmc150_accel_fifo_set_mode._entry_ptr.73, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1386, i32 4}
!194 = !{ptr @bmc150_accel_irq_thread_handler._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @bmc150_accel_irq_thread_handler._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.75, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1319, i32 3}
!198 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @bmc150_accel_handle_roc_event._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @bmc150_accel_handle_roc_event._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 557, i32 45}
!203 = !{ptr @bmc150_accel_interrupts_int1, !204, !"bmc150_accel_interrupts_int1", i1 false, i1 false}
!204 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 495, i32 1}
!205 = !{ptr @bmc150_accel_interrupts_int2, !206, !"bmc150_accel_interrupts_int2", i1 false, i1 false}
!206 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 519, i32 1}
!207 = !{ptr @.str.78, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1432, i32 11}
!209 = !{ptr @.str.79, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1436, i32 11}
!211 = distinct !{null, !212, !"bmc150_accel_triggers", i1 false, i1 false}
!212 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1429, i32 3}
!213 = !{ptr @bmc150_accel_trigger_ops, !214, !"bmc150_accel_trigger_ops", i1 false, i1 false}
!214 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1304, i32 37}
!215 = !{ptr @.str.80, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 1266, i32 3}
!217 = !{ptr @bmc150_accel_trig_reen._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @bmc150_accel_trig_reen._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 236, i32 2}
!221 = !{ptr @.str.82, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @bmc150_accel_set_mode.__UNIQUE_ID_ddebug289, !220, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 240, i32 3}
!225 = !{ptr @bmc150_accel_set_mode._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @bmc150_accel_set_mode._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = distinct !{null, !228, !"bmc150_accel_sleep_value_table", i1 false, i1 false}
!228 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 188, i32 3}
!229 = !{ptr @bmc150_accel_sample_upd_time, !230, !"bmc150_accel_sample_upd_time", i1 false, i1 false}
!230 = !{!"../drivers/iio/accel/bmc150-accel-core.c", i32 176, i32 3}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{!"auto-init"}
!241 = !{i64 2149001911, i64 2149001916, i64 2149001929, i64 2149001973, i64 2149002007, i64 2149002028}
!242 = !{i8 0, i8 2}
!243 = !{i64 2148387953}
!244 = !{i64 873573, i64 873598, i64 873620, i64 873636, i64 873648, i64 873668, i64 873692, i64 873708, i64 873720}
!245 = !{i64 2148388141}
!246 = !{i64 2148389254, i64 2148389286, i64 2148389315, i64 2148389349, i64 2148389380, i64 2148389403}
!247 = !{i64 2148474198}
!248 = !{i64 2148391719, i64 2148391751, i64 2148391780, i64 2148391814, i64 2148391845, i64 2148391868}
!249 = !{i64 2148477239}
!250 = !{!"branch_weights", i32 2000, i32 1}
!251 = !{i64 2148234958, i64 2148235238, i64 2148235572, i64 2148235906}
