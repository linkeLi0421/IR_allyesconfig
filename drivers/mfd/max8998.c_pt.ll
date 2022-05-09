; ModuleID = '/llk/IR_all_yes/drivers/mfd/max8998.c_pt.bc'
source_filename = "../drivers/mfd/max8998.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+max8998_read_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_max8998_read_reg\09\09\09\09"
module asm "\09.long\09__crc_max8998_read_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_read_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8998_bulk_read\22, \22a\22\09"
module asm "\09.weak\09__crc_max8998_bulk_read\09\09\09\09"
module asm "\09.long\09__crc_max8998_bulk_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_bulk_read\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8998_write_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_max8998_write_reg\09\09\09\09"
module asm "\09.long\09__crc_max8998_write_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_write_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8998_bulk_write\22, \22a\22\09"
module asm "\09.weak\09__crc_max8998_bulk_write\09\09\09\09"
module asm "\09.long\09__crc_max8998_bulk_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_bulk_write\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+max8998_update_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_max8998_update_reg\09\09\09\09"
module asm "\09.long\09__crc_max8998_update_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_update_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_update_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_update_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.max8998_reg_dump = type { i8, i8 }
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
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.max8998_platform_data = type { ptr, i32, i32, i32, i8, [4 x i32], [2 x i32], i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }

@__kstrtab_max8998_read_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_read_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_read_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_read_reg to i32), ptr @__kstrtab_max8998_read_reg, ptr @__kstrtabns_max8998_read_reg }, section "___ksymtab+max8998_read_reg", align 4
@__kstrtab_max8998_bulk_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_bulk_read = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_bulk_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_bulk_read to i32), ptr @__kstrtab_max8998_bulk_read, ptr @__kstrtabns_max8998_bulk_read }, section "___ksymtab+max8998_bulk_read", align 4
@__kstrtab_max8998_write_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_write_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_write_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_write_reg to i32), ptr @__kstrtab_max8998_write_reg, ptr @__kstrtabns_max8998_write_reg }, section "___ksymtab+max8998_write_reg", align 4
@__kstrtab_max8998_bulk_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_bulk_write = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_bulk_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_bulk_write to i32), ptr @__kstrtab_max8998_bulk_write, ptr @__kstrtabns_max8998_bulk_write }, section "___ksymtab+max8998_bulk_write", align 4
@__kstrtab_max8998_update_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_update_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_update_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_update_reg to i32), ptr @__kstrtab_max8998_update_reg, ptr @__kstrtabns_max8998_update_reg }, section "___ksymtab+max8998_update_reg", align 4
@__initcall__kmod_max8998__289_360_max8998_i2c_init4 = internal global ptr @max8998_i2c_init, section ".initcall4.init", align 4
@max8998_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max8998_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @max8998_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_pm, ptr null, ptr null }, ptr @max8998_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8998\00", [24 x i8] zeroinitializer }, align 32
@max8998_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8998\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lp3974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp3974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@max8998_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max8998_suspend, ptr @max8998_resume, ptr @max8998_freeze, ptr null, ptr null, ptr @max8998_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max8998_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8998\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lp3974\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max8998_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&max8998->iolock\00", [47 x i8] zeroinitializer }, align 32
@max8998_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8998_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/max8998.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8998_i2c_probe._entry_ptr = internal global ptr @max8998_i2c_probe._entry, section ".printk_index", align 4
@lp3974_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@max8998_devs = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.10, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.11, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp3974-pmic\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lp3974-rtc\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8998-pmic\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8998-rtc\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8998-battery\00", [16 x i8] zeroinitializer }, align 32
@max8998_dump = internal global { [37 x %struct.max8998_reg_dump], [54 x i8] } { [37 x %struct.max8998_reg_dump] [%struct.max8998_reg_dump { i8 4, i8 0 }, %struct.max8998_reg_dump { i8 5, i8 0 }, %struct.max8998_reg_dump { i8 6, i8 0 }, %struct.max8998_reg_dump { i8 7, i8 0 }, %struct.max8998_reg_dump { i8 10, i8 0 }, %struct.max8998_reg_dump { i8 11, i8 0 }, %struct.max8998_reg_dump { i8 12, i8 0 }, %struct.max8998_reg_dump { i8 13, i8 0 }, %struct.max8998_reg_dump { i8 14, i8 0 }, %struct.max8998_reg_dump { i8 14, i8 0 }, %struct.max8998_reg_dump { i8 16, i8 0 }, %struct.max8998_reg_dump { i8 17, i8 0 }, %struct.max8998_reg_dump { i8 18, i8 0 }, %struct.max8998_reg_dump { i8 19, i8 0 }, %struct.max8998_reg_dump { i8 20, i8 0 }, %struct.max8998_reg_dump { i8 21, i8 0 }, %struct.max8998_reg_dump { i8 22, i8 0 }, %struct.max8998_reg_dump { i8 23, i8 0 }, %struct.max8998_reg_dump { i8 24, i8 0 }, %struct.max8998_reg_dump { i8 25, i8 0 }, %struct.max8998_reg_dump { i8 26, i8 0 }, %struct.max8998_reg_dump { i8 29, i8 0 }, %struct.max8998_reg_dump { i8 30, i8 0 }, %struct.max8998_reg_dump { i8 31, i8 0 }, %struct.max8998_reg_dump { i8 32, i8 0 }, %struct.max8998_reg_dump { i8 33, i8 0 }, %struct.max8998_reg_dump { i8 34, i8 0 }, %struct.max8998_reg_dump { i8 35, i8 0 }, %struct.max8998_reg_dump { i8 36, i8 0 }, %struct.max8998_reg_dump { i8 37, i8 0 }, %struct.max8998_reg_dump { i8 38, i8 0 }, %struct.max8998_reg_dump { i8 39, i8 0 }, %struct.max8998_reg_dump { i8 40, i8 0 }, %struct.max8998_reg_dump { i8 41, i8 0 }, %struct.max8998_reg_dump { i8 42, i8 0 }, %struct.max8998_reg_dump { i8 43, i8 0 }, %struct.max8998_reg_dump { i8 44, i8 0 }], [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"max8998_i2c_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 344, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 346, i32 14 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"max8998_dt_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 120, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"max8998_pm\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 337, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"max8998_i2c_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 236, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 194, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 198, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"lp3974_devs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 35, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"max8998_devs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 25, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 37, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 39, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 27, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 29, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 31, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"max8998_dump\00", align 1
@___asan_gen_.73 = private constant [25 x i8] c"../drivers/mfd/max8998.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 272, i32 32 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__initcall__kmod_max8998__289_360_max8998_i2c_init4, ptr @__ksymtab_max8998_bulk_read, ptr @__ksymtab_max8998_bulk_write, ptr @__ksymtab_max8998_read_reg, ptr @__ksymtab_max8998_update_reg, ptr @__ksymtab_max8998_write_reg, ptr @max8998_i2c_probe._entry, ptr @max8998_i2c_probe._entry_ptr, ptr @max8998_i2c_driver, ptr @.str, ptr @max8998_dt_match, ptr @max8998_pm, ptr @max8998_i2c_id, ptr @max8998_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lp3974_devs, ptr @max8998_devs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @max8998_dump], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3974_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_devs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_dump to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8998_read_reg(ptr noundef %i2c, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %dest) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #5
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext %reg) #5
  tail call void @mutex_unlock(ptr noundef %iolock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %call1 to i8
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %dest, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8998_bulk_read(ptr noundef %i2c, i8 noundef zeroext %reg, i32 noundef %count, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #5
  %conv = trunc i32 %count to i8
  %call1 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %conv, ptr noundef %buf) #5
  tail call void @mutex_unlock(ptr noundef %iolock) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8998_write_reg(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #5
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %value) #5
  tail call void @mutex_unlock(ptr noundef %iolock) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8998_bulk_write(ptr noundef %i2c, i8 noundef zeroext %reg, i32 noundef %count, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #5
  %conv = trunc i32 %count to i8
  %call1 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %conv, ptr noundef %buf) #5
  tail call void @mutex_unlock(ptr noundef %iolock) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8998_update_reg(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #5
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i8 %mask to i32
  %and418 = and i8 %mask, %val
  %neg = xor i32 %conv3, -1
  %and7 = and i32 %call1, %neg
  %2 = trunc i32 %and7 to i8
  %conv8 = or i8 %and418, %2
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %conv8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then ], [ %call1, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %iolock) #5
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_i2c_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8998_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 232, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then4.if.then8_crit_edge, label %max8998_i2c_parse_dt_pdata.exit

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

max8998_i2c_parse_dt_pdata.exit:                  ; preds = %if.then4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call2.i = tail call i32 @irq_of_parse_and_map(ptr noundef %5, i32 noundef 1) #5
  %ono.i = getelementptr inbounds %struct.max8998_platform_data, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ono.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2.i, ptr %ono.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %max8998_i2c_parse_dt_pdata.exit.if.then8_crit_edge, label %max8998_i2c_parse_dt_pdata.exit.if.end11_crit_edge

max8998_i2c_parse_dt_pdata.exit.if.end11_crit_edge: ; preds = %max8998_i2c_parse_dt_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

max8998_i2c_parse_dt_pdata.exit.if.then8_crit_edge: ; preds = %max8998_i2c_parse_dt_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %max8998_i2c_parse_dt_pdata.exit.if.then8_crit_edge, %if.then4.if.then8_crit_edge
  %retval.0.i110 = phi ptr [ %call.i.i, %max8998_i2c_parse_dt_pdata.exit.if.then8_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then4.if.then8_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i110 to i32
  br label %cleanup

if.end11:                                         ; preds = %max8998_i2c_parse_dt_pdata.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %pdata.0 = phi ptr [ %call.i.i, %max8998_i2c_parse_dt_pdata.exit.if.end11_crit_edge ], [ %1, %if.end.if.end11_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call.i, align 4
  %i2c14 = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %i2c14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %i2c, ptr %i2c14, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %irq15 = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq15, align 4
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool.not.i101 = icmp eq ptr %15, null
  br i1 %tobool.not.i101, label %if.end.i103, label %if.then.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call.i102 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %16 = ptrtoint ptr %call.i102 to i32
  br label %max8998_i2c_get_driver_data.exit

if.end.i103:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data.i, align 4
  br label %max8998_i2c_get_driver_data.exit

max8998_i2c_get_driver_data.exit:                 ; preds = %if.end.i103, %if.then.i
  %retval.0.i104 = phi i32 [ %16, %if.then.i ], [ %18, %if.end.i103 ]
  %type = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i104, ptr %type, align 4
  %pdata17 = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %pdata17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdata.0, ptr %pdata17, align 4
  %tobool18.not = icmp eq ptr %pdata.0, null
  br i1 %tobool18.not, label %max8998_i2c_get_driver_data.exit.do.body_crit_edge, label %if.then19

max8998_i2c_get_driver_data.exit.do.body_crit_edge: ; preds = %max8998_i2c_get_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then19:                                        ; preds = %max8998_i2c_get_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ono = getelementptr inbounds %struct.max8998_platform_data, ptr %pdata.0, i32 0, i32 3
  %21 = ptrtoint ptr %ono to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ono, align 4
  %ono20 = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %ono20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ono20, align 4
  %irq_base = getelementptr inbounds %struct.max8998_platform_data, ptr %pdata.0, i32 0, i32 2
  %24 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_base, align 4
  %irq_base21 = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %irq_base21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq_base21, align 4
  %wakeup = getelementptr inbounds %struct.max8998_platform_data, ptr %pdata.0, i32 0, i32 12
  %27 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wakeup, align 4, !range !58
  %wakeup23 = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 13
  %29 = ptrtoint ptr %wakeup23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %wakeup23, align 4
  br label %do.body

do.body:                                          ; preds = %if.then19, %max8998_i2c_get_driver_data.exit.do.body_crit_edge
  %iolock = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %iolock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8998_i2c_probe.__key) #5
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %call25 = tail call ptr @i2c_new_dummy_device(ptr noundef %31, i16 noundef zeroext 6) #5
  %rtc = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call25, ptr %rtc, align 4
  %cmp.i105 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end31, label %if.end35

do.end31:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %33 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtc, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end35:                                         ; preds = %do.body
  %driver_data.i.i106 = getelementptr inbounds %struct.i2c_client, ptr %call25, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i106 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i106, align 4
  %call37 = tail call i32 @max8998_irq_init(ptr noundef nonnull %call.i) #5
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %call.i107 = tail call i32 @__pm_runtime_set_status(ptr noundef %38, i32 noundef 0) #5
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %if.end35.err_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb43
  ]

if.end35.err_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

sw.bb:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call42 = tail call i32 @mfd_add_devices(ptr noundef %43, i32 noundef -1, ptr noundef nonnull @lp3974_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call45 = tail call i32 @mfd_add_devices(ptr noundef %45, i32 noundef -1, ptr noundef nonnull @max8998_devs, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb
  %ret.0 = phi i32 [ %call45, %sw.bb43 ], [ %call42, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp46 = icmp slt i32 %ret.0, 0
  br i1 %cmp46, label %sw.epilog.err_crit_edge, label %if.end48

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end48:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %wakeup50 = getelementptr inbounds %struct.max8998_dev, ptr %call.i, i32 0, i32 13
  %48 = ptrtoint ptr %wakeup50 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wakeup50, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool51 = icmp ne i8 %49, 0
  %call52 = tail call i32 @device_init_wakeup(ptr noundef %47, i1 noundef zeroext %tobool51) #5
  br label %cleanup

err:                                              ; preds = %sw.epilog.err_crit_edge, %if.end35.err_crit_edge
  %ret.0113 = phi i32 [ %ret.0, %sw.epilog.err_crit_edge ], [ -22, %if.end35.err_crit_edge ]
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  tail call void @mfd_remove_devices(ptr noundef %51) #5
  tail call void @max8998_irq_exit(ptr noundef nonnull %call.i) #5
  %52 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rtc, align 4
  tail call void @i2c_unregister_device(ptr noundef %53) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end48, %do.end31, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %35, %do.end31 ], [ %ret.0113, %err ], [ %ret.0, %if.end48 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_irq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @max8998_irq_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @max8998_irq_resume(ptr noundef %8) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_freeze(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  br label %for.body

for.body:                                         ; preds = %max8998_read_reg.exit.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %max8998_read_reg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %iolock.i = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %iolock.i, i32 noundef 0) #5
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %1) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %for.body.max8998_read_reg.exit_crit_edge, label %if.end.i

for.body.max8998_read_reg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8998_read_reg.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %val = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %i.05, i32 1
  %conv.i = trunc i32 %call1.i to i8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %val, align 1
  br label %max8998_read_reg.exit

max8998_read_reg.exit:                            ; preds = %if.end.i, %for.body.max8998_read_reg.exit_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %max8998_read_reg.exit.for.body_crit_edge

max8998_read_reg.exit.for.body_crit_edge:         ; preds = %max8998_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %max8998_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_restore(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %val = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %i.05, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %iolock.i = getelementptr inbounds %struct.max8998_dev, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %iolock.i, i32 noundef 0) #5
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %1, i8 noundef zeroext %3) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i) #5
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_irq_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_max8998_read_reg, !1, !"__ksymtab_max8998_read_reg", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max8998.c", i32 58, i32 1}
!2 = !{ptr @__ksymtab_max8998_bulk_read, !3, !"__ksymtab_max8998_bulk_read", i1 false, i1 false}
!3 = !{!"../drivers/mfd/max8998.c", i32 73, i32 1}
!4 = !{ptr @__ksymtab_max8998_write_reg, !5, !"__ksymtab_max8998_write_reg", i1 false, i1 false}
!5 = !{!"../drivers/mfd/max8998.c", i32 85, i32 1}
!6 = !{ptr @__ksymtab_max8998_bulk_write, !7, !"__ksymtab_max8998_bulk_write", i1 false, i1 false}
!7 = !{!"../drivers/mfd/max8998.c", i32 100, i32 1}
!8 = !{ptr @__ksymtab_max8998_update_reg, !9, !"__ksymtab_max8998_update_reg", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max8998.c", i32 117, i32 1}
!10 = !{ptr @__initcall__kmod_max8998__289_360_max8998_i2c_init4, !11, !"__initcall__kmod_max8998__289_360_max8998_i2c_init4", i1 false, i1 false}
!11 = !{!"../drivers/mfd/max8998.c", i32 360, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/max8998.c", i32 346, i32 14}
!14 = !{ptr @max8998_i2c_driver, !15, !"max8998_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/max8998.c", i32 344, i32 26}
!16 = !{ptr @max8998_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/max8998.c", i32 194, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/max8998.c", i32 198, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max8998_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @max8998_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/max8998.c", i32 37, i32 11}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/max8998.c", i32 39, i32 11}
!31 = !{ptr @lp3974_devs, !32, !"lp3974_devs", i1 false, i1 false}
!32 = !{!"../drivers/mfd/max8998.c", i32 35, i32 30}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/max8998.c", i32 27, i32 11}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/max8998.c", i32 29, i32 11}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/max8998.c", i32 31, i32 11}
!39 = !{ptr @max8998_devs, !40, !"max8998_devs", i1 false, i1 false}
!40 = !{!"../drivers/mfd/max8998.c", i32 25, i32 30}
!41 = !{ptr @max8998_dt_match, !42, !"max8998_dt_match", i1 false, i1 false}
!42 = !{!"../drivers/mfd/max8998.c", i32 120, i32 34}
!43 = !{ptr @max8998_pm, !44, !"max8998_pm", i1 false, i1 false}
!44 = !{!"../drivers/mfd/max8998.c", i32 337, i32 32}
!45 = !{ptr @max8998_dump, !46, !"max8998_dump", i1 false, i1 false}
!46 = !{!"../drivers/mfd/max8998.c", i32 272, i32 32}
!47 = !{ptr @max8998_i2c_id, !48, !"max8998_i2c_id", i1 false, i1 false}
!48 = !{!"../drivers/mfd/max8998.c", i32 236, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
