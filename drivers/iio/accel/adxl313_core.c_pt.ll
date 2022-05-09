; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/adxl313_core.c_pt.bc'
source_filename = "../drivers/iio/accel/adxl313_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adxl313_readable_regs_table\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl313_readable_regs_table\09\09\09\09"
module asm "\09.long\09__crc_adxl313_readable_regs_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl313_readable_regs_table:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl313_readable_regs_table\22\09\09\09\09\09"
module asm "__kstrtabns_adxl313_readable_regs_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl313_writable_regs_table\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl313_writable_regs_table\09\09\09\09"
module asm "\09.long\09__crc_adxl313_writable_regs_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl313_writable_regs_table:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl313_writable_regs_table\22\09\09\09\09\09"
module asm "__kstrtabns_adxl313_writable_regs_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl313_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl313_core_probe\09\09\09\09"
module asm "\09.long\09__crc_adxl313_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl313_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl313_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adxl313_core_probe:\09\09\09\09\09"
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
%struct.adxl313_data = type { ptr, %struct.mutex, [32 x i8], i16, [126 x i8] }

@adxl313_readable_reg_range = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 4 }, %struct.regmap_range { i32 24, i32 24 }, %struct.regmap_range { i32 30, i32 32 }, %struct.regmap_range { i32 36, i32 39 }, %struct.regmap_range { i32 44, i32 57 }], [56 x i8] zeroinitializer }, align 32
@adxl313_readable_regs_table = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @adxl313_readable_reg_range, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_adxl313_readable_regs_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl313_readable_regs_table = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl313_readable_regs_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl313_readable_regs_table to i32), ptr @__kstrtab_adxl313_readable_regs_table, ptr @__kstrtabns_adxl313_readable_regs_table }, section "___ksymtab_gpl+adxl313_readable_regs_table", align 4
@adxl313_writable_reg_range = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 24, i32 24 }, %struct.regmap_range { i32 30, i32 32 }, %struct.regmap_range { i32 36, i32 39 }, %struct.regmap_range { i32 44, i32 47 }, %struct.regmap_range { i32 49, i32 49 }, %struct.regmap_range { i32 56, i32 56 }], [48 x i8] zeroinitializer }, align 32
@adxl313_writable_regs_table = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @adxl313_writable_reg_range, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_adxl313_writable_regs_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl313_writable_regs_table = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl313_writable_regs_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl313_writable_regs_table to i32), ptr @__kstrtab_adxl313_writable_regs_table, ptr @__kstrtabns_adxl313_writable_regs_table }, section "___ksymtab_gpl+adxl313_writable_regs_table", align 4
@adxl313_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adxl313_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adxl313_read_raw, ptr null, ptr @adxl313_read_freq_avail, ptr @adxl313_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adxl313_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 { i8 0, i8 13, i8 0, i8 0, i8 0, i32 0 }, i32 33, i32 0, i32 4100, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 1, i32 0, %struct.anon.43 { i8 0, i8 13, i8 0, i8 0, i8 0, i32 0 }, i32 33, i32 0, i32 4100, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 2, i32 0, %struct.anon.43 { i8 0, i8 13, i8 0, i8 0, i8 0, i32 0 }, i32 33, i32 0, i32 4100, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@adxl313_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADXL313 setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adxl313_core_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/accel/adxl313_core.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adxl313_core_probe._entry_ptr = internal global ptr @adxl313_core_probe._entry, section ".printk_index", align 4
@__kstrtab_adxl313_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl313_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl313_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl313_core_probe to i32), ptr @__kstrtab_adxl313_core_probe, ptr @__kstrtabns_adxl313_core_probe }, section "___ksymtab_gpl+adxl313_core_probe", align 4
@__UNIQUE_ID_author189 = internal constant [62 x i8] c"adxl313_core.author=Lucas Stankus <lucas.p.stankus@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [74 x i8] c"adxl313_core.description=ADXL313 3-Axis Digital Accelerometer core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [49 x i8] c"adxl313_core.file=drivers/iio/accel/adxl313_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [28 x i8] c"adxl313_core.license=GPL v2\00", section ".modinfo", align 1
@adxl313_odr_freqs = internal constant { [10 x [2 x i32]], [48 x i8] } { [10 x [2 x i32]] [[2 x i32] [i32 6, i32 250000], [2 x i32] [i32 12, i32 500000], [2 x i32] [i32 25, i32 0], [2 x i32] [i32 50, i32 0], [2 x i32] [i32 100, i32 0], [2 x i32] [i32 200, i32 0], [2 x i32] [i32 400, i32 0], [2 x i32] [i32 800, i32 0], [2 x i32] [i32 1600, i32 0], [2 x i32] [i32 3200, i32 0]], [48 x i8] zeroinitializer }, align 32
@adxl313_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid manufacturer ID: 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adxl313_setup\00", [18 x i8] zeroinitializer }, align 32
@adxl313_setup._entry_ptr = internal global ptr @adxl313_setup._entry, section ".printk_index", align 4
@adxl313_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid mems ID: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@adxl313_setup._entry_ptr.10 = internal global ptr @adxl313_setup._entry.8, section ".printk_index", align 4
@adxl313_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid device ID: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@adxl313_setup._entry_ptr.13 = internal global ptr @adxl313_setup._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 12]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 12]
@__sancov_gen_cov_switch_values.15 = internal global [12 x i64] [i64 10, i64 32, i64 6, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800, i64 1600, i64 3200]
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"adxl313_readable_reg_range\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 17, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"adxl313_readable_regs_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 25, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"adxl313_writable_reg_range\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 31, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"adxl313_writable_regs_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 40, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 312, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"adxl313_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 217, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"adxl313_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 81, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 322, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"adxl313_odr_freqs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 52, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 246, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 255, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [36 x i8] c"../drivers/iio/accel/adxl313_core.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 264, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__ksymtab_adxl313_core_probe, ptr @__ksymtab_adxl313_readable_regs_table, ptr @__ksymtab_adxl313_writable_regs_table, ptr @adxl313_core_probe._entry, ptr @adxl313_core_probe._entry_ptr, ptr @adxl313_setup._entry, ptr @adxl313_setup._entry.11, ptr @adxl313_setup._entry.8, ptr @adxl313_setup._entry_ptr, ptr @adxl313_setup._entry_ptr.10, ptr @adxl313_setup._entry_ptr.13, ptr @adxl313_readable_reg_range, ptr @adxl313_readable_regs_table, ptr @adxl313_writable_reg_range, ptr @adxl313_writable_regs_table, ptr @adxl313_core_probe.__key, ptr @.str, ptr @adxl313_info, ptr @adxl313_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adxl313_odr_freqs, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_readable_reg_range to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_readable_regs_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_writable_reg_range to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_writable_regs_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_odr_freqs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl313_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adxl313_core_probe(ptr noundef %dev, ptr noundef %regmap, ptr noundef %name, ptr noundef readonly %setup) #0 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 256) #6
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
  %lock = getelementptr inbounds %struct.adxl313_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @adxl313_core_probe.__key) #6
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name3, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @adxl313_info, ptr %info, align 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @adxl313_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %num_channels, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %8 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %regval.i, align 4, !annotation !60
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 24, i32 noundef 82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.adxl313_setup.exit.thread_crit_edge

if.end.adxl313_setup.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl313_setup.exit.thread

if.end.i:                                         ; preds = %if.end
  %tobool1.not.i = icmp eq ptr %setup, null
  br i1 %tobool1.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then2.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %call4.i = tail call i32 %setup(ptr noundef %dev, ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end8.i_crit_edge, label %if.then2.i.adxl313_setup.exit.thread_crit_edge

if.then2.i.adxl313_setup.exit.thread_crit_edge:   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl313_setup.exit.thread

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then2.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %call10.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i.adxl313_setup.exit.thread_crit_edge

if.end8.i.adxl313_setup.exit.thread_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl313_setup.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %15 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 173
  br i1 %cmp.not.i, label %if.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %16) #9
  br label %adxl313_setup.exit.thread

if.end15.i:                                       ; preds = %if.end13.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  %call17.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 1, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.adxl313_setup.exit.thread_crit_edge

if.end15.i.adxl313_setup.exit.thread_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl313_setup.exit.thread

if.end20.i:                                       ; preds = %if.end15.i
  %19 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %20)
  %cmp21.not.i = icmp eq i32 %20, 29
  br i1 %cmp21.not.i, label %if.end26.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %20) #9
  br label %adxl313_setup.exit.thread

if.end26.i:                                       ; preds = %if.end20.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %call28.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 2, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end26.i.adxl313_setup.exit.thread_crit_edge

if.end26.i.adxl313_setup.exit.thread_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl313_setup.exit.thread

if.end31.i:                                       ; preds = %if.end26.i
  %23 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 203, i32 %24)
  %cmp32.not.i = icmp eq i32 %24, 203
  br i1 %cmp32.not.i, label %if.end37.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %24) #9
  br label %adxl313_setup.exit.thread

if.end37.i:                                       ; preds = %if.end31.i
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 49, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool55.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end37.i.adxl313_setup.exit.thread_crit_edge

if.end37.i.adxl313_setup.exit.thread_crit_edge:   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl313_setup.exit.thread

if.end57.i:                                       ; preds = %if.end37.i
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  %call.i92.i = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 49, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool60.not.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool60.not.i, label %adxl313_setup.exit, label %if.end57.i.adxl313_setup.exit.thread_crit_edge

if.end57.i.adxl313_setup.exit.thread_crit_edge:   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxl313_setup.exit.thread

adxl313_setup.exit.thread:                        ; preds = %if.end57.i.adxl313_setup.exit.thread_crit_edge, %if.end37.i.adxl313_setup.exit.thread_crit_edge, %do.end36.i, %if.end26.i.adxl313_setup.exit.thread_crit_edge, %do.end25.i, %if.end15.i.adxl313_setup.exit.thread_crit_edge, %do.end.i, %if.end8.i.adxl313_setup.exit.thread_crit_edge, %if.then2.i.adxl313_setup.exit.thread_crit_edge, %if.end.adxl313_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i92.i, %if.end57.i.adxl313_setup.exit.thread_crit_edge ], [ %call.i.i, %if.end37.i.adxl313_setup.exit.thread_crit_edge ], [ %call28.i, %if.end26.i.adxl313_setup.exit.thread_crit_edge ], [ %call17.i, %if.end15.i.adxl313_setup.exit.thread_crit_edge ], [ %call10.i, %if.end8.i.adxl313_setup.exit.thread_crit_edge ], [ %call4.i, %if.then2.i.adxl313_setup.exit.thread_crit_edge ], [ %call.i, %if.end.adxl313_setup.exit.thread_crit_edge ], [ -19, %do.end36.i ], [ -19, %do.end25.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  br label %do.end9

adxl313_setup.exit:                               ; preds = %if.end57.i
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 128
  %call.i93.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 45, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool5.not = icmp eq i32 %call.i93.i, 0
  br i1 %tobool5.not, label %if.end10, label %adxl313_setup.exit.do.end9_crit_edge

adxl313_setup.exit.do.end9_crit_edge:             ; preds = %adxl313_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end9:                                          ; preds = %adxl313_setup.exit.do.end9_crit_edge, %adxl313_setup.exit.thread
  %retval.0.i29 = phi i32 [ %retval.0.i.ph, %adxl313_setup.exit.thread ], [ %call.i93.i, %adxl313_setup.exit.do.end9_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end10:                                         ; preds = %adxl313_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i29, %do.end9 ], [ %call11, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
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
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl313_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !60
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 5, label %sw.bb4
    i32 12, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adxl313_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address.i, align 4
  %mul.i = shl i32 %7, 1
  %add.i = add i32 %mul.i, 50
  %transf_buf.i = getelementptr inbounds %struct.adxl313_data, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef %add.i, ptr noundef %transf_buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %adxl313_read_axis.exit.thread, label %adxl313_read_axis.exit

adxl313_read_axis.exit.thread:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %transf_buf.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transf_buf.i, align 128
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #6
  %conv.i51 = zext i16 %10 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %if.end

adxl313_read_axis.exit:                           ; preds = %sw.bb
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %adxl313_read_axis.exit.cleanup_crit_edge, label %adxl313_read_axis.exit.if.end_crit_edge

adxl313_read_axis.exit.if.end_crit_edge:          ; preds = %adxl313_read_axis.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

adxl313_read_axis.exit.cleanup_crit_edge:         ; preds = %adxl313_read_axis.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %adxl313_read_axis.exit.if.end_crit_edge, %adxl313_read_axis.exit.thread
  %ret.0.i54 = phi i32 [ %conv.i51, %adxl313_read_axis.exit.thread ], [ %call.i, %adxl313_read_axis.exit.if.end_crit_edge ]
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %realbits, align 1
  %13 = sub i8 32, %12
  %conv1.i = zext i8 %13 to i32
  %shl.i = shl i32 %ret.0.i54, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %val, align 4
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 9576806, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %19 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %address, align 4
  %add = add i32 %20, 30
  %call5 = call i32 @regmap_read(ptr noundef %18, i32 noundef %add, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regval, align 4
  %shl.i49 = shl i32 %22, 24
  %mul = ashr exact i32 %shl.i49, 22
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %call11 = call i32 @regmap_read(ptr noundef %25, i32 noundef 44, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end26, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regval, align 4
  %and = and i32 %27, 15
  %sub27 = add nsw i32 %and, -6
  %arrayidx = getelementptr [10 x [2 x i32]], ptr @adxl313_odr_freqs, i32 0, i32 %sub27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val, align 4
  %arrayidx30 = getelementptr [10 x [2 x i32]], ptr @adxl313_odr_freqs, i32 0, i32 %sub27, i32 1
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx30, align 4
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %sw.bb9.cleanup_crit_edge, %if.end7, %sw.bb4.cleanup_crit_edge, %sw.bb3, %if.end, %adxl313_read_axis.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.end26 ], [ 1, %if.end7 ], [ 3, %sw.bb3 ], [ 1, %if.end ], [ %call.i, %adxl313_read_axis.exit.cleanup_crit_edge ], [ %call5, %sw.bb4.cleanup_crit_edge ], [ %call11, %sw.bb9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adxl313_read_freq_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @adxl313_odr_freqs, ptr %vals, align 4
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 20, ptr %length, align 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl313_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 12, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = tail call i32 @llvm.smax.i32(i32 %val, i32 -512)
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 508)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp7.not = icmp eq i32 %4, %val
  br i1 %cmp7.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  %add = add i32 %8, 30
  %div = sdiv i32 %val, 4
  %call8 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %add, i32 noundef %div) #6
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %9 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %val, label %sw.bb9.cleanup_crit_edge [
    i32 6, label %land.lhs.true.i
    i32 12, label %land.lhs.true.1.i
    i32 25, label %land.lhs.true.2.i
    i32 50, label %land.lhs.true.3.i
    i32 100, label %land.lhs.true.4.i
    i32 200, label %land.lhs.true.5.i
    i32 400, label %land.lhs.true.6.i
    i32 800, label %land.lhs.true.7.i
    i32 1600, label %land.lhs.true.8.i
    i32 3200, label %land.lhs.true.9.i
  ]

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.i, label %land.lhs.true.i.do.end23.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.do.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.1.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.do.end23.i_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.1.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.2.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 0
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.do.end23.i_crit_edge, label %land.lhs.true.2.i.cleanup_crit_edge

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.2.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.3.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.do.end23.i_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.3.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.4.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 0
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.do.end23.i_crit_edge, label %land.lhs.true.4.i.cleanup_crit_edge

land.lhs.true.4.i.cleanup_crit_edge:              ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.4.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.5.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.do.end23.i_crit_edge, label %land.lhs.true.5.i.cleanup_crit_edge

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.5.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.6.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.do.end23.i_crit_edge, label %land.lhs.true.6.i.cleanup_crit_edge

land.lhs.true.6.i.cleanup_crit_edge:              ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.6.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.7.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.do.end23.i_crit_edge, label %land.lhs.true.7.i.cleanup_crit_edge

land.lhs.true.7.i.cleanup_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.7.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.8.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.8.i = icmp eq i32 %val2, 0
  br i1 %cmp5.8.i, label %land.lhs.true.8.i.do.end23.i_crit_edge, label %land.lhs.true.8.i.cleanup_crit_edge

land.lhs.true.8.i.cleanup_crit_edge:              ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.8.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

land.lhs.true.9.i:                                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.9.i = icmp eq i32 %val2, 0
  br i1 %cmp5.9.i, label %land.lhs.true.9.i.do.end23.i_crit_edge, label %land.lhs.true.9.i.cleanup_crit_edge

land.lhs.true.9.i.cleanup_crit_edge:              ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.9.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

do.end23.i:                                       ; preds = %land.lhs.true.9.i.do.end23.i_crit_edge, %land.lhs.true.8.i.do.end23.i_crit_edge, %land.lhs.true.7.i.do.end23.i_crit_edge, %land.lhs.true.6.i.do.end23.i_crit_edge, %land.lhs.true.5.i.do.end23.i_crit_edge, %land.lhs.true.4.i.do.end23.i_crit_edge, %land.lhs.true.3.i.do.end23.i_crit_edge, %land.lhs.true.2.i.do.end23.i_crit_edge, %land.lhs.true.1.i.do.end23.i_crit_edge, %land.lhs.true.i.do.end23.i_crit_edge
  %i.036.lcssa.i = phi i32 [ 6, %land.lhs.true.i.do.end23.i_crit_edge ], [ 7, %land.lhs.true.1.i.do.end23.i_crit_edge ], [ 8, %land.lhs.true.2.i.do.end23.i_crit_edge ], [ 9, %land.lhs.true.3.i.do.end23.i_crit_edge ], [ 10, %land.lhs.true.4.i.do.end23.i_crit_edge ], [ 11, %land.lhs.true.5.i.do.end23.i_crit_edge ], [ 12, %land.lhs.true.6.i.do.end23.i_crit_edge ], [ 13, %land.lhs.true.7.i.do.end23.i_crit_edge ], [ 14, %land.lhs.true.8.i.do.end23.i_crit_edge ], [ 15, %land.lhs.true.9.i.do.end23.i_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 44, i32 noundef 15, i32 noundef %i.036.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end23.i, %land.lhs.true.9.i.cleanup_crit_edge, %land.lhs.true.8.i.cleanup_crit_edge, %land.lhs.true.7.i.cleanup_crit_edge, %land.lhs.true.6.i.cleanup_crit_edge, %land.lhs.true.5.i.cleanup_crit_edge, %land.lhs.true.4.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end23.i ], [ -22, %land.lhs.true.9.i.cleanup_crit_edge ], [ -22, %land.lhs.true.8.i.cleanup_crit_edge ], [ -22, %land.lhs.true.7.i.cleanup_crit_edge ], [ -22, %land.lhs.true.6.i.cleanup_crit_edge ], [ -22, %land.lhs.true.5.i.cleanup_crit_edge ], [ -22, %land.lhs.true.4.i.cleanup_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @adxl313_readable_regs_table, !1, !"adxl313_readable_regs_table", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/adxl313_core.c", i32 25, i32 34}
!2 = !{ptr @__ksymtab_adxl313_readable_regs_table, !3, !"__ksymtab_adxl313_readable_regs_table", i1 false, i1 false}
!3 = !{!"../drivers/iio/accel/adxl313_core.c", i32 29, i32 1}
!4 = !{ptr @adxl313_writable_regs_table, !5, !"adxl313_writable_regs_table", i1 false, i1 false}
!5 = !{!"../drivers/iio/accel/adxl313_core.c", i32 40, i32 34}
!6 = !{ptr @__ksymtab_adxl313_writable_regs_table, !7, !"__ksymtab_adxl313_writable_regs_table", i1 false, i1 false}
!7 = !{!"../drivers/iio/accel/adxl313_core.c", i32 44, i32 1}
!8 = !{ptr @adxl313_core_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/iio/accel/adxl313_core.c", i32 312, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/accel/adxl313_core.c", i32 322, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adxl313_core_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @adxl313_core_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_adxl313_core_probe, !20, !"__ksymtab_adxl313_core_probe", i1 false, i1 false}
!20 = !{!"../drivers/iio/accel/adxl313_core.c", i32 328, i32 1}
!21 = !{ptr @__UNIQUE_ID_author189, !22, !"__UNIQUE_ID_author189", i1 false, i1 false}
!22 = !{!"../drivers/iio/accel/adxl313_core.c", i32 330, i32 1}
!23 = !{ptr @__UNIQUE_ID_description190, !24, !"__UNIQUE_ID_description190", i1 false, i1 false}
!24 = !{!"../drivers/iio/accel/adxl313_core.c", i32 331, i32 1}
!25 = !{ptr @__UNIQUE_ID_file191, !26, !"__UNIQUE_ID_file191", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/adxl313_core.c", i32 332, i32 1}
!27 = !{ptr @__UNIQUE_ID_license192, !26, !"__UNIQUE_ID_license192", i1 false, i1 false}
!28 = !{ptr @adxl313_readable_reg_range, !29, !"adxl313_readable_reg_range", i1 false, i1 false}
!29 = !{!"../drivers/iio/accel/adxl313_core.c", i32 17, i32 34}
!30 = !{ptr @adxl313_writable_reg_range, !31, !"adxl313_writable_reg_range", i1 false, i1 false}
!31 = !{!"../drivers/iio/accel/adxl313_core.c", i32 31, i32 34}
!32 = !{ptr @adxl313_info, !33, !"adxl313_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/accel/adxl313_core.c", i32 217, i32 30}
!34 = !{ptr @adxl313_odr_freqs, !35, !"adxl313_odr_freqs", i1 false, i1 false}
!35 = !{!"../drivers/iio/accel/adxl313_core.c", i32 52, i32 18}
!36 = !{ptr @adxl313_channels, !37, !"adxl313_channels", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/adxl313_core.c", i32 81, i32 35}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/accel/adxl313_core.c", i32 246, i32 3}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @adxl313_setup._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @adxl313_setup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/accel/adxl313_core.c", i32 255, i32 3}
!45 = !{ptr @adxl313_setup._entry.8, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @adxl313_setup._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/accel/adxl313_core.c", i32 264, i32 3}
!49 = !{ptr @adxl313_setup._entry.11, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adxl313_setup._entry_ptr.13, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
