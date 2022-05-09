; ModuleID = '/llk/IR_all_yes/drivers/mfd/adp5520.c_pt.bc'
source_filename = "../drivers/mfd/adp5520.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adp5520_write\22, \22a\22\09"
module asm "\09.weak\09__crc_adp5520_write\09\09\09\09"
module asm "\09.long\09__crc_adp5520_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adp5520_write:\09\09\09\09\09"
module asm "\09.asciz \09\22adp5520_write\22\09\09\09\09\09"
module asm "__kstrtabns_adp5520_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adp5520_read\22, \22a\22\09"
module asm "\09.weak\09__crc_adp5520_read\09\09\09\09"
module asm "\09.long\09__crc_adp5520_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adp5520_read:\09\09\09\09\09"
module asm "\09.asciz \09\22adp5520_read\22\09\09\09\09\09"
module asm "__kstrtabns_adp5520_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adp5520_set_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_adp5520_set_bits\09\09\09\09"
module asm "\09.long\09__crc_adp5520_set_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adp5520_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22adp5520_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_adp5520_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adp5520_clr_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_adp5520_clr_bits\09\09\09\09"
module asm "\09.long\09__crc_adp5520_clr_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adp5520_clr_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22adp5520_clr_bits\22\09\09\09\09\09"
module asm "__kstrtabns_adp5520_clr_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adp5520_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_adp5520_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_adp5520_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adp5520_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22adp5520_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_adp5520_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adp5520_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_adp5520_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_adp5520_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adp5520_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22adp5520_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_adp5520_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.adp5520_chip = type { ptr, ptr, %struct.mutex, %struct.blocking_notifier_head, i32, i32, i8 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adp5520_platform_data = type { ptr, ptr, ptr, ptr }

@__kstrtab_adp5520_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_adp5520_write = external dso_local constant [0 x i8], align 1
@__ksymtab_adp5520_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adp5520_write to i32), ptr @__kstrtab_adp5520_write, ptr @__kstrtabns_adp5520_write }, section "___ksymtab_gpl+adp5520_write", align 4
@__kstrtab_adp5520_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_adp5520_read = external dso_local constant [0 x i8], align 1
@__ksymtab_adp5520_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adp5520_read to i32), ptr @__kstrtab_adp5520_read, ptr @__kstrtabns_adp5520_read }, section "___ksymtab_gpl+adp5520_read", align 4
@__kstrtab_adp5520_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_adp5520_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_adp5520_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adp5520_set_bits to i32), ptr @__kstrtab_adp5520_set_bits, ptr @__kstrtabns_adp5520_set_bits }, section "___ksymtab_gpl+adp5520_set_bits", align 4
@__kstrtab_adp5520_clr_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_adp5520_clr_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_adp5520_clr_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adp5520_clr_bits to i32), ptr @__kstrtab_adp5520_clr_bits, ptr @__kstrtabns_adp5520_clr_bits }, section "___ksymtab_gpl+adp5520_clr_bits", align 4
@__kstrtab_adp5520_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_adp5520_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_adp5520_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adp5520_register_notifier to i32), ptr @__kstrtab_adp5520_register_notifier, ptr @__kstrtabns_adp5520_register_notifier }, section "___ksymtab_gpl+adp5520_register_notifier", align 4
@__kstrtab_adp5520_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_adp5520_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_adp5520_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adp5520_unregister_notifier to i32), ptr @__kstrtab_adp5520_unregister_notifier, ptr @__kstrtabns_adp5520_unregister_notifier }, section "___ksymtab_gpl+adp5520_unregister_notifier", align 4
@__initcall__kmod_adp5520__288_348_adp5520_driver_init6 = internal global ptr @adp5520_driver_init, section ".initcall6.init", align 4
@__adp5520_write._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed writing 0x%02x to 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__adp5520_write\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/adp5520.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__adp5520_write._entry_ptr = internal global ptr @__adp5520_write._entry, section ".printk_index", align 4
@__adp5520_read._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed reading at 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__adp5520_read\00", [17 x i8] zeroinitializer }, align 32
@__adp5520_read._entry_ptr = internal global ptr @__adp5520_read._entry, section ".printk_index", align 4
@adp5520_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adp5520_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp5520_pm, ptr null, ptr null }, ptr @adp5520_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adp5520\00", [24 x i8] zeroinitializer }, align 32
@adp5520_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adp5520_suspend, ptr @adp5520_resume, ptr @adp5520_suspend, ptr @adp5520_resume, ptr @adp5520_suspend, ptr @adp5520_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adp5520_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pmic-adp5520\00\00\00\00\00\00\00\00", i32 5520 }, %struct.i2c_device_id { [20 x i8] c"pmic-adp5501\00\00\00\00\00\00\00\00", i32 5501 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@adp5520_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBUS Word Data not Supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp5520_probe\00", [18 x i8] zeroinitializer }, align 32
@adp5520_probe._entry_ptr = internal global ptr @adp5520_probe._entry, section ".printk_index", align 4
@adp5520_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@adp5520_probe._entry_ptr.12 = internal global ptr @adp5520_probe._entry.10, section ".printk_index", align 4
@adp5520_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@adp5520_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&chip->notifier_list)->rwsem\00", [33 x i8] zeroinitializer }, align 32
@adp5520_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@adp5520_probe._entry_ptr.18 = internal global ptr @adp5520_probe._entry.16, section ".printk_index", align 4
@adp5520_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 253, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to write\0A\00", [47 x i8] zeroinitializer }, align 32
@adp5520_probe._entry_ptr.21 = internal global ptr @adp5520_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5520-keys\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5520-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adp5520-led\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adp5520-backlight\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 64, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 49, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"adp5520_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 339, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 341, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"adp5520_pm\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 331, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"adp5520_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 333, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 217, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 222, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 236, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 239, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 245, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 253, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 258, i32 51 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 267, i32 51 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 276, i32 51 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [25 x i8] c"../drivers/mfd/adp5520.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 286, i32 7 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__adp5520_read._entry, ptr @__adp5520_read._entry_ptr, ptr @__adp5520_write._entry, ptr @__adp5520_write._entry_ptr, ptr @__initcall__kmod_adp5520__288_348_adp5520_driver_init6, ptr @__ksymtab_adp5520_clr_bits, ptr @__ksymtab_adp5520_read, ptr @__ksymtab_adp5520_register_notifier, ptr @__ksymtab_adp5520_set_bits, ptr @__ksymtab_adp5520_unregister_notifier, ptr @__ksymtab_adp5520_write, ptr @adp5520_probe._entry, ptr @adp5520_probe._entry.10, ptr @adp5520_probe._entry.16, ptr @adp5520_probe._entry.19, ptr @adp5520_probe._entry_ptr, ptr @adp5520_probe._entry_ptr.12, ptr @adp5520_probe._entry_ptr.18, ptr @adp5520_probe._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adp5520_driver, ptr @.str.7, ptr @adp5520_pm, ptr @adp5520_id, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @adp5520_probe.__key, ptr @.str.13, ptr @adp5520_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adp5520_write(ptr noundef %dev, i32 noundef %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %conv.i = trunc i32 %reg to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv.i, i8 noundef zeroext %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.__adp5520_write.exit_crit_edge

entry.__adp5520_write.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__adp5520_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i = zext i8 %val to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv2.i, i32 noundef %reg) #8
  br label %__adp5520_write.exit

__adp5520_write.exit:                             ; preds = %do.end.i, %entry.__adp5520_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %entry.__adp5520_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adp5520_read(ptr noundef %dev, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %conv.i = trunc i32 %reg to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %reg) #8
  br label %__adp5520_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i = trunc i32 %call.i to i8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv2.i, ptr %val, align 1
  br label %__adp5520_read.exit

__adp5520_read.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adp5520_set_bits(ptr nocapture noundef readonly %dev, i32 noundef %reg, i8 noundef zeroext %bit_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i = trunc i32 %reg to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__adp5520_read.exit, label %land.lhs.true

__adp5520_read.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef %reg) #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv2.i = trunc i32 %call.i to i8
  %and18 = and i8 %conv2.i, %bit_mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and18, i8 %bit_mask)
  %cmp.not = icmp eq i8 %and18, %bit_mask
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %or19 = or i8 %conv2.i, %bit_mask
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv.i, i8 noundef zeroext %or19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i22 = icmp slt i32 %call.i21, 0
  br i1 %cmp.i22, label %do.end.i25, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i25:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i23 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv2.i24 = zext i8 %or19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i23, ptr noundef nonnull @.str, i32 noundef %conv2.i24, i32 noundef %reg) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i25, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__adp5520_read.exit
  %ret.0 = phi i32 [ %call.i, %__adp5520_read.exit ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call.i21, %do.end.i25 ], [ 0, %if.then.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adp5520_clr_bits(ptr nocapture noundef readonly %dev, i32 noundef %reg, i8 noundef zeroext %bit_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i = trunc i32 %reg to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__adp5520_read.exit, label %land.lhs.true

__adp5520_read.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef %reg) #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv2.i = trunc i32 %call.i to i8
  %and17 = and i8 %conv2.i, %bit_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and17)
  %tobool3.not = icmp eq i8 %and17, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %neg = xor i8 %bit_mask, -1
  %and6 = and i8 %conv2.i, %neg
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv.i, i8 noundef zeroext %and6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i20 = icmp slt i32 %call.i19, 0
  br i1 %cmp.i20, label %do.end.i23, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i23:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i21 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv2.i22 = zext i8 %and6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21, ptr noundef nonnull @.str, i32 noundef %conv2.i22, i32 noundef %reg) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i23, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__adp5520_read.exit
  %ret.0 = phi i32 [ %call.i, %__adp5520_read.exit ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call.i19, %do.end.i23 ], [ 0, %if.then.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adp5520_register_notifier(ptr nocapture noundef readonly %dev, ptr noundef %nb, i32 noundef %events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %6 = trunc i32 %events to i8
  %conv = and i8 %6, 15
  %call2 = tail call i32 @adp5520_set_bits(ptr noundef %5, i32 noundef 1, i8 noundef zeroext %conv)
  %notifier_list = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @blocking_notifier_chain_register(ptr noundef %notifier_list, ptr noundef %nb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adp5520_unregister_notifier(ptr nocapture noundef readonly %dev, ptr noundef %nb, i32 noundef %events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = trunc i32 %events to i8
  %conv = and i8 %4, 15
  %call2 = tail call i32 @adp5520_clr_bits(ptr noundef %3, i32 noundef 1, i8 noundef zeroext %conv)
  %notifier_list = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %notifier_list, ptr noundef %nb) #5
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp5520_driver) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %pdevinfo.i.i190 = alloca %struct.platform_device_info, align 8
  %pdevinfo.i.i178 = alloca %struct.platform_device_info, align 8
  %pdevinfo.i.i166 = alloca %struct.platform_device_info, align 8
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 212, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  %dev16 = getelementptr inbounds %struct.adp5520_chip, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev16, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %irq17 = getelementptr inbounds %struct.adp5520_chip, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq17, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %id18 = getelementptr inbounds %struct.adp5520_chip, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %id18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %id18, align 4
  %lock = getelementptr inbounds %struct.adp5520_chip, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @adp5520_probe.__key) #5
  %17 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %if.end13.if.end42_crit_edge, label %do.body26

if.end13.if.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.body26:                                        ; preds = %if.end13
  %notifier_list = getelementptr inbounds %struct.adp5520_chip, ptr %call.i, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %notifier_list, ptr noundef nonnull @.str.15, ptr noundef nonnull @adp5520_probe.__key.14) #5
  %head = getelementptr inbounds %struct.adp5520_chip, ptr %call.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %head, align 4
  %20 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq17, align 4
  %call33 = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef null, ptr noundef nonnull @adp5520_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body26.if.end42_crit_edge, label %do.end38

do.body26.if.end42_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %23) #8
  br label %cleanup

if.end42:                                         ; preds = %do.body26.if.end42_crit_edge, %if.end13.if.end42_crit_edge
  %24 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev16, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 -32
  %call.i.i163 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %cmp.i.i = icmp slt i32 %call.i.i163, 0
  br i1 %cmp.i.i, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %out_free_irq

if.end51:                                         ; preds = %if.end42
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %tobool52.not = icmp eq ptr %27, null
  br i1 %tobool52.not, label %if.end51.if.end62_crit_edge, label %if.then53

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then53:                                        ; preds = %if.end51
  %28 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev16, align 4
  %30 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id18, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %32 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 255, i32 48)
  %34 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %fwnode.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %32, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.22, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %31, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %27, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %43 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i164 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %cmp.i165 = icmp ugt ptr %call.i.i164, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then53.out_remove_subdevs_crit_edge, label %if.then53.if.end62_crit_edge

if.then53.if.end62_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then53.out_remove_subdevs_crit_edge:           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_remove_subdevs

if.end62:                                         ; preds = %if.then53.if.end62_crit_edge, %if.end51.if.end62_crit_edge
  %gpio = getelementptr inbounds %struct.adp5520_platform_data, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gpio, align 4
  %tobool63.not = icmp eq ptr %46, null
  br i1 %tobool63.not, label %if.end62.if.end73_crit_edge, label %if.then64

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then64:                                        ; preds = %if.end62
  %47 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev16, align 4
  %49 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id18, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i166) #5
  %51 = getelementptr inbounds i8, ptr %pdevinfo.i.i166, i32 8
  %52 = call ptr @memset(ptr %51, i32 255, i32 48)
  %53 = ptrtoint ptr %pdevinfo.i.i166 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %48, ptr %pdevinfo.i.i166, align 8
  %fwnode.i.i167 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 1
  %54 = ptrtoint ptr %fwnode.i.i167 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %fwnode.i.i167, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %51, align 8
  %name2.i.i168 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 3
  %56 = ptrtoint ptr %name2.i.i168 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.23, ptr %name2.i.i168, align 4
  %id3.i.i169 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 4
  %57 = ptrtoint ptr %id3.i.i169 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %50, ptr %id3.i.i169, align 8
  %res4.i.i170 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 5
  %58 = ptrtoint ptr %res4.i.i170 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %res4.i.i170, align 4
  %num_res.i.i171 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 6
  %59 = ptrtoint ptr %num_res.i.i171 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %num_res.i.i171, align 8
  %data5.i.i172 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 7
  %60 = ptrtoint ptr %data5.i.i172 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %46, ptr %data5.i.i172, align 4
  %size_data.i.i173 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 8
  %61 = ptrtoint ptr %size_data.i.i173 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %size_data.i.i173, align 8
  %dma_mask.i.i174 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 9
  %62 = ptrtoint ptr %dma_mask.i.i174 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %dma_mask.i.i174, align 8
  %properties.i.i175 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i166, i32 0, i32 10
  %63 = ptrtoint ptr %properties.i.i175 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %properties.i.i175, align 8
  %call.i.i176 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i166) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i166) #5
  %cmp.i177 = icmp ugt ptr %call.i.i176, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then64.out_remove_subdevs_crit_edge, label %if.then64.if.end73_crit_edge

if.then64.if.end73_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then64.out_remove_subdevs_crit_edge:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_remove_subdevs

if.end73:                                         ; preds = %if.then64.if.end73_crit_edge, %if.end62.if.end73_crit_edge
  %leds = getelementptr inbounds %struct.adp5520_platform_data, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %leds, align 4
  %tobool74.not = icmp eq ptr %65, null
  br i1 %tobool74.not, label %if.end73.if.end84_crit_edge, label %if.then75

if.end73.if.end84_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then75:                                        ; preds = %if.end73
  %66 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev16, align 4
  %68 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id18, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i178) #5
  %70 = getelementptr inbounds i8, ptr %pdevinfo.i.i178, i32 8
  %71 = call ptr @memset(ptr %70, i32 255, i32 48)
  %72 = ptrtoint ptr %pdevinfo.i.i178 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %67, ptr %pdevinfo.i.i178, align 8
  %fwnode.i.i179 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 1
  %73 = ptrtoint ptr %fwnode.i.i179 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %fwnode.i.i179, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %70, align 8
  %name2.i.i180 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 3
  %75 = ptrtoint ptr %name2.i.i180 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.24, ptr %name2.i.i180, align 4
  %id3.i.i181 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 4
  %76 = ptrtoint ptr %id3.i.i181 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %69, ptr %id3.i.i181, align 8
  %res4.i.i182 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 5
  %77 = ptrtoint ptr %res4.i.i182 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %res4.i.i182, align 4
  %num_res.i.i183 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 6
  %78 = ptrtoint ptr %num_res.i.i183 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %num_res.i.i183, align 8
  %data5.i.i184 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 7
  %79 = ptrtoint ptr %data5.i.i184 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %65, ptr %data5.i.i184, align 4
  %size_data.i.i185 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 8
  %80 = ptrtoint ptr %size_data.i.i185 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 12, ptr %size_data.i.i185, align 8
  %dma_mask.i.i186 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 9
  %81 = ptrtoint ptr %dma_mask.i.i186 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %dma_mask.i.i186, align 8
  %properties.i.i187 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i178, i32 0, i32 10
  %82 = ptrtoint ptr %properties.i.i187 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %properties.i.i187, align 8
  %call.i.i188 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i178) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i178) #5
  %cmp.i189 = icmp ugt ptr %call.i.i188, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then75.out_remove_subdevs_crit_edge, label %if.then75.if.end84_crit_edge

if.then75.if.end84_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then75.out_remove_subdevs_crit_edge:           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_remove_subdevs

if.end84:                                         ; preds = %if.then75.if.end84_crit_edge, %if.end73.if.end84_crit_edge
  %backlight = getelementptr inbounds %struct.adp5520_platform_data, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %backlight, align 4
  %tobool85.not = icmp eq ptr %84, null
  br i1 %tobool85.not, label %if.end84.cleanup_crit_edge, label %if.then86

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then86:                                        ; preds = %if.end84
  %85 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev16, align 4
  %87 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %id18, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i190) #5
  %89 = getelementptr inbounds i8, ptr %pdevinfo.i.i190, i32 8
  %90 = call ptr @memset(ptr %89, i32 255, i32 48)
  %91 = ptrtoint ptr %pdevinfo.i.i190 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %86, ptr %pdevinfo.i.i190, align 8
  %fwnode.i.i191 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 1
  %92 = ptrtoint ptr %fwnode.i.i191 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %fwnode.i.i191, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %89, align 8
  %name2.i.i192 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 3
  %94 = ptrtoint ptr %name2.i.i192 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.25, ptr %name2.i.i192, align 4
  %id3.i.i193 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 4
  %95 = ptrtoint ptr %id3.i.i193 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %88, ptr %id3.i.i193, align 8
  %res4.i.i194 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 5
  %96 = ptrtoint ptr %res4.i.i194 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %res4.i.i194, align 4
  %num_res.i.i195 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 6
  %97 = ptrtoint ptr %num_res.i.i195 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %num_res.i.i195, align 8
  %data5.i.i196 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 7
  %98 = ptrtoint ptr %data5.i.i196 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %84, ptr %data5.i.i196, align 4
  %size_data.i.i197 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 8
  %99 = ptrtoint ptr %size_data.i.i197 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 15, ptr %size_data.i.i197, align 8
  %dma_mask.i.i198 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 9
  %100 = ptrtoint ptr %dma_mask.i.i198 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 0, ptr %dma_mask.i.i198, align 8
  %properties.i.i199 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i190, i32 0, i32 10
  %101 = ptrtoint ptr %properties.i.i199 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %properties.i.i199, align 8
  %call.i.i200 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i190) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i190) #5
  %cmp.i201 = icmp ugt ptr %call.i.i200, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then86.out_remove_subdevs_crit_edge, label %if.then86.cleanup_crit_edge

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then86.out_remove_subdevs_crit_edge:           ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_remove_subdevs

out_remove_subdevs:                               ; preds = %if.then86.out_remove_subdevs_crit_edge, %if.then75.out_remove_subdevs_crit_edge, %if.then64.out_remove_subdevs_crit_edge, %if.then53.out_remove_subdevs_crit_edge
  %ret.0.in = phi ptr [ %call.i.i164, %if.then53.out_remove_subdevs_crit_edge ], [ %call.i.i176, %if.then64.out_remove_subdevs_crit_edge ], [ %call.i.i188, %if.then75.out_remove_subdevs_crit_edge ], [ %call.i.i200, %if.then86.out_remove_subdevs_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %102 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev16, align 4
  %call.i202 = call i32 @device_for_each_child(ptr noundef %103, ptr noundef null, ptr noundef nonnull @__remove_subdev) #5
  br label %out_free_irq

out_free_irq:                                     ; preds = %out_remove_subdevs, %do.end49
  %ret.1 = phi i32 [ %call.i.i163, %do.end49 ], [ %ret.0, %out_remove_subdevs ]
  %104 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool98.not = icmp eq i32 %105, 0
  br i1 %tobool98.not, label %out_free_irq.cleanup_crit_edge, label %if.then99

out_free_irq.cleanup_crit_edge:                   ; preds = %out_free_irq
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %out_free_irq
  call void @__sanitizer_cov_trace_pc() #7
  %call101 = call ptr @free_irq(i32 noundef %105, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %out_free_irq.cleanup_crit_edge, %if.then86.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %do.end38, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end6 ], [ %call33, %do.end38 ], [ -5, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.then86.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ], [ %ret.1, %if.then99 ], [ %ret.1, %out_free_irq.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_irq_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__adp5520_read.exit, label %if.end

__adp5520_read.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef 0) #8
  br label %out

if.end:                                           ; preds = %entry
  %conv2.i = trunc i32 %call.i to i8
  %2 = and i8 %conv2.i, 31
  %and = zext i8 %2 to i32
  %notifier_list = getelementptr inbounds %struct.adp5520_chip, ptr %data, i32 0, i32 3
  %call1 = tail call i32 @blocking_notifier_call_chain(ptr noundef %notifier_list, i32 noundef %and, ptr noundef null) #5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp5520_chip, ptr %6, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %__adp5520_read.exit.i, label %if.then.i

__adp5520_read.exit.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.5, i32 noundef 0) #8
  br label %__adp5520_ack_bits.exit

if.then.i:                                        ; preds = %if.end
  %conv2.i.i = trunc i32 %call.i.i to i8
  %or1.i = or i8 %2, %conv2.i.i
  %call.i2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %or1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i3.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i3.i, label %do.end.i6.i, label %if.then.i.__adp5520_ack_bits.exit_crit_edge

if.then.i.__adp5520_ack_bits.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__adp5520_ack_bits.exit

do.end.i6.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i4.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv2.i5.i = zext i8 %or1.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i4.i, ptr noundef nonnull @.str, i32 noundef %conv2.i5.i, i32 noundef 0) #8
  br label %__adp5520_ack_bits.exit

__adp5520_ack_bits.exit:                          ; preds = %do.end.i6.i, %if.then.i.__adp5520_ack_bits.exit_crit_edge, %__adp5520_read.exit.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %out

out:                                              ; preds = %__adp5520_ack_bits.exit, %__adp5520_read.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__remove_subdev(ptr noundef %dev, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev2 = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %mode = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 6
  %add.ptr.i = getelementptr i8, ptr %3, i32 -32
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 0) #8
  br label %adp5520_read.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i.i = trunc i32 %call.i.i to i8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2.i.i, ptr %mode, align 1
  br label %adp5520_read.exit

adp5520_read.exit:                                ; preds = %if.end.i.i, %do.end.i.i
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 4
  %7 = and i8 %6, -32
  store i8 %7, ptr %mode, align 4
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 -32
  %call.i.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i11, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp.i.i13 = icmp slt i32 %call.i.i12, 0
  br i1 %cmp.i.i13, label %do.end.i.i14, label %adp5520_read.exit.adp5520_write.exit_crit_edge

adp5520_read.exit.adp5520_write.exit_crit_edge:   ; preds = %adp5520_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5520_write.exit

do.end.i.i14:                                     ; preds = %adp5520_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #8
  br label %adp5520_write.exit

adp5520_write.exit:                               ; preds = %do.end.i.i14, %adp5520_read.exit.adp5520_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev2 = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %mode = getelementptr inbounds %struct.adp5520_chip, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -32
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.adp5520_write.exit_crit_edge

entry.adp5520_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5520_write.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %conv2.i.i, i32 noundef 0) #8
  br label %adp5520_write.exit

adp5520_write.exit:                               ; preds = %do.end.i.i, %entry.adp5520_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__ksymtab_adp5520_write, !1, !"__ksymtab_adp5520_write", i1 false, i1 false}
!1 = !{!"../drivers/mfd/adp5520.c", i32 95, i32 1}
!2 = !{ptr @__ksymtab_adp5520_read, !3, !"__ksymtab_adp5520_read", i1 false, i1 false}
!3 = !{!"../drivers/mfd/adp5520.c", i32 101, i32 1}
!4 = !{ptr @__ksymtab_adp5520_set_bits, !5, !"__ksymtab_adp5520_set_bits", i1 false, i1 false}
!5 = !{!"../drivers/mfd/adp5520.c", i32 121, i32 1}
!6 = !{ptr @__ksymtab_adp5520_clr_bits, !7, !"__ksymtab_adp5520_clr_bits", i1 false, i1 false}
!7 = !{!"../drivers/mfd/adp5520.c", i32 141, i32 1}
!8 = !{ptr @__ksymtab_adp5520_register_notifier, !9, !"__ksymtab_adp5520_register_notifier", i1 false, i1 false}
!9 = !{!"../drivers/mfd/adp5520.c", i32 159, i32 1}
!10 = !{ptr @__ksymtab_adp5520_unregister_notifier, !11, !"__ksymtab_adp5520_unregister_notifier", i1 false, i1 false}
!11 = !{!"../drivers/mfd/adp5520.c", i32 172, i32 1}
!12 = !{ptr @__initcall__kmod_adp5520__288_348_adp5520_driver_init6, !13, !"__initcall__kmod_adp5520__288_348_adp5520_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/mfd/adp5520.c", i32 348, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/adp5520.c", i32 64, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__adp5520_write._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @__adp5520_write._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/adp5520.c", i32 49, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__adp5520_read._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @__adp5520_read._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/adp5520.c", i32 341, i32 13}
!29 = !{ptr @adp5520_driver, !30, !"adp5520_driver", i1 false, i1 false}
!30 = !{!"../drivers/mfd/adp5520.c", i32 339, i32 26}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/adp5520.c", i32 217, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @adp5520_probe._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @adp5520_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/adp5520.c", i32 222, i32 3}
!38 = !{ptr @adp5520_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @adp5520_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @adp5520_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/mfd/adp5520.c", i32 236, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @adp5520_probe.__key.14, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/mfd/adp5520.c", i32 239, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/adp5520.c", i32 245, i32 4}
!48 = !{ptr @adp5520_probe._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @adp5520_probe._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/adp5520.c", i32 253, i32 3}
!52 = !{ptr @adp5520_probe._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @adp5520_probe._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/adp5520.c", i32 258, i32 51}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/adp5520.c", i32 267, i32 51}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/adp5520.c", i32 276, i32 51}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/adp5520.c", i32 286, i32 7}
!62 = !{ptr @adp5520_pm, !63, !"adp5520_pm", i1 false, i1 false}
!63 = !{!"../drivers/mfd/adp5520.c", i32 331, i32 8}
!64 = !{ptr @adp5520_id, !65, !"adp5520_id", i1 false, i1 false}
!65 = !{!"../drivers/mfd/adp5520.c", i32 333, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
