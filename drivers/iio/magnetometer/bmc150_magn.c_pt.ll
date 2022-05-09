; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/bmc150_magn.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/bmc150_magn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bmc150_magn_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_magn_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_bmc150_magn_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_magn_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_magn_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_magn_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bmc150_magn_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_magn_probe\09\09\09\09"
module asm "\09.long\09__crc_bmc150_magn_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_magn_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_magn_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_magn_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bmc150_magn_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_magn_remove\09\09\09\09"
module asm "\09.long\09__crc_bmc150_magn_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_magn_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_magn_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_magn_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bmc150_magn_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bmc150_magn_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_bmc150_magn_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmc150_magn_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bmc150_magn_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bmc150_magn_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.85, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.85 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.87 = type { i32, i8 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
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
%struct.bmc150_magn_data = type { ptr, %struct.mutex, ptr, [2 x %struct.regulator_bulk_data], %struct.iio_mount_matrix, %struct.anon.84, ptr, i8, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.84 = type { [3 x i32], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.bmc150_magn_trim_regs = type <{ i8, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i16, i8, i8 }>

@bmc150_magn_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @bmc150_magn_is_writeable_reg, ptr null, ptr @bmc150_magn_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 113, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bmc150_magn_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_magn_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_magn_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_magn_regmap_config to i32), ptr @__kstrtab_bmc150_magn_regmap_config, ptr @__kstrtabns_bmc150_magn_regmap_config }, section "___ksymtab+bmc150_magn_regmap_config", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@bmc150_magn_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@bmc150_magn_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.85 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 2 }, i32 33554433, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmc150_magn_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 1, %struct.anon.85 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 2 }, i32 33554433, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmc150_magn_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 2, %struct.anon.85 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 2 }, i32 33554433, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @bmc150_magn_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@bmc150_magn_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@bmc150_magn_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @bmc150_magn_attrs_group, ptr @bmc150_magn_read_raw, ptr null, ptr null, ptr @bmc150_magn_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 920, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iio trigger alloc failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmc150_magn_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/iio/magnetometer/bmc150_magn.c\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry_ptr = internal global ptr @bmc150_magn_probe._entry, section ".printk_index", align 4
@bmc150_magn_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @bmc150_magn_data_rdy_trigger_set_state, ptr @bmc150_magn_trig_reen, ptr null }, [20 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 928, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iio trigger register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry_ptr.12 = internal global ptr @bmc150_magn_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmc150_magn_event\00", [46 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 939, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry_ptr.16 = internal global ptr @bmc150_magn_probe._entry.14, section ".printk_index", align 4
@bmc150_magn_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @bmc150_magn_buffer_preenable, ptr null, ptr null, ptr @bmc150_magn_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 949, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry_ptr.19 = internal global ptr @bmc150_magn_probe._entry.17, section ".printk_index", align 4
@bmc150_magn_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.7, i32 964, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@bmc150_magn_probe._entry_ptr.22 = internal global ptr @bmc150_magn_probe._entry.20, section ".printk_index", align 4
@bmc150_magn_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.6, ptr @.str.7, ptr @.str.24, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bmc150_magn\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Registered device %s\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_bmc150_magn_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_magn_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_magn_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_magn_probe to i32), ptr @__kstrtab_bmc150_magn_probe, ptr @__kstrtabns_bmc150_magn_probe }, section "___ksymtab+bmc150_magn_probe", align 4
@__kstrtab_bmc150_magn_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_magn_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_magn_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_magn_remove to i32), ptr @__kstrtab_bmc150_magn_remove, ptr @__kstrtabns_bmc150_magn_remove }, section "___ksymtab+bmc150_magn_remove", align 4
@bmc150_magn_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bmc150_magn_suspend, ptr @bmc150_magn_resume, ptr @bmc150_magn_suspend, ptr @bmc150_magn_resume, ptr @bmc150_magn_suspend, ptr @bmc150_magn_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bmc150_magn_runtime_suspend, ptr @bmc150_magn_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bmc150_magn_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmc150_magn_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bmc150_magn_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmc150_magn_pm_ops to i32), ptr @__kstrtab_bmc150_magn_pm_ops, ptr @__kstrtabns_bmc150_magn_pm_ops }, section "___ksymtab+bmc150_magn_pm_ops", align 4
@__UNIQUE_ID_author291 = internal constant [57 x i8] c"bmc150_magn.author=Irina Tirdea <irina.tirdea@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [54 x i8] c"bmc150_magn.file=drivers/iio/magnetometer/bmc150_magn\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"bmc150_magn.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [56 x i8] c"bmc150_magn.description=BMC150 magnetometer core driver\00", section ".modinfo", align 1
@bmc150_magn_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 700, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmc150_magn_init\00", [47 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr = internal global ptr @bmc150_magn_init._entry, section ".printk_index", align 4
@bmc150_magn_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.7, i32 713, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to bring up device from suspend mode\0A\00", [51 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr.29 = internal global ptr @bmc150_magn_init._entry.27, section ".printk_index", align 4
@bmc150_magn_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.7, i32 719, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed reading chip id\0A\00", [40 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr.32 = internal global ptr @bmc150_magn_init._entry.30, section ".printk_index", align 4
@bmc150_magn_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.7, i32 723, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid chip id 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr.35 = internal global ptr @bmc150_magn_init._entry.33, section ".printk_index", align 4
@bmc150_magn_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.26, ptr @.str.7, ptr @.str.36, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Chip id %x\0A\00", [20 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.7, i32 733, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set ODR to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr.39 = internal global ptr @bmc150_magn_init._entry.37, section ".printk_index", align 4
@bmc150_magn_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.26, ptr @.str.7, i32 741, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set REP XY to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr.42 = internal global ptr @bmc150_magn_init._entry.40, section ".printk_index", align 4
@bmc150_magn_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.26, ptr @.str.7, i32 749, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set REP Z to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr.45 = internal global ptr @bmc150_magn_init._entry.43, section ".printk_index", align 4
@bmc150_magn_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.26, ptr @.str.7, i32 761, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to power on device\0A\00", [37 x i8] zeroinitializer }, align 32
@bmc150_magn_init._entry_ptr.48 = internal global ptr @bmc150_magn_init._entry.46, section ".printk_index", align 4
@bmc150_magn_samp_freq_table = internal constant { [8 x %struct.anon.87], [32 x i8] } { [8 x %struct.anon.87] [%struct.anon.87 { i32 2, i8 1 }, %struct.anon.87 { i32 6, i8 2 }, %struct.anon.87 { i32 8, i8 3 }, %struct.anon.87 { i32 10, i8 0 }, %struct.anon.87 { i32 15, i8 4 }, %struct.anon.87 { i32 20, i8 5 }, %struct.anon.87 { i32 25, i8 6 }, %struct.anon.87 { i32 30, i8 7 }], [32 x i8] zeroinitializer }, align 32
@bmc150_magn_set_max_odr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.7, i32 354, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can't set oversampling with sampling freq %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bmc150_magn_set_max_odr\00", [40 x i8] zeroinitializer }, align 32
@bmc150_magn_set_max_odr._entry_ptr = internal global ptr @bmc150_magn_set_max_odr._entry, section ".printk_index", align 4
@bmc150_magn_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.51, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @bmc150_magn_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@bmc150_magn_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bmc150_magn_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@bmc150_magn_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bmc150_magn_show_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@bmc150_magn_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 276, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to change power state to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bmc150_magn_set_power_state\00", [36 x i8] zeroinitializer }, align 32
@bmc150_magn_set_power_state._entry_ptr = internal global ptr @bmc150_magn_set_power_state._entry, section ".printk_index", align 4
@bmc150_magn_trig_reen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 798, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reset interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bmc150_magn_trig_reen\00", [42 x i8] zeroinitializer }, align 32
@bmc150_magn_trig_reen._entry_ptr = internal global ptr @bmc150_magn_trig_reen._entry, section ".printk_index", align 4
@bmc150_magn_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.7, i32 1027, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"powering off device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bmc150_magn_runtime_suspend\00", [36 x i8] zeroinitializer }, align 32
@bmc150_magn_runtime_suspend._entry_ptr = internal global ptr @bmc150_magn_runtime_suspend._entry, section ".printk_index", align 4
@switch.table.bmc150_magn_set_max_odr = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@switch.table.bmc150_magn_read_raw = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 12, i64 25]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 25]
@__sancov_gen_cov_switch_values.62 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 6, i64 8, i64 10, i64 15, i64 20, i64 25, i64 30]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"bmc150_magn_regmap_config\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 219, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 886, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 887, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 891, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 900, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"bmc150_magn_channels\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 653, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"bmc150_magn_scan_masks\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 666, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"bmc150_magn_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 660, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 915, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 920, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"bmc150_magn_trigger_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 834, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 928, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 936, i32 9 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 939, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [29 x i8] c"bmc150_magn_buffer_setup_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 853, i32 42 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 949, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 964, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 968, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"bmc150_magn_pm_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1076, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 700, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 712, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 719, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 723, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 727, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 732, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 740, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 748, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 761, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"bmc150_magn_samp_freq_table\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 155, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 352, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"bmc150_magn_ext_info\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 619, i32 44 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 620, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"bmc150_magn_attrs_group\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 631, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant [23 x i8] c"bmc150_magn_attributes\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 626, i32 26 }
@___asan_gen_.232 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 624, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 601, i32 48 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 275, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 798, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [42 x i8] c"../drivers/iio/magnetometer/bmc150_magn.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1027, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [37 x i8] c"switch.table.bmc150_magn_set_max_odr\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [34 x i8] c"switch.table.bmc150_magn_read_raw\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_bmc150_magn_pm_ops, ptr @__ksymtab_bmc150_magn_probe, ptr @__ksymtab_bmc150_magn_regmap_config, ptr @__ksymtab_bmc150_magn_remove, ptr @bmc150_magn_init._entry, ptr @bmc150_magn_init._entry.27, ptr @bmc150_magn_init._entry.30, ptr @bmc150_magn_init._entry.33, ptr @bmc150_magn_init._entry.37, ptr @bmc150_magn_init._entry.40, ptr @bmc150_magn_init._entry.43, ptr @bmc150_magn_init._entry.46, ptr @bmc150_magn_init._entry_ptr, ptr @bmc150_magn_init._entry_ptr.29, ptr @bmc150_magn_init._entry_ptr.32, ptr @bmc150_magn_init._entry_ptr.35, ptr @bmc150_magn_init._entry_ptr.39, ptr @bmc150_magn_init._entry_ptr.42, ptr @bmc150_magn_init._entry_ptr.45, ptr @bmc150_magn_init._entry_ptr.48, ptr @bmc150_magn_probe._entry, ptr @bmc150_magn_probe._entry.10, ptr @bmc150_magn_probe._entry.14, ptr @bmc150_magn_probe._entry.17, ptr @bmc150_magn_probe._entry.20, ptr @bmc150_magn_probe._entry_ptr, ptr @bmc150_magn_probe._entry_ptr.12, ptr @bmc150_magn_probe._entry_ptr.16, ptr @bmc150_magn_probe._entry_ptr.19, ptr @bmc150_magn_probe._entry_ptr.22, ptr @bmc150_magn_runtime_suspend._entry, ptr @bmc150_magn_runtime_suspend._entry_ptr, ptr @bmc150_magn_set_max_odr._entry, ptr @bmc150_magn_set_max_odr._entry_ptr, ptr @bmc150_magn_set_power_state._entry, ptr @bmc150_magn_set_power_state._entry_ptr, ptr @bmc150_magn_trig_reen._entry, ptr @bmc150_magn_trig_reen._entry_ptr, ptr @bmc150_magn_regmap_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bmc150_magn_probe.__key, ptr @.str.3, ptr @bmc150_magn_channels, ptr @bmc150_magn_scan_masks, ptr @bmc150_magn_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bmc150_magn_trigger_ops, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @bmc150_magn_buffer_setup_ops, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @bmc150_magn_pm_ops, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @bmc150_magn_samp_freq_table, ptr @.str.49, ptr @.str.50, ptr @bmc150_magn_ext_info, ptr @.str.51, ptr @bmc150_magn_attrs_group, ptr @bmc150_magn_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @switch.table.bmc150_magn_set_max_odr, ptr @switch.table.bmc150_magn_read_raw], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_samp_freq_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_set_max_odr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_trig_reen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmc150_magn_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bmc150_magn_set_max_odr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bmc150_magn_read_raw to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bmc150_magn_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -75
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 8
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bmc150_magn_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -66
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 9
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmc150_magn_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, ptr noundef %name) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 200) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %regmap2 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %regmap2, align 8
  %irq3 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %irq3, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %1, align 8
  %regulators = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %regulators, align 4
  %arrayidx6 = getelementptr %struct.bmc150_magn_data, ptr %1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.1, ptr %arrayidx6, align 4
  %call9 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call9, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %orientation = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 4
  %call14 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @bmc150_magn_probe.__key) #8
  %call22 = tail call fastcc i32 @bmc150_magn_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bmc150_magn_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bmc150_magn_scan_masks, ptr %available_scan_masks, align 4
  %name25 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %11 = ptrtoint ptr %name25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %name25, align 8
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bmc150_magn_info, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp26 = icmp sgt i32 %irq, 0
  br i1 %cmp26, label %if.then27, label %if.end24.if.end56_crit_edge

if.end24.if.end56_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then27:                                        ; preds = %if.end24
  %call29 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #8
  %call30 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %call29) #8
  %dready_trig = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dready_trig to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call30, ptr %dready_trig, align 8
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %err_poweroff

if.end37:                                         ; preds = %if.then27
  %15 = ptrtoint ptr %call30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bmc150_magn_trigger_ops, ptr %call30, align 8
  %16 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dready_trig, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %17, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %driver_data.i.i, align 4
  %19 = load ptr, ptr %dready_trig, align 8
  %call41 = tail call i32 @__iio_trigger_register(ptr noundef %19, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end47, label %do.end46

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %err_poweroff

if.end47:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dready_trig, align 8
  %call49 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 8193, ptr noundef nonnull @.str.13, ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %irq) #11
  br label %err_trigger_unregister

if.end56:                                         ; preds = %if.end47.if.end56_crit_edge, %if.end24.if.end56_crit_edge
  %call57 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @bmc150_magn_trigger_handler, i32 noundef 0, ptr noundef nonnull @bmc150_magn_buffer_setup_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end63

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %err_free_irq

if.end63:                                         ; preds = %if.end56
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool65.not = icmp eq i32 %call.i, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.err_buffer_cleanup_crit_edge

if.end63.err_buffer_cleanup_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_buffer_cleanup

if.end67:                                         ; preds = %if.end63
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call68 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end73, label %do.body75

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %err_buffer_cleanup

do.body75:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_magn_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_magn_probe, %if.then80)) #8
          to label %cleanup [label %if.then80], !srcloc !152

if.then80:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_magn_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %name) #8
  br label %cleanup

err_buffer_cleanup:                               ; preds = %do.end73, %if.end63.err_buffer_cleanup_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end63.err_buffer_cleanup_crit_edge ], [ %call68, %do.end73 ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #8
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_buffer_cleanup, %do.end62
  %ret.1 = phi i32 [ %call57, %do.end62 ], [ %ret.0, %err_buffer_cleanup ]
  br i1 %cmp26, label %if.then85, label %err_free_irq.err_trigger_unregister_crit_edge

err_free_irq.err_trigger_unregister_crit_edge:    ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_trigger_unregister

if.then85:                                        ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #10
  %dready_trig86 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %dready_trig86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dready_trig86, align 8
  %call87 = tail call ptr @free_irq(i32 noundef %irq, ptr noundef %23) #8
  br label %err_trigger_unregister

err_trigger_unregister:                           ; preds = %if.then85, %err_free_irq.err_trigger_unregister_crit_edge, %do.end54
  %ret.2 = phi i32 [ %call49, %do.end54 ], [ %ret.1, %if.then85 ], [ %ret.1, %err_free_irq.err_trigger_unregister_crit_edge ]
  %dready_trig89 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %dready_trig89 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dready_trig89, align 8
  %tobool90.not = icmp eq ptr %25, null
  br i1 %tobool90.not, label %err_trigger_unregister.err_poweroff_crit_edge, label %if.then91

err_trigger_unregister.err_poweroff_crit_edge:    ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_poweroff

if.then91:                                        ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iio_trigger_unregister(ptr noundef nonnull %25) #8
  br label %err_poweroff

err_poweroff:                                     ; preds = %if.then91, %err_trigger_unregister.err_poweroff_crit_edge, %do.end46, %if.then33
  %ret.3 = phi i32 [ %call41, %do.end46 ], [ %ret.2, %if.then91 ], [ %ret.2, %err_trigger_unregister.err_poweroff_crit_edge ], [ -12, %if.then33 ]
  %26 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap2, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 75, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %err_poweroff.cleanup_crit_edge, label %if.end.i

err_poweroff.cleanup_crit_edge:                   ; preds = %err_poweroff
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %err_poweroff
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 20000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %err_poweroff.cleanup_crit_edge, %if.then80, %do.body75, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call22, %if.end17.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %do.body75 ], [ %ret.3, %err_poweroff.cleanup_crit_edge ], [ %ret.3, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_magn_init(ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  %chip_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id) #8
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chip_id, align 4, !annotation !153
  %regulators = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 3
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 5) #8
  %regmap.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 75, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28) #11
  br label %err_regulator_disable

if.end8:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 20000, i32 noundef 2) #8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 8
  %call9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 64, ptr noundef nonnull %chip_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.31) #11
  br label %err_poweroff

if.end16:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %12)
  %cmp17.not = icmp eq i32 %12, 50
  br i1 %cmp17.not, label %do.body24, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.34, i32 noundef %12) #11
  br label %err_poweroff

do.body24:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmc150_magn_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmc150_magn_init, %if.then28)) #8
          to label %do.end32 [label %if.then28], !srcloc !152

if.then28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %17 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmc150_magn_init.__UNIQUE_ID_ddebug289, ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef %18) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body24
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 8
  %call.i.i133 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 76, i32 noundef 56, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133)
  %cmp34 = icmp slt i32 %call.i.i133, 0
  br i1 %cmp34, label %do.end39, label %if.end43

do.end39:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef 10) #11
  br label %err_poweroff

if.end43:                                         ; preds = %do.end32
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 8
  %call46 = call i32 @regmap_write(ptr noundef %24, i32 noundef 81, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %if.end56

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.41, i32 noundef 9) #11
  br label %err_poweroff

if.end56:                                         ; preds = %if.end43
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 8
  %call60 = call i32 @regmap_write(ptr noundef %28, i32 noundef 82, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end66, label %if.end81

do.end66:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.44, i32 noundef 15) #11
  br label %err_poweroff

if.end81:                                         ; preds = %if.end56
  %max_odr27.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 8
  %31 = ptrtoint ptr %max_odr27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 102, ptr %max_odr27.i, align 8
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 8
  %call.i11.i = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 76, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp83 = icmp slt i32 %call.i11.i, 0
  br i1 %cmp83, label %do.end88, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.47) #11
  br label %err_poweroff

err_poweroff:                                     ; preds = %do.end88, %do.end66, %do.end52, %do.end39, %do.end21, %do.end14
  %ret.0 = phi i32 [ %call9, %do.end14 ], [ -19, %do.end21 ], [ %call.i.i133, %do.end39 ], [ %call46, %do.end52 ], [ %call60, %do.end66 ], [ %call.i11.i, %do.end88 ]
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 8
  %call.i.i138 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 75, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i138)
  %cmp.i139 = icmp slt i32 %call.i.i138, 0
  br i1 %cmp.i139, label %err_poweroff.err_regulator_disable_crit_edge, label %if.end.i140

err_poweroff.err_regulator_disable_crit_edge:     ; preds = %err_poweroff
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_regulator_disable

if.end.i140:                                      ; preds = %err_poweroff
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 20000, i32 noundef 2) #8
  br label %err_regulator_disable

err_regulator_disable:                            ; preds = %if.end.i140, %err_poweroff.err_regulator_disable_crit_edge, %do.end6
  %ret.1 = phi i32 [ %call.i.i, %do.end6 ], [ %ret.0, %err_poweroff.err_regulator_disable_crit_edge ], [ %ret.0, %if.end.i140 ]
  %call94 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #8
  br label %cleanup

cleanup:                                          ; preds = %err_regulator_disable, %if.end81.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.1, %err_regulator_disable ], [ 0, %if.end81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %scan = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 5
  %call2 = tail call fastcc i32 @bmc150_magn_read_xyz(ptr noundef %3, ptr noundef %scan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scan_timestamp.i, align 8, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %9, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %7, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #8
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.err_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %12) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmc150_magn_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #8
  %irq = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dready_trig = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dready_trig, align 8
  %call4 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dready_trig5 = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %dready_trig5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dready_trig5, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iio_trigger_unregister(ptr noundef nonnull %9) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %regmap.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 75, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end8.bmc150_magn_set_power_mode.exit_crit_edge, label %if.end.i

if.end8.bmc150_magn_set_power_mode.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmc150_magn_set_power_mode.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 20000, i32 noundef 2) #8
  br label %bmc150_magn_set_power_mode.exit

bmc150_magn_set_power_mode.exit:                  ; preds = %if.end.i, %if.end8.bmc150_magn_set_power_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %regulators = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 3
  %call11 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %regmap2.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap2.i, align 8
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 76, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call.i10.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %regmap5.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap5.i, align 8
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 76, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call.i11.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_runtime_suspend(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %regmap2.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap2.i, align 8
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 76, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp = icmp slt i32 %call.i10.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i10.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_runtime_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap5.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap5.i, align 8
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 76, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i11.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_magn_set_max_odr(ptr nocapture noundef %data, i32 noundef %rep_xy, i32 noundef %rep_z, i32 noundef %odr) unnamed_addr #1 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #8
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rep_xy)
  %cmp = icmp slt i32 %rep_xy, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 81, ptr noundef nonnull %reg_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %mul = shl i32 %4, 1
  %add = or i32 %mul, 1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %rep_xy.addr.0 = phi i32 [ %add, %if.end ], [ %rep_xy, %entry.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rep_z)
  %cmp4 = icmp slt i32 %rep_z, 1
  br i1 %cmp4, label %if.then5, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then5:                                         ; preds = %if.end3
  %regmap6 = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap6, align 8
  %call7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 82, ptr noundef nonnull %reg_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then5.cleanup_crit_edge, label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val, align 4
  %add11 = add i32 %8, 1
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end3.if.end12_crit_edge
  %rep_z.addr.0 = phi i32 [ %add11, %if.end10 ], [ %rep_z, %if.end3.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %odr)
  %cmp13 = icmp slt i32 %odr, 1
  br i1 %cmp13, label %if.then14, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #8
  %9 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !153
  %regmap.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 76, ptr noundef nonnull %reg_val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %bmc150_magn_get_odr.exit.thread, label %if.end.i

bmc150_magn_get_odr.exit.thread:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_val.i, align 4
  %14 = lshr i32 %13, 3
  %conv.i = and i32 %14, 7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.bmc150_magn_set_max_odr, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr [8 x %struct.anon.87], ptr @bmc150_magn_samp_freq_table, i32 0, i32 %switch.load
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #8
  br label %if.end19

if.end19:                                         ; preds = %if.end.i, %if.end12.if.end19_crit_edge
  %odr.addr.1 = phi i32 [ %17, %if.end.i ], [ %odr, %if.end12.if.end19_crit_edge ]
  %mul20 = mul i32 %rep_xy.addr.0, 145
  %mul21 = mul i32 %rep_z.addr.0, 500
  %add22 = add i32 %mul20, 980
  %add23 = add i32 %add22, %mul21
  %div = sdiv i32 1000000, %add23
  call void @__sanitizer_cov_trace_cmp4(i32 %odr.addr.1, i32 %div)
  %cmp24 = icmp sgt i32 %odr.addr.1, %div
  br i1 %cmp24, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.49, i32 noundef %odr.addr.1) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %max_odr27 = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %max_odr27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %max_odr27, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end, %bmc150_magn_get_odr.exit.thread, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ], [ %call, %if.then.cleanup_crit_edge ], [ %call7, %if.then5.cleanup_crit_edge ], [ %call.i, %bmc150_magn_get_odr.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bmc150_magn_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 4
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #1 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %values = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %values) #8
  %3 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %values, align 4, !annotation !153
  %4 = getelementptr inbounds [3 x i32], ptr %values, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !153
  %6 = getelementptr inbounds [3 x i32], ptr %values, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !153
  %8 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb18
    i32 12, label %sw.bb19
    i32 25, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %9 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %10, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end5

if.then.i.i:                                      ; preds = %if.end
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then3_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then3_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  br label %if.then3

if.then3:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then3_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54, i32 noundef 1) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @bmc150_magn_read_xyz(ptr noundef %1, ptr noundef nonnull %values)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i13.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i13.i, ptr %last_busy.i.i, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i14.i = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp.i, label %do.end.i69, label %if.then8.bmc150_magn_set_power_state.exit71_crit_edge

if.then8.bmc150_magn_set_power_state.exit71_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmc150_magn_set_power_state.exit71

do.end.i69:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.54, i32 noundef 0) #11
  br label %bmc150_magn_set_power_state.exit71

bmc150_magn_set_power_state.exit71:               ; preds = %do.end.i69, %if.then8.bmc150_magn_set_power_state.exit71_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %23 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [3 x i32], ptr %values, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %call.i13.i72 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i73 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i.i73 to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i13.i72, ptr %last_busy.i.i73, align 8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %call.i14.i74 = tail call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i74)
  %cmp.i75 = icmp slt i32 %call.i14.i74, 0
  br i1 %cmp.i75, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.54, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 625, ptr %val2, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #8
  %37 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !153
  %regmap.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %39, i32 noundef 76, ptr noundef nonnull %reg_val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i79 = icmp slt i32 %call.i, 0
  br i1 %cmp.i79, label %47, label %if.end.i

if.end.i:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg_val.i, align 4
  %42 = lshr i32 %41, 3
  %conv.i = and i32 %42, 7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.bmc150_magn_read_raw, i32 0, i32 %conv.i
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr [8 x %struct.anon.87], ptr @bmc150_magn_samp_freq_table, i32 0, i32 %switch.load
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #8
  br label %cleanup

47:                                               ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #8
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %48 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel2, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %49, label %sw.bb24.cleanup_crit_edge [
    i32 1, label %sw.bb24.sw.bb25_crit_edge
    i32 2, label %sw.bb24.sw.bb25_crit_edge90
    i32 3, label %sw.bb30
  ]

sw.bb24.sw.bb25_crit_edge90:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

sw.bb24.sw.bb25_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb24.sw.bb25_crit_edge, %sw.bb24.sw.bb25_crit_edge90
  %regmap = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 8
  %call26 = call i32 @regmap_read(ptr noundef %52, i32 noundef 81, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %sw.bb25.cleanup_crit_edge, label %if.end29

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tmp, align 4
  %mul = shl i32 %54, 1
  %add = or i32 %mul, 1
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %val, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb24
  %regmap31 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap31, align 8
  %call32 = call i32 @regmap_read(ptr noundef %57, i32 noundef 82, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %sw.bb30.cleanup_crit_edge, label %if.end35

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tmp, align 4
  %add36 = add i32 %59, 1
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add36, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %sw.bb30.cleanup_crit_edge, %if.end29, %sw.bb25.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %47, %if.end.i, %sw.bb18, %if.end16, %if.then14, %bmc150_magn_set_power_state.exit71, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end35 ], [ 1, %if.end29 ], [ 2, %sw.bb18 ], [ %call.i.i, %if.then3 ], [ %call6, %bmc150_magn_set_power_state.exit71 ], [ %call.i14.i74, %if.then14 ], [ 1, %if.end16 ], [ -16, %sw.bb.cleanup_crit_edge ], [ %call26, %sw.bb25.cleanup_crit_edge ], [ %call32, %sw.bb30.cleanup_crit_edge ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %47 ], [ 1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %values) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 25, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %max_odr = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp = icmp slt i32 %4, %val
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %5 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %val, label %if.end.cleanup.sink.split_crit_edge [
    i32 2, label %if.end.if.then.i_crit_edge
    i32 6, label %if.then.fold.split.i
    i32 8, label %if.then.fold.split18.i
    i32 10, label %if.then.fold.split19.i
    i32 15, label %if.then.fold.split20.i
    i32 20, label %if.then.fold.split21.i
    i32 25, label %if.then.fold.split22.i
    i32 30, label %if.then.fold.split23.i
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split20.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split21.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split22.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split23.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split23.i, %if.then.fold.split22.i, %if.then.fold.split21.i, %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split.i, %if.end.if.then.i_crit_edge
  %conv.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split18.i ], [ 3, %if.then.fold.split19.i ], [ 4, %if.then.fold.split20.i ], [ 5, %if.then.fold.split21.i ], [ 6, %if.then.fold.split22.i ], [ 7, %if.then.fold.split23.i ]
  %regmap.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %reg_val.i = getelementptr [8 x %struct.anon.87], ptr @bmc150_magn_samp_freq_table, i32 0, i32 %conv.lcssa.i, i32 1
  %8 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_val.i, align 4
  %conv6.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 3
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 76, i32 noundef 56, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %11 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel2, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %12, label %sw.bb3.cleanup_crit_edge [
    i32 1, label %sw.bb3.sw.bb4_crit_edge
    i32 2, label %sw.bb3.sw.bb4_crit_edge68
    i32 3, label %sw.bb17
  ]

sw.bb3.sw.bb4_crit_edge68:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3.sw.bb4_crit_edge, %sw.bb3.sw.bb4_crit_edge68
  %14 = add i32 %val, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -511, i32 %14)
  %15 = icmp ult i32 %14, -511
  br i1 %15, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  %mutex9 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex9, i32 noundef 0) #8
  %call10 = tail call fastcc i32 @bmc150_magn_set_max_odr(ptr noundef %1, i32 noundef %val, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup.sink.split_crit_edge, label %if.end14

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %div65.lhs.trunc = add nuw nsw i32 %val, 65535
  %div656667 = lshr i32 %div65.lhs.trunc, 1
  %div65.zext = and i32 %div656667, 32767
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 81, i32 noundef 255, i32 noundef %div65.zext, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %sw.bb3
  %18 = add i32 %val, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %18)
  %19 = icmp ult i32 %18, -256
  br i1 %19, label %sw.bb17.cleanup_crit_edge, label %if.end22

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %sw.bb17
  %mutex23 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex23, i32 noundef 0) #8
  %call24 = tail call fastcc i32 @bmc150_magn_set_max_odr(ptr noundef %1, i32 noundef 0, i32 noundef %val, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup.sink.split_crit_edge, label %if.end28

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %regmap29 = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap29, align 8
  %sub30 = add nsw i32 %val, -1
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 82, i32 noundef 255, i32 noundef %sub30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end28, %if.end22.cleanup.sink.split_crit_edge, %if.end14, %if.end8.cleanup.sink.split_crit_edge, %if.then.i, %if.end.cleanup.sink.split_crit_edge
  %mutex23.sink = phi ptr [ %mutex23, %if.end28 ], [ %mutex9, %if.end14 ], [ %mutex, %if.end.cleanup.sink.split_crit_edge ], [ %mutex, %if.then.i ], [ %mutex9, %if.end8.cleanup.sink.split_crit_edge ], [ %mutex23, %if.end22.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i64, %if.end28 ], [ %call.i, %if.end14 ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ %10, %if.then.i ], [ %call10, %if.end8.cleanup.sink.split_crit_edge ], [ %call24, %if.end22.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex23.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb17.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb17.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_show_samp_freq_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %max_odr = getelementptr inbounds %struct.bmc150_magn_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3 = icmp slt i32 %3, 2
  br i1 %cmp3, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %entry
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.53, i32 noundef 2) #8
  %4 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp3.1 = icmp slt i32 %5, 6
  br i1 %cmp3.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.1:                                         ; preds = %if.end
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call8
  %sub.1 = sub i32 4096, %call8
  %call8.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.53, i32 noundef 6) #8
  %add.1 = add i32 %call8.1, %call8
  %6 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp3.2 = icmp slt i32 %7, 8
  br i1 %cmp3.2, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call8.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.53, i32 noundef 8) #8
  %add.2 = add i32 %call8.2, %add.1
  %8 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp3.3 = icmp slt i32 %9, 10
  br i1 %cmp3.3, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call8.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.53, i32 noundef 10) #8
  %add.3 = add i32 %call8.3, %add.2
  %10 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp3.4 = icmp slt i32 %11, 15
  br i1 %cmp3.4, label %if.end.3.for.end_crit_edge, label %if.end.4

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.4:                                         ; preds = %if.end.3
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %call8.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.53, i32 noundef 15) #8
  %add.4 = add i32 %call8.4, %add.3
  %12 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %13)
  %cmp3.5 = icmp slt i32 %13, 20
  br i1 %cmp3.5, label %if.end.4.for.end_crit_edge, label %if.end.5

if.end.4.for.end_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.5:                                         ; preds = %if.end.4
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %call8.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.53, i32 noundef 20) #8
  %add.5 = add i32 %call8.5, %add.4
  %14 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %15)
  %cmp3.6 = icmp slt i32 %15, 25
  br i1 %cmp3.6, label %if.end.5.for.end_crit_edge, label %if.end.6

if.end.5.for.end_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.6:                                         ; preds = %if.end.5
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %call8.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.53, i32 noundef 25) #8
  %add.6 = add i32 %call8.6, %add.5
  %16 = ptrtoint ptr %max_odr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_odr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %17)
  %cmp3.7 = icmp slt i32 %17, 30
  br i1 %cmp3.7, label %if.end.6.for.end_crit_edge, label %if.end.7

if.end.6.for.end_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.7:                                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %call8.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.53, i32 noundef 30) #8
  %add.7 = add i32 %call8.7, %add.6
  br label %for.end

for.end:                                          ; preds = %if.end.7, %if.end.6.for.end_crit_edge, %if.end.5.for.end_crit_edge, %if.end.4.for.end_crit_edge, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call8, %if.end.for.end_crit_edge ], [ %add.1, %if.end.1.for.end_crit_edge ], [ %add.2, %if.end.2.for.end_crit_edge ], [ %add.3, %if.end.3.for.end_crit_edge ], [ %add.4, %if.end.4.for.end_crit_edge ], [ %add.5, %if.end.5.for.end_crit_edge ], [ %add.6, %if.end.6.for.end_crit_edge ], [ %add.7, %if.end.7 ]
  %sub9 = add i32 %len.0.lcssa, -1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %sub9
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx10, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmc150_magn_read_xyz(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buffer) unnamed_addr #1 align 64 {
entry:
  %values = alloca [4 x i16], align 8
  %tregs = alloca %struct.bmc150_magn_trim_regs, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #8
  %0 = ptrtoint ptr %values to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %values, align 8
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %tregs) #8
  %1 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 1
  %2 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 4
  %3 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 5
  %4 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 6
  %5 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 8
  %6 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 9
  %7 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 10
  %8 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 11
  %9 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 12
  %10 = getelementptr inbounds %struct.bmc150_magn_trim_regs, ptr %tregs, i32 0, i32 13
  %regmap = getelementptr inbounds %struct.bmc150_magn_data, ptr %data, i32 0, i32 2
  %11 = call ptr @memset(ptr %tregs, i32 255, i32 21)
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 66, ptr noundef nonnull %values, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = getelementptr inbounds [4 x i16], ptr %values, i32 0, i32 3
  %15 = getelementptr inbounds [4 x i16], ptr %values, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i16], ptr %values, i32 0, i32 1
  %17 = ptrtoint ptr %values to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %values, align 8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %16, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %15, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %14, align 2
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 8
  %call15 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 93, ptr noundef nonnull %tregs, i32 noundef 21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %27 = call i16 @llvm.bswap.i16(i16 %24)
  %28 = lshr i16 %27, 2
  %29 = call i16 @llvm.bswap.i16(i16 %22)
  %30 = ashr i16 %29, 1
  %31 = call i16 @llvm.bswap.i16(i16 %20)
  %32 = ashr i16 %31, 3
  %33 = call i16 @llvm.bswap.i16(i16 %18)
  %34 = ashr i16 %33, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %34)
  %cmp.i = icmp eq i16 %34, -4096
  br i1 %cmp.i, label %if.end19.bmc150_magn_compensate_x.exit_crit_edge, label %if.end.i

if.end19.bmc150_magn_compensate_x.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmc150_magn_compensate_x.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i16 %34 to i32
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %7, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %27)
  %tobool.not.i = icmp ult i16 %27, 4
  %spec.select.i = select i1 %tobool.not.i, i16 %37, i16 %28
  %conv5.i = zext i16 %37 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 14
  %conv6.i = zext i16 %spec.select.i to i32
  %div.i = udiv i32 %shl.i, %conv6.i
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %9, align 1
  %conv11.i = sext i8 %39 to i32
  %conv9.i = shl i32 %div.i, 16
  %sext.i = add i32 %conv9.i, -1073741824
  %conv12.i = ashr exact i32 %sext.i, 16
  %mul.i = mul nsw i32 %conv12.i, %conv12.i
  %40 = lshr i32 %mul.i, 7
  %mul14.i = mul nsw i32 %40, %conv11.i
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %10, align 1
  %43 = zext i8 %42 to i32
  %shl18.i = shl nuw nsw i32 %43, 7
  %mul19.i = mul nsw i32 %shl18.i, %conv12.i
  %add.i = add i32 %mul14.i, %mul19.i
  %shr20.i = ashr i32 %add.i, 9
  %add21.i = add nsw i32 %shr20.i, 1048576
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %3, align 1
  %conv23.i = sext i8 %45 to i32
  %add24.i = add nsw i32 %conv23.i, 160
  %mul25.i = mul nsw i32 %add21.i, %add24.i
  %shr26.i = ashr i32 %mul25.i, 12
  %mul27.i = mul nsw i32 %shr26.i, %conv.i
  %46 = lshr i32 %mul27.i, 13
  %47 = ptrtoint ptr %tregs to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tregs, align 1
  %conv32.i = sext i8 %48 to i32
  %shl33.i = shl nsw i32 %conv32.i, 3
  %add34.i = add nsw i32 %46, %shl33.i
  %sext49.i = shl i32 %add34.i, 16
  %conv36.i = ashr exact i32 %sext49.i, 16
  br label %bmc150_magn_compensate_x.exit

bmc150_magn_compensate_x.exit:                    ; preds = %if.end.i, %if.end19.bmc150_magn_compensate_x.exit_crit_edge
  %retval.0.i = phi i32 [ %conv36.i, %if.end.i ], [ -2147483648, %if.end19.bmc150_magn_compensate_x.exit_crit_edge ]
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %32)
  %cmp.i40 = icmp eq i16 %32, -4096
  br i1 %cmp.i40, label %bmc150_magn_compensate_x.exit.bmc150_magn_compensate_y.exit_crit_edge, label %if.end.i72

bmc150_magn_compensate_x.exit.bmc150_magn_compensate_y.exit_crit_edge: ; preds = %bmc150_magn_compensate_x.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmc150_magn_compensate_y.exit

if.end.i72:                                       ; preds = %bmc150_magn_compensate_x.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i41 = sext i16 %32 to i32
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %7, align 1
  %52 = call i16 @llvm.bswap.i16(i16 %51) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %27)
  %tobool.not.i43 = icmp ult i16 %27, 4
  %spec.select.i44 = select i1 %tobool.not.i43, i16 %52, i16 %28
  %conv5.i45 = zext i16 %52 to i32
  %shl.i46 = shl nuw nsw i32 %conv5.i45, 14
  %conv6.i47 = zext i16 %spec.select.i44 to i32
  %div.i48 = udiv i32 %shl.i46, %conv6.i47
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %9, align 1
  %conv11.i50 = sext i8 %54 to i32
  %conv9.i51 = shl i32 %div.i48, 16
  %sext.i52 = add i32 %conv9.i51, -1073741824
  %conv12.i53 = ashr exact i32 %sext.i52, 16
  %mul.i54 = mul nsw i32 %conv12.i53, %conv12.i53
  %55 = lshr i32 %mul.i54, 7
  %mul14.i55 = mul nsw i32 %55, %conv11.i50
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %10, align 1
  %58 = zext i8 %57 to i32
  %shl18.i57 = shl nuw nsw i32 %58, 7
  %mul19.i58 = mul nsw i32 %shl18.i57, %conv12.i53
  %add.i59 = add i32 %mul14.i55, %mul19.i58
  %shr20.i60 = ashr i32 %add.i59, 9
  %add21.i61 = add nsw i32 %shr20.i60, 1048576
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %4, align 1
  %conv23.i62 = sext i8 %60 to i32
  %add24.i63 = add nsw i32 %conv23.i62, 160
  %mul25.i64 = mul nsw i32 %add21.i61, %add24.i63
  %shr26.i65 = ashr i32 %mul25.i64, 12
  %mul27.i66 = mul nsw i32 %shr26.i65, %conv.i41
  %61 = lshr i32 %mul27.i66, 13
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %1, align 1
  %conv32.i67 = sext i8 %63 to i32
  %shl33.i68 = shl nsw i32 %conv32.i67, 3
  %add34.i69 = add nsw i32 %61, %shl33.i68
  %sext49.i70 = shl i32 %add34.i69, 16
  %conv36.i71 = ashr exact i32 %sext49.i70, 16
  br label %bmc150_magn_compensate_y.exit

bmc150_magn_compensate_y.exit:                    ; preds = %if.end.i72, %bmc150_magn_compensate_x.exit.bmc150_magn_compensate_y.exit_crit_edge
  %retval.0.i73 = phi i32 [ %conv36.i71, %if.end.i72 ], [ -2147483648, %bmc150_magn_compensate_x.exit.bmc150_magn_compensate_y.exit_crit_edge ]
  %arrayidx23 = getelementptr i32, ptr %buffer, i32 1
  %64 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i73, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %30)
  %cmp.i74 = icmp eq i16 %30, -16384
  br i1 %cmp.i74, label %bmc150_magn_compensate_y.exit.bmc150_magn_compensate_z.exit_crit_edge, label %if.end.i83

bmc150_magn_compensate_y.exit.bmc150_magn_compensate_z.exit_crit_edge: ; preds = %bmc150_magn_compensate_y.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmc150_magn_compensate_z.exit

if.end.i83:                                       ; preds = %bmc150_magn_compensate_y.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i75 = sext i16 %30 to i32
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %2, align 1
  %67 = call i16 @llvm.bswap.i16(i16 %66) #8
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %8, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69) #8
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %5, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72) #8
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %6, align 1
  %76 = call i16 @llvm.bswap.i16(i16 %75) #8
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %7, align 1
  %79 = call i16 @llvm.bswap.i16(i16 %78) #8
  %conv8.i = sext i16 %67 to i32
  %sub.i = sub nsw i32 %conv.i75, %conv8.i
  %shl.i77 = shl nsw i32 %sub.i, 15
  %conv9.i78 = sext i16 %70 to i32
  %80 = zext i16 %28 to i32
  %conv11.i79 = sext i16 %79 to i32
  %sub12.i = sub nsw i32 %80, %conv11.i79
  %mul.i80 = mul nsw i32 %sub12.i, %conv9.i78
  %shr.i = ashr i32 %mul.i80, 2
  %sub13.i = sub i32 %shl.i77, %shr.i
  %conv14.i = sext i16 %73 to i32
  %conv15.i = zext i16 %76 to i32
  %shl17.i = shl nuw nsw i32 %80, 1
  %mul18.i = mul nuw nsw i32 %shl17.i, %conv15.i
  %add.i81 = add nuw nsw i32 %mul18.i, 32768
  %81 = lshr i32 %add.i81, 16
  %add22.i = add nsw i32 %81, %conv14.i
  %div.i82 = sdiv i32 %sub13.i, %add22.i
  br label %bmc150_magn_compensate_z.exit

bmc150_magn_compensate_z.exit:                    ; preds = %if.end.i83, %bmc150_magn_compensate_y.exit.bmc150_magn_compensate_z.exit_crit_edge
  %retval.0.i84 = phi i32 [ %div.i82, %if.end.i83 ], [ -2147483648, %bmc150_magn_compensate_y.exit.bmc150_magn_compensate_z.exit_crit_edge ]
  %arrayidx25 = getelementptr i32, ptr %buffer, i32 2
  %82 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i84, ptr %arrayidx25, align 4
  br label %cleanup

cleanup:                                          ; preds = %bmc150_magn_compensate_z.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bmc150_magn_compensate_z.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call15, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %tregs) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #1 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dready_trigger_on = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dready_trigger_on, align 4, !range !154
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp = icmp eq i8 %5, %frombool
  br i1 %cmp, label %entry.err_unlock_crit_edge, label %if.end

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %shl = select i1 %state, i32 128, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 78, i32 noundef 128, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.end.err_unlock_crit_edge, label %if.end11

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end11:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %dready_trigger_on, align 4
  br i1 %state, label %if.then16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmp.i, align 4, !annotation !153
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call.i38 = call i32 @regmap_read(ptr noundef %11, i32 noundef 66, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp18 = icmp slt i32 %call.i38, 0
  br i1 %cmp18, label %if.then16.err_unlock_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16.err_unlock_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

err_unlock:                                       ; preds = %if.then16.err_unlock_crit_edge, %if.end.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %entry.err_unlock_crit_edge ], [ %call.i, %if.end.err_unlock_crit_edge ], [ %call.i38, %if.then16.err_unlock_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.then16.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unlock ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bmc150_magn_trig_reen(ptr nocapture noundef readonly %trig) #1 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dready_trigger_on = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dready_trigger_on, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp.i, align 4, !annotation !153
  %regmap.i = getelementptr inbounds %struct.bmc150_magn_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 66, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.56) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.bmc150_magn_set_power_state.exit_crit_edge

entry.bmc150_magn_set_power_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmc150_magn_set_power_state.exit

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  br label %do.end.i

do.end.i:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end.i_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.54, i32 noundef 1) #11
  br label %bmc150_magn_set_power_state.exit

bmc150_magn_set_power_state.exit:                 ; preds = %do.end.i, %entry.bmc150_magn_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ 0, %entry.bmc150_magn_set_power_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmc150_magn_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i13.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i13.i, ptr %last_busy.i.i, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i14.i = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.bmc150_magn_set_power_state.exit_crit_edge

entry.bmc150_magn_set_power_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmc150_magn_set_power_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.54, i32 noundef 0) #11
  br label %bmc150_magn_set_power_state.exit

bmc150_magn_set_power_state.exit:                 ; preds = %do.end.i, %entry.bmc150_magn_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i14.i, %do.end.i ], [ 0, %entry.bmc150_magn_set_power_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !124, !126, !127, !128, !129, !131, !133, !134, !135, !136, !138, !140, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @bmc150_magn_regmap_config, !1, !"bmc150_magn_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 219, i32 28}
!2 = !{ptr @__ksymtab_bmc150_magn_regmap_config, !3, !"__ksymtab_bmc150_magn_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 229, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 886, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 887, i32 31}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 891, i32 34}
!10 = !{ptr @bmc150_magn_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 900, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 915, i32 11}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 920, i32 4}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bmc150_magn_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @bmc150_magn_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 928, i32 4}
!25 = !{ptr @bmc150_magn_probe._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @bmc150_magn_probe._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 936, i32 9}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 939, i32 4}
!31 = !{ptr @bmc150_magn_probe._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bmc150_magn_probe._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 949, i32 3}
!35 = !{ptr @bmc150_magn_probe._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bmc150_magn_probe._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 964, i32 3}
!39 = !{ptr @bmc150_magn_probe._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bmc150_magn_probe._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 968, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @bmc150_magn_probe.__UNIQUE_ID_ddebug290, !42, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!45 = !{ptr @__ksymtab_bmc150_magn_probe, !46, !"__ksymtab_bmc150_magn_probe", i1 false, i1 false}
!46 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 986, i32 1}
!47 = !{ptr @__ksymtab_bmc150_magn_remove, !48, !"__ksymtab_bmc150_magn_remove", i1 false, i1 false}
!48 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 1013, i32 1}
!49 = !{ptr @bmc150_magn_pm_ops, !50, !"bmc150_magn_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 1076, i32 25}
!51 = !{ptr @__ksymtab_bmc150_magn_pm_ops, !52, !"__ksymtab_bmc150_magn_pm_ops", i1 false, i1 false}
!52 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 1081, i32 1}
!53 = !{ptr @__UNIQUE_ID_author291, !54, !"__UNIQUE_ID_author291", i1 false, i1 false}
!54 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 1083, i32 1}
!55 = !{ptr @__UNIQUE_ID_file292, !56, !"__UNIQUE_ID_file292", i1 false, i1 false}
!56 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 1084, i32 1}
!57 = !{ptr @__UNIQUE_ID_license293, !56, !"__UNIQUE_ID_license293", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_description294, !59, !"__UNIQUE_ID_description294", i1 false, i1 false}
!59 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 1085, i32 1}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 700, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bmc150_magn_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @bmc150_magn_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 712, i32 3}
!67 = !{ptr @bmc150_magn_init._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @bmc150_magn_init._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 719, i32 3}
!71 = !{ptr @bmc150_magn_init._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @bmc150_magn_init._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 723, i32 3}
!75 = !{ptr @bmc150_magn_init._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bmc150_magn_init._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 727, i32 2}
!79 = !{ptr @bmc150_magn_init.__UNIQUE_ID_ddebug289, !78, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 732, i32 3}
!82 = !{ptr @bmc150_magn_init._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bmc150_magn_init._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 740, i32 3}
!86 = !{ptr @bmc150_magn_init._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bmc150_magn_init._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 748, i32 3}
!90 = !{ptr @bmc150_magn_init._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @bmc150_magn_init._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 761, i32 3}
!94 = !{ptr @bmc150_magn_init._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @bmc150_magn_init._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = distinct !{null, !97, !"bmc150_magn_presets_table", i1 false, i1 false}
!97 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 175, i32 3}
!98 = !{ptr @bmc150_magn_samp_freq_table, !99, !"bmc150_magn_samp_freq_table", i1 false, i1 false}
!99 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 155, i32 3}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 352, i32 3}
!102 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @bmc150_magn_set_max_odr._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @bmc150_magn_set_max_odr._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @bmc150_magn_channels, !106, !"bmc150_magn_channels", i1 false, i1 false}
!106 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 653, i32 35}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 620, i32 2}
!109 = !{ptr @bmc150_magn_ext_info, !110, !"bmc150_magn_ext_info", i1 false, i1 false}
!110 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 619, i32 44}
!111 = !{ptr @bmc150_magn_scan_masks, !112, !"bmc150_magn_scan_masks", i1 false, i1 false}
!112 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 666, i32 28}
!113 = !{ptr @bmc150_magn_info, !114, !"bmc150_magn_info", i1 false, i1 false}
!114 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 660, i32 30}
!115 = !{ptr @bmc150_magn_attrs_group, !116, !"bmc150_magn_attrs_group", i1 false, i1 false}
!116 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 631, i32 37}
!117 = !{ptr @bmc150_magn_attributes, !118, !"bmc150_magn_attributes", i1 false, i1 false}
!118 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 626, i32 26}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 624, i32 8}
!121 = !{ptr @iio_dev_attr_sampling_frequency_available, !120, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 601, i32 48}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 275, i32 3}
!126 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @bmc150_magn_set_power_state._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @bmc150_magn_set_power_state._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @bmc150_magn_trigger_ops, !130, !"bmc150_magn_trigger_ops", i1 false, i1 false}
!130 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 834, i32 37}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 798, i32 3}
!133 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @bmc150_magn_trig_reen._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @bmc150_magn_trig_reen._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @bmc150_magn_buffer_setup_ops, !137, !"bmc150_magn_buffer_setup_ops", i1 false, i1 false}
!137 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 853, i32 42}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/magnetometer/bmc150_magn.c", i32 1027, i32 3}
!140 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @bmc150_magn_runtime_suspend._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @bmc150_magn_runtime_suspend._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2148978810, i64 2148978815, i64 2148978828, i64 2148978872, i64 2148978906, i64 2148978927}
!153 = !{!"auto-init"}
!154 = !{i8 0, i8 2}
!155 = !{i64 2148364852}
!156 = !{i64 850472, i64 850497, i64 850519, i64 850535, i64 850547, i64 850567, i64 850591, i64 850607, i64 850619}
!157 = !{i64 2148365040}
