; ModuleID = '/llk/IR_all_yes/drivers/mfd/max8925-i2c.c_pt.bc'
source_filename = "../drivers/mfd/max8925-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+max8925_reg_read\22, \22a\22\09"
module asm "\09.weak\09__crc_max8925_reg_read\09\09\09\09"
module asm "\09.long\09__crc_max8925_reg_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8925_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22max8925_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_max8925_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8925_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_max8925_reg_write\09\09\09\09"
module asm "\09.long\09__crc_max8925_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8925_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22max8925_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_max8925_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8925_bulk_read\22, \22a\22\09"
module asm "\09.weak\09__crc_max8925_bulk_read\09\09\09\09"
module asm "\09.long\09__crc_max8925_bulk_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8925_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22max8925_bulk_read\22\09\09\09\09\09"
module asm "__kstrtabns_max8925_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8925_bulk_write\22, \22a\22\09"
module asm "\09.weak\09__crc_max8925_bulk_write\09\09\09\09"
module asm "\09.long\09__crc_max8925_bulk_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8925_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22max8925_bulk_write\22\09\09\09\09\09"
module asm "__kstrtabns_max8925_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8925_set_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_max8925_set_bits\09\09\09\09"
module asm "\09.long\09__crc_max8925_set_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8925_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22max8925_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_max8925_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.max8925_chip = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, i32, i32, i32 }
%struct.max8925_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@__kstrtab_max8925_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8925_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_max8925_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8925_reg_read to i32), ptr @__kstrtab_max8925_reg_read, ptr @__kstrtabns_max8925_reg_read }, section "___ksymtab+max8925_reg_read", align 4
@__kstrtab_max8925_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8925_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_max8925_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8925_reg_write to i32), ptr @__kstrtab_max8925_reg_write, ptr @__kstrtabns_max8925_reg_write }, section "___ksymtab+max8925_reg_write", align 4
@__kstrtab_max8925_bulk_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8925_bulk_read = external dso_local constant [0 x i8], align 1
@__ksymtab_max8925_bulk_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8925_bulk_read to i32), ptr @__kstrtab_max8925_bulk_read, ptr @__kstrtabns_max8925_bulk_read }, section "___ksymtab+max8925_bulk_read", align 4
@__kstrtab_max8925_bulk_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8925_bulk_write = external dso_local constant [0 x i8], align 1
@__ksymtab_max8925_bulk_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8925_bulk_write to i32), ptr @__kstrtab_max8925_bulk_write, ptr @__kstrtabns_max8925_bulk_write }, section "___ksymtab+max8925_bulk_write", align 4
@__kstrtab_max8925_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8925_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_max8925_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8925_set_bits to i32), ptr @__kstrtab_max8925_set_bits, ptr @__kstrtabns_max8925_set_bits }, section "___ksymtab+max8925_set_bits", align 4
@__initcall__kmod_max8925__288_261_max8925_i2c_init4 = internal global ptr @max8925_i2c_init, section ".initcall4.init", align 4
@max8925_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max8925_probe, ptr @max8925_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max8925_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8925_pm_ops, ptr null, ptr null }, ptr @max8925_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@max8925_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to register MAX8925 I2C driver: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max8925_i2c_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/max8925-i2c.c\00", [38 x i8] zeroinitializer }, align 32
@max8925_i2c_init._entry_ptr = internal global ptr @max8925_i2c_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8925\00", [24 x i8] zeroinitializer }, align 32
@max8925_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8925\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max8925_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max8925_suspend, ptr @max8925_resume, ptr @max8925_suspend, ptr @max8925_resume, ptr @max8925_suspend, ptr @max8925_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max8925_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8925\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max8925_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: platform data is missing\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8925_probe\00", [18 x i8] zeroinitializer }, align 32
@max8925_probe._entry_ptr = internal global ptr @max8925_probe._entry, section ".printk_index", align 4
@max8925_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&chip->io_lock\00", [17 x i8] zeroinitializer }, align 32
@max8925_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 181, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8925_probe._entry_ptr.11 = internal global ptr @max8925_probe._entry.7, section ".printk_index", align 4
@max8925_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 188, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate I2C device for ADC\0A\00", [57 x i8] zeroinitializer }, align 32
@max8925_probe._entry_ptr.14 = internal global ptr @max8925_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"maxim,tsc-irq\00", [18 x i8] zeroinitializer }, align 32
@max8925_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 141, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not found maxim,tsc-irq property\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8925_dt_init\00", [16 x i8] zeroinitializer }, align 32
@max8925_dt_init._entry_ptr = internal global ptr @max8925_dt_init._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"max8925_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 240, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 257, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 242, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"max8925_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 235, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"max8925_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 233, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"max8925_id_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 129, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 165, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 177, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 181, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 188, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 139, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [29 x i8] c"../drivers/mfd/max8925-i2c.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 141, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_max8925__288_261_max8925_i2c_init4, ptr @__ksymtab_max8925_bulk_read, ptr @__ksymtab_max8925_bulk_write, ptr @__ksymtab_max8925_reg_read, ptr @__ksymtab_max8925_reg_write, ptr @__ksymtab_max8925_set_bits, ptr @max8925_dt_init._entry, ptr @max8925_dt_init._entry_ptr, ptr @max8925_i2c_init._entry, ptr @max8925_i2c_init._entry_ptr, ptr @max8925_probe._entry, ptr @max8925_probe._entry.12, ptr @max8925_probe._entry.7, ptr @max8925_probe._entry_ptr, ptr @max8925_probe._entry_ptr.11, ptr @max8925_probe._entry_ptr.14, ptr @max8925_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @max8925_dt_ids, ptr @max8925_pm_ops, ptr @max8925_id_table, ptr @.str.4, ptr @.str.5, ptr @max8925_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8925_reg_read(ptr noundef %i2c, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_lock = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  %conv.i = trunc i32 %reg to i8
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  tail call void @mutex_unlock(ptr noundef %io_lock) #6
  %conv = and i32 %call3.i, 255
  %retval.0 = select i1 %cmp4.i, i32 %call3.i, i32 %conv
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8925_reg_write(ptr noundef %i2c, i32 noundef %reg, i8 noundef zeroext %data) #0 align 64 {
entry:
  %buf.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_lock = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [9 x i8], ptr %buf.i, i32 0, i32 1
  %conv.i = trunc i32 %reg to i8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %buf.i, align 1
  store i8 %data, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  %5 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i) #6
  call void @mutex_unlock(ptr noundef %io_lock) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8925_bulk_read(ptr noundef %i2c, i32 noundef %reg, i32 noundef %count, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_lock = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.i = icmp sgt i32 %count, 1
  %conv.i = trunc i32 %reg to i8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i = trunc i32 %count to i8
  %call.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %i2c, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i, ptr noundef %buf) #6
  br label %max8925_read_device.exit

if.else.i:                                        ; preds = %entry
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.else.i.max8925_read_device.exit_crit_edge, label %if.end.i

if.else.i.max8925_read_device.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8925_read_device.exit

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i = trunc i32 %call3.i to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv7.i, ptr %buf, align 1
  br label %max8925_read_device.exit

max8925_read_device.exit:                         ; preds = %if.end.i, %if.else.i.max8925_read_device.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i.max8925_read_device.exit_crit_edge ], [ %call.i, %if.then.i ], [ %call3.i, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %io_lock) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8925_bulk_write(ptr noundef %i2c, i32 noundef %reg, i32 noundef %count, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %buf.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_lock = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [9 x i8], ptr %buf.i, i32 0, i32 1
  %conv.i = trunc i32 %reg to i8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %buf.i, align 1
  %5 = call ptr @memcpy(ptr %2, ptr %buf, i32 %count)
  %add.i = add i32 %count, 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c, ptr noundef nonnull %buf.i, i32 noundef %add.i, i16 noundef zeroext 0) #6
  %6 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i) #6
  call void @mutex_unlock(ptr noundef %io_lock) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8925_set_bits(ptr noundef %i2c, i32 noundef %reg, i8 noundef zeroext %mask, i8 noundef zeroext %data) #0 align 64 {
entry:
  %buf.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_lock = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  %conv.i = trunc i32 %reg to i8
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i = trunc i32 %call3.i to i8
  %neg = xor i8 %mask, -1
  %and = and i8 %conv7.i, %neg
  %or14 = or i8 %and, %data
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [9 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %buf.i, align 1
  store i8 %or14, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  %5 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i) #6
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %5, %if.end ], [ %call3.i, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %io_lock) #6
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_i2c_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8925_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp ne ptr %3, null
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %tsc_irq.i = getelementptr inbounds %struct.max8925_platform_data, ptr %call.i, i32 0, i32 27
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef %tsc_irq.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.if.end16_crit_edge, label %max8925_dt_init.exit

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

max8925_dt_init.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool2.not, label %do.end, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %pdata.0 = phi ptr [ %1, %if.else.if.end16_crit_edge ], [ %call.i, %if.end.if.end16_crit_edge ]
  %call.i95 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i95, null
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %call.i95, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %i2c, align 4
  %5 = ptrtoint ptr %call.i95 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i95, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i95, ptr %driver_data.i, align 4
  %io_lock = getelementptr inbounds %struct.max8925_chip, ptr %call.i95, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @max8925_probe.__key) #6
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %call28 = tail call ptr @i2c_new_dummy_device(ptr noundef %10, i16 noundef zeroext 104) #6
  %rtc = getelementptr inbounds %struct.max8925_chip, ptr %call.i95, i32 0, i32 3
  %11 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call28, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end34, label %if.end38

do.end34:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i95 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8) #9
  %14 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end20
  %driver_data.i.i96 = getelementptr inbounds %struct.i2c_client, ptr %call28, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i96 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i95, ptr %driver_data.i.i96, align 4
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %adapter41 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %adapter41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter41, align 8
  %call42 = tail call ptr @i2c_new_dummy_device(ptr noundef %21, i16 noundef zeroext 71) #6
  %adc = getelementptr inbounds %struct.max8925_chip, ptr %call.i95, i32 0, i32 2
  %22 = ptrtoint ptr %adc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call42, ptr %adc, align 4
  %cmp.i97 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %do.end48, label %if.end53

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13) #9
  %25 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtc, align 4
  tail call void @i2c_unregister_device(ptr noundef %26) #6
  %27 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adc, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %call42, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i98 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i95, ptr %driver_data.i.i98, align 4
  %call56 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call57 = tail call i32 @max8925_device_init(ptr noundef nonnull %call.i95, ptr noundef nonnull %pdata.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end48, %do.end34, %if.end16.cleanup_crit_edge, %do.end, %max8925_dt_init.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end34 ], [ %29, %do.end48 ], [ 0, %if.end53 ], [ -22, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -22, %max8925_dt_init.exit ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @max8925_device_exit(ptr noundef %1) #6
  %adc = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #6
  %rtc = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_device_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @max8925_device_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wakeup_flag = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wakeup_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %core_irq = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %core_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wakeup_flag = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wakeup_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %core_irq = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %core_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__ksymtab_max8925_reg_read, !1, !"__ksymtab_max8925_reg_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max8925-i2c.c", i32 64, i32 1}
!2 = !{ptr @__ksymtab_max8925_reg_write, !3, !"__ksymtab_max8925_reg_write", i1 false, i1 false}
!3 = !{!"../drivers/mfd/max8925-i2c.c", i32 78, i32 1}
!4 = !{ptr @__ksymtab_max8925_bulk_read, !5, !"__ksymtab_max8925_bulk_read", i1 false, i1 false}
!5 = !{!"../drivers/mfd/max8925-i2c.c", i32 92, i32 1}
!6 = !{ptr @__ksymtab_max8925_bulk_write, !7, !"__ksymtab_max8925_bulk_write", i1 false, i1 false}
!7 = !{!"../drivers/mfd/max8925-i2c.c", i32 106, i32 1}
!8 = !{ptr @__ksymtab_max8925_set_bits, !9, !"__ksymtab_max8925_set_bits", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max8925-i2c.c", i32 126, i32 1}
!10 = !{ptr @__initcall__kmod_max8925__288_261_max8925_i2c_init4, !11, !"__initcall__kmod_max8925__288_261_max8925_i2c_init4", i1 false, i1 false}
!11 = !{!"../drivers/mfd/max8925-i2c.c", i32 261, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/max8925-i2c.c", i32 257, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @max8925_i2c_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @max8925_i2c_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/max8925-i2c.c", i32 242, i32 11}
!20 = !{ptr @max8925_driver, !21, !"max8925_driver", i1 false, i1 false}
!21 = !{!"../drivers/mfd/max8925-i2c.c", i32 240, i32 26}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/max8925-i2c.c", i32 165, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max8925_probe._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @max8925_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @max8925_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/mfd/max8925-i2c.c", i32 177, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/max8925-i2c.c", i32 181, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @max8925_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @max8925_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/max8925-i2c.c", i32 188, i32 3}
!38 = !{ptr @max8925_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max8925_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/max8925-i2c.c", i32 139, i32 33}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/max8925-i2c.c", i32 141, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @max8925_dt_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @max8925_dt_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @max8925_dt_ids, !48, !"max8925_dt_ids", i1 false, i1 false}
!48 = !{!"../drivers/mfd/max8925-i2c.c", i32 235, i32 34}
!49 = !{ptr @max8925_pm_ops, !50, !"max8925_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/mfd/max8925-i2c.c", i32 233, i32 8}
!51 = !{ptr @max8925_id_table, !52, !"max8925_id_table", i1 false, i1 false}
!52 = !{!"../drivers/mfd/max8925-i2c.c", i32 129, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
