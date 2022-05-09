; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/bmg160_core.c_pt.bc'
source_filename = "../drivers/iio/gyro/bmg160_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bmg160_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bmg160_core_probe\09\09\09\09"
module asm "\09.long\09__crc_bmg160_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmg160_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bmg160_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bmg160_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmg160_core_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_bmg160_core_remove\09\09\09\09"
module asm "\09.long\09__crc_bmg160_core_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmg160_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bmg160_core_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bmg160_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bmg160_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bmg160_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_bmg160_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmg160_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bmg160_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bmg160_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, i32, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.88 = type { i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bmg160_data = type { ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.iio_mount_matrix, %struct.mutex, %struct.anon.85, i32, i32, i32, i8, i8, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.85 = type { [3 x i16], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@bmg160_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@bmg160_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 5124, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmg160_event, i32 1, ptr @bmg160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 1, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 5124, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmg160_event, i32 1, ptr @bmg160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 2, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 5124, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bmg160_event, i32 1, ptr @bmg160_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@bmg160_accel_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@bmg160_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @bmg160_attrs_group, ptr @bmg160_read_raw, ptr null, ptr null, ptr @bmg160_write_raw, ptr null, ptr null, ptr @bmg160_read_event_config, ptr @bmg160_write_event_config, ptr @bmg160_read_event, ptr @bmg160_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bmg160_event\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s-any-motion-dev%d\00", [44 x i8] zeroinitializer }, align 32
@bmg160_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @bmg160_data_rdy_trigger_set_state, ptr @bmg160_trig_reen, ptr null }, [20 x i8] zeroinitializer }, align 32
@bmg160_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @bmg160_buffer_preenable, ptr null, ptr null, ptr @bmg160_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@bmg160_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1175, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmg160_core_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/gyro/bmg160_core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bmg160_core_probe._entry_ptr = internal global ptr @bmg160_core_probe._entry, section ".printk_index", align 4
@bmg160_core_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1190, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@bmg160_core_probe._entry_ptr.14 = internal global ptr @bmg160_core_probe._entry.12, section ".printk_index", align 4
@__kstrtab_bmg160_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmg160_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bmg160_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmg160_core_probe to i32), ptr @__kstrtab_bmg160_core_probe, ptr @__kstrtabns_bmg160_core_probe }, section "___ksymtab_gpl+bmg160_core_probe", align 4
@__kstrtab_bmg160_core_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmg160_core_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bmg160_core_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmg160_core_remove to i32), ptr @__kstrtab_bmg160_core_remove, ptr @__kstrtabns_bmg160_core_remove }, section "___ksymtab_gpl+bmg160_core_remove", align 4
@bmg160_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bmg160_suspend, ptr @bmg160_resume, ptr @bmg160_suspend, ptr @bmg160_resume, ptr @bmg160_suspend, ptr @bmg160_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bmg160_runtime_suspend, ptr @bmg160_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bmg160_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmg160_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bmg160_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmg160_pm_ops to i32), ptr @__kstrtab_bmg160_pm_ops, ptr @__kstrtabns_bmg160_pm_ops }, section "___ksymtab_gpl+bmg160_pm_ops", align 4
@__UNIQUE_ID_author290 = internal constant [77 x i8] c"bmg160_core.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"bmg160_core.file=drivers/iio/gyro/bmg160_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"bmg160_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [43 x i8] c"bmg160_core.description=BMG160 Gyro driver\00", section ".modinfo", align 1
@bmg160_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 251, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error reading reg_chip_id\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmg160_chip_init\00", [47 x i8] zeroinitializer }, align 32
@bmg160_chip_init._entry_ptr = internal global ptr @bmg160_chip_init._entry, section ".printk_index", align 4
@bmg160_chip_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.9, ptr @.str.18, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bmg160_core\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Chip Id %x\0A\00", [20 x i8] zeroinitializer }, align 32
@bmg160_chip_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.9, i32 257, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid chip %x\0A\00", [47 x i8] zeroinitializer }, align 32
@bmg160_chip_init._entry_ptr.21 = internal global ptr @bmg160_chip_init._entry.19, section ".printk_index", align 4
@bmg160_chip_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.9, i32 276, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing reg_range\0A\00", [39 x i8] zeroinitializer }, align 32
@bmg160_chip_init._entry_ptr.24 = internal global ptr @bmg160_chip_init._entry.22, section ".printk_index", align 4
@bmg160_chip_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.9, i32 283, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error reading reg_slope_thres\0A\00", [33 x i8] zeroinitializer }, align 32
@bmg160_chip_init._entry_ptr.27 = internal global ptr @bmg160_chip_init._entry.25, section ".printk_index", align 4
@bmg160_chip_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.9, i32 292, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error updating bits in reg_int_en_1\0A\00", [59 x i8] zeroinitializer }, align 32
@bmg160_chip_init._entry_ptr.30 = internal global ptr @bmg160_chip_init._entry.28, section ".printk_index", align 4
@bmg160_chip_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.9, i32 301, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error writing reg_motion_intr\0A\00", [33 x i8] zeroinitializer }, align 32
@bmg160_chip_init._entry_ptr.33 = internal global ptr @bmg160_chip_init._entry.31, section ".printk_index", align 4
@bmg160_set_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 180, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error writing reg_pmu_bw\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bmg160_set_bw\00", [18 x i8] zeroinitializer }, align 32
@bmg160_set_bw._entry_ptr = internal global ptr @bmg160_set_bw._entry, section ".printk_index", align 4
@bmg160_samp_freq_table = internal constant { [7 x %struct.anon.87], [44 x i8] } { [7 x %struct.anon.87] [%struct.anon.87 { i32 100, i32 32, i32 7 }, %struct.anon.87 { i32 200, i32 64, i32 6 }, %struct.anon.87 { i32 100, i32 12, i32 5 }, %struct.anon.87 { i32 200, i32 23, i32 4 }, %struct.anon.87 { i32 400, i32 47, i32 3 }, %struct.anon.87 { i32 1000, i32 116, i32 2 }, %struct.anon.87 { i32 2000, i32 230, i32 1 }], [44 x i8] zeroinitializer }, align 32
@bmg160_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 2, i32 0, i32 0, i32 3, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@bmg160_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.36, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @bmg160_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@bmg160_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bmg160_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@bmg160_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_anglvel_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.37, %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_anglvel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.39, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"100 200 400 1000 2000\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"0.001065 0.000532 0.000266 0.000133 0.000066\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_anglvel_scale_available\00", [37 x i8] zeroinitializer }, align 32
@bmg160_scale_table = internal constant { [5 x %struct.anon.88], [56 x i8] } { [5 x %struct.anon.88] [%struct.anon.88 { i32 1065, i32 0 }, %struct.anon.88 { i32 532, i32 1 }, %struct.anon.88 { i32 266, i32 2 }, %struct.anon.88 { i32 133, i32 3 }, %struct.anon.88 { i32 66, i32 4 }], [56 x i8] zeroinitializer }, align 32
@bmg160_get_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.9, i32 508, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_temp\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bmg160_get_temp\00", [16 x i8] zeroinitializer }, align 32
@bmg160_get_temp._entry_ptr = internal global ptr @bmg160_get_temp._entry, section ".printk_index", align 4
@bmg160_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.9, i32 322, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed: bmg160_set_power_state for %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bmg160_set_power_state\00", [41 x i8] zeroinitializer }, align 32
@bmg160_set_power_state._entry_ptr = internal global ptr @bmg160_set_power_state._entry, section ".printk_index", align 4
@bmg160_get_axis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.9, i32 539, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading axis %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bmg160_get_axis\00", [16 x i8] zeroinitializer }, align 32
@bmg160_get_axis._entry_ptr = internal global ptr @bmg160_get_axis._entry, section ".printk_index", align 4
@bmg160_get_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.9, i32 196, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading reg_pmu_bw\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmg160_get_filter\00", [46 x i8] zeroinitializer }, align 32
@bmg160_get_filter._entry_ptr = internal global ptr @bmg160_get_filter._entry, section ".printk_index", align 4
@bmg160_get_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.49, ptr @.str.9, i32 455, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bmg160_get_bw\00", [18 x i8] zeroinitializer }, align 32
@bmg160_get_bw._entry_ptr = internal global ptr @bmg160_get_bw._entry, section ".printk_index", align 4
@bmg160_set_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.50, ptr @.str.9, i32 228, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmg160_set_filter\00", [46 x i8] zeroinitializer }, align 32
@bmg160_set_filter._entry_ptr = internal global ptr @bmg160_set_filter._entry, section ".printk_index", align 4
@bmg160_set_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.51, ptr @.str.9, i32 482, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmg160_set_scale\00", [47 x i8] zeroinitializer }, align 32
@bmg160_set_scale._entry_ptr = internal global ptr @bmg160_set_scale._entry, section ".printk_index", align 4
@bmg160_setup_any_motion_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.9, i32 345, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error updating bits reg_int_map0\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bmg160_setup_any_motion_interrupt\00", [62 x i8] zeroinitializer }, align 32
@bmg160_setup_any_motion_interrupt._entry_ptr = internal global ptr @bmg160_setup_any_motion_interrupt._entry, section ".printk_index", align 4
@bmg160_setup_any_motion_interrupt._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.9, i32 355, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error writing reg_slope_thres\0A\00", [33 x i8] zeroinitializer }, align 32
@bmg160_setup_any_motion_interrupt._entry_ptr.56 = internal global ptr @bmg160_setup_any_motion_interrupt._entry.54, section ".printk_index", align 4
@bmg160_setup_any_motion_interrupt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.53, ptr @.str.9, i32 363, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@bmg160_setup_any_motion_interrupt._entry_ptr.58 = internal global ptr @bmg160_setup_any_motion_interrupt._entry.57, section ".printk_index", align 4
@bmg160_setup_any_motion_interrupt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.53, ptr @.str.9, i32 378, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error writing reg_rst_latch\0A\00", [35 x i8] zeroinitializer }, align 32
@bmg160_setup_any_motion_interrupt._entry_ptr.61 = internal global ptr @bmg160_setup_any_motion_interrupt._entry.59, section ".printk_index", align 4
@bmg160_setup_any_motion_interrupt._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.53, ptr @.str.9, i32 391, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error writing reg_int_en0\0A\00", [37 x i8] zeroinitializer }, align 32
@bmg160_setup_any_motion_interrupt._entry_ptr.64 = internal global ptr @bmg160_setup_any_motion_interrupt._entry.62, section ".printk_index", align 4
@bmg160_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.9, i32 980, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error reading reg_int_status2\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bmg160_event_handler\00", [43 x i8] zeroinitializer }, align 32
@bmg160_event_handler._entry_ptr = internal global ptr @bmg160_event_handler._entry, section ".printk_index", align 4
@bmg160_event_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.66, ptr @.str.9, i32 1017, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@bmg160_event_handler._entry_ptr.68 = internal global ptr @bmg160_event_handler._entry.67, section ".printk_index", align 4
@bmg160_setup_new_data_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.9, i32 409, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error updating bits in reg_int_map1\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bmg160_setup_new_data_interrupt\00", [32 x i8] zeroinitializer }, align 32
@bmg160_setup_new_data_interrupt._entry_ptr = internal global ptr @bmg160_setup_new_data_interrupt._entry, section ".printk_index", align 4
@bmg160_setup_new_data_interrupt._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.70, ptr @.str.9, i32 418, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@bmg160_setup_new_data_interrupt._entry_ptr.72 = internal global ptr @bmg160_setup_new_data_interrupt._entry.71, section ".printk_index", align 4
@bmg160_setup_new_data_interrupt._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.70, ptr @.str.9, i32 431, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@bmg160_setup_new_data_interrupt._entry_ptr.74 = internal global ptr @bmg160_setup_new_data_interrupt._entry.73, section ".printk_index", align 4
@bmg160_setup_new_data_interrupt._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.70, ptr @.str.9, i32 439, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@bmg160_setup_new_data_interrupt._entry_ptr.76 = internal global ptr @bmg160_setup_new_data_interrupt._entry.75, section ".printk_index", align 4
@bmg160_trig_reen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.77, ptr @.str.9, i32 918, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmg160_trig_reen\00", [47 x i8] zeroinitializer }, align 32
@bmg160_trig_reen._entry_ptr = internal global ptr @bmg160_trig_reen._entry, section ".printk_index", align 4
@bmg160_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.9, i32 149, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error writing reg_pmu_lpw\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bmg160_set_mode\00", [16 x i8] zeroinitializer }, align 32
@bmg160_set_mode._entry_ptr = internal global ptr @bmg160_set_mode._entry, section ".printk_index", align 4
@bmg160_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.9, i32 1272, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set mode failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bmg160_runtime_suspend\00", [41 x i8] zeroinitializer }, align 32
@bmg160_runtime_suspend._entry_ptr = internal global ptr @bmg160_runtime_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 12]
@__sancov_gen_cov_switch_values.85 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 200, i64 400, i64 1000, i64 2000]
@__sancov_gen_cov_switch_values.86 = internal global [9 x i64] [i64 7, i64 32, i64 12, i64 23, i64 32, i64 47, i64 64, i64 116, i64 230]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 66, i64 133, i64 266, i64 532, i64 1065]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1093, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1094, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1098, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1117, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"bmg160_channels\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 852, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"bmg160_accel_scan_masks\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 876, i32 28 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"bmg160_info\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 866, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1135, i32 7 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1141, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1148, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"bmg160_trigger_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 964, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"bmg160_buffer_setup_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1054, i32 42 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1174, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1190, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"bmg160_pm_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1295, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 251, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 255, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 257, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 276, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 283, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 292, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 300, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 180, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [23 x i8] c"bmg160_samp_freq_table\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 125, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"bmg160_event\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 825, i32 36 }
@___asan_gen_.214 = private unnamed_addr constant [16 x i8] c"bmg160_ext_info\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 805, i32 44 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 806, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c"bmg160_attrs_group\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 821, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"bmg160_attributes\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 815, i32 26 }
@___asan_gen_.226 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [42 x i8] c"iio_const_attr_in_anglvel_scale_available\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 810, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 812, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant [19 x i8] c"bmg160_scale_table\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 136, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 508, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 322, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 539, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 196, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 455, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 228, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 482, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 345, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 355, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 363, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 378, i32 5 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 391, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 980, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1017, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 409, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 418, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 431, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 439, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 918, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 149, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.383 = private constant [34 x i8] c"../drivers/iio/gyro/bmg160_core.c\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1272, i32 3 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__ksymtab_bmg160_core_probe, ptr @__ksymtab_bmg160_core_remove, ptr @__ksymtab_bmg160_pm_ops, ptr @bmg160_chip_init._entry, ptr @bmg160_chip_init._entry.19, ptr @bmg160_chip_init._entry.22, ptr @bmg160_chip_init._entry.25, ptr @bmg160_chip_init._entry.28, ptr @bmg160_chip_init._entry.31, ptr @bmg160_chip_init._entry_ptr, ptr @bmg160_chip_init._entry_ptr.21, ptr @bmg160_chip_init._entry_ptr.24, ptr @bmg160_chip_init._entry_ptr.27, ptr @bmg160_chip_init._entry_ptr.30, ptr @bmg160_chip_init._entry_ptr.33, ptr @bmg160_core_probe._entry, ptr @bmg160_core_probe._entry.12, ptr @bmg160_core_probe._entry_ptr, ptr @bmg160_core_probe._entry_ptr.14, ptr @bmg160_event_handler._entry, ptr @bmg160_event_handler._entry.67, ptr @bmg160_event_handler._entry_ptr, ptr @bmg160_event_handler._entry_ptr.68, ptr @bmg160_get_axis._entry, ptr @bmg160_get_axis._entry_ptr, ptr @bmg160_get_bw._entry, ptr @bmg160_get_bw._entry_ptr, ptr @bmg160_get_filter._entry, ptr @bmg160_get_filter._entry_ptr, ptr @bmg160_get_temp._entry, ptr @bmg160_get_temp._entry_ptr, ptr @bmg160_runtime_suspend._entry, ptr @bmg160_runtime_suspend._entry_ptr, ptr @bmg160_set_bw._entry, ptr @bmg160_set_bw._entry_ptr, ptr @bmg160_set_filter._entry, ptr @bmg160_set_filter._entry_ptr, ptr @bmg160_set_mode._entry, ptr @bmg160_set_mode._entry_ptr, ptr @bmg160_set_power_state._entry, ptr @bmg160_set_power_state._entry_ptr, ptr @bmg160_set_scale._entry, ptr @bmg160_set_scale._entry_ptr, ptr @bmg160_setup_any_motion_interrupt._entry, ptr @bmg160_setup_any_motion_interrupt._entry.54, ptr @bmg160_setup_any_motion_interrupt._entry.57, ptr @bmg160_setup_any_motion_interrupt._entry.59, ptr @bmg160_setup_any_motion_interrupt._entry.62, ptr @bmg160_setup_any_motion_interrupt._entry_ptr, ptr @bmg160_setup_any_motion_interrupt._entry_ptr.56, ptr @bmg160_setup_any_motion_interrupt._entry_ptr.58, ptr @bmg160_setup_any_motion_interrupt._entry_ptr.61, ptr @bmg160_setup_any_motion_interrupt._entry_ptr.64, ptr @bmg160_setup_new_data_interrupt._entry, ptr @bmg160_setup_new_data_interrupt._entry.71, ptr @bmg160_setup_new_data_interrupt._entry.73, ptr @bmg160_setup_new_data_interrupt._entry.75, ptr @bmg160_setup_new_data_interrupt._entry_ptr, ptr @bmg160_setup_new_data_interrupt._entry_ptr.72, ptr @bmg160_setup_new_data_interrupt._entry_ptr.74, ptr @bmg160_setup_new_data_interrupt._entry_ptr.76, ptr @bmg160_trig_reen._entry, ptr @bmg160_trig_reen._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bmg160_core_probe.__key, ptr @.str.3, ptr @bmg160_channels, ptr @bmg160_accel_scan_masks, ptr @bmg160_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bmg160_trigger_ops, ptr @bmg160_buffer_setup_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @bmg160_pm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @bmg160_samp_freq_table, ptr @bmg160_event, ptr @bmg160_ext_info, ptr @.str.36, ptr @bmg160_attrs_group, ptr @bmg160_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_const_attr_in_anglvel_scale_available, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @bmg160_scale_table, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_accel_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_core_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_chip_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_chip_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_chip_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_chip_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_chip_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_set_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_samp_freq_table to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_anglvel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_scale_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_get_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_get_axis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_get_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_get_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_set_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_set_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_any_motion_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_any_motion_interrupt._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_any_motion_interrupt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_any_motion_interrupt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_any_motion_interrupt._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_event_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_new_data_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_new_data_interrupt._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_new_data_interrupt._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_setup_new_data_interrupt._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_trig_reen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmg160_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmg160_core_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 208) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %irq2 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq, ptr %irq2, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %1, align 8
  %regulators = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %regulators, align 4
  %arrayidx5 = getelementptr %struct.bmg160_data, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %arrayidx5, align 4
  %call8 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call8, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call15 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @bmg160_disable_regulators, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %orientation = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 4
  %call23 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call fastcc i32 @bmg160_chip_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end26.cleanup_crit_edge, label %do.body

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end26
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @bmg160_core_probe.__key) #9
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bmg160_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %num_channels, align 4
  %name33 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %name33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %name33, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bmg160_accel_scan_masks, ptr %available_scan_masks, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bmg160_info, ptr %info, align 8
  %13 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp35 = icmp sgt i32 %14, 0
  br i1 %cmp35, label %if.then36, label %do.body.if.end72_crit_edge

do.body.if.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then36:                                        ; preds = %do.body
  %call38 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @bmg160_data_rdy_trig_poll, ptr noundef nonnull @bmg160_event_handler, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.then36
  %15 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name33, align 8
  %call43 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #9
  %call44 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %16, i32 noundef %call43) #9
  %dready_trig = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dready_trig to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call44, ptr %dready_trig, align 4
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %if.end41.cleanup_crit_edge, label %if.end48

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %18 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name33, align 8
  %call50 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #9
  %call51 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %19, i32 noundef %call50) #9
  %motion_trig = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %motion_trig to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call51, ptr %motion_trig, align 8
  %tobool53.not = icmp eq ptr %call51, null
  br i1 %tobool53.not, label %if.end48.cleanup_crit_edge, label %if.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %21 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dready_trig, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bmg160_trigger_ops, ptr %22, align 8
  %24 = load ptr, ptr %dready_trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %24, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %driver_data.i.i, align 4
  %26 = load ptr, ptr %dready_trig, align 4
  %call59 = tail call i32 @__iio_trigger_register(ptr noundef %26, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %27 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %motion_trig, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bmg160_trigger_ops, ptr %28, align 8
  %30 = load ptr, ptr %motion_trig, align 8
  %driver_data.i.i183 = getelementptr inbounds %struct.iio_trigger, ptr %30, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i183 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %driver_data.i.i183, align 4
  %32 = load ptr, ptr %motion_trig, align 8
  %call67 = tail call i32 @__iio_trigger_register(ptr noundef %32, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end62.if.end72_crit_edge, label %if.then69

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %motion_trig to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %motion_trig, align 8
  br label %err_trigger_unregister

if.end72:                                         ; preds = %if.end62.if.end72_crit_edge, %do.body.if.end72_crit_edge
  %call73 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @bmg160_trigger_handler, i32 noundef 0, ptr noundef nonnull @bmg160_buffer_setup_ops, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end78, label %if.end79

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %err_trigger_unregister

if.end79:                                         ; preds = %if.end72
  %call.i184 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool81.not = icmp eq i32 %call.i184, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.err_buffer_cleanup_crit_edge

if.end79.err_buffer_cleanup_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_buffer_cleanup

if.end83:                                         ; preds = %if.end79
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %call84 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end89, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %err_buffer_cleanup

err_buffer_cleanup:                               ; preds = %do.end89, %if.end79.err_buffer_cleanup_crit_edge
  %ret.0 = phi i32 [ %call.i184, %if.end79.err_buffer_cleanup_crit_edge ], [ %call84, %do.end89 ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #9
  br label %err_trigger_unregister

err_trigger_unregister:                           ; preds = %err_buffer_cleanup, %do.end78, %if.then69
  %ret.1 = phi i32 [ %call67, %if.then69 ], [ %call73, %do.end78 ], [ %ret.0, %err_buffer_cleanup ]
  %dready_trig91 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %dready_trig91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dready_trig91, align 4
  %tobool92.not = icmp eq ptr %35, null
  br i1 %tobool92.not, label %err_trigger_unregister.if.end95_crit_edge, label %if.then93

err_trigger_unregister.if.end95_crit_edge:        ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then93:                                        ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iio_trigger_unregister(ptr noundef nonnull %35) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %err_trigger_unregister.if.end95_crit_edge
  %motion_trig96 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %motion_trig96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %motion_trig96, align 8
  %tobool97.not = icmp eq ptr %37, null
  br i1 %tobool97.not, label %if.end95.cleanup_crit_edge, label %if.then98

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iio_trigger_unregister(ptr noundef nonnull %37) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end95.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end12.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then10 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call38, %if.then36.cleanup_crit_edge ], [ -12, %if.end41.cleanup_crit_edge ], [ -12, %if.end48.cleanup_crit_edge ], [ %call59, %if.end55.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %ret.1, %if.then98 ], [ %ret.1, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bmg160_disable_regulators(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regulators = getelementptr inbounds %struct.bmg160_data, ptr %d, i32 0, i32 1
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmg160_chip_init(ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !205
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 20, i32 noundef 182) #9
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 30700, i32 noundef 2) #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %call4 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.15) #12
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bmg160_chip_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bmg160_chip_init, %if.then9)) #9
          to label %do.end12 [label %if.then9], !srcloc !206

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bmg160_chip_init.__UNIQUE_ID_ddebug289, ptr noundef %call, ptr noundef nonnull @.str.18, i32 noundef %8) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body5
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp13.not = icmp eq i32 %10, 15
  br i1 %cmp13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.20, i32 noundef %10) #12
  br label %cleanup

if.end18:                                         ; preds = %do.end12
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %call.i = call ptr @regmap_get_device(ptr noundef %12) #9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %call2.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 17, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %bmg160_set_mode.exit.thread, label %if.end22

bmg160_set_mode.exit.thread:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.78) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %call.i91 = call ptr @regmap_get_device(ptr noundef %16) #9
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %call3.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 16, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %bmg160_set_bw.exit.thread, label %if.end26

bmg160_set_bw.exit.thread:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i91, ptr noundef nonnull @.str.34) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %call28 = call i32 @regmap_write(ptr noundef %20, i32 noundef 15, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end34

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %dps_range = getelementptr inbounds %struct.bmg160_data, ptr %data, i32 0, i32 7
  %21 = ptrtoint ptr %dps_range to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %dps_range, align 8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 8
  %call36 = call i32 @regmap_read(ptr noundef %23, i32 noundef 27, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %slope_thres = getelementptr inbounds %struct.bmg160_data, ptr %data, i32 0, i32 9
  %26 = ptrtoint ptr %slope_thres to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %slope_thres, align 8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 8
  %call.i94 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 22, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp45 = icmp slt i32 %call.i94, 0
  br i1 %cmp45, label %do.end49, label %if.end50

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %call52 = call i32 @regmap_write(ptr noundef %30, i32 noundef 33, i32 noundef 143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.32) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end50.cleanup_crit_edge, %do.end49, %do.end41, %do.end33, %bmg160_set_bw.exit.thread, %bmg160_set_mode.exit.thread, %do.end17, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ -19, %do.end17 ], [ %call28, %do.end33 ], [ %call36, %do.end41 ], [ %call.i94, %do.end49 ], [ %call52, %do.end57 ], [ 0, %if.end50.cleanup_crit_edge ], [ %call2.i, %bmg160_set_mode.exit.thread ], [ %call3.i, %bmg160_set_bw.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_data_rdy_trig_poll(i32 noundef %irq, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dready_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dready_trigger_on, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dready_trig = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 2
  br label %if.end3.sink.split

if.else:                                          ; preds = %entry
  %motion_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %motion_trigger_on, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.else.if.end3_crit_edge, label %if.then2

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %motion_trig = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 3
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.then2, %if.then
  %.sink.in = phi ptr [ %motion_trig, %if.then2 ], [ %dready_trig, %if.then ]
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink = load ptr, ptr %.sink.in, align 4
  tail call void @iio_trigger_poll(ptr noundef %.sink) #9
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.else.if.end3_crit_edge
  %ev_enable_state = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ev_enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  %. = select i1 %tobool4.not, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_event_handler(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !205
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 11, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.65) #12
  br label %ack_intr_status

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  %and6 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %if.then8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = zext i32 %. to i64
  %shl = shl nuw nsw i64 %9, 48
  %or10 = or i64 %shl, 144116304767352832
  %call14 = call i64 @iio_get_time_ns(ptr noundef %private) #9
  %call15 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or10, i64 noundef %call14) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end.if.end16_crit_edge
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and17 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end30_crit_edge, label %if.then19

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %12 = zext i32 %. to i64
  %shl21 = shl nuw nsw i64 %12, 48
  %or24 = or i64 %shl21, 144117404278980608
  %call28 = call i64 @iio_get_time_ns(ptr noundef %private) #9
  %call29 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or24, i64 noundef %call28) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end16.if.end30_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and31 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.ack_intr_status_crit_edge, label %if.then33

if.end30.ack_intr_status_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %ack_intr_status

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %15 = zext i32 %. to i64
  %shl35 = shl nuw nsw i64 %15, 48
  %or38 = or i64 %shl35, 144118503790608384
  %call42 = call i64 @iio_get_time_ns(ptr noundef %private) #9
  %call43 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or38, i64 noundef %call42) #9
  br label %ack_intr_status

ack_intr_status:                                  ; preds = %if.then33, %if.end30.ack_intr_status_crit_edge, %do.end
  %dready_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dready_trigger_on, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool45.not = icmp eq i8 %17, 0
  br i1 %tobool45.not, label %if.then46, label %ack_intr_status.if.end56_crit_edge

ack_intr_status.if.end56_crit_edge:               ; preds = %ack_intr_status
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then46:                                        ; preds = %ack_intr_status
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call48 = call i32 @regmap_write(ptr noundef %19, i32 noundef 33, i32 noundef 143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end54, label %if.then46.if.end56_crit_edge

if.then46.if.end56_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.60) #12
  br label %if.end56

if.end56:                                         ; preds = %do.end54, %if.then46.if.end56_crit_edge, %ack_intr_status.if.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %scan = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 6
  %call2 = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 2, ptr noundef %scan, i32 noundef 6) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #9
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.err_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %14) #9
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bmg160_core_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !209
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #9
  %dready_trig = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dready_trig, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iio_trigger_unregister(ptr noundef nonnull %6) #9
  %motion_trig = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %motion_trig, align 8
  tail call void @iio_trigger_unregister(ptr noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %call.i16 = tail call ptr @regmap_get_device(ptr noundef %10) #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 17, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.bmg160_set_mode.exit_crit_edge

if.end.bmg160_set_mode.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_set_mode.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i16, ptr noundef nonnull @.str.78) #12
  br label %bmg160_set_mode.exit

bmg160_set_mode.exit:                             ; preds = %do.end.i, %if.end.bmg160_set_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.bmg160_set_mode.exit_crit_edge

entry.bmg160_set_mode.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_set_mode.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.78) #12
  br label %bmg160_set_mode.exit

bmg160_set_mode.exit:                             ; preds = %do.end.i, %entry.bmg160_set_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %dready_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dready_trigger_on, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %motion_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %motion_trigger_on, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ev_enable_state = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ev_enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false3.if.end_crit_edge, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %11) #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 17, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.78) #12
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %lor.lhs.false3.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.78) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %bmg160_set_mode.exit.thread, label %if.end

bmg160_set_mode.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.78) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @msleep_interruptible(i32 noundef 80) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bmg160_set_mode.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i, %bmg160_set_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bmg160_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 4
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %bw_bits.i78 = alloca i32, align 4
  %bw_bits.i = alloca i32, align 4
  %raw_val.i48 = alloca i16, align 2
  %raw_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup26_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb6
    i32 10, label %sw.bb10
    i32 2, label %sw.bb12
    i32 12, label %sw.bb22
  ]

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %4, label %sw.bb.cleanup26_crit_edge [
    i32 9, label %sw.bb1
    i32 4, label %sw.bb3
  ]

sw.bb.cleanup26_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

sw.bb1:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_val.i) #9
  %8 = ptrtoint ptr %raw_val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %raw_val.i, align 4, !annotation !205
  %mutex.i = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i.i = tail call ptr @regmap_get_device(ptr noundef %10) #9
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.end.i

if.then6.i.i:                                     ; preds = %sw.bb1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #9, !srcloc !209
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then6.i.i.if.then.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then6.i.i.if.then.i_crit_edge:                 ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %if.then.i

if.then.i:                                        ; preds = %do.end11.i.i.i.i.i.i, %if.then6.i.i.if.then.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %bmg160_get_temp.exit

if.end.i:                                         ; preds = %sw.bb1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call4.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 8, ptr noundef nonnull %raw_val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.41) #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i31.i = call ptr @regmap_get_device(ptr noundef %15) #9
  %call.i17.i.i = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %call.i31.i, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i17.i.i, ptr %last_busy.i.i.i, align 8
  %call.i18.i.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i31.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i)
  %cmp20.i.i = icmp slt i32 %call.i18.i.i, 0
  br i1 %cmp20.i.i, label %do.end.thread.i.i, label %do.end.i.bmg160_set_power_state.exit33.i_crit_edge

do.end.i.bmg160_set_power_state.exit33.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_set_power_state.exit33.i

do.end.thread.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i31.i, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %bmg160_set_power_state.exit33.i

bmg160_set_power_state.exit33.i:                  ; preds = %do.end.thread.i.i, %do.end.i.bmg160_set_power_state.exit33.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %bmg160_get_temp.exit

if.end9.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %raw_val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raw_val.i, align 4
  %shl.i.i = shl i32 %18, 24
  %shr.i.i = ashr exact i32 %shl.i.i, 24
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i.i, ptr %val, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call.i34.i = call ptr @regmap_get_device(ptr noundef %21) #9
  %call.i17.i35.i = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i36.i = getelementptr inbounds %struct.device, ptr %call.i34.i, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i36.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i17.i35.i, ptr %last_busy.i.i36.i, align 8
  %call.i18.i37.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i34.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i37.i)
  %cmp20.i38.i = icmp slt i32 %call.i18.i37.i, 0
  br i1 %cmp20.i38.i, label %23, label %bmg160_set_power_state.exit41.i

bmg160_set_power_state.exit41.i:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %bmg160_get_temp.exit

23:                                               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i34.i, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %bmg160_get_temp.exit

bmg160_get_temp.exit:                             ; preds = %23, %bmg160_set_power_state.exit41.i, %bmg160_set_power_state.exit33.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i.i, %if.then.i ], [ %call4.i, %bmg160_set_power_state.exit33.i ], [ %call.i18.i37.i, %23 ], [ 1, %bmg160_set_power_state.exit41.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_val.i) #9
  br label %cleanup26

sw.bb3:                                           ; preds = %sw.bb
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %24 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %25, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %sw.bb3.cleanup26_crit_edge

sw.bb3.cleanup26_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.else:                                          ; preds = %sw.bb3
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %26 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_index, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %call.i49 = tail call ptr @regmap_get_device(ptr noundef %29) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_val.i48) #9
  %30 = ptrtoint ptr %raw_val.i48 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %raw_val.i48, align 2, !annotation !205
  %mutex.i50 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i50, i32 noundef 0) #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %call.i.i51 = tail call ptr @regmap_get_device(ptr noundef %32) #9
  %call.i.i.i52 = tail call i32 @__pm_runtime_resume(ptr noundef %call.i.i51, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i52)
  %cmp.i.i53 = icmp slt i32 %call.i.i.i52, 0
  br i1 %cmp.i.i53, label %if.then6.i.i58, label %if.end.i63

if.then6.i.i58:                                   ; preds = %if.else
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i51, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %usage_count.i.i.i54 = getelementptr inbounds %struct.device, ptr %call.i.i51, i32 0, i32 12, i32 13
  %call.i.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i54, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i54, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i54, ptr %usage_count.i.i.i54, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i54) #9, !srcloc !209
  %asmresult.i.i.i.i.i.i56 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i56)
  %cmp.not.i.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i56, 0
  br i1 %cmp.not.i.i.i.i.i.i57, label %if.then6.i.i58.if.then.i60_crit_edge, label %do.end11.i.i.i.i.i.i59

if.then6.i.i58.if.then.i60_crit_edge:             ; preds = %if.then6.i.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i60

do.end11.i.i.i.i.i.i59:                           ; preds = %if.then6.i.i58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %if.then.i60

if.then.i60:                                      ; preds = %do.end11.i.i.i.i.i.i59, %if.then6.i.i58.if.then.i60_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i50) #9
  br label %bmg160_get_axis.exit

if.end.i63:                                       ; preds = %if.else
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %mul.i = shl i32 %27, 1
  %add.i = add i32 %mul.i, 2
  %call4.i61 = call i32 @regmap_bulk_read(ptr noundef %35, i32 noundef %add.i, ptr noundef nonnull %raw_val.i48, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i61)
  %cmp5.i62 = icmp slt i32 %call4.i61, 0
  br i1 %cmp5.i62, label %do.end.i68, label %if.end9.i71

do.end.i68:                                       ; preds = %if.end.i63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i49, ptr noundef nonnull @.str.45, i32 noundef %27) #12
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %call.i33.i = call ptr @regmap_get_device(ptr noundef %37) #9
  %call.i17.i.i64 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i.i65 = getelementptr inbounds %struct.device, ptr %call.i33.i, i32 0, i32 12, i32 22
  %38 = ptrtoint ptr %last_busy.i.i.i65 to i32
  call void @__asan_store8_noabort(i32 %38)
  store volatile i64 %call.i17.i.i64, ptr %last_busy.i.i.i65, align 8
  %call.i18.i.i66 = call i32 @__pm_runtime_suspend(ptr noundef %call.i33.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i66)
  %cmp20.i.i67 = icmp slt i32 %call.i18.i.i66, 0
  br i1 %cmp20.i.i67, label %do.end.thread.i.i69, label %do.end.i68.bmg160_set_power_state.exit35.i_crit_edge

do.end.i68.bmg160_set_power_state.exit35.i_crit_edge: ; preds = %do.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_set_power_state.exit35.i

do.end.thread.i.i69:                              ; preds = %do.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i33.i, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %bmg160_set_power_state.exit35.i

bmg160_set_power_state.exit35.i:                  ; preds = %do.end.thread.i.i69, %do.end.i68.bmg160_set_power_state.exit35.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i50) #9
  br label %bmg160_get_axis.exit

if.end9.i71:                                      ; preds = %if.end.i63
  %39 = ptrtoint ptr %raw_val.i48 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %raw_val.i48, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #9
  %shr.i.i70 = sext i16 %41 to i32
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr.i.i70, ptr %val, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %call.i36.i = call ptr @regmap_get_device(ptr noundef %44) #9
  %call.i17.i37.i = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i38.i = getelementptr inbounds %struct.device, ptr %call.i36.i, i32 0, i32 12, i32 22
  %45 = ptrtoint ptr %last_busy.i.i38.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %call.i17.i37.i, ptr %last_busy.i.i38.i, align 8
  %call.i18.i39.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i36.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i39.i)
  %cmp20.i40.i = icmp slt i32 %call.i18.i39.i, 0
  br i1 %cmp20.i40.i, label %46, label %bmg160_set_power_state.exit43.i

bmg160_set_power_state.exit43.i:                  ; preds = %if.end9.i71
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex.i50) #9
  br label %bmg160_get_axis.exit

46:                                               ; preds = %if.end9.i71
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i36.i, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %mutex.i50) #9
  br label %bmg160_get_axis.exit

bmg160_get_axis.exit:                             ; preds = %46, %bmg160_set_power_state.exit43.i, %bmg160_set_power_state.exit35.i, %if.then.i60
  %retval.0.i72 = phi i32 [ %call.i.i.i52, %if.then.i60 ], [ %call4.i61, %bmg160_set_power_state.exit35.i ], [ %call.i18.i39.i, %46 ], [ 1, %bmg160_set_power_state.exit43.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_val.i48) #9
  br label %cleanup26

sw.bb6:                                           ; preds = %entry
  %47 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %48)
  %cmp = icmp eq i32 %48, 9
  br i1 %cmp, label %if.then8, label %sw.bb6.cleanup26_crit_edge

sw.bb6.cleanup26_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 23, ptr %val, align 4
  br label %cleanup26

sw.bb10:                                          ; preds = %entry
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %call.i73 = tail call ptr @regmap_get_device(ptr noundef %51) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw_bits.i) #9
  %52 = ptrtoint ptr %bw_bits.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %bw_bits.i, align 4, !annotation !205
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %call2.i = call i32 @regmap_read(ptr noundef %54, i32 noundef 16, ptr noundef nonnull %bw_bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i74, label %if.end.i76

do.end.i74:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i73, ptr noundef nonnull @.str.47) #12
  br label %bmg160_get_filter.exit

if.end.i76:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %bw_bits.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bw_bits.i, align 4
  %and.i75 = and i32 %56, -129
  %switch.tableidx = add i32 %and.i75, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %57 = icmp ult i32 %switch.tableidx, 7
  %switch.offset = sub i32 7, %and.i75
  %i.0.lcssa.i = select i1 %57, i32 %switch.offset, i32 7
  %filter.i = getelementptr [7 x %struct.anon.87], ptr @bmg160_samp_freq_table, i32 0, i32 %i.0.lcssa.i, i32 1
  %58 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %filter.i, align 4
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 %call2.i
  br label %bmg160_get_filter.exit

bmg160_get_filter.exit:                           ; preds = %if.end.i76, %do.end.i74
  %retval.0.i77 = phi i32 [ %call2.i, %do.end.i74 ], [ %spec.select.i, %if.end.i76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw_bits.i) #9
  br label %cleanup26

sw.bb12:                                          ; preds = %entry
  %61 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chan, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %62, label %sw.bb12.cleanup26_crit_edge [
    i32 9, label %sw.bb14
    i32 4, label %for.cond.preheader
  ]

sw.bb12.cleanup26_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

for.cond.preheader:                               ; preds = %sw.bb12
  %dps_range17 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 7
  %64 = ptrtoint ptr %dps_range17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dps_range17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %65)
  %switch = icmp ult i32 %65, 5
  br i1 %switch, label %if.then19, label %for.cond.preheader.cleanup26_crit_edge

for.cond.preheader.cleanup26_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

sw.bb14:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 500, ptr %val, align 4
  br label %cleanup26

if.then19:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [5 x %struct.anon.88], ptr @bmg160_scale_table, i32 0, i32 %65
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %val, align 4
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %70 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %val2, align 4
  br label %cleanup26

sw.bb22:                                          ; preds = %entry
  %71 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %val2, align 4
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %call.i79 = tail call ptr @regmap_get_device(ptr noundef %73) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw_bits.i78) #9
  %74 = ptrtoint ptr %bw_bits.i78 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %bw_bits.i78, align 4, !annotation !205
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %call2.i80 = call i32 @regmap_read(ptr noundef %76, i32 noundef 16, ptr noundef nonnull %bw_bits.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i80)
  %cmp.i81 = icmp slt i32 %call2.i80, 0
  br i1 %cmp.i81, label %do.end.i82, label %if.end.i84

do.end.i82:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i79, ptr noundef nonnull @.str.47) #12
  br label %bmg160_get_bw.exit

if.end.i84:                                       ; preds = %sw.bb22
  %77 = ptrtoint ptr %bw_bits.i78 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bw_bits.i78, align 4
  %and.i83 = and i32 %78, -129
  %switch.tableidx93 = add i32 %and.i83, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx93)
  %79 = icmp ult i32 %switch.tableidx93, 7
  br i1 %79, label %switch.lookup92, label %if.end.i84.bmg160_get_bw.exit_crit_edge

if.end.i84.bmg160_get_bw.exit_crit_edge:          ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_get_bw.exit

switch.lookup92:                                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  %switch.offset95 = sub i32 7, %and.i83
  %arrayidx.i = getelementptr [7 x %struct.anon.87], ptr @bmg160_samp_freq_table, i32 0, i32 %switch.offset95
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i, align 4
  %82 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %val, align 4
  br label %bmg160_get_bw.exit

bmg160_get_bw.exit:                               ; preds = %switch.lookup92, %if.end.i84.bmg160_get_bw.exit_crit_edge, %do.end.i82
  %retval.0.i85 = phi i32 [ %call2.i80, %do.end.i82 ], [ 1, %switch.lookup92 ], [ -22, %if.end.i84.bmg160_get_bw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw_bits.i78) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup26

cleanup26:                                        ; preds = %bmg160_get_bw.exit, %if.then19, %sw.bb14, %for.cond.preheader.cleanup26_crit_edge, %sw.bb12.cleanup26_crit_edge, %bmg160_get_filter.exit, %if.then8, %sw.bb6.cleanup26_crit_edge, %bmg160_get_axis.exit, %sw.bb3.cleanup26_crit_edge, %bmg160_get_temp.exit, %sw.bb.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.1 = phi i32 [ %retval.0.i85, %bmg160_get_bw.exit ], [ 1, %sw.bb14 ], [ %retval.0.i77, %bmg160_get_filter.exit ], [ 1, %if.then8 ], [ %retval.0.i72, %bmg160_get_axis.exit ], [ %retval.0.i, %bmg160_get_temp.exit ], [ -16, %sw.bb3.cleanup26_crit_edge ], [ -22, %sw.bb.cleanup26_crit_edge ], [ -22, %sw.bb6.cleanup26_crit_edge ], [ 2, %if.then19 ], [ -22, %sw.bb12.cleanup26_crit_edge ], [ -22, %entry.cleanup26_crit_edge ], [ -22, %for.cond.preheader.cleanup26_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 10, label %sw.bb11
    i32 2, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %4) #9
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then6.i, label %if.end

if.then6.i:                                       ; preds = %sw.bb
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then6.i.cleanup.sink.split_crit_edge, label %do.end11.i.i.i.i.i

if.then6.i.cleanup.sink.split_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end11.i.i.i.i.i:                               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %cleanup.sink.split

if.end:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i89 = tail call ptr @regmap_get_device(ptr noundef %7) #9
  %8 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %val, label %if.end.if.then5_crit_edge [
    i32 100, label %if.end.bmg160_convert_freq_to_bit.exit.i_crit_edge
    i32 200, label %if.then.fold.split.i.i
    i32 400, label %if.then.fold.split9.i.i
    i32 1000, label %if.then.fold.split10.i.i
    i32 2000, label %if.then.fold.split11.i.i
  ]

if.end.bmg160_convert_freq_to_bit.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_convert_freq_to_bit.exit.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then.fold.split.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_convert_freq_to_bit.exit.i

if.then.fold.split9.i.i:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_convert_freq_to_bit.exit.i

if.then.fold.split10.i.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_convert_freq_to_bit.exit.i

if.then.fold.split11.i.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_convert_freq_to_bit.exit.i

bmg160_convert_freq_to_bit.exit.i:                ; preds = %if.then.fold.split11.i.i, %if.then.fold.split10.i.i, %if.then.fold.split9.i.i, %if.then.fold.split.i.i, %if.end.bmg160_convert_freq_to_bit.exit.i_crit_edge
  %i.07.lcssa.i.i = phi i32 [ 0, %if.end.bmg160_convert_freq_to_bit.exit.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 4, %if.then.fold.split9.i.i ], [ 5, %if.then.fold.split10.i.i ], [ 6, %if.then.fold.split11.i.i ]
  %bw_bits.i.i = getelementptr [7 x %struct.anon.87], ptr @bmg160_samp_freq_table, i32 0, i32 %i.07.lcssa.i.i, i32 2
  %9 = ptrtoint ptr %bw_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bw_bits.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 16, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end8

do.end.i:                                         ; preds = %bmg160_convert_freq_to_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i89, ptr noundef nonnull @.str.34) #12
  br label %if.then5

if.then5:                                         ; preds = %do.end.i, %if.end.if.then5_crit_edge
  %retval.0.i90.ph = phi i32 [ -22, %if.end.if.then5_crit_edge ], [ %call3.i, %do.end.i ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call.i91 = tail call ptr @regmap_get_device(ptr noundef %14) #9
  %call.i17.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i91, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i17.i, ptr %last_busy.i.i, align 8
  %call.i18.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i91, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp20.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp20.i, label %do.end.thread.i, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i91, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

if.end8:                                          ; preds = %bmg160_convert_freq_to_bit.exit.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i94 = tail call ptr @regmap_get_device(ptr noundef %17) #9
  %call.i17.i95 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i96 = getelementptr inbounds %struct.device, ptr %call.i94, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i.i96 to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i17.i95, ptr %last_busy.i.i96, align 8
  %call.i18.i97 = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i94, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i97)
  %cmp20.i98 = icmp slt i32 %call.i18.i97, 0
  br i1 %cmp20.i98, label %do.end.thread.i99, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i99:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i94, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not = icmp eq i32 %val2, 0
  br i1 %tobool.not, label %if.end13, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %sw.bb11
  %mutex14 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex14, i32 noundef 0) #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i102 = tail call ptr @regmap_get_device(ptr noundef %20) #9
  %call.i.i103 = tail call i32 @__pm_runtime_resume(ptr noundef %call.i102, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp.i104 = icmp slt i32 %call.i.i103, 0
  br i1 %cmp.i104, label %if.then6.i109, label %if.end20

if.then6.i109:                                    ; preds = %if.end13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i102, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %usage_count.i.i105 = getelementptr inbounds %struct.device, ptr %call.i102, i32 0, i32 12, i32 13
  %call.i.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i105, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i105, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i105, ptr %usage_count.i.i105, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i105) #9, !srcloc !209
  %asmresult.i.i.i.i.i107 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i107)
  %cmp.not.i.i.i.i.i108 = icmp eq i32 %asmresult.i.i.i.i.i107, 0
  br i1 %cmp.not.i.i.i.i.i108, label %if.then6.i109.if.then17_crit_edge, label %do.end11.i.i.i.i.i110

if.then6.i109.if.then17_crit_edge:                ; preds = %if.then6.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

do.end11.i.i.i.i.i110:                            ; preds = %if.then6.i109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %if.then17

if.then17:                                        ; preds = %do.end11.i.i.i.i.i110, %if.then6.i109.if.then17_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %call.i113 = tail call ptr @regmap_get_device(ptr noundef %23) #9
  %call.i17.i114 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i115 = getelementptr inbounds %struct.device, ptr %call.i113, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i.i115 to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i17.i114, ptr %last_busy.i.i115, align 8
  %call.i18.i116 = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i113, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i116)
  %cmp20.i117 = icmp slt i32 %call.i18.i116, 0
  br i1 %cmp20.i117, label %do.end.thread.i118, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i118:                               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i113, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end13
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %call.i121 = tail call ptr @regmap_get_device(ptr noundef %26) #9
  %27 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %val, label %for.inc.6.i [
    i32 32, label %if.end20.for.end.i_crit_edge
    i32 64, label %for.end.fold.split.i
    i32 12, label %for.end.fold.split16.i
    i32 23, label %for.end.fold.split17.i
    i32 47, label %for.end.fold.split18.i
    i32 116, label %for.end.fold.split19.i
    i32 230, label %for.end.fold.split20.i
  ]

if.end20.for.end.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.6.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.fold.split16.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.fold.split17.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.fold.split18.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.fold.split19.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.fold.split20.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split20.i, %for.end.fold.split19.i, %for.end.fold.split18.i, %for.end.fold.split17.i, %for.end.fold.split16.i, %for.end.fold.split.i, %for.inc.6.i, %if.end20.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end20.for.end.i_crit_edge ], [ 7, %for.inc.6.i ], [ 1, %for.end.fold.split.i ], [ 2, %for.end.fold.split16.i ], [ 3, %for.end.fold.split17.i ], [ 4, %for.end.fold.split18.i ], [ 5, %for.end.fold.split19.i ], [ 6, %for.end.fold.split20.i ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %bw_bits.i = getelementptr [7 x %struct.anon.87], ptr @bmg160_samp_freq_table, i32 0, i32 %i.0.lcssa.i, i32 2
  %30 = ptrtoint ptr %bw_bits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bw_bits.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 16, i32 noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %for.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i121, ptr noundef nonnull @.str.34) #12
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %call.i124 = tail call ptr @regmap_get_device(ptr noundef %33) #9
  %call.i17.i125 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i126 = getelementptr inbounds %struct.device, ptr %call.i124, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i.i126 to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i17.i125, ptr %last_busy.i.i126, align 8
  %call.i18.i127 = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i124, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i127)
  %cmp20.i128 = icmp slt i32 %call.i18.i127, 0
  br i1 %cmp20.i128, label %do.end.thread.i129, label %if.then23.cleanup.sink.split_crit_edge

if.then23.cleanup.sink.split_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i129:                               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i124, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

if.end26:                                         ; preds = %for.end.i
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %call.i132 = tail call ptr @regmap_get_device(ptr noundef %36) #9
  %call.i17.i133 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i134 = getelementptr inbounds %struct.device, ptr %call.i132, i32 0, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i.i134 to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i17.i133, ptr %last_busy.i.i134, align 8
  %call.i18.i135 = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i132, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i135)
  %cmp20.i136 = icmp slt i32 %call.i18.i135, 0
  br i1 %cmp20.i136, label %do.end.thread.i137, label %if.end26.cleanup.sink.split_crit_edge

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i137:                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i132, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool30.not = icmp eq i32 %val, 0
  br i1 %tobool30.not, label %if.end32, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %sw.bb29
  %mutex33 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex33, i32 noundef 0) #9
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %call.i140 = tail call ptr @regmap_get_device(ptr noundef %39) #9
  %call.i.i141 = tail call i32 @__pm_runtime_resume(ptr noundef %call.i140, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %cmp.i142 = icmp slt i32 %call.i.i141, 0
  br i1 %cmp.i142, label %if.then6.i147, label %if.end38

if.then6.i147:                                    ; preds = %if.end32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i140, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %usage_count.i.i143 = getelementptr inbounds %struct.device, ptr %call.i140, i32 0, i32 12, i32 13
  %call.i.i.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i143, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i143, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i143, ptr %usage_count.i.i143, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i143) #9, !srcloc !209
  %asmresult.i.i.i.i.i145 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i145)
  %cmp.not.i.i.i.i.i146 = icmp eq i32 %asmresult.i.i.i.i.i145, 0
  br i1 %cmp.not.i.i.i.i.i146, label %if.then6.i147.cleanup.sink.split_crit_edge, label %do.end11.i.i.i.i.i148

if.then6.i147.cleanup.sink.split_crit_edge:       ; preds = %if.then6.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end11.i.i.i.i.i148:                            ; preds = %if.then6.i147
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %cleanup.sink.split

if.end38:                                         ; preds = %if.end32
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %call.i151 = tail call ptr @regmap_get_device(ptr noundef %42) #9
  %43 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %val2, label %if.end38.if.then41_crit_edge [
    i32 1065, label %if.end38.if.then.i_crit_edge
    i32 532, label %if.then.fold.split.i
    i32 266, label %if.then.fold.split23.i
    i32 133, label %if.then.fold.split24.i
    i32 66, label %if.then.fold.split25.i
  ]

if.end38.if.then.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.then.fold.split.i:                             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split23.i:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split24.i:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split25.i:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split25.i, %if.then.fold.split24.i, %if.then.fold.split23.i, %if.then.fold.split.i, %if.end38.if.then.i_crit_edge
  %i.021.lcssa.i = phi i32 [ 0, %if.end38.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split23.i ], [ 3, %if.then.fold.split24.i ], [ 4, %if.then.fold.split25.i ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %dps_range.i = getelementptr [5 x %struct.anon.88], ptr @bmg160_scale_table, i32 0, i32 %i.021.lcssa.i, i32 1
  %46 = ptrtoint ptr %dps_range.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dps_range.i, align 4
  %call4.i152 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 15, i32 noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i152)
  %cmp5.i153 = icmp slt i32 %call4.i152, 0
  br i1 %cmp5.i153, label %do.end.i154, label %if.end44

do.end.i154:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i151, ptr noundef nonnull @.str.23) #12
  br label %if.then41

if.then41:                                        ; preds = %do.end.i154, %if.end38.if.then41_crit_edge
  %retval.0.i155.ph = phi i32 [ -22, %if.end38.if.then41_crit_edge ], [ %call4.i152, %do.end.i154 ]
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %call.i156 = tail call ptr @regmap_get_device(ptr noundef %49) #9
  %call.i17.i157 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i158 = getelementptr inbounds %struct.device, ptr %call.i156, i32 0, i32 12, i32 22
  %50 = ptrtoint ptr %last_busy.i.i158 to i32
  call void @__asan_store8_noabort(i32 %50)
  store volatile i64 %call.i17.i157, ptr %last_busy.i.i158, align 8
  %call.i18.i159 = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i156, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i159)
  %cmp20.i160 = icmp slt i32 %call.i18.i159, 0
  br i1 %cmp20.i160, label %do.end.thread.i161, label %if.then41.cleanup.sink.split_crit_edge

if.then41.cleanup.sink.split_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i161:                               ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i156, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.then.i
  %dps_range9.i = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %dps_range9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %47, ptr %dps_range9.i, align 8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %call.i164 = tail call ptr @regmap_get_device(ptr noundef %53) #9
  %call.i17.i165 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i166 = getelementptr inbounds %struct.device, ptr %call.i164, i32 0, i32 12, i32 22
  %54 = ptrtoint ptr %last_busy.i.i166 to i32
  call void @__asan_store8_noabort(i32 %54)
  store volatile i64 %call.i17.i165, ptr %last_busy.i.i166, align 8
  %call.i18.i167 = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i164, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i167)
  %cmp20.i168 = icmp slt i32 %call.i18.i167, 0
  br i1 %cmp20.i168, label %do.end.thread.i169, label %if.end44.cleanup.sink.split_crit_edge

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i169:                               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i164, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end.thread.i169, %if.end44.cleanup.sink.split_crit_edge, %do.end.thread.i161, %if.then41.cleanup.sink.split_crit_edge, %do.end11.i.i.i.i.i148, %if.then6.i147.cleanup.sink.split_crit_edge, %do.end.thread.i137, %if.end26.cleanup.sink.split_crit_edge, %do.end.thread.i129, %if.then23.cleanup.sink.split_crit_edge, %do.end.thread.i118, %if.then17.cleanup.sink.split_crit_edge, %do.end.thread.i99, %if.end8.cleanup.sink.split_crit_edge, %do.end.thread.i, %if.then5.cleanup.sink.split_crit_edge, %do.end11.i.i.i.i.i, %if.then6.i.cleanup.sink.split_crit_edge
  %mutex33.sink = phi ptr [ %mutex, %if.then6.i.cleanup.sink.split_crit_edge ], [ %mutex, %do.end11.i.i.i.i.i ], [ %mutex, %if.then5.cleanup.sink.split_crit_edge ], [ %mutex, %do.end.thread.i ], [ %mutex, %if.end8.cleanup.sink.split_crit_edge ], [ %mutex, %do.end.thread.i99 ], [ %mutex14, %if.then17.cleanup.sink.split_crit_edge ], [ %mutex14, %do.end.thread.i118 ], [ %mutex14, %if.then23.cleanup.sink.split_crit_edge ], [ %mutex14, %do.end.thread.i129 ], [ %mutex14, %if.end26.cleanup.sink.split_crit_edge ], [ %mutex14, %do.end.thread.i137 ], [ %mutex33, %if.then6.i147.cleanup.sink.split_crit_edge ], [ %mutex33, %do.end11.i.i.i.i.i148 ], [ %mutex33, %if.then41.cleanup.sink.split_crit_edge ], [ %mutex33, %do.end.thread.i161 ], [ %mutex33, %if.end44.cleanup.sink.split_crit_edge ], [ %mutex33, %do.end.thread.i169 ]
  %retval.0.ph = phi i32 [ %call.i.i, %if.then6.i.cleanup.sink.split_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ], [ %retval.0.i90.ph, %if.then5.cleanup.sink.split_crit_edge ], [ %retval.0.i90.ph, %do.end.thread.i ], [ 0, %if.end8.cleanup.sink.split_crit_edge ], [ %call.i18.i97, %do.end.thread.i99 ], [ %call.i.i103, %if.then17.cleanup.sink.split_crit_edge ], [ %call.i.i103, %do.end.thread.i118 ], [ %call4.i, %if.then23.cleanup.sink.split_crit_edge ], [ %call4.i, %do.end.thread.i129 ], [ 0, %if.end26.cleanup.sink.split_crit_edge ], [ %call.i18.i135, %do.end.thread.i137 ], [ %call.i.i141, %if.then6.i147.cleanup.sink.split_crit_edge ], [ %call.i.i141, %do.end11.i.i.i.i.i148 ], [ %retval.0.i155.ph, %if.then41.cleanup.sink.split_crit_edge ], [ %retval.0.i155.ph, %do.end.thread.i161 ], [ 0, %if.end44.cleanup.sink.split_crit_edge ], [ %call.i18.i167, %do.end.thread.i169 ]
  tail call void @mutex_unlock(ptr noundef %mutex33.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb29.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.bb29.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmg160_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ev_enable_state = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %ev_enable_state = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.thread, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %mutex42 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex42, i32 noundef 0) #9
  br label %if.end8

land.lhs.true3:                                   ; preds = %entry
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %motion_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %motion_trigger_on, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end8_crit_edge, label %if.then5

land.lhs.true3.if.end8_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %ev_enable_state6 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ev_enable_state6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ev_enable_state6, align 4
  br label %cleanup.sink.split

if.end8:                                          ; preds = %land.lhs.true3.if.end8_crit_edge, %if.end.thread
  %mutex43 = phi ptr [ %mutex42, %if.end.thread ], [ %mutex, %land.lhs.true3.if.end8_crit_edge ]
  %call10 = tail call fastcc i32 @bmg160_set_power_state(ptr noundef %1, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end8.cleanup.sink.split_crit_edge, label %if.end13

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  %call15 = tail call fastcc i32 @bmg160_setup_any_motion_interrupt(ptr noundef %1, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %8) #9
  %call.i17.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i17.i, ptr %last_busy.i.i, align 8
  %call.i18.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp20.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp20.i, label %do.end.thread.i, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.thread.i:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %ev_enable_state21 = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %ev_enable_state21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %state, ptr %ev_enable_state21, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20, %do.end.thread.i, %if.then17.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %if.then5
  %mutex43.sink = phi ptr [ %mutex43, %if.end20 ], [ %mutex, %if.then5 ], [ %mutex43, %if.end8.cleanup.sink.split_crit_edge ], [ %mutex43, %if.then17.cleanup.sink.split_crit_edge ], [ %mutex43, %do.end.thread.i ]
  %retval.0.ph = phi i32 [ 0, %if.end20 ], [ 0, %if.then5 ], [ %call10, %if.end8.cleanup.sink.split_crit_edge ], [ %call15, %if.then17.cleanup.sink.split_crit_edge ], [ %call15, %do.end.thread.i ]
  tail call void @mutex_unlock(ptr noundef %mutex43.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmg160_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cond = icmp eq i32 %info, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %slope_thres = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %slope_thres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slope_thres, align 8
  %and = and i32 %4, 15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bmg160_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cond = icmp eq i32 %info, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %ev_enable_state = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %slope_thres = getelementptr inbounds %struct.bmg160_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %slope_thres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slope_thres, align 8
  %and = and i32 %5, -16
  %and1 = and i32 %val, 15
  %or = or i32 %and, %and1
  store i32 %or, ptr %slope_thres, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmg160_set_power_state(ptr nocapture noundef readonly %data, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #9
  br i1 %on, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %call.i17 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i17, ptr %last_busy.i, align 8
  %call.i18 = tail call i32 @__pm_runtime_suspend(ptr noundef %call, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp20 = icmp slt i32 %call.i18, 0
  br i1 %cmp20, label %do.end.thread, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.thread:                                    ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %usage_count.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !209
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then6.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then6.cleanup_crit_edge, %do.end.thread, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.thread.cleanup_crit_edge ], [ %call.i18, %do.end.thread ], [ %call.i, %if.then6.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmg160_setup_any_motion_interrupt(ptr nocapture noundef readonly %data, i1 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %cond = select i1 %status, i32 2, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 23, i32 noundef 2, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  br i1 %status, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %slope_thres = getelementptr inbounds %struct.bmg160_data, ptr %data, i32 0, i32 9
  %6 = ptrtoint ptr %slope_thres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slope_thres, align 8
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 27, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then4.cleanup.sink.split_crit_edge, label %if.end12

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.then4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %call14 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 28, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup.sink.split_crit_edge, label %if.end20

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end12
  %dready_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dready_trigger_on, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end31_crit_edge

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then22:                                        ; preds = %if.end20
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %call24 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 33, i32 noundef 143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then22.cleanup.sink.split_crit_edge, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then22.cleanup.sink.split_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.then22.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  %call33 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 21, i32 noundef 128) #9
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 21, i32 noundef 0) #9
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end31
  %ret.0 = phi i32 [ %call33, %if.end31 ], [ %call35, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp37 = icmp slt i32 %ret.0, 0
  br i1 %cmp37, label %if.end36.cleanup.sink.split_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36.cleanup.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end36.cleanup.sink.split_crit_edge, %if.then22.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.63.sink = phi ptr [ @.str.52, %entry.cleanup.sink.split_crit_edge ], [ @.str.55, %if.then4.cleanup.sink.split_crit_edge ], [ @.str.32, %if.end12.cleanup.sink.split_crit_edge ], [ @.str.60, %if.then22.cleanup.sink.split_crit_edge ], [ @.str.63, %if.end36.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call6, %if.then4.cleanup.sink.split_crit_edge ], [ %call14, %if.end12.cleanup.sink.split_crit_edge ], [ %call24, %if.then22.cleanup.sink.split_crit_edge ], [ %ret.0, %if.end36.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull %.str.63.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_data_rdy_trigger_set_state(ptr noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %mutex = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  br i1 %state, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ev_enable_state = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ev_enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %motion_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %motion_trigger_on, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %motion_trigger_on, align 1
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = tail call fastcc i32 @bmg160_set_power_state(ptr noundef %3, i1 noundef zeroext %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %motion_trig = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %motion_trig, align 8
  %cmp12 = icmp eq ptr %10, %trig
  br i1 %cmp12, label %if.end18, label %if.else

if.else:                                          ; preds = %if.end11
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %12) #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %cond.i = zext i1 %state to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 24, i32 noundef 1, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.else.if.end18.thread_crit_edge, label %if.end.i

if.else.if.end18.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end.i:                                         ; preds = %if.else
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  br i1 %state, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 33, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then4.i.if.end18.thread_crit_edge, label %if.then4.i.if.end25.i_crit_edge

if.then4.i.if.end25.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then4.i.if.end18.thread_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.else.i:                                        ; preds = %if.end.i
  %call16.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 33, i32 noundef 143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.else.i.if.end18.thread_crit_edge, label %if.else.i.if.end25.i_crit_edge

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.else.i.if.end18.thread_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end25.i:                                       ; preds = %if.else.i.if.end25.i_crit_edge, %if.then4.i.if.end25.i_crit_edge
  %.sink49.i = phi i32 [ 128, %if.then4.i.if.end25.i_crit_edge ], [ 0, %if.else.i.if.end25.i_crit_edge ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %call24.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 21, i32 noundef %.sink49.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp26.i = icmp slt i32 %call24.i, 0
  br i1 %cmp26.i, label %if.end25.i.if.end18.thread_crit_edge, label %if.end25.i.if.end23_crit_edge

if.end25.i.if.end23_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end25.i.if.end18.thread_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end25.i.if.end18.thread_crit_edge, %if.else.i.if.end18.thread_crit_edge, %if.then4.i.if.end18.thread_crit_edge, %if.else.if.end18.thread_crit_edge
  %.str.63.sink.i = phi ptr [ @.str.69, %if.else.if.end18.thread_crit_edge ], [ @.str.60, %if.then4.i.if.end18.thread_crit_edge ], [ @.str.60, %if.else.i.if.end18.thread_crit_edge ], [ @.str.63, %if.end25.i.if.end18.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %if.else.if.end18.thread_crit_edge ], [ %call6.i, %if.then4.i.if.end18.thread_crit_edge ], [ %call16.i, %if.else.i.if.end18.thread_crit_edge ], [ %call24.i, %if.end25.i.if.end18.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull %.str.63.sink.i) #12
  br label %if.then20

if.end18:                                         ; preds = %if.end11
  %call15 = tail call fastcc i32 @bmg160_setup_any_motion_interrupt(ptr noundef %3, i1 noundef zeroext %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp19 = icmp slt i32 %call15, 0
  br i1 %cmp19, label %if.end18.if.then20_crit_edge, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread
  %ret.066 = phi i32 [ %retval.0.ph.i, %if.end18.thread ], [ %call15, %if.end18.if.then20_crit_edge ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %call.i62 = tail call ptr @regmap_get_device(ptr noundef %20) #9
  %call.i17.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i62, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i17.i, ptr %last_busy.i.i, align 8
  %call.i18.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i62, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp20.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp20.i, label %do.end.thread.i, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.thread.i:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i62, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end18.if.end23_crit_edge, %if.end25.i.if.end23_crit_edge
  %22 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %motion_trig, align 8
  %cmp25 = icmp eq ptr %23, %trig
  br i1 %cmp25, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %motion_trigger_on28 = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %motion_trigger_on28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %motion_trigger_on28, align 1
  br label %cleanup

if.else30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %dready_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 10
  %25 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %dready_trigger_on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else30, %if.then26, %do.end.thread.i, %if.then20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %if.end.cleanup_crit_edge ], [ %ret.066, %if.then20.cleanup_crit_edge ], [ %ret.066, %do.end.thread.i ], [ 0, %if.else30 ], [ 0, %if.then26 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bmg160_trig_reen(ptr nocapture noundef readonly %trig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call2 = tail call ptr @regmap_get_device(ptr noundef %5) #9
  %dready_trigger_on = getelementptr inbounds %struct.bmg160_data, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dready_trigger_on, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call4 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 33, i32 noundef 143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2, ptr noundef nonnull @.str.60) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %3) #9
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then6.i, label %entry.bmg160_set_power_state.exit_crit_edge

entry.bmg160_set_power_state.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_set_power_state.exit

if.then6.i:                                       ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then6.i.bmg160_set_power_state.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then6.i.bmg160_set_power_state.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_set_power_state.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  br label %bmg160_set_power_state.exit

bmg160_set_power_state.exit:                      ; preds = %do.end11.i.i.i.i.i, %if.then6.i.bmg160_set_power_state.exit_crit_edge, %entry.bmg160_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.bmg160_set_power_state.exit_crit_edge ], [ %call.i.i, %if.then6.i.bmg160_set_power_state.exit_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmg160_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %3) #9
  %call.i17.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i17.i, ptr %last_busy.i.i, align 8
  %call.i18.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp20.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp20.i, label %do.end.thread.i, label %entry.bmg160_set_power_state.exit_crit_edge

entry.bmg160_set_power_state.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bmg160_set_power_state.exit

do.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %bmg160_set_power_state.exit

bmg160_set_power_state.exit:                      ; preds = %do.end.thread.i, %entry.bmg160_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.bmg160_set_power_state.exit_crit_edge ], [ %call.i18.i, %do.end.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
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
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !166, !168, !169, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !184, !186, !188, !189, !190, !191, !193, !194, !195}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1093, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1094, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1098, i32 34}
!6 = !{ptr @bmg160_core_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1117, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1135, i32 7}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1141, i32 11}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1148, i32 10}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1174, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bmg160_core_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @bmg160_core_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1190, i32 3}
!25 = !{ptr @bmg160_core_probe._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @bmg160_core_probe._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_bmg160_core_probe, !28, !"__ksymtab_bmg160_core_probe", i1 false, i1 false}
!28 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1209, i32 1}
!29 = !{ptr @__ksymtab_bmg160_core_remove, !30, !"__ksymtab_bmg160_core_remove", i1 false, i1 false}
!30 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1233, i32 1}
!31 = !{ptr @bmg160_pm_ops, !32, !"bmg160_pm_ops", i1 false, i1 false}
!32 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1295, i32 25}
!33 = !{ptr @__ksymtab_bmg160_pm_ops, !34, !"__ksymtab_bmg160_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1300, i32 1}
!35 = !{ptr @__UNIQUE_ID_author290, !36, !"__UNIQUE_ID_author290", i1 false, i1 false}
!36 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1302, i32 1}
!37 = !{ptr @__UNIQUE_ID_file291, !38, !"__UNIQUE_ID_file291", i1 false, i1 false}
!38 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1303, i32 1}
!39 = !{ptr @__UNIQUE_ID_license292, !38, !"__UNIQUE_ID_license292", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_description293, !41, !"__UNIQUE_ID_description293", i1 false, i1 false}
!41 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1304, i32 1}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 251, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bmg160_chip_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @bmg160_chip_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 255, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bmg160_chip_init.__UNIQUE_ID_ddebug289, !48, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 257, i32 3}
!53 = !{ptr @bmg160_chip_init._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bmg160_chip_init._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 276, i32 3}
!57 = !{ptr @bmg160_chip_init._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bmg160_chip_init._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 283, i32 3}
!61 = !{ptr @bmg160_chip_init._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bmg160_chip_init._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 292, i32 3}
!65 = !{ptr @bmg160_chip_init._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bmg160_chip_init._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 300, i32 3}
!69 = !{ptr @bmg160_chip_init._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bmg160_chip_init._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 180, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @bmg160_set_bw._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @bmg160_set_bw._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @bmg160_samp_freq_table, !77, !"bmg160_samp_freq_table", i1 false, i1 false}
!77 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 125, i32 3}
!78 = !{ptr @bmg160_channels, !79, !"bmg160_channels", i1 false, i1 false}
!79 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 852, i32 35}
!80 = !{ptr @bmg160_event, !81, !"bmg160_event", i1 false, i1 false}
!81 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 825, i32 36}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 806, i32 2}
!84 = !{ptr @bmg160_ext_info, !85, !"bmg160_ext_info", i1 false, i1 false}
!85 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 805, i32 44}
!86 = !{ptr @bmg160_accel_scan_masks, !87, !"bmg160_accel_scan_masks", i1 false, i1 false}
!87 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 876, i32 28}
!88 = !{ptr @bmg160_info, !89, !"bmg160_info", i1 false, i1 false}
!89 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 866, i32 30}
!90 = !{ptr @bmg160_attrs_group, !91, !"bmg160_attrs_group", i1 false, i1 false}
!91 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 821, i32 37}
!92 = !{ptr @bmg160_attributes, !93, !"bmg160_attributes", i1 false, i1 false}
!93 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 815, i32 26}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 810, i32 8}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @iio_const_attr_sampling_frequency_available, !95, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 812, i32 8}
!100 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @iio_const_attr_in_anglvel_scale_available, !99, !"iio_const_attr_in_anglvel_scale_available", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 508, i32 3}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bmg160_get_temp._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @bmg160_get_temp._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 322, i32 3}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @bmg160_set_power_state._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @bmg160_set_power_state._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 539, i32 3}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @bmg160_get_axis._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @bmg160_get_axis._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 196, i32 3}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @bmg160_get_filter._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @bmg160_get_filter._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @bmg160_scale_table, !123, !"bmg160_scale_table", i1 false, i1 false}
!123 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 136, i32 3}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 455, i32 3}
!126 = !{ptr @bmg160_get_bw._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @bmg160_get_bw._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 228, i32 3}
!130 = !{ptr @bmg160_set_filter._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @bmg160_set_filter._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 482, i32 5}
!134 = !{ptr @bmg160_set_scale._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @bmg160_set_scale._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 345, i32 3}
!138 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @bmg160_setup_any_motion_interrupt._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @bmg160_setup_any_motion_interrupt._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 355, i32 4}
!143 = !{ptr @bmg160_setup_any_motion_interrupt._entry.54, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @bmg160_setup_any_motion_interrupt._entry_ptr.56, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @bmg160_setup_any_motion_interrupt._entry.57, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 363, i32 4}
!147 = !{ptr @bmg160_setup_any_motion_interrupt._entry_ptr.58, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 378, i32 5}
!150 = !{ptr @bmg160_setup_any_motion_interrupt._entry.59, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @bmg160_setup_any_motion_interrupt._entry_ptr.61, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 391, i32 3}
!154 = !{ptr @bmg160_setup_any_motion_interrupt._entry.62, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @bmg160_setup_any_motion_interrupt._entry_ptr.64, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 980, i32 3}
!158 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @bmg160_event_handler._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @bmg160_event_handler._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @bmg160_event_handler._entry.67, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1017, i32 4}
!163 = !{ptr @bmg160_event_handler._entry_ptr.68, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @bmg160_trigger_ops, !165, !"bmg160_trigger_ops", i1 false, i1 false}
!165 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 964, i32 37}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 409, i32 3}
!168 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @bmg160_setup_new_data_interrupt._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @bmg160_setup_new_data_interrupt._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @bmg160_setup_new_data_interrupt._entry.71, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 418, i32 4}
!173 = !{ptr @bmg160_setup_new_data_interrupt._entry_ptr.72, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @bmg160_setup_new_data_interrupt._entry.73, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 431, i32 4}
!176 = !{ptr @bmg160_setup_new_data_interrupt._entry_ptr.74, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @bmg160_setup_new_data_interrupt._entry.75, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 439, i32 3}
!179 = !{ptr @bmg160_setup_new_data_interrupt._entry_ptr.76, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 918, i32 3}
!182 = !{ptr @bmg160_trig_reen._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @bmg160_trig_reen._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @bmg160_buffer_setup_ops, !185, !"bmg160_buffer_setup_ops", i1 false, i1 false}
!185 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1054, i32 42}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 149, i32 3}
!188 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @bmg160_set_mode._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @bmg160_set_mode._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iio/gyro/bmg160_core.c", i32 1272, i32 3}
!193 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @bmg160_runtime_suspend._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @bmg160_runtime_suspend._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"min_enum_size", i32 4}
!198 = !{i32 8, !"branch-target-enforcement", i32 0}
!199 = !{i32 8, !"sign-return-address", i32 0}
!200 = !{i32 8, !"sign-return-address-all", i32 0}
!201 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!205 = !{!"auto-init"}
!206 = !{i64 2148982910, i64 2148982915, i64 2148982928, i64 2148982972, i64 2148983006, i64 2148983027}
!207 = !{i8 0, i8 2}
!208 = !{i64 2148368952}
!209 = !{i64 854572, i64 854597, i64 854619, i64 854635, i64 854647, i64 854667, i64 854691, i64 854707, i64 854719}
!210 = !{i64 2148369140}
