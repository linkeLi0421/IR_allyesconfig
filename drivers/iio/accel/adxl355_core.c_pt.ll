; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/adxl355_core.c_pt.bc'
source_filename = "../drivers/iio/accel/adxl355_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adxl355_readable_regs_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl355_readable_regs_tbl\09\09\09\09"
module asm "\09.long\09__crc_adxl355_readable_regs_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl355_readable_regs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl355_readable_regs_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_adxl355_readable_regs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl355_writeable_regs_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl355_writeable_regs_tbl\09\09\09\09"
module asm "\09.long\09__crc_adxl355_writeable_regs_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl355_writeable_regs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl355_writeable_regs_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_adxl355_writeable_regs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl355_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl355_core_probe\09\09\09\09"
module asm "\09.long\09__crc_adxl355_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl355_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl355_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adxl355_core_probe:\09\09\09\09\09"
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
%struct.adxl355_chan_info = type { i8, i8 }
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
%struct.adxl355_data = type { ptr, ptr, %struct.mutex, i32, i32, i32, [3 x i32], [7 x [2 x i32]], ptr, [72 x i8], %union.anon.44 }
%union.anon.44 = type { %struct.anon.45, [104 x i8] }
%struct.anon.45 = type { [14 x i8], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@adxl355_read_reg_range = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 17 }, %struct.regmap_range { i32 30, i32 46 }], [16 x i8] zeroinitializer }, align 32
@adxl355_readable_regs_tbl = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @adxl355_read_reg_range, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_adxl355_readable_regs_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl355_readable_regs_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl355_readable_regs_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl355_readable_regs_tbl to i32), ptr @__kstrtab_adxl355_readable_regs_tbl, ptr @__kstrtabns_adxl355_readable_regs_tbl }, section "___ksymtab_gpl+adxl355_readable_regs_tbl", align 4
@adxl355_write_reg_range = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 30, i32 47 }], [24 x i8] zeroinitializer }, align 32
@adxl355_writeable_regs_tbl = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @adxl355_write_reg_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_adxl355_writeable_regs_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl355_writeable_regs_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl355_writeable_regs_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl355_writeable_regs_tbl to i32), ptr @__kstrtab_adxl355_writeable_regs_tbl, ptr @__kstrtabns_adxl355_writeable_regs_tbl }, section "___ksymtab_gpl+adxl355_writeable_regs_tbl", align 4
@adxl355_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adxl355_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adxl355_read_raw, ptr null, ptr @adxl355_read_avail, ptr @adxl355_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adxl355_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 { i8 115, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 6148, i32 6144, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 1, i32 1, %struct.anon.43 { i8 115, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 6148, i32 6144, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 2, i32 2, %struct.anon.43 { i8 115, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 33, i32 0, i32 6148, i32 6144, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 6, i32 3, %struct.anon.43 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@adxl355_avail_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 0], [24 x i8] zeroinitializer }, align 32
@adxl355_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADXL355 setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adxl355_core_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/accel/adxl355_core.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adxl355_core_probe._entry_ptr = internal global ptr @adxl355_core_probe._entry, section ".printk_index", align 4
@adxl355_core_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@adxl355_core_probe._entry_ptr.8 = internal global ptr @adxl355_core_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DRDY\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_adxl355_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl355_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl355_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl355_core_probe to i32), ptr @__kstrtab_adxl355_core_probe, ptr @__kstrtabns_adxl355_core_probe }, section "___ksymtab_gpl+adxl355_core_probe", align 4
@__UNIQUE_ID_author211 = internal constant [58 x i8] c"adxl355_core.author=Puranjay Mohan <puranjay12@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [74 x i8] c"adxl355_core.description=ADXL355 3-Axis Digital Accelerometer core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [49 x i8] c"adxl355_core.file=drivers/iio/accel/adxl355_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [28 x i8] c"adxl355_core.license=GPL v2\00", section ".modinfo", align 1
@adxl355_chans = internal constant { [3 x %struct.adxl355_chan_info], [26 x i8] } { [3 x %struct.adxl355_chan_info] [%struct.adxl355_chan_info { i8 8, i8 30 }, %struct.adxl355_chan_info { i8 11, i8 32 }, %struct.adxl355_chan_info { i8 14, i8 34 }], [26 x i8] zeroinitializer }, align 32
@adxl355_odr_table = internal constant { [11 x [2 x i32]], [40 x i8] } { [11 x [2 x i32]] [[2 x i32] [i32 4000, i32 0], [2 x i32] [i32 2000, i32 0], [2 x i32] [i32 1000, i32 0], [2 x i32] [i32 500, i32 0], [2 x i32] [i32 250, i32 0], [2 x i32] [i32 125, i32 0], [2 x i32] [i32 62, i32 500000], [2 x i32] [i32 31, i32 250000], [2 x i32] [i32 15, i32 625000], [2 x i32] [i32 7, i32 813000], [2 x i32] [i32 3, i32 906000]], [40 x i8] zeroinitializer }, align 32
@adxl355_hpf_3db_multipliers = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 247000, i32 62084, i32 15545, i32 3862, i32 954, i32 238], [36 x i8] zeroinitializer }, align 32
@adxl355_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid ADI ID 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adxl355_setup\00", [18 x i8] zeroinitializer }, align 32
@adxl355_setup._entry_ptr = internal global ptr @adxl355_setup._entry, section ".printk_index", align 4
@adxl355_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid MEMS ID 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@adxl355_setup._entry_ptr.14 = internal global ptr @adxl355_setup._entry.12, section ".printk_index", align 4
@adxl355_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid DEV ID 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@adxl355_setup._entry_ptr.17 = internal global ptr @adxl355_setup._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@adxl355_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @adxl355_data_rdy_trigger_set_state, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adxl355_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@adxl355_probe_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iio trigger register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adxl355_probe_trigger\00", [42 x i8] zeroinitializer }, align 32
@adxl355_probe_trigger._entry_ptr = internal global ptr @adxl355_probe_trigger._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 5, i64 11, i64 12]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 11, i64 12]
@__sancov_gen_cov_switch_values.27 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 7, i64 15, i64 31, i64 62, i64 125, i64 250, i64 500, i64 1000, i64 2000, i64 4000]
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"adxl355_read_reg_range\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 66, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [26 x i8] c"adxl355_readable_regs_tbl\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 71, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"adxl355_write_reg_range\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 77, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"adxl355_writeable_regs_tbl\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 81, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 726, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"adxl355_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 571, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"adxl355_channels\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 657, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"adxl355_avail_scan_masks\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 566, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 737, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 745, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 752, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"adxl355_chans\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 150, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"adxl355_odr_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 117, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"adxl355_hpf_3db_multipliers\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 131, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 249, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 258, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 267, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 683, i32 56 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"adxl355_trigger_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 577, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 694, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 696, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [36 x i8] c"../drivers/iio/accel/adxl355_core.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 701, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__ksymtab_adxl355_core_probe, ptr @__ksymtab_adxl355_readable_regs_tbl, ptr @__ksymtab_adxl355_writeable_regs_tbl, ptr @adxl355_core_probe._entry, ptr @adxl355_core_probe._entry.6, ptr @adxl355_core_probe._entry_ptr, ptr @adxl355_core_probe._entry_ptr.8, ptr @adxl355_probe_trigger._entry, ptr @adxl355_probe_trigger._entry_ptr, ptr @adxl355_setup._entry, ptr @adxl355_setup._entry.12, ptr @adxl355_setup._entry.15, ptr @adxl355_setup._entry_ptr, ptr @adxl355_setup._entry_ptr.14, ptr @adxl355_setup._entry_ptr.17, ptr @adxl355_read_reg_range, ptr @adxl355_readable_regs_tbl, ptr @adxl355_write_reg_range, ptr @adxl355_writeable_regs_tbl, ptr @adxl355_core_probe.__key, ptr @.str, ptr @adxl355_info, ptr @adxl355_channels, ptr @adxl355_avail_scan_masks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @adxl355_chans, ptr @adxl355_odr_table, ptr @adxl355_hpf_3db_multipliers, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @adxl355_trigger_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_read_reg_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_readable_regs_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_write_reg_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_writeable_regs_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_avail_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_core_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_chans to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_odr_table to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_hpf_3db_multipliers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl355_probe_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adxl355_core_probe(ptr noundef %dev, ptr noundef %regmap, ptr noundef %name) #0 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 384) #6
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
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap, ptr %1, align 128
  %dev3 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev3, align 4
  %op_mode = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %op_mode, align 4
  %lock = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @adxl355_core_probe.__key) #6
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name4, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @adxl355_info, ptr %info, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adxl355_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adxl355_avail_scan_masks, ptr %available_scan_masks, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %11 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %regval.i, align 4, !annotation !85
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %call.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.adxl355_setup.exit.thread_crit_edge

if.end.adxl355_setup.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl355_setup.exit.thread

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 173
  br i1 %cmp.not.i, label %if.end2.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %15) #9
  br label %adxl355_setup.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %call4.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 1, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end2.i.adxl355_setup.exit.thread_crit_edge

if.end2.i.adxl355_setup.exit.thread_crit_edge:    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl355_setup.exit.thread

if.end7.i:                                        ; preds = %if.end2.i
  %20 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %21)
  %cmp8.not.i = icmp eq i32 %21, 29
  br i1 %cmp8.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef %21) #9
  br label %adxl355_setup.exit.thread

if.end14.i:                                       ; preds = %if.end7.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %call16.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 2, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.adxl355_setup.exit.thread_crit_edge

if.end14.i.adxl355_setup.exit.thread_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl355_setup.exit.thread

if.end19.i:                                       ; preds = %if.end14.i
  %26 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 237, i32 %27)
  %cmp20.not.i = icmp eq i32 %27, 237
  br i1 %cmp20.not.i, label %if.end26.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %27) #9
  br label %adxl355_setup.exit.thread

if.end26.i:                                       ; preds = %if.end19.i
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  %call28.i = call i32 @regmap_write(ptr noundef %31, i32 noundef 47, i32 noundef 82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end26.i.adxl355_setup.exit.thread_crit_edge

if.end26.i.adxl355_setup.exit.thread_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl355_setup.exit.thread

if.end31.i:                                       ; preds = %if.end26.i
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 45, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool49.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool49.not.i, label %adxl355_setup.exit, label %if.end31.i.adxl355_setup.exit.thread_crit_edge

if.end31.i.adxl355_setup.exit.thread_crit_edge:   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl355_setup.exit.thread

adxl355_setup.exit.thread:                        ; preds = %if.end31.i.adxl355_setup.exit.thread_crit_edge, %if.end26.i.adxl355_setup.exit.thread_crit_edge, %do.end24.i, %if.end14.i.adxl355_setup.exit.thread_crit_edge, %do.end12.i, %if.end2.i.adxl355_setup.exit.thread_crit_edge, %do.end.i, %if.end.adxl355_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.end31.i.adxl355_setup.exit.thread_crit_edge ], [ %call28.i, %if.end26.i.adxl355_setup.exit.thread_crit_edge ], [ %call16.i, %if.end14.i.adxl355_setup.exit.thread_crit_edge ], [ %call4.i, %if.end2.i.adxl355_setup.exit.thread_crit_edge ], [ %call.i, %if.end.adxl355_setup.exit.thread_crit_edge ], [ -19, %do.end24.i ], [ -19, %do.end12.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  br label %do.end10

adxl355_setup.exit:                               ; preds = %if.end31.i
  call fastcc void @adxl355_fill_3db_frequency_table(ptr noundef %1) #6
  %call52.i = call fastcc i32 @adxl355_set_op_mode(ptr noundef %1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool6.not = icmp eq i32 %call52.i, 0
  br i1 %tobool6.not, label %if.end11, label %adxl355_setup.exit.do.end10_crit_edge

adxl355_setup.exit.do.end10_crit_edge:            ; preds = %adxl355_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10:                                         ; preds = %adxl355_setup.exit.do.end10_crit_edge, %adxl355_setup.exit.thread
  %retval.0.i66 = phi i32 [ %retval.0.i.ph, %adxl355_setup.exit.thread ], [ %call52.i, %adxl355_setup.exit.do.end10_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end11:                                         ; preds = %adxl355_setup.exit
  %call12 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @adxl355_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call19 = call i32 @of_irq_get_byname(ptr noundef %35, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp sgt i32 %call19, 0
  br i1 %cmp, label %if.then20, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i, align 8
  %dev.i56 = getelementptr inbounds %struct.adxl355_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dev.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i56, align 4
  %40 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name4, align 8
  %call1.i = call i32 @iio_device_id(ptr noundef nonnull %call) #6
  %call2.i = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %39, ptr noundef nonnull @.str.18, ptr noundef %41, i32 noundef %call1.i) #6
  %dready_trig.i = getelementptr inbounds %struct.adxl355_data, ptr %37, i32 0, i32 8
  %42 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call2.i, ptr %dready_trig.i, align 4
  %tobool.not.i57 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i57, label %if.then20.cleanup_crit_edge, label %if.end.i59

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i59:                                       ; preds = %if.then20
  %43 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @adxl355_trigger_ops, ptr %call2.i, align 8
  %44 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dready_trig.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %45, i32 0, i32 4, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call, ptr %driver_data.i.i.i, align 4
  %47 = ptrtoint ptr %dev.i56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i56, align 4
  %49 = load ptr, ptr %dready_trig.i, align 4
  %call.i.i58 = call i32 @devm_request_threaded_irq(ptr noundef %48, i32 noundef %call19, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.19, ptr noundef %49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool9.not.i = icmp eq i32 %call.i.i58, 0
  %50 = ptrtoint ptr %dev.i56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i56, align 4
  br i1 %tobool9.not.i, label %if.end13.i, label %adxl355_probe_trigger.exit

if.end13.i:                                       ; preds = %if.end.i59
  %52 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dready_trig.i, align 4
  %call16.i60 = call i32 @__devm_iio_trigger_register(ptr noundef %51, ptr noundef %53, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i60)
  %tobool17.not.i61 = icmp eq i32 %call16.i60, 0
  br i1 %tobool17.not.i61, label %adxl355_probe_trigger.exit.thread69, label %do.end.i62

do.end.i62:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dev.i56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.21) #9
  br label %cleanup

adxl355_probe_trigger.exit.thread69:              ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dready_trig.i, align 4
  %dev.i.i = getelementptr inbounds %struct.iio_trigger, ptr %57, i32 0, i32 4
  %call.i43.i = call ptr @get_device(ptr noundef %dev.i.i) #6
  %owner.i.i = getelementptr inbounds %struct.iio_trigger, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %owner.i.i, align 4
  call void @__module_get(ptr noundef %59) #6
  %trig.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %60 = ptrtoint ptr %trig.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %trig.i, align 4
  br label %if.end25

adxl355_probe_trigger.exit:                       ; preds = %if.end.i59
  %call12.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %51, i32 noundef %call.i.i58, ptr noundef nonnull @.str.20, i32 noundef %call19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool22.not = icmp eq i32 %call12.i, 0
  br i1 %tobool22.not, label %adxl355_probe_trigger.exit.if.end25_crit_edge, label %adxl355_probe_trigger.exit.cleanup_crit_edge

adxl355_probe_trigger.exit.cleanup_crit_edge:     ; preds = %adxl355_probe_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

adxl355_probe_trigger.exit.if.end25_crit_edge:    ; preds = %adxl355_probe_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %adxl355_probe_trigger.exit.if.end25_crit_edge, %adxl355_probe_trigger.exit.thread69, %if.end18.if.end25_crit_edge
  %call26 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %adxl355_probe_trigger.exit.cleanup_crit_edge, %do.end.i62, %if.then20.cleanup_crit_edge, %do.end17, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i66, %do.end10 ], [ %call12, %do.end17 ], [ %call26, %if.end25 ], [ -12, %entry.cleanup_crit_edge ], [ %call12.i, %adxl355_probe_trigger.exit.cleanup_crit_edge ], [ -12, %if.then20.cleanup_crit_edge ], [ %call16.i60, %do.end.i62 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl355_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
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
  %lock = getelementptr inbounds %struct.adxl355_data, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = getelementptr inbounds %struct.adxl355_data, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %4, align 128
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %arrayidx3 = getelementptr %struct.adxl355_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 1
  %call4 = tail call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 8, ptr noundef %arrayidx3, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_notify_crit_edge

entry.out_unlock_notify_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock_notify

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 128
  %arrayidx7 = getelementptr %struct.adxl355_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 5
  %call8 = tail call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 11, ptr noundef %arrayidx7, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.out_unlock_notify_crit_edge

if.end.out_unlock_notify_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock_notify

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 128
  %arrayidx14 = getelementptr %struct.adxl355_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 9
  %call15 = tail call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 14, ptr noundef %arrayidx14, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.out_unlock_notify_crit_edge

if.end11.out_unlock_notify_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock_notify

if.end18:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 128
  %arrayidx21 = getelementptr %struct.adxl355_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 12
  %call22 = tail call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 6, ptr noundef %arrayidx21, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.out_unlock_notify_crit_edge

if.end18.out_unlock_notify_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock_notify

if.end25:                                         ; preds = %if.end18
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scan_timestamp.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end25.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end25.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %19, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %4, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %17, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end25.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %4) #6
  br label %out_unlock_notify

out_unlock_notify:                                ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end18.out_unlock_notify_crit_edge, %if.end11.out_unlock_notify_crit_edge, %if.end.out_unlock_notify_crit_edge, %entry.out_unlock_notify_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %22) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl355_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
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
    i32 2, label %sw.bb17
    i32 3, label %sw.bb22
    i32 5, label %sw.bb23
    i32 12, label %sw.bb27
    i32 11, label %sw.bb33
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb1
    i32 3, label %sw.bb6
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %conv.i74 = and i32 %7, 255
  %10 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 10
  %call.i = tail call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %conv.i74, ptr noundef %10, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %10, align 1
  %conv5 = zext i16 %12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  %address7 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %14 = ptrtoint ptr %address7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address7, align 4
  %arrayidx = getelementptr [3 x %struct.adxl355_chan_info], ptr @adxl355_chans, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %conv.i75 = zext i8 %17 to i32
  %20 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 10
  %call.i76 = tail call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %conv.i75, ptr noundef %20, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i, label %adxl355_read_axis.exit.thread, label %adxl355_read_axis.exit

adxl355_read_axis.exit.thread:                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %arrayidx1.i.i.i = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %24 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %26 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  br label %if.end12

adxl355_read_axis.exit:                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp9 = icmp slt i32 %call.i76, 0
  br i1 %cmp9, label %adxl355_read_axis.exit.cleanup_crit_edge, label %adxl355_read_axis.exit.if.end12_crit_edge

adxl355_read_axis.exit.if.end12_crit_edge:        ; preds = %adxl355_read_axis.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

adxl355_read_axis.exit.cleanup_crit_edge:         ; preds = %adxl355_read_axis.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %adxl355_read_axis.exit.if.end12_crit_edge, %adxl355_read_axis.exit.thread
  %retval.0.i79 = phi i32 [ %or6.i.i.i, %adxl355_read_axis.exit.thread ], [ %call.i76, %adxl355_read_axis.exit.if.end12_crit_edge ]
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %shift, align 1
  %conv13 = zext i8 %28 to i32
  %shr = ashr i32 %retval.0.i79, %conv13
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %realbits, align 1
  %31 = sub i8 32, %30
  %conv1.i = zext i8 %31 to i32
  %shl.i = shl i32 %shr, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %34, label %sw.bb17.cleanup_crit_edge [
    i32 9, label %sw.bb19
    i32 3, label %sw.bb20
  ]

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -110, ptr %val, align 4
  %37 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 497238, ptr %val2, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %val, align 4
  %39 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 38245, ptr %val2, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -2111, ptr %val, align 4
  %41 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 250000, ptr %val2, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %address24 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %42 = ptrtoint ptr %address24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %address24, align 4
  %arrayidx25 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 6, i32 %43
  %44 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx25, align 4
  %shl.i72 = shl i32 %45, 16
  %shr.i73 = ashr exact i32 %shl.i72, 16
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr.i73, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %odr = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %odr, align 8
  %arrayidx28 = getelementptr [11 x [2 x i32]], ptr @adxl355_odr_table, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx28, align 4
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val, align 4
  %52 = load i32, ptr %odr, align 8
  %arrayidx32 = getelementptr [11 x [2 x i32]], ptr @adxl355_odr_table, i32 0, i32 %52, i32 1
  %53 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx32, align 4
  %55 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val2, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hpf_3db = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %hpf_3db to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hpf_3db, align 4
  %arrayidx34 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 %57
  %58 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx34, align 4
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val, align 4
  %61 = load i32, ptr %hpf_3db, align 4
  %arrayidx39 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 %61, i32 1
  %62 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx39, align 4
  %64 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb33, %sw.bb27, %sw.bb23, %sw.bb22, %sw.bb20, %sw.bb19, %sw.bb17.cleanup_crit_edge, %if.end12, %adxl355_read_axis.exit.cleanup_crit_edge, %if.end, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb33 ], [ 2, %sw.bb27 ], [ 1, %sw.bb23 ], [ 2, %sw.bb22 ], [ 3, %sw.bb20 ], [ 2, %sw.bb19 ], [ 1, %if.end12 ], [ 1, %if.end ], [ %call.i, %sw.bb1.cleanup_crit_edge ], [ %call.i76, %adxl355_read_axis.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb17.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adxl355_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %entry.cleanup.sink.split_crit_edge
    i32 11, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %adxl355_hpf_3db_table = getelementptr inbounds %struct.adxl355_data, ptr %2, i32 0, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %adxl355_hpf_3db_table.sink = phi ptr [ %adxl355_hpf_3db_table, %sw.bb1 ], [ @adxl355_odr_table, %entry.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 14, %sw.bb1 ], [ 22, %entry.cleanup.sink.split_crit_edge ]
  %3 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adxl355_hpf_3db_table.sink, ptr %vals, align 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl355_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %for.body.i.preheader
    i32 11, label %sw.bb3
    i32 5, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %val, label %for.body.i.preheader.cleanup_crit_edge [
    i32 4000, label %land.lhs.true.i
    i32 2000, label %land.lhs.true.i.1
    i32 1000, label %land.lhs.true.i.2
    i32 500, label %land.lhs.true.i.3
    i32 250, label %land.lhs.true.i.4
    i32 125, label %land.lhs.true.i.5
    i32 62, label %land.lhs.true.i.6
    i32 31, label %land.lhs.true.i.7
    i32 15, label %land.lhs.true.i.8
    i32 7, label %land.lhs.true.i.9
    i32 3, label %land.lhs.true.i.10
  ]

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.1:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.1 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.1, label %land.lhs.true.i.1.if.end_crit_edge, label %land.lhs.true.i.1.cleanup_crit_edge

land.lhs.true.i.1.cleanup_crit_edge:              ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.1.if.end_crit_edge:               ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.2:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.2 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.2, label %land.lhs.true.i.2.if.end_crit_edge, label %land.lhs.true.i.2.cleanup_crit_edge

land.lhs.true.i.2.cleanup_crit_edge:              ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.2.if.end_crit_edge:               ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.3:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.3 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.3, label %land.lhs.true.i.3.if.end_crit_edge, label %land.lhs.true.i.3.cleanup_crit_edge

land.lhs.true.i.3.cleanup_crit_edge:              ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.3.if.end_crit_edge:               ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.4:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.4 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.4, label %land.lhs.true.i.4.if.end_crit_edge, label %land.lhs.true.i.4.cleanup_crit_edge

land.lhs.true.i.4.cleanup_crit_edge:              ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.4.if.end_crit_edge:               ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.5:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.5 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.5, label %land.lhs.true.i.5.if.end_crit_edge, label %land.lhs.true.i.5.cleanup_crit_edge

land.lhs.true.i.5.cleanup_crit_edge:              ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.5.if.end_crit_edge:               ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.6:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i.6 = icmp eq i32 %val2, 500000
  br i1 %cmp5.i.6, label %land.lhs.true.i.6.if.end_crit_edge, label %land.lhs.true.i.6.cleanup_crit_edge

land.lhs.true.i.6.cleanup_crit_edge:              ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.6.if.end_crit_edge:               ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.7:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.i.7 = icmp eq i32 %val2, 250000
  br i1 %cmp5.i.7, label %land.lhs.true.i.7.if.end_crit_edge, label %land.lhs.true.i.7.cleanup_crit_edge

land.lhs.true.i.7.cleanup_crit_edge:              ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.7.if.end_crit_edge:               ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.8:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 625000, i32 %val2)
  %cmp5.i.8 = icmp eq i32 %val2, 625000
  br i1 %cmp5.i.8, label %land.lhs.true.i.8.if.end_crit_edge, label %land.lhs.true.i.8.cleanup_crit_edge

land.lhs.true.i.8.cleanup_crit_edge:              ; preds = %land.lhs.true.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.8.if.end_crit_edge:               ; preds = %land.lhs.true.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.9:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 813000, i32 %val2)
  %cmp5.i.9 = icmp eq i32 %val2, 813000
  br i1 %cmp5.i.9, label %land.lhs.true.i.9.if.end_crit_edge, label %land.lhs.true.i.9.cleanup_crit_edge

land.lhs.true.i.9.cleanup_crit_edge:              ; preds = %land.lhs.true.i.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.9.if.end_crit_edge:               ; preds = %land.lhs.true.i.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.10:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 906000, i32 %val2)
  %cmp5.i.10 = icmp eq i32 %val2, 906000
  br i1 %cmp5.i.10, label %land.lhs.true.i.10.if.end_crit_edge, label %land.lhs.true.i.10.cleanup_crit_edge

land.lhs.true.i.10.cleanup_crit_edge:             ; preds = %land.lhs.true.i.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.10.if.end_crit_edge:              ; preds = %land.lhs.true.i.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.10.if.end_crit_edge, %land.lhs.true.i.9.if.end_crit_edge, %land.lhs.true.i.8.if.end_crit_edge, %land.lhs.true.i.7.if.end_crit_edge, %land.lhs.true.i.6.if.end_crit_edge, %land.lhs.true.i.5.if.end_crit_edge, %land.lhs.true.i.4.if.end_crit_edge, %land.lhs.true.i.3.if.end_crit_edge, %land.lhs.true.i.2.if.end_crit_edge, %land.lhs.true.i.1.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %i.012.i.lcssa = phi i32 [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 1, %land.lhs.true.i.1.if.end_crit_edge ], [ 2, %land.lhs.true.i.2.if.end_crit_edge ], [ 3, %land.lhs.true.i.3.if.end_crit_edge ], [ 4, %land.lhs.true.i.4.if.end_crit_edge ], [ 5, %land.lhs.true.i.5.if.end_crit_edge ], [ 6, %land.lhs.true.i.6.if.end_crit_edge ], [ 7, %land.lhs.true.i.7.if.end_crit_edge ], [ 8, %land.lhs.true.i.8.if.end_crit_edge ], [ 9, %land.lhs.true.i.9.if.end_crit_edge ], [ 10, %land.lhs.true.i.10.if.end_crit_edge ]
  %lock.i = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %odr1.i = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %odr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %odr1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %i.012.i.lcssa)
  %cmp.i = icmp eq i32 %5, %i.012.i.lcssa
  br i1 %cmp.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end
  %op_mode1.i.i = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %op_mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_mode1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 1
  br i1 %cmp.i.i, label %if.end.i.do.end19.i_crit_edge, label %if.end.i.i

if.end.i.do.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

if.end.i.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 45, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.cleanup.sink.split_crit_edge

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %op_mode1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %op_mode1.i.i, align 4
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.end3.i.i, %if.end.i.do.end19.i_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 40, i32 noundef 15, i32 noundef %i.012.i.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %do.end19.i.err_set_opmode.i_crit_edge

do.end19.i.err_set_opmode.i_crit_edge:            ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_opmode.i

if.end24.i:                                       ; preds = %do.end19.i
  %13 = ptrtoint ptr %odr1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.012.i.lcssa, ptr %odr1.i, align 8
  tail call fastcc void @adxl355_fill_3db_frequency_table(ptr noundef %1) #6
  %14 = ptrtoint ptr %op_mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_mode1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i51.i = icmp eq i32 %15, 0
  br i1 %cmp.i51.i, label %if.end24.i.cleanup.sink.split_crit_edge, label %if.end.i54.i

if.end24.i.cleanup.sink.split_crit_edge:          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i54.i:                                     ; preds = %if.end24.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %call.i.i52.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 45, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call.i.i52.i, 0
  br i1 %tobool.not.i53.i, label %if.end.i54.i.cleanup.sink.split.sink.split_crit_edge, label %if.end.i54.i.err_set_opmode.i_crit_edge

if.end.i54.i.err_set_opmode.i_crit_edge:          ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_opmode.i

if.end.i54.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

err_set_opmode.i:                                 ; preds = %if.end.i54.i.err_set_opmode.i_crit_edge, %do.end19.i.err_set_opmode.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %do.end19.i.err_set_opmode.i_crit_edge ], [ %call.i.i52.i, %if.end.i54.i.err_set_opmode.i_crit_edge ]
  %18 = ptrtoint ptr %op_mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %op_mode1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i59.i = icmp eq i32 %19, 0
  br i1 %cmp.i59.i, label %err_set_opmode.i.cleanup.sink.split_crit_edge, label %if.end.i62.i

err_set_opmode.i.cleanup.sink.split_crit_edge:    ; preds = %err_set_opmode.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i62.i:                                     ; preds = %err_set_opmode.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %call.i.i60.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 45, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %tobool.not.i61.i = icmp eq i32 %call.i.i60.i, 0
  br i1 %tobool.not.i61.i, label %if.end.i62.i.cleanup.sink.split.sink.split_crit_edge, label %if.end.i62.i.cleanup.sink.split_crit_edge

if.end.i62.i.cleanup.sink.split_crit_edge:        ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i62.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

sw.bb3:                                           ; preds = %entry
  %adxl355_hpf_3db_table = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %adxl355_hpf_3db_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %adxl355_hpf_3db_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %val)
  %cmp2.i38 = icmp eq i32 %23, %val
  br i1 %cmp2.i38, label %land.lhs.true.i42, label %sw.bb3.for.inc.i45_crit_edge

sw.bb3.for.inc.i45_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45

land.lhs.true.i42:                                ; preds = %sw.bb3
  %arrayidx4.i40 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx4.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %val2)
  %cmp5.i41 = icmp eq i32 %25, %val2
  br i1 %cmp5.i41, label %land.lhs.true.i42.if.end7_crit_edge, label %land.lhs.true.i42.for.inc.i45_crit_edge

land.lhs.true.i42.for.inc.i45_crit_edge:          ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45

land.lhs.true.i42.if.end7_crit_edge:              ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.i45:                                      ; preds = %land.lhs.true.i42.for.inc.i45_crit_edge, %sw.bb3.for.inc.i45_crit_edge
  %arrayidx.i37.1 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx.i37.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i37.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %val)
  %cmp2.i38.1 = icmp eq i32 %27, %val
  br i1 %cmp2.i38.1, label %land.lhs.true.i42.1, label %for.inc.i45.for.inc.i45.1_crit_edge

for.inc.i45.for.inc.i45.1_crit_edge:              ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.1

land.lhs.true.i42.1:                              ; preds = %for.inc.i45
  %arrayidx4.i40.1 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx4.i40.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i40.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %val2)
  %cmp5.i41.1 = icmp eq i32 %29, %val2
  br i1 %cmp5.i41.1, label %land.lhs.true.i42.1.if.end7_crit_edge, label %land.lhs.true.i42.1.for.inc.i45.1_crit_edge

land.lhs.true.i42.1.for.inc.i45.1_crit_edge:      ; preds = %land.lhs.true.i42.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.1

land.lhs.true.i42.1.if.end7_crit_edge:            ; preds = %land.lhs.true.i42.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.i45.1:                                    ; preds = %land.lhs.true.i42.1.for.inc.i45.1_crit_edge, %for.inc.i45.for.inc.i45.1_crit_edge
  %arrayidx.i37.2 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %arrayidx.i37.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i37.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %val)
  %cmp2.i38.2 = icmp eq i32 %31, %val
  br i1 %cmp2.i38.2, label %land.lhs.true.i42.2, label %for.inc.i45.1.for.inc.i45.2_crit_edge

for.inc.i45.1.for.inc.i45.2_crit_edge:            ; preds = %for.inc.i45.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.2

land.lhs.true.i42.2:                              ; preds = %for.inc.i45.1
  %arrayidx4.i40.2 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx4.i40.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i40.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %val2)
  %cmp5.i41.2 = icmp eq i32 %33, %val2
  br i1 %cmp5.i41.2, label %land.lhs.true.i42.2.if.end7_crit_edge, label %land.lhs.true.i42.2.for.inc.i45.2_crit_edge

land.lhs.true.i42.2.for.inc.i45.2_crit_edge:      ; preds = %land.lhs.true.i42.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.2

land.lhs.true.i42.2.if.end7_crit_edge:            ; preds = %land.lhs.true.i42.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.i45.2:                                    ; preds = %land.lhs.true.i42.2.for.inc.i45.2_crit_edge, %for.inc.i45.1.for.inc.i45.2_crit_edge
  %arrayidx.i37.3 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 3
  %34 = ptrtoint ptr %arrayidx.i37.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i37.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %val)
  %cmp2.i38.3 = icmp eq i32 %35, %val
  br i1 %cmp2.i38.3, label %land.lhs.true.i42.3, label %for.inc.i45.2.for.inc.i45.3_crit_edge

for.inc.i45.2.for.inc.i45.3_crit_edge:            ; preds = %for.inc.i45.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.3

land.lhs.true.i42.3:                              ; preds = %for.inc.i45.2
  %arrayidx4.i40.3 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx4.i40.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.i40.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %val2)
  %cmp5.i41.3 = icmp eq i32 %37, %val2
  br i1 %cmp5.i41.3, label %land.lhs.true.i42.3.if.end7_crit_edge, label %land.lhs.true.i42.3.for.inc.i45.3_crit_edge

land.lhs.true.i42.3.for.inc.i45.3_crit_edge:      ; preds = %land.lhs.true.i42.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.3

land.lhs.true.i42.3.if.end7_crit_edge:            ; preds = %land.lhs.true.i42.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.i45.3:                                    ; preds = %land.lhs.true.i42.3.for.inc.i45.3_crit_edge, %for.inc.i45.2.for.inc.i45.3_crit_edge
  %arrayidx.i37.4 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 4
  %38 = ptrtoint ptr %arrayidx.i37.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i37.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %val)
  %cmp2.i38.4 = icmp eq i32 %39, %val
  br i1 %cmp2.i38.4, label %land.lhs.true.i42.4, label %for.inc.i45.3.for.inc.i45.4_crit_edge

for.inc.i45.3.for.inc.i45.4_crit_edge:            ; preds = %for.inc.i45.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.4

land.lhs.true.i42.4:                              ; preds = %for.inc.i45.3
  %arrayidx4.i40.4 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx4.i40.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.i40.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %val2)
  %cmp5.i41.4 = icmp eq i32 %41, %val2
  br i1 %cmp5.i41.4, label %land.lhs.true.i42.4.if.end7_crit_edge, label %land.lhs.true.i42.4.for.inc.i45.4_crit_edge

land.lhs.true.i42.4.for.inc.i45.4_crit_edge:      ; preds = %land.lhs.true.i42.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.4

land.lhs.true.i42.4.if.end7_crit_edge:            ; preds = %land.lhs.true.i42.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.i45.4:                                    ; preds = %land.lhs.true.i42.4.for.inc.i45.4_crit_edge, %for.inc.i45.3.for.inc.i45.4_crit_edge
  %arrayidx.i37.5 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 5
  %42 = ptrtoint ptr %arrayidx.i37.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i37.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %val)
  %cmp2.i38.5 = icmp eq i32 %43, %val
  br i1 %cmp2.i38.5, label %land.lhs.true.i42.5, label %for.inc.i45.4.for.inc.i45.5_crit_edge

for.inc.i45.4.for.inc.i45.5_crit_edge:            ; preds = %for.inc.i45.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.5

land.lhs.true.i42.5:                              ; preds = %for.inc.i45.4
  %arrayidx4.i40.5 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 5, i32 1
  %44 = ptrtoint ptr %arrayidx4.i40.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx4.i40.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %val2)
  %cmp5.i41.5 = icmp eq i32 %45, %val2
  br i1 %cmp5.i41.5, label %land.lhs.true.i42.5.if.end7_crit_edge, label %land.lhs.true.i42.5.for.inc.i45.5_crit_edge

land.lhs.true.i42.5.for.inc.i45.5_crit_edge:      ; preds = %land.lhs.true.i42.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i45.5

land.lhs.true.i42.5.if.end7_crit_edge:            ; preds = %land.lhs.true.i42.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.i45.5:                                    ; preds = %land.lhs.true.i42.5.for.inc.i45.5_crit_edge, %for.inc.i45.4.for.inc.i45.5_crit_edge
  %arrayidx.i37.6 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 6
  %46 = ptrtoint ptr %arrayidx.i37.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i37.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %val)
  %cmp2.i38.6 = icmp eq i32 %47, %val
  br i1 %cmp2.i38.6, label %land.lhs.true.i42.6, label %for.inc.i45.5.cleanup_crit_edge

for.inc.i45.5.cleanup_crit_edge:                  ; preds = %for.inc.i45.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i42.6:                              ; preds = %for.inc.i45.5
  %arrayidx4.i40.6 = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 7, i32 6, i32 1
  %48 = ptrtoint ptr %arrayidx4.i40.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i40.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %val2)
  %cmp5.i41.6 = icmp eq i32 %49, %val2
  br i1 %cmp5.i41.6, label %land.lhs.true.i42.6.if.end7_crit_edge, label %land.lhs.true.i42.6.cleanup_crit_edge

land.lhs.true.i42.6.cleanup_crit_edge:            ; preds = %land.lhs.true.i42.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i42.6.if.end7_crit_edge:            ; preds = %land.lhs.true.i42.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.i42.6.if.end7_crit_edge, %land.lhs.true.i42.5.if.end7_crit_edge, %land.lhs.true.i42.4.if.end7_crit_edge, %land.lhs.true.i42.3.if.end7_crit_edge, %land.lhs.true.i42.2.if.end7_crit_edge, %land.lhs.true.i42.1.if.end7_crit_edge, %land.lhs.true.i42.if.end7_crit_edge
  %i.012.i36.lcssa = phi i32 [ 0, %land.lhs.true.i42.if.end7_crit_edge ], [ 1, %land.lhs.true.i42.1.if.end7_crit_edge ], [ 2, %land.lhs.true.i42.2.if.end7_crit_edge ], [ 3, %land.lhs.true.i42.3.if.end7_crit_edge ], [ 4, %land.lhs.true.i42.4.if.end7_crit_edge ], [ 5, %land.lhs.true.i42.5.if.end7_crit_edge ], [ 6, %land.lhs.true.i42.6.if.end7_crit_edge ]
  %lock.i48 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i48, i32 noundef 0) #6
  %hpf_3db.i = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %hpf_3db.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hpf_3db.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %i.012.i36.lcssa)
  %cmp.i49 = icmp eq i32 %51, %i.012.i36.lcssa
  br i1 %cmp.i49, label %if.end7.cleanup.sink.split_crit_edge, label %if.end.i52

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i52:                                       ; preds = %if.end7
  %op_mode1.i.i50 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %op_mode1.i.i50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %op_mode1.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i.i51 = icmp eq i32 %53, 1
  br i1 %cmp.i.i51, label %if.end.i52.do.end18.i_crit_edge, label %if.end.i.i55

if.end.i52.do.end18.i_crit_edge:                  ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18.i

if.end.i.i55:                                     ; preds = %if.end.i52
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 128
  %call.i.i.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 45, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i53)
  %tobool.not.i.i54 = icmp eq i32 %call.i.i.i53, 0
  br i1 %tobool.not.i.i54, label %if.end3.i.i56, label %if.end.i.i55.cleanup.sink.split_crit_edge

if.end.i.i55.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end3.i.i56:                                    ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %op_mode1.i.i50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %op_mode1.i.i50, align 4
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.end3.i.i56, %if.end.i52.do.end18.i_crit_edge
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 128
  %shl.i = shl nuw nsw i32 %i.012.i36.lcssa, 4
  %call.i.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 40, i32 noundef 112, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool21.not.i = icmp eq i32 %call.i.i57, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %do.end18.i.err_set_opmode.i59_crit_edge

do.end18.i.err_set_opmode.i59_crit_edge:          ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_opmode.i59

if.end23.i:                                       ; preds = %do.end18.i
  %59 = ptrtoint ptr %hpf_3db.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.012.i36.lcssa, ptr %hpf_3db.i, align 4
  %60 = ptrtoint ptr %op_mode1.i.i50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %op_mode1.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i49.i = icmp eq i32 %61, 0
  br i1 %cmp.i49.i, label %if.end23.i.cleanup.sink.split_crit_edge, label %if.end.i52.i

if.end23.i.cleanup.sink.split_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i52.i:                                     ; preds = %if.end23.i
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 128
  %call.i.i50.i = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 45, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.end.i52.i.cleanup.sink.split.sink.split_crit_edge, label %if.end.i52.i.err_set_opmode.i59_crit_edge

if.end.i52.i.err_set_opmode.i59_crit_edge:        ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_opmode.i59

if.end.i52.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

err_set_opmode.i59:                               ; preds = %if.end.i52.i.err_set_opmode.i59_crit_edge, %do.end18.i.err_set_opmode.i59_crit_edge
  %ret.0.i58 = phi i32 [ %call.i.i57, %do.end18.i.err_set_opmode.i59_crit_edge ], [ %call.i.i50.i, %if.end.i52.i.err_set_opmode.i59_crit_edge ]
  %64 = ptrtoint ptr %op_mode1.i.i50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %op_mode1.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i57.i = icmp eq i32 %65, 0
  br i1 %cmp.i57.i, label %err_set_opmode.i59.cleanup.sink.split_crit_edge, label %if.end.i60.i

err_set_opmode.i59.cleanup.sink.split_crit_edge:  ; preds = %err_set_opmode.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i60.i:                                     ; preds = %err_set_opmode.i59
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 128
  %call.i.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 45, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i.i58.i, 0
  br i1 %tobool.not.i59.i, label %if.end.i60.i.cleanup.sink.split.sink.split_crit_edge, label %if.end.i60.i.cleanup.sink.split_crit_edge

if.end.i60.i.cleanup.sink.split_crit_edge:        ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i60.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

sw.bb9:                                           ; preds = %entry
  %68 = tail call i32 @llvm.smax.i32(i32 %val, i32 -32768)
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 32767)
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %70 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %address, align 4
  %lock.i63 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i63, i32 noundef 0) #6
  %op_mode1.i.i64 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 3
  %72 = ptrtoint ptr %op_mode1.i.i64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %op_mode1.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i.i65 = icmp eq i32 %73, 1
  br i1 %cmp.i.i65, label %sw.bb9.if.end.i70_crit_edge, label %if.end.i.i68

sw.bb9.if.end.i70_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i70

if.end.i.i68:                                     ; preds = %sw.bb9
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 128
  %call.i.i.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 45, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i66)
  %tobool.not.i.i67 = icmp eq i32 %call.i.i.i66, 0
  br i1 %tobool.not.i.i67, label %if.end3.i.i69, label %if.end.i.i68.cleanup.sink.split_crit_edge

if.end.i.i68.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end3.i.i69:                                    ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %op_mode1.i.i64 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %op_mode1.i.i64, align 4
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.end3.i.i69, %sw.bb9.if.end.i70_crit_edge
  %conv.i = trunc i32 %69 to i16
  %77 = getelementptr inbounds %struct.adxl355_data, ptr %1, i32 0, i32 10
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %conv.i, ptr %77, align 1
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 128
  %offset_reg.i = getelementptr [3 x %struct.adxl355_chan_info], ptr @adxl355_chans, i32 0, i32 %71, i32 1
  %81 = ptrtoint ptr %offset_reg.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %offset_reg.i, align 1
  %conv1.i = zext i8 %82 to i32
  %call3.i = tail call i32 @regmap_bulk_write(ptr noundef %80, i32 noundef %conv1.i, ptr noundef %77, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i70.err_set_opmode.i72_crit_edge

if.end.i70.err_set_opmode.i72_crit_edge:          ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_opmode.i72

if.end6.i:                                        ; preds = %if.end.i70
  %arrayidx8.i = getelementptr %struct.adxl355_data, ptr %1, i32 0, i32 6, i32 %71
  %83 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %69, ptr %arrayidx8.i, align 4
  %84 = ptrtoint ptr %op_mode1.i.i64 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %op_mode1.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i31.i = icmp eq i32 %85, 0
  br i1 %cmp.i31.i, label %if.end6.i.cleanup.sink.split_crit_edge, label %if.end.i34.i

if.end6.i.cleanup.sink.split_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i34.i:                                     ; preds = %if.end6.i
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 128
  %call.i.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 45, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i34.i.cleanup.sink.split.sink.split_crit_edge, label %if.end.i34.i.err_set_opmode.i72_crit_edge

if.end.i34.i.err_set_opmode.i72_crit_edge:        ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_opmode.i72

if.end.i34.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

err_set_opmode.i72:                               ; preds = %if.end.i34.i.err_set_opmode.i72_crit_edge, %if.end.i70.err_set_opmode.i72_crit_edge
  %ret.0.i71 = phi i32 [ %call3.i, %if.end.i70.err_set_opmode.i72_crit_edge ], [ %call.i.i32.i, %if.end.i34.i.err_set_opmode.i72_crit_edge ]
  %88 = ptrtoint ptr %op_mode1.i.i64 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %op_mode1.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i39.i = icmp eq i32 %89, 0
  br i1 %cmp.i39.i, label %err_set_opmode.i72.cleanup.sink.split_crit_edge, label %if.end.i42.i

err_set_opmode.i72.cleanup.sink.split_crit_edge:  ; preds = %err_set_opmode.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i42.i:                                     ; preds = %err_set_opmode.i72
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 128
  %call.i.i40.i = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 45, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i)
  %tobool.not.i41.i = icmp eq i32 %call.i.i40.i, 0
  br i1 %tobool.not.i41.i, label %if.end.i42.i.cleanup.sink.split.sink.split_crit_edge, label %if.end.i42.i.cleanup.sink.split_crit_edge

if.end.i42.i.cleanup.sink.split_crit_edge:        ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i42.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i42.i.cleanup.sink.split.sink.split_crit_edge, %if.end.i34.i.cleanup.sink.split.sink.split_crit_edge, %if.end.i60.i.cleanup.sink.split.sink.split_crit_edge, %if.end.i52.i.cleanup.sink.split.sink.split_crit_edge, %if.end.i62.i.cleanup.sink.split.sink.split_crit_edge, %if.end.i54.i.cleanup.sink.split.sink.split_crit_edge
  %op_mode1.i.i64.sink = phi ptr [ %op_mode1.i.i, %if.end.i62.i.cleanup.sink.split.sink.split_crit_edge ], [ %op_mode1.i.i, %if.end.i54.i.cleanup.sink.split.sink.split_crit_edge ], [ %op_mode1.i.i50, %if.end.i60.i.cleanup.sink.split.sink.split_crit_edge ], [ %op_mode1.i.i50, %if.end.i52.i.cleanup.sink.split.sink.split_crit_edge ], [ %op_mode1.i.i64, %if.end.i42.i.cleanup.sink.split.sink.split_crit_edge ], [ %op_mode1.i.i64, %if.end.i34.i.cleanup.sink.split.sink.split_crit_edge ]
  %lock.i63.sink.ph = phi ptr [ %lock.i, %if.end.i62.i.cleanup.sink.split.sink.split_crit_edge ], [ %lock.i, %if.end.i54.i.cleanup.sink.split.sink.split_crit_edge ], [ %lock.i48, %if.end.i60.i.cleanup.sink.split.sink.split_crit_edge ], [ %lock.i48, %if.end.i52.i.cleanup.sink.split.sink.split_crit_edge ], [ %lock.i63, %if.end.i42.i.cleanup.sink.split.sink.split_crit_edge ], [ %lock.i63, %if.end.i34.i.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %ret.0.i, %if.end.i62.i.cleanup.sink.split.sink.split_crit_edge ], [ 0, %if.end.i54.i.cleanup.sink.split.sink.split_crit_edge ], [ %ret.0.i58, %if.end.i60.i.cleanup.sink.split.sink.split_crit_edge ], [ 0, %if.end.i52.i.cleanup.sink.split.sink.split_crit_edge ], [ %ret.0.i71, %if.end.i42.i.cleanup.sink.split.sink.split_crit_edge ], [ 0, %if.end.i34.i.cleanup.sink.split.sink.split_crit_edge ]
  %92 = ptrtoint ptr %op_mode1.i.i64.sink to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %op_mode1.i.i64.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i42.i.cleanup.sink.split_crit_edge, %err_set_opmode.i72.cleanup.sink.split_crit_edge, %if.end6.i.cleanup.sink.split_crit_edge, %if.end.i.i68.cleanup.sink.split_crit_edge, %if.end.i60.i.cleanup.sink.split_crit_edge, %err_set_opmode.i59.cleanup.sink.split_crit_edge, %if.end23.i.cleanup.sink.split_crit_edge, %if.end.i.i55.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.i62.i.cleanup.sink.split_crit_edge, %err_set_opmode.i.cleanup.sink.split_crit_edge, %if.end24.i.cleanup.sink.split_crit_edge, %if.end.i.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %lock.i63.sink = phi ptr [ %lock.i, %if.end.cleanup.sink.split_crit_edge ], [ %lock.i, %if.end.i.i.cleanup.sink.split_crit_edge ], [ %lock.i, %if.end24.i.cleanup.sink.split_crit_edge ], [ %lock.i, %err_set_opmode.i.cleanup.sink.split_crit_edge ], [ %lock.i, %if.end.i62.i.cleanup.sink.split_crit_edge ], [ %lock.i48, %if.end7.cleanup.sink.split_crit_edge ], [ %lock.i48, %if.end.i.i55.cleanup.sink.split_crit_edge ], [ %lock.i48, %if.end23.i.cleanup.sink.split_crit_edge ], [ %lock.i48, %err_set_opmode.i59.cleanup.sink.split_crit_edge ], [ %lock.i48, %if.end.i60.i.cleanup.sink.split_crit_edge ], [ %lock.i63, %if.end.i.i68.cleanup.sink.split_crit_edge ], [ %lock.i63, %if.end6.i.cleanup.sink.split_crit_edge ], [ %lock.i63, %err_set_opmode.i72.cleanup.sink.split_crit_edge ], [ %lock.i63, %if.end.i42.i.cleanup.sink.split_crit_edge ], [ %lock.i63.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ %call.i.i.i, %if.end.i.i.cleanup.sink.split_crit_edge ], [ 0, %if.end24.i.cleanup.sink.split_crit_edge ], [ %ret.0.i, %err_set_opmode.i.cleanup.sink.split_crit_edge ], [ %ret.0.i, %if.end.i62.i.cleanup.sink.split_crit_edge ], [ 0, %if.end7.cleanup.sink.split_crit_edge ], [ %call.i.i.i53, %if.end.i.i55.cleanup.sink.split_crit_edge ], [ 0, %if.end23.i.cleanup.sink.split_crit_edge ], [ %ret.0.i58, %err_set_opmode.i59.cleanup.sink.split_crit_edge ], [ %ret.0.i58, %if.end.i60.i.cleanup.sink.split_crit_edge ], [ %call.i.i.i66, %if.end.i.i68.cleanup.sink.split_crit_edge ], [ 0, %if.end6.i.cleanup.sink.split_crit_edge ], [ %ret.0.i71, %err_set_opmode.i72.cleanup.sink.split_crit_edge ], [ %ret.0.i71, %if.end.i42.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock.i63.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i42.6.cleanup_crit_edge, %for.inc.i45.5.cleanup_crit_edge, %land.lhs.true.i.10.cleanup_crit_edge, %land.lhs.true.i.9.cleanup_crit_edge, %land.lhs.true.i.8.cleanup_crit_edge, %land.lhs.true.i.7.cleanup_crit_edge, %land.lhs.true.i.6.cleanup_crit_edge, %land.lhs.true.i.5.cleanup_crit_edge, %land.lhs.true.i.4.cleanup_crit_edge, %land.lhs.true.i.3.cleanup_crit_edge, %land.lhs.true.i.2.cleanup_crit_edge, %land.lhs.true.i.1.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %for.body.i.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.10.cleanup_crit_edge ], [ -22, %land.lhs.true.i42.6.cleanup_crit_edge ], [ -22, %for.inc.i45.5.cleanup_crit_edge ], [ -22, %land.lhs.true.i.9.cleanup_crit_edge ], [ -22, %land.lhs.true.i.8.cleanup_crit_edge ], [ -22, %land.lhs.true.i.7.cleanup_crit_edge ], [ -22, %land.lhs.true.i.6.cleanup_crit_edge ], [ -22, %land.lhs.true.i.5.cleanup_crit_edge ], [ -22, %land.lhs.true.i.4.cleanup_crit_edge ], [ -22, %land.lhs.true.i.3.cleanup_crit_edge ], [ -22, %land.lhs.true.i.2.cleanup_crit_edge ], [ -22, %land.lhs.true.i.1.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %for.body.i.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adxl355_set_op_mode(ptr nocapture noundef %data, i32 noundef %op_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode1 = getelementptr inbounds %struct.adxl355_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %op_mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %op_mode)
  %cmp = icmp eq i32 %1, %op_mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 128
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 45, i32 noundef 3, i32 noundef %op_mode, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %op_mode1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %op_mode, ptr %op_mode1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adxl355_fill_3db_frequency_table(ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %rem = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem) #6
  %0 = ptrtoint ptr %rem to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rem, align 8, !annotation !85
  %odr1 = getelementptr inbounds %struct.adxl355_data, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %odr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %odr1, align 8
  %arrayidx = getelementptr [11 x [2 x i32]], ptr @adxl355_odr_table, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %4 to i64
  %conv.i.i = and i64 %conv, 4294967295
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp sgt i32 %4, -1
  br i1 %tobool.not.i, label %entry.mul_u64_u32_shr.exit_crit_edge, label %if.then.i

entry.mul_u64_u32_shr.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mul_u64_u32_shr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = and i64 %conv, -4294967296
  %shl.i = mul nsw i64 %shr.i, 1000000
  %add.i = add nsw i64 %mul.i.i, %shl.i
  br label %mul_u64_u32_shr.exit

mul_u64_u32_shr.exit:                             ; preds = %if.then.i, %entry.mul_u64_u32_shr.exit_crit_edge
  %ret.0.i = phi i64 [ %add.i, %if.then.i ], [ %mul.i.i, %entry.mul_u64_u32_shr.exit_crit_edge ]
  %arrayidx5 = getelementptr [11 x [2 x i32]], ptr @adxl355_odr_table, i32 0, i32 %2, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %conv6 = sext i32 %6 to i64
  %add = add nsw i64 %ret.0.i, %conv6
  %conv.i.i26 = and i64 %add, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %tobool.not.i28 = icmp ult i64 %add, 4294967296
  %shr.i29 = and i64 %add, -4294967296
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mul_u64_u32_shr.exit
  %i.035 = phi i32 [ 0, %mul_u64_u32_shr.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx8 = getelementptr [7 x i32], ptr @adxl355_hpf_3db_multipliers, i32 0, i32 %i.035
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8, align 4
  %conv1.i.i = zext i32 %8 to i64
  %mul.i.i27 = mul nuw i64 %conv.i.i26, %conv1.i.i
  %shl.i30 = mul i64 %shr.i29, %conv1.i.i
  %add.i31 = select i1 %tobool.not.i28, i64 0, i64 %shl.i30
  %ret.0.i33 = add i64 %mul.i.i27, %add.i31
  %call10 = call i64 @div64_u64_rem(i64 noundef %ret.0.i33, i64 noundef 100000000000000, ptr noundef nonnull %rem) #6
  %conv11 = trunc i64 %call10 to i32
  %arrayidx12 = getelementptr %struct.adxl355_data, ptr %data, i32 0, i32 7, i32 %i.035
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv11, ptr %arrayidx12, align 4
  %10 = ptrtoint ptr %rem to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rem, align 8
  %12 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %11) #10, !srcloc !87
  %13 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %11, i64 %12, i32 0) #10, !srcloc !88
  %asmresult10.i.i.i = extractvalue { i64, i32 } %13, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 26
  %conv15 = trunc i64 %div1581.i.i to i32
  %arrayidx18 = getelementptr %struct.adxl355_data, ptr %data, i32 0, i32 7, i32 %i.035, i32 1
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15, ptr %arrayidx18, align 4
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl355_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
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
  %lock = getelementptr inbounds %struct.adxl355_data, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %shl = select i1 %state, i32 0, i32 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 45, i32 noundef 4, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @adxl355_readable_regs_tbl, !1, !"adxl355_readable_regs_tbl", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/adxl355_core.c", i32 71, i32 34}
!2 = !{ptr @__ksymtab_adxl355_readable_regs_tbl, !3, !"__ksymtab_adxl355_readable_regs_tbl", i1 false, i1 false}
!3 = !{!"../drivers/iio/accel/adxl355_core.c", i32 75, i32 1}
!4 = !{ptr @adxl355_writeable_regs_tbl, !5, !"adxl355_writeable_regs_tbl", i1 false, i1 false}
!5 = !{!"../drivers/iio/accel/adxl355_core.c", i32 81, i32 34}
!6 = !{ptr @__ksymtab_adxl355_writeable_regs_tbl, !7, !"__ksymtab_adxl355_writeable_regs_tbl", i1 false, i1 false}
!7 = !{!"../drivers/iio/accel/adxl355_core.c", i32 85, i32 1}
!8 = !{ptr @adxl355_core_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/iio/accel/adxl355_core.c", i32 726, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/accel/adxl355_core.c", i32 737, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adxl355_core_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @adxl355_core_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/accel/adxl355_core.c", i32 745, i32 3}
!21 = !{ptr @adxl355_core_probe._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @adxl355_core_probe._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/accel/adxl355_core.c", i32 752, i32 40}
!25 = !{ptr @__ksymtab_adxl355_core_probe, !26, !"__ksymtab_adxl355_core_probe", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/adxl355_core.c", i32 761, i32 1}
!27 = !{ptr @__UNIQUE_ID_author211, !28, !"__UNIQUE_ID_author211", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/adxl355_core.c", i32 763, i32 1}
!29 = !{ptr @__UNIQUE_ID_description212, !30, !"__UNIQUE_ID_description212", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/adxl355_core.c", i32 764, i32 1}
!31 = !{ptr @__UNIQUE_ID_file213, !32, !"__UNIQUE_ID_file213", i1 false, i1 false}
!32 = !{!"../drivers/iio/accel/adxl355_core.c", i32 765, i32 1}
!33 = !{ptr @__UNIQUE_ID_license214, !32, !"__UNIQUE_ID_license214", i1 false, i1 false}
!34 = !{ptr @adxl355_read_reg_range, !35, !"adxl355_read_reg_range", i1 false, i1 false}
!35 = !{!"../drivers/iio/accel/adxl355_core.c", i32 66, i32 34}
!36 = !{ptr @adxl355_write_reg_range, !37, !"adxl355_write_reg_range", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/adxl355_core.c", i32 77, i32 34}
!38 = !{ptr @adxl355_info, !39, !"adxl355_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/accel/adxl355_core.c", i32 571, i32 30}
!40 = !{ptr @adxl355_chans, !41, !"adxl355_chans", i1 false, i1 false}
!41 = !{!"../drivers/iio/accel/adxl355_core.c", i32 150, i32 39}
!42 = !{ptr @adxl355_odr_table, !43, !"adxl355_odr_table", i1 false, i1 false}
!43 = !{!"../drivers/iio/accel/adxl355_core.c", i32 117, i32 18}
!44 = !{ptr @adxl355_hpf_3db_multipliers, !45, !"adxl355_hpf_3db_multipliers", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/adxl355_core.c", i32 131, i32 18}
!46 = !{ptr @adxl355_channels, !47, !"adxl355_channels", i1 false, i1 false}
!47 = !{!"../drivers/iio/accel/adxl355_core.c", i32 657, i32 35}
!48 = !{ptr @adxl355_avail_scan_masks, !49, !"adxl355_avail_scan_masks", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/adxl355_core.c", i32 566, i32 28}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/accel/adxl355_core.c", i32 249, i32 3}
!52 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @adxl355_setup._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @adxl355_setup._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/accel/adxl355_core.c", i32 258, i32 3}
!57 = !{ptr @adxl355_setup._entry.12, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @adxl355_setup._entry_ptr.14, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/accel/adxl355_core.c", i32 267, i32 3}
!61 = !{ptr @adxl355_setup._entry.15, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @adxl355_setup._entry_ptr.17, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/accel/adxl355_core.c", i32 683, i32 56}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/accel/adxl355_core.c", i32 694, i32 25}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/accel/adxl355_core.c", i32 696, i32 40}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/accel/adxl355_core.c", i32 701, i32 3}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @adxl355_probe_trigger._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @adxl355_probe_trigger._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @adxl355_trigger_ops, !75, !"adxl355_trigger_ops", i1 false, i1 false}
!75 = !{!"../drivers/iio/accel/adxl355_core.c", i32 577, i32 37}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{i8 0, i8 2}
!87 = !{i64 920346, i64 920373}
!88 = !{i64 921041, i64 921068, i64 921101, i64 921122, i64 921149, i64 921175}
