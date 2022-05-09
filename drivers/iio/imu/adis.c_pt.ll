; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/adis.c_pt.bc'
source_filename = "../drivers/iio/imu/adis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__adis_write_reg\22, \22a\22\09"
module asm "\09.weak\09__crc___adis_write_reg\09\09\09\09"
module asm "\09.long\09__crc___adis_write_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___adis_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22__adis_write_reg\22\09\09\09\09\09"
module asm "__kstrtabns___adis_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__adis_read_reg\22, \22a\22\09"
module asm "\09.weak\09__crc___adis_read_reg\09\09\09\09"
module asm "\09.long\09__crc___adis_read_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___adis_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22__adis_read_reg\22\09\09\09\09\09"
module asm "__kstrtabns___adis_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__adis_update_bits_base\22, \22a\22\09"
module asm "\09.weak\09__crc___adis_update_bits_base\09\09\09\09"
module asm "\09.long\09__crc___adis_update_bits_base\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___adis_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22__adis_update_bits_base\22\09\09\09\09\09"
module asm "__kstrtabns___adis_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+adis_debugfs_reg_access\22, \22a\22\09"
module asm "\09.weak\09__crc_adis_debugfs_reg_access\09\09\09\09"
module asm "\09.long\09__crc_adis_debugfs_reg_access\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adis_debugfs_reg_access:\09\09\09\09\09"
module asm "\09.asciz \09\22adis_debugfs_reg_access\22\09\09\09\09\09"
module asm "__kstrtabns_adis_debugfs_reg_access:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+adis_enable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_adis_enable_irq\09\09\09\09"
module asm "\09.long\09__crc_adis_enable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adis_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22adis_enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_adis_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__adis_check_status\22, \22a\22\09"
module asm "\09.weak\09__crc___adis_check_status\09\09\09\09"
module asm "\09.long\09__crc___adis_check_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___adis_check_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__adis_check_status\22\09\09\09\09\09"
module asm "__kstrtabns___adis_check_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__adis_reset\22, \22a\22\09"
module asm "\09.weak\09__crc___adis_reset\09\09\09\09"
module asm "\09.long\09__crc___adis_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___adis_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22__adis_reset\22\09\09\09\09\09"
module asm "__kstrtabns___adis_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__adis_initial_startup\22, \22a\22\09"
module asm "\09.weak\09__crc___adis_initial_startup\09\09\09\09"
module asm "\09.long\09__crc___adis_initial_startup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___adis_initial_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22__adis_initial_startup\22\09\09\09\09\09"
module asm "__kstrtabns___adis_initial_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adis_single_conversion\22, \22a\22\09"
module asm "\09.weak\09__crc_adis_single_conversion\09\09\09\09"
module asm "\09.long\09__crc_adis_single_conversion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adis_single_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22adis_single_conversion\22\09\09\09\09\09"
module asm "__kstrtabns_adis_single_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adis_init\22, \22a\22\09"
module asm "\09.weak\09__crc_adis_init\09\09\09\09"
module asm "\09.long\09__crc_adis_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adis_init:\09\09\09\09\09"
module asm "\09.asciz \09\22adis_init\22\09\09\09\09\09"
module asm "__kstrtabns_adis_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }

@__adis_write_reg._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write register 0x%02X: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__adis_write_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/iio/imu/adis.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__adis_write_reg._entry_ptr = internal global ptr @__adis_write_reg._entry, section ".printk_index", align 4
@__kstrtab___adis_write_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns___adis_write_reg = external dso_local constant [0 x i8], align 1
@__ksymtab___adis_write_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__adis_write_reg to i32), ptr @__kstrtab___adis_write_reg, ptr @__kstrtabns___adis_write_reg }, section "___ksymtab_gpl+__adis_write_reg", align 4
@__adis_read_reg._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 204, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read register 0x%02X: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__adis_read_reg\00", [16 x i8] zeroinitializer }, align 32
@__adis_read_reg._entry_ptr = internal global ptr @__adis_read_reg._entry, section ".printk_index", align 4
@__kstrtab___adis_read_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns___adis_read_reg = external dso_local constant [0 x i8], align 1
@__ksymtab___adis_read_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__adis_read_reg to i32), ptr @__kstrtab___adis_read_reg, ptr @__kstrtabns___adis_read_reg }, section "___ksymtab_gpl+__adis_read_reg", align 4
@__kstrtab___adis_update_bits_base = external dso_local constant [0 x i8], align 1
@__kstrtabns___adis_update_bits_base = external dso_local constant [0 x i8], align 1
@__ksymtab___adis_update_bits_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__adis_update_bits_base to i32), ptr @__kstrtab___adis_update_bits_base, ptr @__kstrtabns___adis_update_bits_base }, section "___ksymtab_gpl+__adis_update_bits_base", align 4
@__kstrtab_adis_debugfs_reg_access = external dso_local constant [0 x i8], align 1
@__kstrtabns_adis_debugfs_reg_access = external dso_local constant [0 x i8], align 1
@__ksymtab_adis_debugfs_reg_access = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adis_debugfs_reg_access to i32), ptr @__kstrtab_adis_debugfs_reg_access, ptr @__kstrtabns_adis_debugfs_reg_access }, section "___ksymtab+adis_debugfs_reg_access", align 4
@__kstrtab_adis_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_adis_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_adis_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adis_enable_irq to i32), ptr @__kstrtab_adis_enable_irq, ptr @__kstrtabns_adis_enable_irq }, section "___ksymtab+adis_enable_irq", align 4
@__adis_check_status._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, align 1
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s.\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__adis_check_status\00", [44 x i8] zeroinitializer }, align 32
@__adis_check_status._entry_ptr = internal global ptr @__adis_check_status._entry, section ".printk_index", align 4
@__kstrtab___adis_check_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___adis_check_status = external dso_local constant [0 x i8], align 1
@__ksymtab___adis_check_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__adis_check_status to i32), ptr @__kstrtab___adis_check_status, ptr @__kstrtabns___adis_check_status }, section "___ksymtab_gpl+__adis_check_status", align 4
@__adis_reset._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__adis_reset\00", [19 x i8] zeroinitializer }, align 32
@__adis_reset._entry_ptr = internal global ptr @__adis_reset._entry, section ".printk_index", align 4
@__kstrtab___adis_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns___adis_reset = external dso_local constant [0 x i8], align 1
@__ksymtab___adis_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__adis_reset to i32), ptr @__kstrtab___adis_reset, ptr @__kstrtabns___adis_reset }, section "___ksymtab_gpl+__adis_reset", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@__adis_initial_startup._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 458, ptr @.str.14, ptr @.str.4 }, align 1
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Device ID(%u) and product ID(%u) do not match.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__adis_initial_startup\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__adis_initial_startup._entry_ptr = internal global ptr @__adis_initial_startup._entry, section ".printk_index", align 4
@__kstrtab___adis_initial_startup = external dso_local constant [0 x i8], align 1
@__kstrtabns___adis_initial_startup = external dso_local constant [0 x i8], align 1
@__ksymtab___adis_initial_startup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__adis_initial_startup to i32), ptr @__kstrtab___adis_initial_startup, ptr @__kstrtabns___adis_initial_startup }, section "___ksymtab_gpl+__adis_initial_startup", align 4
@__kstrtab_adis_single_conversion = external dso_local constant [0 x i8], align 1
@__kstrtabns_adis_single_conversion = external dso_local constant [0 x i8], align 1
@__ksymtab_adis_single_conversion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adis_single_conversion to i32), ptr @__kstrtab_adis_single_conversion, ptr @__kstrtabns_adis_single_conversion }, section "___ksymtab_gpl+adis_single_conversion", align 4
@adis_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No config data or timeouts not defined!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis_init\00", [22 x i8] zeroinitializer }, align 32
@adis_init._entry_ptr = internal global ptr @adis_init._entry, section ".printk_index", align 4
@adis_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&adis->state_lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_adis_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_adis_init = external dso_local constant [0 x i8], align 1
@__ksymtab_adis_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adis_init to i32), ptr @__kstrtab_adis_init, ptr @__kstrtabns_adis_init }, section "___ksymtab_gpl+adis_init", align 4
@__UNIQUE_ID_file234 = internal constant [39 x i8] c"adis_lib.file=drivers/iio/imu/adis_lib\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"adis_lib.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [53 x i8] c"adis_lib.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [63 x i8] c"adis_lib.description=Common library code for ADIS16XXX devices\00", section ".modinfo", align 1
@adis_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initiate self test: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adis_self_test\00", [17 x i8] zeroinitializer }, align 32
@adis_self_test._entry_ptr = internal global ptr @adis_self_test._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 116, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 203, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 340, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 363, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 421, i32 50 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 456, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 527, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 531, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [26 x i8] c"../drivers/iio/imu/adis.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 381, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__adis_check_status._entry, ptr @__adis_check_status._entry_ptr, ptr @__adis_initial_startup._entry, ptr @__adis_initial_startup._entry_ptr, ptr @__adis_read_reg._entry, ptr @__adis_read_reg._entry_ptr, ptr @__adis_reset._entry, ptr @__adis_reset._entry_ptr, ptr @__adis_write_reg._entry, ptr @__adis_write_reg._entry_ptr, ptr @__ksymtab___adis_check_status, ptr @__ksymtab___adis_initial_startup, ptr @__ksymtab___adis_read_reg, ptr @__ksymtab___adis_reset, ptr @__ksymtab___adis_update_bits_base, ptr @__ksymtab___adis_write_reg, ptr @__ksymtab_adis_debugfs_reg_access, ptr @__ksymtab_adis_enable_irq, ptr @__ksymtab_adis_init, ptr @__ksymtab_adis_single_conversion, ptr @adis_init._entry, ptr @adis_init._entry_ptr, ptr @adis_self_test._entry, ptr @adis_self_test._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @adis_init.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %reg, i32 noundef %value, i32 noundef %size) #0 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfers = alloca [5 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div186 = lshr i32 %reg, 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #4
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %xfers) #4
  %0 = getelementptr inbounds i8, ptr %xfers, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 476)
  %tx = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 11
  %2 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 7
  %4 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %cs_change, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 8
  %5 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %bits_per_word, align 1
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 9
  %data = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %write_delay = getelementptr inbounds %struct.adis_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_delay, align 4
  %conv = trunc i32 %9 to i16
  %10 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %delay, align 2
  %cs_change_delay = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 10
  %cs_change_delay4 = getelementptr inbounds %struct.adis_data, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %cs_change_delay4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cs_change_delay4, align 4
  %conv5 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %cs_change_delay to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5, ptr %cs_change_delay, align 2
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1
  %add.ptr = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %arrayinit.element, align 4
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 2
  %15 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %len9, align 4
  %cs_change11 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 7
  %16 = ptrtoint ptr %cs_change11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %cs_change11, align 4
  %bits_per_word17 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 8
  %17 = ptrtoint ptr %bits_per_word17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %bits_per_word17, align 1
  %delay18 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 9
  %18 = load i32, ptr %write_delay, align 4
  %conv22 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %delay18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv22, ptr %delay18, align 2
  %cs_change_delay23 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 10
  %20 = load i32, ptr %cs_change_delay4, align 4
  %conv27 = trunc i32 %20 to i16
  %21 = ptrtoint ptr %cs_change_delay23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv27, ptr %cs_change_delay23, align 2
  %arrayinit.element28 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2
  %add.ptr32 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 4
  %22 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr32, ptr %arrayinit.element28, align 4
  %len33 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 2
  %23 = ptrtoint ptr %len33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %len33, align 4
  %cs_change35 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 7
  %24 = ptrtoint ptr %cs_change35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 64, ptr %cs_change35, align 4
  %bits_per_word41 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 8
  %25 = ptrtoint ptr %bits_per_word41 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %bits_per_word41, align 1
  %delay42 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 9
  %26 = load i32, ptr %write_delay, align 4
  %conv46 = trunc i32 %26 to i16
  %27 = ptrtoint ptr %delay42 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv46, ptr %delay42, align 2
  %cs_change_delay47 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 10
  %28 = load i32, ptr %cs_change_delay4, align 4
  %conv51 = trunc i32 %28 to i16
  %29 = ptrtoint ptr %cs_change_delay47 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv51, ptr %cs_change_delay47, align 2
  %arrayinit.element52 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3
  %add.ptr56 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 6
  %30 = ptrtoint ptr %arrayinit.element52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr56, ptr %arrayinit.element52, align 4
  %len57 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3, i32 2
  %31 = ptrtoint ptr %len57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %len57, align 4
  %bits_per_word62 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3, i32 8
  %32 = ptrtoint ptr %bits_per_word62 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %bits_per_word62, align 1
  %delay63 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3, i32 9
  %33 = load i32, ptr %write_delay, align 4
  %conv67 = trunc i32 %33 to i16
  %34 = ptrtoint ptr %delay63 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv67, ptr %delay63, align 2
  %arrayinit.element69 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 4
  %add.ptr73 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 8
  %35 = ptrtoint ptr %arrayinit.element69 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr73, ptr %arrayinit.element69, align 4
  %len74 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 4, i32 2
  %36 = ptrtoint ptr %len74 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %len74, align 4
  %bits_per_word79 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 4, i32 8
  %37 = ptrtoint ptr %bits_per_word79 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %bits_per_word79, align 1
  %delay80 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 4, i32 9
  %38 = load i32, ptr %write_delay, align 4
  %conv84 = trunc i32 %38 to i16
  %39 = ptrtoint ptr %delay80 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv84, ptr %delay80, align 2
  %40 = getelementptr inbounds i8, ptr %msg, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %current_page = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 7
  %46 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %current_page, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %div186)
  %cmp.not = icmp eq i32 %47, %div186
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %48 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -128, ptr %tx, align 128
  %conv88 = trunc i32 %div186 to i8
  %arrayidx90 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 1
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv88, ptr %arrayidx90, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %54 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %if.end.sw.bb108_crit_edge
    i32 1, label %if.end.sw.bb119_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.sw.bb108_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = trunc i32 %reg to i8
  br label %sw.bb108

if.end.sw.bb119_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %.pre196 = trunc i32 %reg to i8
  br label %for.body.preheader

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %55 = trunc i32 %reg to i8
  %56 = add i8 %55, 3
  %conv92 = or i8 %56, -128
  %57 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv92, ptr %add.ptr73, align 8
  %shr = lshr i32 %value, 24
  %conv95 = trunc i32 %shr to i8
  %arrayidx97 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 9
  %58 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv95, ptr %arrayidx97, align 1
  %59 = add i8 %55, 2
  %conv100 = or i8 %59, -128
  %60 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv100, ptr %add.ptr56, align 2
  %shr103 = lshr i32 %value, 16
  %conv105 = trunc i32 %shr103 to i8
  %arrayidx107 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 7
  %61 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv105, ptr %arrayidx107, align 1
  br label %sw.bb108

sw.bb108:                                         ; preds = %sw.bb, %if.end.sw.bb108_crit_edge
  %.pre-phi = phi i8 [ %.pre, %if.end.sw.bb108_crit_edge ], [ %55, %sw.bb ]
  %62 = add i8 %.pre-phi, 1
  %conv111 = or i8 %62, -128
  %63 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv111, ptr %add.ptr32, align 4
  %shr114 = lshr i32 %value, 8
  %conv116 = trunc i32 %shr114 to i8
  %arrayidx118 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 5
  %64 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv116, ptr %arrayidx118, align 1
  br label %for.body.preheader

for.body.preheader:                               ; preds = %sw.bb108, %if.end.sw.bb119_crit_edge
  %.pre-phi197 = phi i8 [ %.pre196, %if.end.sw.bb119_crit_edge ], [ %.pre-phi, %sw.bb108 ]
  %conv121 = or i8 %.pre-phi197, -128
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv121, ptr %add.ptr, align 2
  %conv125 = trunc i32 %value to i8
  %arrayidx127 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 3
  %66 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv125, ptr %arrayidx127, align 1
  %cs_change129 = getelementptr [5 x %struct.spi_transfer], ptr %xfers, i32 0, i32 %size, i32 7
  %67 = ptrtoint ptr %cs_change129 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load130 = load i8, ptr %cs_change129, align 4
  %bf.clear131 = and i8 %bf.load130, -65
  store i8 %bf.clear131, ptr %cs_change129, align 4
  br label %for.body

for.body:                                         ; preds = %spi_message_add_tail.exit192.for.body_crit_edge, %for.body.preheader
  %i.0194 = phi i32 [ %inc, %spi_message_add_tail.exit192.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %transfer_list.i187 = getelementptr [5 x %struct.spi_transfer], ptr %xfers, i32 0, i32 %i.0194, i32 18
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i189 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i187, ptr noundef %69, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i189, label %if.end.i.i.i191, label %for.body.spi_message_add_tail.exit192_crit_edge

for.body.spi_message_add_tail.exit192_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit192

if.end.i.i.i191:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i187, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %transfer_list.i187 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg, ptr %transfer_list.i187, align 4
  %prev3.i.i.i190 = getelementptr [5 x %struct.spi_transfer], ptr %xfers, i32 0, i32 %i.0194, i32 18, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i190, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i187, ptr %69, align 4
  br label %spi_message_add_tail.exit192

spi_message_add_tail.exit192:                     ; preds = %if.end.i.i.i191, %for.body.spi_message_add_tail.exit192_crit_edge
  %inc = add i32 %i.0194, 1
  %cmp133.not = icmp ugt i32 %inc, %size
  br i1 %cmp133.not, label %for.end, label %spi_message_add_tail.exit192.for.body_crit_edge

spi_message_add_tail.exit192.for.body_crit_edge:  ; preds = %spi_message_add_tail.exit192
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %spi_message_add_tail.exit192
  %74 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adis, align 128
  %call = call i32 @spi_sync(ptr noundef %75, ptr noundef nonnull %msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %76 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adis, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str, i32 noundef %reg, i32 noundef %call) #7
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div186, ptr %current_page, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ %call, %do.end ]
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %xfers) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %reg, ptr nocapture noundef writeonly %val, i32 noundef %size) #0 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfers = alloca [4 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div141 = lshr i32 %reg, 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #4
  %0 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %xfers) #4
  %1 = getelementptr inbounds i8, ptr %xfers, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 380)
  %tx = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 11
  %3 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tx, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 7
  %5 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %cs_change, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bits_per_word, align 1
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 9
  %data = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %write_delay = getelementptr inbounds %struct.adis_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %write_delay, align 4
  %conv = trunc i32 %10 to i16
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %delay, align 2
  %cs_change_delay = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 10
  %cs_change_delay3 = getelementptr inbounds %struct.adis_data, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %cs_change_delay3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cs_change_delay3, align 4
  %conv4 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %cs_change_delay to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv4, ptr %cs_change_delay, align 2
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1
  %add.ptr = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 2
  %15 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayinit.element, align 4
  %len8 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 2
  %16 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len8, align 4
  %cs_change10 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 7
  %17 = ptrtoint ptr %cs_change10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %cs_change10, align 4
  %bits_per_word16 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 8
  %18 = ptrtoint ptr %bits_per_word16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %bits_per_word16, align 1
  %delay17 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 9
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %8, align 4
  %conv20 = trunc i32 %20 to i16
  %21 = ptrtoint ptr %delay17 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv20, ptr %delay17, align 2
  %cs_change_delay21 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 10
  %22 = load i32, ptr %cs_change_delay3, align 4
  %conv25 = trunc i32 %22 to i16
  %23 = ptrtoint ptr %cs_change_delay21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv25, ptr %cs_change_delay21, align 2
  %arrayinit.element26 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2
  %add.ptr30 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 4
  %24 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr30, ptr %arrayinit.element26, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 1
  %rx = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 12
  %25 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rx, ptr %rx_buf, align 4
  %len32 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 2
  %26 = ptrtoint ptr %len32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %len32, align 4
  %cs_change34 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 7
  %27 = ptrtoint ptr %cs_change34 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 64, ptr %cs_change34, align 4
  %bits_per_word40 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 8
  %28 = ptrtoint ptr %bits_per_word40 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %bits_per_word40, align 1
  %delay41 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 9
  %29 = load i32, ptr %8, align 4
  %conv45 = trunc i32 %29 to i16
  %30 = ptrtoint ptr %delay41 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv45, ptr %delay41, align 2
  %cs_change_delay46 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 2, i32 10
  %31 = load i32, ptr %cs_change_delay3, align 4
  %conv50 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %cs_change_delay46 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv50, ptr %cs_change_delay46, align 2
  %rx_buf53 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3, i32 1
  %add.ptr56 = getelementptr %struct.adis, ptr %adis, i32 0, i32 12, i32 2
  %33 = ptrtoint ptr %rx_buf53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr56, ptr %rx_buf53, align 4
  %len57 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3, i32 2
  %34 = ptrtoint ptr %len57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len57, align 4
  %bits_per_word62 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3, i32 8
  %35 = ptrtoint ptr %bits_per_word62 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 8, ptr %bits_per_word62, align 1
  %delay63 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 3, i32 9
  %36 = load i32, ptr %8, align 4
  %conv67 = trunc i32 %36 to i16
  %37 = ptrtoint ptr %delay63 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv67, ptr %delay63, align 2
  %38 = getelementptr inbounds i8, ptr %msg, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %current_page = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 7
  %44 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %current_page, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %div141)
  %cmp.not = icmp eq i32 %45, %div141
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %46 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -128, ptr %tx, align 128
  %conv71 = trunc i32 %div141 to i8
  %arrayidx73 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 1
  %47 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv71, ptr %arrayidx73, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %52 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %size, label %if.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %if.end.sw.bb81_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.sw.bb81_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = trunc i32 %reg to i8
  br label %sw.bb81

sw.bb:                                            ; preds = %if.end
  %53 = trunc i32 %reg to i8
  %54 = add i8 %53, 2
  %conv75 = and i8 %54, 127
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv75, ptr %add.ptr, align 2
  %arrayidx79 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 3
  %56 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx79, align 1
  %transfer_list.i142 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 18
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i144 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i142, ptr noundef %58, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i144, label %if.end.i.i.i146, label %sw.bb.sw.bb81_crit_edge

sw.bb.sw.bb81_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb81

if.end.i.i.i146:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i142, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %transfer_list.i142 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg, ptr %transfer_list.i142, align 4
  %prev3.i.i.i145 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i145, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i142, ptr %58, align 4
  br label %sw.bb81

sw.bb81:                                          ; preds = %if.end.i.i.i146, %sw.bb.sw.bb81_crit_edge, %if.end.sw.bb81_crit_edge
  %.pre-phi = phi i8 [ %.pre, %if.end.sw.bb81_crit_edge ], [ %53, %if.end.i.i.i146 ], [ %53, %sw.bb.sw.bb81_crit_edge ]
  %conv83 = and i8 %.pre-phi, 127
  %63 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv83, ptr %add.ptr30, align 4
  %arrayidx87 = getelementptr %struct.adis, ptr %adis, i32 0, i32 11, i32 5
  %64 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx87, align 1
  %transfer_list.i148 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %xfers, i32 0, i32 2, i32 18
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i150 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i148, ptr noundef %66, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i150, label %if.end.i.i.i152, label %sw.bb81.spi_message_add_tail.exit153_crit_edge

sw.bb81.spi_message_add_tail.exit153_crit_edge:   ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit153

if.end.i.i.i152:                                  ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i148, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %transfer_list.i148 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg, ptr %transfer_list.i148, align 4
  %prev3.i.i.i151 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %xfers, i32 0, i32 2, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i151, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i148, ptr %66, align 4
  br label %spi_message_add_tail.exit153

spi_message_add_tail.exit153:                     ; preds = %if.end.i.i.i152, %sw.bb81.spi_message_add_tail.exit153_crit_edge
  %transfer_list.i154 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %xfers, i32 0, i32 3, i32 18
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i156 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i154, ptr noundef %72, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i156, label %if.end.i.i.i158, label %spi_message_add_tail.exit153.spi_message_add_tail.exit159_crit_edge

spi_message_add_tail.exit153.spi_message_add_tail.exit159_crit_edge: ; preds = %spi_message_add_tail.exit153
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit159

if.end.i.i.i158:                                  ; preds = %spi_message_add_tail.exit153
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %transfer_list.i154, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %transfer_list.i154 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg, ptr %transfer_list.i154, align 4
  %prev3.i.i.i157 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %xfers, i32 0, i32 3, i32 18, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i157 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i157, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %transfer_list.i154, ptr %72, align 4
  br label %spi_message_add_tail.exit159

spi_message_add_tail.exit159:                     ; preds = %if.end.i.i.i158, %spi_message_add_tail.exit153.spi_message_add_tail.exit159_crit_edge
  %77 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adis, align 128
  %call = call i32 @spi_sync(ptr noundef %78, ptr noundef nonnull %msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit159
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adis, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.5, i32 noundef %reg, i32 noundef %call) #7
  br label %cleanup

if.else:                                          ; preds = %spi_message_add_tail.exit159
  %81 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div141, ptr %current_page, align 8
  %82 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %size, label %if.else.cleanup_crit_edge [
    i32 4, label %sw.bb94
    i32 2, label %sw.bb98
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb94:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %rx, align 1
  %85 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %val, align 4
  br label %cleanup

sw.bb98:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %add.ptr56, align 1
  %conv103 = zext i16 %87 to i32
  %88 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv103, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb98, %sw.bb94, %if.else.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %sw.bb98 ], [ 0, %sw.bb94 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %xfers) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__adis_update_bits_base(ptr noundef %adis, i32 noundef %reg, i32 noundef %mask, i32 noundef %val, i8 noundef zeroext %size) #0 align 64 {
entry:
  %__val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__val) #4
  %0 = ptrtoint ptr %__val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %__val, align 4, !annotation !80
  %conv = zext i8 %size to i32
  %call = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %reg, ptr noundef nonnull %__val, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %__val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %__val, align 4
  %neg = xor i32 %mask, -1
  %and = and i32 %2, %neg
  %and1 = and i32 %val, %mask
  %or = or i32 %and, %and1
  %call3 = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %reg, i32 noundef %or, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adis_debugfs_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %readval, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !80
  %state_lock.i.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #4
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %1, i32 noundef %reg, ptr noundef nonnull %tmp.i, i32 noundef 2) #4
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then2, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %conv = and i32 %4, 65535
  %5 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %readval, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i9 = and i32 %writeval, 65535
  %state_lock.i.i10 = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i10, i32 noundef 0) #4
  %call.i.i11 = tail call i32 @__adis_write_reg(ptr noundef %1, i32 noundef %reg, i32 noundef %conv.i9, i32 noundef 2) #4
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call.i.i11, %if.else ], [ %call.i.i, %adis_read_reg_16.exit ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adis_enable_irq(ptr noundef %adis, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #4
  %data = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %enable_irq = getelementptr inbounds %struct.adis_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_irq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef %adis, i1 noundef zeroext %enable) #4
  br label %out_unlock

if.else:                                          ; preds = %entry
  %unmasked_drdy = getelementptr inbounds %struct.adis_data, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %unmasked_drdy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unmasked_drdy, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %if.else
  %6 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adis, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  br i1 %enable, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @enable_irq(i32 noundef %9) #4
  br label %out_unlock

if.else9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @disable_irq(i32 noundef %9) #4
  br label %out_unlock

if.end13:                                         ; preds = %if.else
  %msc_ctrl_reg = getelementptr inbounds %struct.adis_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %msc_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msc_ctrl_reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tmp.i, align 4, !annotation !80
  %call.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %11, ptr noundef nonnull %tmp.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end18, label %__adis_read_reg_16.exit

__adis_read_reg_16.exit:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  br label %out_unlock

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %15 = and i32 %14, 65528
  %storemerge.v = select i1 %enable, i32 6, i32 2
  %storemerge = or i32 %15, %storemerge.v
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 8
  %msc_ctrl_reg33 = getelementptr inbounds %struct.adis_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %msc_ctrl_reg33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msc_ctrl_reg33, align 4
  %call.i51 = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %19, i32 noundef %storemerge, i32 noundef 2) #4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end18, %__adis_read_reg_16.exit, %if.else9, %if.then8, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.then8 ], [ 0, %if.else9 ], [ %call.i, %__adis_read_reg_16.exit ], [ %call.i51, %if.end18 ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__adis_check_status(ptr noundef %adis) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %diag_stat_reg = getelementptr inbounds %struct.adis_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %diag_stat_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %diag_stat_reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp.i, align 4, !annotation !80
  %call.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %3, ptr noundef nonnull %tmp.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %__adis_read_reg_16.exit

__adis_read_reg_16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %status_error_mask = getelementptr inbounds %struct.adis_data, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %status_error_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status_error_mask, align 4
  %conv228 = and i32 %10, %6
  %conv2 = trunc i32 %conv228 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2)
  %cmp = icmp eq i16 %conv2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %conv9 = and i32 %conv228, 65535
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.029 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.029
  %and10 = and i32 %conv9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adis, align 128
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %status_error_msgs = getelementptr inbounds %struct.adis_data, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %status_error_msgs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %status_error_msgs, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %i.029
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef %18) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %__adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call.i, %__adis_read_reg_16.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__adis_reset(ptr noundef %adis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %timeouts1 = getelementptr inbounds %struct.adis_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %timeouts1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timeouts1, align 4
  %glob_cmd_reg = getelementptr inbounds %struct.adis_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %glob_cmd_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %glob_cmd_reg, align 4
  %call.i = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %5, i32 noundef 128, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adis, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %call.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sw_reset_ms = getelementptr inbounds %struct.adis_timeout, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %sw_reset_ms to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sw_reset_ms, align 2
  %conv = zext i16 %9 to i32
  tail call void @msleep(i32 noundef %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__adis_initial_startup(ptr noundef %adis) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %timeouts1 = getelementptr inbounds %struct.adis_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %timeouts1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timeouts1, align 4
  %4 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adis, align 128
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 7) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 10) #4
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call, i32 noundef 0) #4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %timeouts1.i = getelementptr inbounds %struct.adis_data, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %timeouts1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timeouts1.i, align 4
  %glob_cmd_reg.i = getelementptr inbounds %struct.adis_data, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %glob_cmd_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %glob_cmd_reg.i, align 4
  %call.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %12, i32 noundef 128, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %__adis_reset.exit.thread, label %__adis_reset.exit

__adis_reset.exit.thread:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sw_reset_ms.i = getelementptr inbounds %struct.adis_timeout, ptr %10, i32 0, i32 1
  br label %if.end9

__adis_reset.exit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adis, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef %call.i.i) #7
  br label %cleanup

if.end9:                                          ; preds = %__adis_reset.exit.thread, %if.then4
  %sw_reset_ms.i.sink = phi ptr [ %sw_reset_ms.i, %__adis_reset.exit.thread ], [ %3, %if.then4 ]
  %15 = ptrtoint ptr %sw_reset_ms.i.sink to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sw_reset_ms.i.sink, align 2
  %conv.i = zext i16 %16 to i32
  tail call void @msleep(i32 noundef %conv.i) #4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %timeouts1.i64 = getelementptr inbounds %struct.adis_data, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %timeouts1.i64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timeouts1.i64, align 4
  %self_test_reg.i = getelementptr inbounds %struct.adis_data, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %self_test_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %self_test_reg.i, align 4
  %self_test_mask.i = getelementptr inbounds %struct.adis_data, ptr %18, i32 0, i32 8
  %23 = ptrtoint ptr %self_test_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %self_test_mask.i, align 4
  %conv.i.i = and i32 %24, 65535
  %call.i.i65 = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %22, i32 noundef %conv.i.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i66, label %if.end.i68, label %adis_self_test.exit.thread

adis_self_test.exit.thread:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adis, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18, i32 noundef %call.i.i65) #7
  br label %cleanup

if.end.i68:                                       ; preds = %if.end9
  %self_test_ms.i = getelementptr inbounds %struct.adis_timeout, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %self_test_ms.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %self_test_ms.i, align 2
  %conv4.i = zext i16 %28 to i32
  tail call void @msleep(i32 noundef %conv4.i) #4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %diag_stat_reg.i.i = getelementptr inbounds %struct.adis_data, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %diag_stat_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %diag_stat_reg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #4
  %33 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !80
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %32, ptr noundef nonnull %tmp.i.i.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i, label %__adis_read_reg_16.exit.i.i

__adis_read_reg_16.exit.i.i:                      ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #4
  br label %__adis_check_status.exit.i

if.end.i.i:                                       ; preds = %if.end.i68
  %34 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #4
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 8
  %status_error_mask.i.i = getelementptr inbounds %struct.adis_data, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %status_error_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status_error_mask.i.i, align 4
  %conv228.i.i = and i32 %39, %35
  %conv2.i.i = trunc i32 %conv228.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i.i)
  %cmp.i.i = icmp eq i16 %conv2.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.__adis_check_status.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.__adis_check_status.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__adis_check_status.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %conv9.i.i = and i32 %conv228.i.i, 65535
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.029.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.029.i.i
  %and10.i.i = and i32 %conv9.i.i, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adis, align 128
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 8
  %status_error_msgs.i.i = getelementptr inbounds %struct.adis_data, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %status_error_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %status_error_msgs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %45, i32 %i.029.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.7, ptr noundef %47) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.__adis_check_status.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.__adis_check_status.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__adis_check_status.exit.i

__adis_check_status.exit.i:                       ; preds = %for.inc.i.i.__adis_check_status.exit.i_crit_edge, %if.end.i.i.__adis_check_status.exit.i_crit_edge, %__adis_read_reg_16.exit.i.i
  %retval.0.i.i = phi i32 [ %call.i.i.i, %__adis_read_reg_16.exit.i.i ], [ 0, %if.end.i.i.__adis_check_status.exit.i_crit_edge ], [ -5, %for.inc.i.i.__adis_check_status.exit.i_crit_edge ]
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 8
  %self_test_no_autoclear.i = getelementptr inbounds %struct.adis_data, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %self_test_no_autoclear.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %self_test_no_autoclear.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool7.not.i = icmp eq i8 %51, 0
  br i1 %tobool7.not.i, label %__adis_check_status.exit.i.adis_self_test.exit_crit_edge, label %if.then8.i

__adis_check_status.exit.i.adis_self_test.exit_crit_edge: ; preds = %__adis_check_status.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adis_self_test.exit

if.then8.i:                                       ; preds = %__adis_check_status.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %self_test_reg10.i = getelementptr inbounds %struct.adis_data, ptr %49, i32 0, i32 9
  %52 = ptrtoint ptr %self_test_reg10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %self_test_reg10.i, align 4
  %call.i25.i = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %53, i32 noundef 0, i32 noundef 2) #4
  br label %adis_self_test.exit

adis_self_test.exit:                              ; preds = %if.then8.i, %__adis_check_status.exit.i.adis_self_test.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool11.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool11.not, label %if.end13, label %adis_self_test.exit.cleanup_crit_edge

adis_self_test.exit.cleanup_crit_edge:            ; preds = %adis_self_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %adis_self_test.exit
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 8
  %unmasked_drdy = getelementptr inbounds %struct.adis_data, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %unmasked_drdy to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %unmasked_drdy, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool15.not = icmp eq i8 %57, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 @adis_enable_irq(ptr noundef %adis, i1 noundef zeroext false)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 8
  %prod_id_reg = getelementptr inbounds %struct.adis_data, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %prod_id_reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %prod_id_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool20.not = icmp eq i32 %61, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %62 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %tmp.i, align 4, !annotation !80
  %state_lock.i.i = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #4
  %call.i.i69 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %61, ptr noundef nonnull %tmp.i, i32 noundef 2) #4
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69)
  %cmp.i70 = icmp eq i32 %call.i.i69, 0
  br i1 %cmp.i70, label %if.end28, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %63 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %conv29 = and i32 %64, 65535
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 8
  %prod_id31 = getelementptr inbounds %struct.adis_data, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %prod_id31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %prod_id31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv29)
  %cmp.not = icmp eq i32 %68, %conv29
  br i1 %cmp.not, label %if.end28.cleanup_crit_edge, label %do.end

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adis, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.12, i32 noundef %68, i32 noundef %conv29) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end28.cleanup_crit_edge, %adis_read_reg_16.exit, %if.end18.cleanup_crit_edge, %adis_self_test.exit.cleanup_crit_edge, %adis_self_test.exit.thread, %__adis_reset.exit, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %call.i.i, %__adis_reset.exit ], [ %retval.0.i.i, %adis_self_test.exit.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %call.i.i69, %adis_read_reg_16.exit ], [ 0, %do.end ], [ 0, %if.end28.cleanup_crit_edge ], [ %call.i.i65, %adis_self_test.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adis_single_conversion(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %error_mask, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %uval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval) #4
  %2 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uval, align 4, !annotation !80
  %state_lock = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %scan_type = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5
  %storagebits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %storagebits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %storagebits, align 2
  %7 = lshr i8 %6, 3
  %div = zext i8 %7 to i32
  %call1 = call i32 @__adis_read_reg(ptr noundef %1, i32 noundef %4, ptr noundef nonnull %uval, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.err_unlock_crit_edge

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_unlock

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uval, align 4
  %and = and i32 %9, %error_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 8
  %diag_stat_reg.i = getelementptr inbounds %struct.adis_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %diag_stat_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %diag_stat_reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %14 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !80
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %1, i32 noundef %13, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %__adis_read_reg_16.exit.i

__adis_read_reg_16.exit.i:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #4
  br label %err_unlock

if.end.i:                                         ; preds = %if.then3
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 8
  %status_error_mask.i = getelementptr inbounds %struct.adis_data, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %status_error_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status_error_mask.i, align 4
  %conv228.i = and i32 %20, %16
  %conv2.i = trunc i32 %conv228.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i)
  %cmp.i = icmp eq i16 %conv2.i, 0
  br i1 %cmp.i, label %if.end.i.if.end8_crit_edge, label %for.cond.preheader.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.cond.preheader.i:                             ; preds = %if.end.i
  %conv9.i = and i32 %conv228.i, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.029.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i33 = shl nuw nsw i32 1, %i.029.i
  %and10.i = and i32 %conv9.i, %shl.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 8
  %status_error_msgs.i = getelementptr inbounds %struct.adis_data, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %status_error_msgs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %status_error_msgs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %i.029.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef %28) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.err_unlock_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.err_unlock_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_unlock

if.end8:                                          ; preds = %if.end.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %29 = ptrtoint ptr %scan_type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scan_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %30)
  %cmp = icmp eq i8 %30, 115
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %realbits, align 1
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %33 = sub i8 32, %32
  %conv1.i = zext i8 %33 to i32
  %shl.i = shl i32 %9, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  br label %if.end21

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %conv18 = zext i8 %32 to i32
  %notmask = shl nsw i32 -1, %conv18
  %sub19 = xor i32 %notmask, -1
  %and20 = and i32 %9, %sub19
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %storemerge = phi i32 [ %and20, %if.else ], [ %shr.i, %if.then12 ]
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge, ptr %val, align 4
  br label %err_unlock

err_unlock:                                       ; preds = %if.end21, %for.inc.i.err_unlock_crit_edge, %__adis_read_reg_16.exit.i, %entry.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.err_unlock_crit_edge ], [ 1, %if.end21 ], [ %call.i.i, %__adis_read_reg_16.exit.i ], [ -5, %for.inc.i.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adis_init(ptr noundef %adis, ptr nocapture noundef writeonly %indio_dev, ptr noundef %spi, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %timeouts = getelementptr inbounds %struct.adis_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %timeouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeouts, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %do.body2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15) #7
  br label %return

do.body2:                                         ; preds = %lor.lhs.false
  %state_lock = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %state_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @adis_init.__key) #4
  %2 = ptrtoint ptr %adis to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %adis, align 128
  %data5 = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 2
  %3 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %data5, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adis, ptr %driver_data.i.i, align 4
  %has_paging = getelementptr inbounds %struct.adis_data, ptr %data, i32 0, i32 16
  %5 = ptrtoint ptr %has_paging to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_paging, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %current_page8 = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 7
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %current_page8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %current_page8, align 8
  br label %return

if.else:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %current_page8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %current_page8, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.else ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !61, !62, !64, !66, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/adis.c", i32 116, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__adis_write_reg._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @__adis_write_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab___adis_write_reg, !9, !"__ksymtab___adis_write_reg", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/adis.c", i32 124, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/adis.c", i32 203, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__adis_read_reg._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @__adis_read_reg._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab___adis_read_reg, !16, !"__ksymtab___adis_read_reg", i1 false, i1 false}
!16 = !{!"../drivers/iio/imu/adis.c", i32 221, i32 1}
!17 = !{ptr @__ksymtab___adis_update_bits_base, !18, !"__ksymtab___adis_update_bits_base", i1 false, i1 false}
!18 = !{!"../drivers/iio/imu/adis.c", i32 246, i32 1}
!19 = !{ptr @__ksymtab_adis_debugfs_reg_access, !20, !"__ksymtab_adis_debugfs_reg_access", i1 false, i1 false}
!20 = !{!"../drivers/iio/imu/adis.c", i32 268, i32 1}
!21 = !{ptr @__ksymtab_adis_enable_irq, !22, !"__ksymtab_adis_enable_irq", i1 false, i1 false}
!22 = !{!"../drivers/iio/imu/adis.c", i32 315, i32 1}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/imu/adis.c", i32 340, i32 4}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__adis_check_status._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @__adis_check_status._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab___adis_check_status, !29, !"__ksymtab___adis_check_status", i1 false, i1 false}
!29 = !{!"../drivers/iio/imu/adis.c", i32 347, i32 1}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/imu/adis.c", i32 363, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__adis_reset._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @__adis_reset._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab___adis_reset, !36, !"__ksymtab___adis_reset", i1 false, i1 false}
!36 = !{!"../drivers/iio/imu/adis.c", i32 371, i32 1}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/imu/adis.c", i32 421, i32 50}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/imu/adis.c", i32 456, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__adis_initial_startup._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @__adis_initial_startup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab___adis_initial_startup, !46, !"__ksymtab___adis_initial_startup", i1 false, i1 false}
!46 = !{!"../drivers/iio/imu/adis.c", i32 462, i32 1}
!47 = !{ptr @__ksymtab_adis_single_conversion, !48, !"__ksymtab_adis_single_conversion", i1 false, i1 false}
!48 = !{!"../drivers/iio/imu/adis.c", i32 509, i32 1}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/imu/adis.c", i32 527, i32 3}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @adis_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @adis_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @adis_init.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/iio/imu/adis.c", i32 531, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__ksymtab_adis_init, !58, !"__ksymtab_adis_init", i1 false, i1 false}
!58 = !{!"../drivers/iio/imu/adis.c", i32 546, i32 1}
!59 = !{ptr @__UNIQUE_ID_file234, !60, !"__UNIQUE_ID_file234", i1 false, i1 false}
!60 = !{!"../drivers/iio/imu/adis.c", i32 548, i32 1}
!61 = !{ptr @__UNIQUE_ID_license235, !60, !"__UNIQUE_ID_license235", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_author236, !63, !"__UNIQUE_ID_author236", i1 false, i1 false}
!63 = !{!"../drivers/iio/imu/adis.c", i32 549, i32 1}
!64 = !{ptr @__UNIQUE_ID_description237, !65, !"__UNIQUE_ID_description237", i1 false, i1 false}
!65 = !{!"../drivers/iio/imu/adis.c", i32 550, i32 1}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/imu/adis.c", i32 381, i32 3}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @adis_self_test._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @adis_self_test._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i8 0, i8 2}
