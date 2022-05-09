; ModuleID = '/llk/IR_all_yes/drivers/mfd/max8997.c_pt.bc'
source_filename = "../drivers/mfd/max8997.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+max8997_read_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_max8997_read_reg\09\09\09\09"
module asm "\09.long\09__crc_max8997_read_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_read_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+max8997_bulk_read\22, \22a\22\09"
module asm "\09.weak\09__crc_max8997_bulk_read\09\09\09\09"
module asm "\09.long\09__crc_max8997_bulk_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_bulk_read\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+max8997_write_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_max8997_write_reg\09\09\09\09"
module asm "\09.long\09__crc_max8997_write_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_write_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+max8997_bulk_write\22, \22a\22\09"
module asm "\09.weak\09__crc_max8997_bulk_write\09\09\09\09"
module asm "\09.long\09__crc_max8997_bulk_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_bulk_write\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+max8997_update_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_max8997_update_reg\09\09\09\09"
module asm "\09.long\09__crc_max8997_update_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_update_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_update_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_update_reg:\09\09\09\09\09"
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
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }

@__kstrtab_max8997_read_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_read_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_read_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_read_reg to i32), ptr @__kstrtab_max8997_read_reg, ptr @__kstrtabns_max8997_read_reg }, section "___ksymtab_gpl+max8997_read_reg", align 4
@__kstrtab_max8997_bulk_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_bulk_read = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_bulk_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_bulk_read to i32), ptr @__kstrtab_max8997_bulk_read, ptr @__kstrtabns_max8997_bulk_read }, section "___ksymtab_gpl+max8997_bulk_read", align 4
@__kstrtab_max8997_write_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_write_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_write_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_write_reg to i32), ptr @__kstrtab_max8997_write_reg, ptr @__kstrtabns_max8997_write_reg }, section "___ksymtab_gpl+max8997_write_reg", align 4
@__kstrtab_max8997_bulk_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_bulk_write = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_bulk_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_bulk_write to i32), ptr @__kstrtab_max8997_bulk_write, ptr @__kstrtabns_max8997_bulk_write }, section "___ksymtab_gpl+max8997_bulk_write", align 4
@__kstrtab_max8997_update_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_update_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_update_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_update_reg to i32), ptr @__kstrtab_max8997_update_reg, ptr @__kstrtabns_max8997_update_reg }, section "___ksymtab_gpl+max8997_update_reg", align 4
@__initcall__kmod_max8997__289_490_max8997_i2c_init4 = internal global ptr @max8997_i2c_init, section ".initcall4.init", align 4
@max8997_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max8997_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @max8997_pmic_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_pm, ptr null, ptr null }, ptr @max8997_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8997\00", [24 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8997-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max8997_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max8997_suspend, ptr @max8997_resume, ptr @max8997_freeze, ptr null, ptr null, ptr @max8997_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max8997_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8997\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max8966\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max8997_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&max8997->iolock\00", [47 x i8] zeroinitializer }, align 32
@max8997_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8997_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/max8997.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_i2c_probe._entry_ptr = internal global ptr @max8997_i2c_probe._entry, section ".printk_index", align 4
@max8997_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate I2C device for Haptic\0A\00", [54 x i8] zeroinitializer }, align 32
@max8997_i2c_probe._entry_ptr.9 = internal global ptr @max8997_i2c_probe._entry.7, section ".printk_index", align 4
@max8997_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate I2C device for MUIC\0A\00", [56 x i8] zeroinitializer }, align 32
@max8997_i2c_probe._entry_ptr.12 = internal global ptr @max8997_i2c_probe._entry.10, section ".printk_index", align 4
@max8997_devs = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@max8997_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add MFD devices %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_i2c_probe._entry_ptr.15 = internal global ptr @max8997_i2c_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8997-pmic\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8997-rtc\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8997-battery\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max8997-haptic\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8997-muic\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8997-led\00", [20 x i8] zeroinitializer }, align 32
@max8997_dumpaddr_pmic = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\08\09\0A\0B\13\14\15\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMPQRSTUVZ^_`cdefghijklnpqrstuvwxyz{\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\97\98\99\9A", [42 x i8] zeroinitializer }, align 32
@max8997_dumpaddr_haptic = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"max8997_i2c_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 474, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 476, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"max8997_pmic_dt_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 41, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"max8997_pm\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 467, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"max8997_i2c_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 242, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 185, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 189, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 196, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 204, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"max8997_devs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 30, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 218, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 31, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 32, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 33, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 34, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 35, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 36, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"max8997_dumpaddr_pmic\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 248, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"max8997_dumpaddr_haptic\00", align 1
@___asan_gen_.104 = private constant [25 x i8] c"../drivers/mfd/max8997.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 383, i32 11 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__initcall__kmod_max8997__289_490_max8997_i2c_init4, ptr @__ksymtab_max8997_bulk_read, ptr @__ksymtab_max8997_bulk_write, ptr @__ksymtab_max8997_read_reg, ptr @__ksymtab_max8997_update_reg, ptr @__ksymtab_max8997_write_reg, ptr @max8997_i2c_probe._entry, ptr @max8997_i2c_probe._entry.10, ptr @max8997_i2c_probe._entry.13, ptr @max8997_i2c_probe._entry.7, ptr @max8997_i2c_probe._entry_ptr, ptr @max8997_i2c_probe._entry_ptr.12, ptr @max8997_i2c_probe._entry_ptr.15, ptr @max8997_i2c_probe._entry_ptr.9, ptr @max8997_i2c_driver, ptr @.str, ptr @max8997_pmic_dt_match, ptr @max8997_pm, ptr @max8997_i2c_id, ptr @max8997_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @max8997_devs, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @max8997_dumpaddr_pmic, ptr @max8997_dumpaddr_haptic], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_devs to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_dumpaddr_pmic to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_dumpaddr_haptic to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8997_read_reg(ptr noundef %i2c, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %dest) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 6
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
define dso_local i32 @max8997_bulk_read(ptr noundef %i2c, i8 noundef zeroext %reg, i32 noundef %count, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 6
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
define dso_local i32 @max8997_write_reg(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #5
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %value) #5
  tail call void @mutex_unlock(ptr noundef %iolock) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8997_bulk_write(ptr noundef %i2c, i8 noundef zeroext %reg, i32 noundef %count, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 6
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
define dso_local i32 @max8997_update_reg(ptr noundef %i2c, i8 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iolock = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 6
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
define internal i32 @max8997_i2c_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8997_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 516, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %i2c5 = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %i2c5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c, ptr %i2c5, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i134 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %7 = ptrtoint ptr %call.i134 to i32
  br label %max8997_i2c_get_driver_data.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data.i, align 4
  br label %max8997_i2c_get_driver_data.exit

max8997_i2c_get_driver_data.exit:                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %9, %if.end.i ]
  %type = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %type, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %irq7 = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq7, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %max8997_i2c_get_driver_data.exit
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 160, i32 noundef 3520) #5
  %tobool.not.i135 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i135, label %if.then9.if.then13_crit_edge, label %max8997_i2c_parse_dt_pdata.exit

if.then9.if.then13_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

max8997_i2c_parse_dt_pdata.exit:                  ; preds = %if.then9
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call2.i = tail call i32 @irq_of_parse_and_map(ptr noundef %19, i32 noundef 1) #5
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i, ptr %call.i.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %max8997_i2c_parse_dt_pdata.exit.if.then13_crit_edge, label %max8997_i2c_parse_dt_pdata.exit.if.end19_crit_edge

max8997_i2c_parse_dt_pdata.exit.if.end19_crit_edge: ; preds = %max8997_i2c_parse_dt_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

max8997_i2c_parse_dt_pdata.exit.if.then13_crit_edge: ; preds = %max8997_i2c_parse_dt_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %max8997_i2c_parse_dt_pdata.exit.if.then13_crit_edge, %if.then9.if.then13_crit_edge
  %retval.0.i138148 = phi ptr [ %call.i.i, %max8997_i2c_parse_dt_pdata.exit.if.then13_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then9.if.then13_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i138148 to i32
  br label %cleanup

if.end16:                                         ; preds = %max8997_i2c_get_driver_data.exit
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end16.if.end19_crit_edge, %max8997_i2c_parse_dt_pdata.exit.if.end19_crit_edge
  %pdata.0151 = phi ptr [ %1, %if.end16.if.end19_crit_edge ], [ %call.i.i, %max8997_i2c_parse_dt_pdata.exit.if.end19_crit_edge ]
  %pdata20 = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %pdata20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pdata.0151, ptr %pdata20, align 4
  %23 = ptrtoint ptr %pdata.0151 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pdata.0151, align 4
  %ono21 = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %ono21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ono21, align 4
  %iolock = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %iolock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8997_i2c_probe.__key) #5
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %call22 = tail call ptr @i2c_new_dummy_device(ptr noundef %27, i16 noundef zeroext 6) #5
  %rtc = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call22, ptr %rtc, align 4
  %cmp.i139 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.2) #8
  %31 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtc, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %driver_data.i.i140 = getelementptr inbounds %struct.i2c_client, ptr %call22, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i140 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i140, align 4
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %call35 = tail call ptr @i2c_new_dummy_device(ptr noundef %36, i16 noundef zeroext 72) #5
  %haptic = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %haptic to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call35, ptr %haptic, align 4
  %cmp.i141 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.8) #8
  %40 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %haptic, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %err_i2c_haptic

if.end45:                                         ; preds = %if.end32
  %driver_data.i.i142 = getelementptr inbounds %struct.i2c_client, ptr %call35, i32 0, i32 4, i32 8
  %43 = ptrtoint ptr %driver_data.i.i142 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i142, align 4
  %44 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter, align 8
  %call48 = tail call ptr @i2c_new_dummy_device(ptr noundef %45, i16 noundef zeroext 37) #5
  %muic = getelementptr inbounds %struct.max8997_dev, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %muic to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call48, ptr %muic, align 4
  %cmp.i143 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.11) #8
  %49 = ptrtoint ptr %muic to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %muic, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %err_i2c_muic

if.end58:                                         ; preds = %if.end45
  %driver_data.i.i144 = getelementptr inbounds %struct.i2c_client, ptr %call48, i32 0, i32 4, i32 8
  %52 = ptrtoint ptr %driver_data.i.i144 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i144, align 4
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %call.i145 = tail call i32 @__pm_runtime_set_status(ptr noundef %54, i32 noundef 0) #5
  %call62 = tail call i32 @max8997_irq_init(ptr noundef nonnull %call.i) #5
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call64 = tail call i32 @mfd_add_devices(ptr noundef %56, i32 noundef -1, ptr noundef nonnull @max8997_devs, i32 noundef 7, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  br i1 %cmp65, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.14, i32 noundef %call64) #8
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  tail call void @mfd_remove_devices(ptr noundef %60) #5
  %61 = ptrtoint ptr %muic to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %muic, align 4
  tail call void @i2c_unregister_device(ptr noundef %62) #5
  br label %err_i2c_muic

if.end71:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %call73 = tail call i32 @device_init_wakeup(ptr noundef %58, i1 noundef zeroext true) #5
  br label %cleanup

err_i2c_muic:                                     ; preds = %do.end69, %do.end54
  %ret.0 = phi i32 [ %51, %do.end54 ], [ %call64, %do.end69 ]
  %63 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %haptic, align 4
  tail call void @i2c_unregister_device(ptr noundef %64) #5
  br label %err_i2c_haptic

err_i2c_haptic:                                   ; preds = %err_i2c_muic, %do.end41
  %ret.1 = phi i32 [ %42, %do.end41 ], [ %ret.0, %err_i2c_muic ]
  %65 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rtc, align 4
  tail call void @i2c_unregister_device(ptr noundef %66) #5
  br label %cleanup

cleanup:                                          ; preds = %err_i2c_haptic, %if.end71, %do.end28, %if.end16.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then13 ], [ %33, %do.end28 ], [ %ret.1, %err_i2c_haptic ], [ %call64, %if.end71 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_irq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call3 = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %irq = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %irq3 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq3, align 4
  tail call void @enable_irq(i32 noundef %8) #5
  %call4 = tail call i32 @max8997_irq_resume(ptr noundef %1) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_freeze(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %max8997_read_reg.exit.for.body_crit_edge, %entry
  %i.057 = phi i32 [ 0, %entry ], [ %inc, %max8997_read_reg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [118 x i8], ptr @max8997_dumpaddr_pmic, i32 0, i32 %i.057
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i = getelementptr inbounds %struct.max8997_dev, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i, i32 noundef 0) #5
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %3) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %for.body.max8997_read_reg.exit_crit_edge, label %if.end.i

for.body.max8997_read_reg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 %i.057
  %conv.i = trunc i32 %call1.i to i8
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx1, align 1
  br label %max8997_read_reg.exit

max8997_read_reg.exit:                            ; preds = %if.end.i, %for.body.max8997_read_reg.exit_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 118
  br i1 %exitcond.not, label %for.body5.preheader, label %max8997_read_reg.exit.for.body_crit_edge

max8997_read_reg.exit.for.body_crit_edge:         ; preds = %max8997_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body5.preheader:                              ; preds = %max8997_read_reg.exit
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42 = getelementptr inbounds %struct.max8997_dev, ptr %8, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42, i32 noundef 0) #5
  %call1.i43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %cmp.i44 = icmp slt i32 %call1.i43, 0
  br i1 %cmp.i44, label %for.body5.preheader.max8997_read_reg.exit48_crit_edge, label %if.end.i46

for.body5.preheader.max8997_read_reg.exit48_crit_edge: ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit48

if.end.i46:                                       ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 155
  %conv.i45 = trunc i32 %call1.i43 to i8
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i45, ptr %arrayidx8, align 1
  br label %max8997_read_reg.exit48

max8997_read_reg.exit48:                          ; preds = %if.end.i46, %for.body5.preheader.max8997_read_reg.exit48_crit_edge
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.1 = getelementptr inbounds %struct.max8997_dev, ptr %11, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.1, i32 noundef 0) #5
  %call1.i43.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.1)
  %cmp.i44.1 = icmp slt i32 %call1.i43.1, 0
  br i1 %cmp.i44.1, label %max8997_read_reg.exit48.max8997_read_reg.exit48.1_crit_edge, label %if.end.i46.1

max8997_read_reg.exit48.max8997_read_reg.exit48.1_crit_edge: ; preds = %max8997_read_reg.exit48
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit48.1

if.end.i46.1:                                     ; preds = %max8997_read_reg.exit48
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.1 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 156
  %conv.i45.1 = trunc i32 %call1.i43.1 to i8
  %12 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i45.1, ptr %arrayidx8.1, align 1
  br label %max8997_read_reg.exit48.1

max8997_read_reg.exit48.1:                        ; preds = %if.end.i46.1, %max8997_read_reg.exit48.max8997_read_reg.exit48.1_crit_edge
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.2 = getelementptr inbounds %struct.max8997_dev, ptr %14, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.2, i32 noundef 0) #5
  %call1.i43.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 9) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.2)
  %cmp.i44.2 = icmp slt i32 %call1.i43.2, 0
  br i1 %cmp.i44.2, label %max8997_read_reg.exit48.1.max8997_read_reg.exit48.2_crit_edge, label %if.end.i46.2

max8997_read_reg.exit48.1.max8997_read_reg.exit48.2_crit_edge: ; preds = %max8997_read_reg.exit48.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit48.2

if.end.i46.2:                                     ; preds = %max8997_read_reg.exit48.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.2 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 157
  %conv.i45.2 = trunc i32 %call1.i43.2 to i8
  %15 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i45.2, ptr %arrayidx8.2, align 1
  br label %max8997_read_reg.exit48.2

max8997_read_reg.exit48.2:                        ; preds = %if.end.i46.2, %max8997_read_reg.exit48.1.max8997_read_reg.exit48.2_crit_edge
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.3 = getelementptr inbounds %struct.max8997_dev, ptr %17, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.3, i32 noundef 0) #5
  %call1.i43.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.3)
  %cmp.i44.3 = icmp slt i32 %call1.i43.3, 0
  br i1 %cmp.i44.3, label %max8997_read_reg.exit48.2.max8997_read_reg.exit48.3_crit_edge, label %if.end.i46.3

max8997_read_reg.exit48.2.max8997_read_reg.exit48.3_crit_edge: ; preds = %max8997_read_reg.exit48.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit48.3

if.end.i46.3:                                     ; preds = %max8997_read_reg.exit48.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.3 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 158
  %conv.i45.3 = trunc i32 %call1.i43.3 to i8
  %18 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i45.3, ptr %arrayidx8.3, align 1
  br label %max8997_read_reg.exit48.3

max8997_read_reg.exit48.3:                        ; preds = %if.end.i46.3, %max8997_read_reg.exit48.2.max8997_read_reg.exit48.3_crit_edge
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.4 = getelementptr inbounds %struct.max8997_dev, ptr %20, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.4, i32 noundef 0) #5
  %call1.i43.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 12) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.4)
  %cmp.i44.4 = icmp slt i32 %call1.i43.4, 0
  br i1 %cmp.i44.4, label %max8997_read_reg.exit48.3.max8997_read_reg.exit48.4_crit_edge, label %if.end.i46.4

max8997_read_reg.exit48.3.max8997_read_reg.exit48.4_crit_edge: ; preds = %max8997_read_reg.exit48.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit48.4

if.end.i46.4:                                     ; preds = %max8997_read_reg.exit48.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.4 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 159
  %conv.i45.4 = trunc i32 %call1.i43.4 to i8
  %21 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i45.4, ptr %arrayidx8.4, align 1
  br label %max8997_read_reg.exit48.4

max8997_read_reg.exit48.4:                        ; preds = %if.end.i46.4, %max8997_read_reg.exit48.3.max8997_read_reg.exit48.4_crit_edge
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.5 = getelementptr inbounds %struct.max8997_dev, ptr %23, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.5, i32 noundef 0) #5
  %call1.i43.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 13) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.5)
  %cmp.i44.5 = icmp slt i32 %call1.i43.5, 0
  br i1 %cmp.i44.5, label %max8997_read_reg.exit48.4.max8997_read_reg.exit48.5_crit_edge, label %if.end.i46.5

max8997_read_reg.exit48.4.max8997_read_reg.exit48.5_crit_edge: ; preds = %max8997_read_reg.exit48.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit48.5

if.end.i46.5:                                     ; preds = %max8997_read_reg.exit48.4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.5 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 160
  %conv.i45.5 = trunc i32 %call1.i43.5 to i8
  %24 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i45.5, ptr %arrayidx8.5, align 1
  br label %max8997_read_reg.exit48.5

max8997_read_reg.exit48.5:                        ; preds = %if.end.i46.5, %max8997_read_reg.exit48.4.max8997_read_reg.exit48.5_crit_edge
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.6 = getelementptr inbounds %struct.max8997_dev, ptr %26, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.6, i32 noundef 0) #5
  %call1.i43.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.6)
  %cmp.i44.6 = icmp slt i32 %call1.i43.6, 0
  br i1 %cmp.i44.6, label %max8997_read_reg.exit48.5.for.body15.preheader_crit_edge, label %if.end.i46.6

max8997_read_reg.exit48.5.for.body15.preheader_crit_edge: ; preds = %max8997_read_reg.exit48.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15.preheader

if.end.i46.6:                                     ; preds = %max8997_read_reg.exit48.5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.6 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 161
  %conv.i45.6 = trunc i32 %call1.i43.6 to i8
  %27 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i45.6, ptr %arrayidx8.6, align 1
  br label %for.body15.preheader

for.body15.preheader:                             ; preds = %if.end.i46.6, %max8997_read_reg.exit48.5.for.body15.preheader_crit_edge
  br label %for.body15

for.body15:                                       ; preds = %max8997_read_reg.exit56.for.body15_crit_edge, %for.body15.preheader
  %i.261 = phi i32 [ %inc23, %max8997_read_reg.exit56.for.body15_crit_edge ], [ 0, %for.body15.preheader ]
  %arrayidx16 = getelementptr [15 x i8], ptr @max8997_dumpaddr_haptic, i32 0, i32 %i.261
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx16, align 1
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i50 = getelementptr inbounds %struct.max8997_dev, ptr %31, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i50, i32 noundef 0) #5
  %call1.i51 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %29) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %cmp.i52 = icmp slt i32 %call1.i51, 0
  br i1 %cmp.i52, label %for.body15.max8997_read_reg.exit56_crit_edge, label %if.end.i54

for.body15.max8997_read_reg.exit56_crit_edge:     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_read_reg.exit56

if.end.i54:                                       ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  %add19 = add nuw nsw i32 %i.261, 170
  %arrayidx20 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 %add19
  %conv.i53 = trunc i32 %call1.i51 to i8
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i53, ptr %arrayidx20, align 1
  br label %max8997_read_reg.exit56

max8997_read_reg.exit56:                          ; preds = %if.end.i54, %for.body15.max8997_read_reg.exit56_crit_edge
  %inc23 = add nuw nsw i32 %i.261, 1
  %exitcond64.not = icmp eq i32 %inc23, 15
  br i1 %exitcond64.not, label %for.end24, label %max8997_read_reg.exit56.for.body15_crit_edge

max8997_read_reg.exit56.for.body15_crit_edge:     ; preds = %max8997_read_reg.exit56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

for.end24:                                        ; preds = %max8997_read_reg.exit56
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_restore(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [118 x i8], ptr @max8997_dumpaddr_pmic, i32 0, i32 %i.047
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 %i.047
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i, i32 noundef 0) #5
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %3, i8 noundef zeroext %5) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i) #5
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 118
  br i1 %exitcond.not, label %for.body5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body5.preheader:                              ; preds = %for.body
  %arrayidx8 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 155
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42 = getelementptr inbounds %struct.max8997_dev, ptr %11, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42, i32 noundef 0) #5
  %call1.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7, i8 noundef zeroext %9) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42) #5
  %arrayidx8.1 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 156
  %12 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8.1, align 1
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.1 = getelementptr inbounds %struct.max8997_dev, ptr %15, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.1, i32 noundef 0) #5
  %call1.i43.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8, i8 noundef zeroext %13) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.1) #5
  %arrayidx8.2 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 157
  %16 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.2, align 1
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.2 = getelementptr inbounds %struct.max8997_dev, ptr %19, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.2, i32 noundef 0) #5
  %call1.i43.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 9, i8 noundef zeroext %17) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.2) #5
  %arrayidx8.3 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 158
  %20 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8.3, align 1
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.3 = getelementptr inbounds %struct.max8997_dev, ptr %23, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.3, i32 noundef 0) #5
  %call1.i43.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext %21) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.3) #5
  %arrayidx8.4 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 159
  %24 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.4, align 1
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.4 = getelementptr inbounds %struct.max8997_dev, ptr %27, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.4, i32 noundef 0) #5
  %call1.i43.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext %25) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.4) #5
  %arrayidx8.5 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 160
  %28 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx8.5, align 1
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.5 = getelementptr inbounds %struct.max8997_dev, ptr %31, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.5, i32 noundef 0) #5
  %call1.i43.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 13, i8 noundef zeroext %29) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.5) #5
  %arrayidx8.6 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 161
  %32 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx8.6, align 1
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i42.6 = getelementptr inbounds %struct.max8997_dev, ptr %35, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i42.6, i32 noundef 0) #5
  %call1.i43.6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext %33) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i42.6) #5
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body5.preheader
  %i.249 = phi i32 [ %inc23, %for.body15.for.body15_crit_edge ], [ 0, %for.body5.preheader ]
  %arrayidx16 = getelementptr [15 x i8], ptr @max8997_dumpaddr_haptic, i32 0, i32 %i.249
  %36 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx16, align 1
  %add19 = add nuw nsw i32 %i.249, 170
  %arrayidx20 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 15, i32 %add19
  %38 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx20, align 1
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %iolock.i45 = getelementptr inbounds %struct.max8997_dev, ptr %41, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %iolock.i45, i32 noundef 0) #5
  %call1.i46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %37, i8 noundef zeroext %39) #5
  tail call void @mutex_unlock(ptr noundef %iolock.i45) #5
  %inc23 = add nuw nsw i32 %i.249, 1
  %exitcond51.not = icmp eq i32 %inc23, 15
  br i1 %exitcond51.not, label %for.end24, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

for.end24:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_irq_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__ksymtab_max8997_read_reg, !1, !"__ksymtab_max8997_read_reg", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max8997.c", i32 62, i32 1}
!2 = !{ptr @__ksymtab_max8997_bulk_read, !3, !"__ksymtab_max8997_bulk_read", i1 false, i1 false}
!3 = !{!"../drivers/mfd/max8997.c", i32 77, i32 1}
!4 = !{ptr @__ksymtab_max8997_write_reg, !5, !"__ksymtab_max8997_write_reg", i1 false, i1 false}
!5 = !{!"../drivers/mfd/max8997.c", i32 89, i32 1}
!6 = !{ptr @__ksymtab_max8997_bulk_write, !7, !"__ksymtab_max8997_bulk_write", i1 false, i1 false}
!7 = !{!"../drivers/mfd/max8997.c", i32 104, i32 1}
!8 = !{ptr @__ksymtab_max8997_update_reg, !9, !"__ksymtab_max8997_update_reg", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max8997.c", i32 121, i32 1}
!10 = !{ptr @__initcall__kmod_max8997__289_490_max8997_i2c_init4, !11, !"__initcall__kmod_max8997__289_490_max8997_i2c_init4", i1 false, i1 false}
!11 = !{!"../drivers/mfd/max8997.c", i32 490, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/max8997.c", i32 476, i32 14}
!14 = !{ptr @max8997_i2c_driver, !15, !"max8997_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/max8997.c", i32 474, i32 26}
!16 = !{ptr @max8997_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/max8997.c", i32 185, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/max8997.c", i32 189, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max8997_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @max8997_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/max8997.c", i32 196, i32 3}
!29 = !{ptr @max8997_i2c_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @max8997_i2c_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/max8997.c", i32 204, i32 3}
!33 = !{ptr @max8997_i2c_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max8997_i2c_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/max8997.c", i32 218, i32 3}
!37 = !{ptr @max8997_i2c_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max8997_i2c_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/max8997.c", i32 31, i32 12}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/max8997.c", i32 32, i32 12}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/max8997.c", i32 33, i32 12}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/max8997.c", i32 34, i32 12}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/max8997.c", i32 35, i32 12}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/max8997.c", i32 36, i32 12}
!51 = !{ptr @max8997_devs, !52, !"max8997_devs", i1 false, i1 false}
!52 = !{!"../drivers/mfd/max8997.c", i32 30, i32 30}
!53 = !{ptr @max8997_pmic_dt_match, !54, !"max8997_pmic_dt_match", i1 false, i1 false}
!54 = !{!"../drivers/mfd/max8997.c", i32 41, i32 34}
!55 = !{ptr @max8997_pm, !56, !"max8997_pm", i1 false, i1 false}
!56 = !{!"../drivers/mfd/max8997.c", i32 467, i32 32}
!57 = !{ptr @max8997_dumpaddr_pmic, !58, !"max8997_dumpaddr_pmic", i1 false, i1 false}
!58 = !{!"../drivers/mfd/max8997.c", i32 248, i32 11}
!59 = distinct !{null, !60, !"max8997_dumpaddr_muic", i1 false, i1 false}
!60 = !{!"../drivers/mfd/max8997.c", i32 373, i32 11}
!61 = !{ptr @max8997_dumpaddr_haptic, !62, !"max8997_dumpaddr_haptic", i1 false, i1 false}
!62 = !{!"../drivers/mfd/max8997.c", i32 383, i32 11}
!63 = !{ptr @max8997_i2c_id, !64, !"max8997_i2c_id", i1 false, i1 false}
!64 = !{!"../drivers/mfd/max8997.c", i32 242, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
