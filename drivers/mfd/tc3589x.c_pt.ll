; ModuleID = '/llk/IR_all_yes/drivers/mfd/tc3589x.c_pt.bc'
source_filename = "../drivers/mfd/tc3589x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tc3589x_reg_read\22, \22a\22\09"
module asm "\09.weak\09__crc_tc3589x_reg_read\09\09\09\09"
module asm "\09.long\09__crc_tc3589x_reg_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc3589x_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tc3589x_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_tc3589x_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tc3589x_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_tc3589x_reg_write\09\09\09\09"
module asm "\09.long\09__crc_tc3589x_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc3589x_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22tc3589x_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_tc3589x_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tc3589x_block_read\22, \22a\22\09"
module asm "\09.weak\09__crc_tc3589x_block_read\09\09\09\09"
module asm "\09.long\09__crc_tc3589x_block_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc3589x_block_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tc3589x_block_read\22\09\09\09\09\09"
module asm "__kstrtabns_tc3589x_block_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tc3589x_block_write\22, \22a\22\09"
module asm "\09.weak\09__crc_tc3589x_block_write\09\09\09\09"
module asm "\09.long\09__crc_tc3589x_block_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc3589x_block_write:\09\09\09\09\09"
module asm "\09.asciz \09\22tc3589x_block_write\22\09\09\09\09\09"
module asm "__kstrtabns_tc3589x_block_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tc3589x_set_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_tc3589x_set_bits\09\09\09\09"
module asm "\09.long\09__crc_tc3589x_set_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc3589x_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tc3589x_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tc3589x_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tc3589x = type { %struct.mutex, ptr, ptr, ptr, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@tc3589x_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read reg %#x: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc3589x_reg_read\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/tc3589x.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc3589x_reg_read._entry_ptr = internal global ptr @tc3589x_reg_read._entry, section ".printk_index", align 4
@__kstrtab_tc3589x_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc3589x_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tc3589x_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc3589x_reg_read to i32), ptr @__kstrtab_tc3589x_reg_read, ptr @__kstrtabns_tc3589x_reg_read }, section "___ksymtab_gpl+tc3589x_reg_read", align 4
@tc3589x_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to write reg %#x: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc3589x_reg_write\00", [46 x i8] zeroinitializer }, align 32
@tc3589x_reg_write._entry_ptr = internal global ptr @tc3589x_reg_write._entry, section ".printk_index", align 4
@__kstrtab_tc3589x_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc3589x_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_tc3589x_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc3589x_reg_write to i32), ptr @__kstrtab_tc3589x_reg_write, ptr @__kstrtabns_tc3589x_reg_write }, section "___ksymtab_gpl+tc3589x_reg_write", align 4
@tc3589x_block_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read regs %#x: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc3589x_block_read\00", [45 x i8] zeroinitializer }, align 32
@tc3589x_block_read._entry_ptr = internal global ptr @tc3589x_block_read._entry, section ".printk_index", align 4
@__kstrtab_tc3589x_block_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc3589x_block_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tc3589x_block_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc3589x_block_read to i32), ptr @__kstrtab_tc3589x_block_read, ptr @__kstrtabns_tc3589x_block_read }, section "___ksymtab_gpl+tc3589x_block_read", align 4
@tc3589x_block_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to write regs %#x: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc3589x_block_write\00", [44 x i8] zeroinitializer }, align 32
@tc3589x_block_write._entry_ptr = internal global ptr @tc3589x_block_write._entry, section ".printk_index", align 4
@__kstrtab_tc3589x_block_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc3589x_block_write = external dso_local constant [0 x i8], align 1
@__ksymtab_tc3589x_block_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc3589x_block_write to i32), ptr @__kstrtab_tc3589x_block_write, ptr @__kstrtabns_tc3589x_block_write }, section "___ksymtab_gpl+tc3589x_block_write", align 4
@__kstrtab_tc3589x_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc3589x_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tc3589x_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc3589x_set_bits to i32), ptr @__kstrtab_tc3589x_set_bits, ptr @__kstrtabns_tc3589x_set_bits }, section "___ksymtab_gpl+tc3589x_set_bits", align 4
@__initcall__kmod_tc3589x__288_500_tc3589x_init4 = internal global ptr @tc3589x_init, section ".initcall4.init", align 4
@tc3589x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tc3589x_probe, ptr @tc3589x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc3589x_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc3589x_dev_pm_ops, ptr null, ptr null }, ptr @tc3589x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tc3589x_exit = internal global ptr @tc3589x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [33 x i8] c"tc3589x.file=drivers/mfd/tc3589x\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [23 x i8] c"tc3589x.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [44 x i8] c"tc3589x.description=TC3589x MFD core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [46 x i8] c"tc3589x.author=Hanumath Prasad, Rabin Vincent\00", section ".modinfo", align 1
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc3589x\00", [24 x i8] zeroinitializer }, align 32
@tc3589x_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tc3589x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc35890\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc35892\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc35893\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc35894\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc35895\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc35896\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@tc3589x_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tc3589x_suspend, ptr @tc3589x_resume, ptr @tc3589x_suspend, ptr @tc3589x_resume, ptr @tc3589x_suspend, ptr @tc3589x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tc3589x_id = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc35890\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tc35892\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tc35893\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tc35894\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"tc35895\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tc35896\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"tc3589x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tc3589x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No platform data or DT found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc3589x_probe\00", [18 x i8] zeroinitializer }, align 32
@tc3589x_probe._entry_ptr = internal global ptr @tc3589x_probe._entry, section ".printk_index", align 4
@tc3589x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tc3589x->lock\00", [17 x i8] zeroinitializer }, align 32
@tc3589x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tc3589x_probe._entry_ptr.17 = internal global ptr @tc3589x_probe._entry.15, section ".printk_index", align 4
@tc3589x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 425, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add child devices\0A\00", [35 x i8] zeroinitializer }, align 32
@tc3589x_probe._entry_ptr.20 = internal global ptr @tc3589x_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"toshiba,tc3589x-gpio\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"toshiba,tc3589x-keypad\00", [41 x i8] zeroinitializer }, align 32
@tc3589x_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 262, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown manufacturer: %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tc3589x_chip_init\00", [46 x i8] zeroinitializer }, align 32
@tc3589x_chip_init._entry_ptr = internal global ptr @tc3589x_chip_init._entry, section ".printk_index", align 4
@tc3589x_chip_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 266, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"manufacturer: %#x, version: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tc3589x_chip_init._entry_ptr.28 = internal global ptr @tc3589x_chip_init._entry.25, section ".printk_index", align 4
@tc3589x_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @tc3589x_irq_map, ptr @tc3589x_irq_unmap, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tc3589x_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create irqdomain\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc3589x_irq_init\00", [47 x i8] zeroinitializer }, align 32
@tc3589x_irq_init._entry_ptr = internal global ptr @tc3589x_irq_init._entry, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@tc3589x_dev_gpio = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.21, i64 0, i8 0, ptr null, i32 1, ptr @gpio_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@tc3589x_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add gpio child\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc3589x_device_init\00", [44 x i8] zeroinitializer }, align 32
@tc3589x_device_init._entry_ptr = internal global ptr @tc3589x_device_init._entry, section ".printk_index", align 4
@tc3589x_device_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 297, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"added gpio block\0A\00", [46 x i8] zeroinitializer }, align 32
@tc3589x_device_init._entry_ptr.35 = internal global ptr @tc3589x_device_init._entry.33, section ".printk_index", align 4
@tc3589x_dev_keypad = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.22, i64 0, i8 0, ptr null, i32 1, ptr @keypad_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@tc3589x_device_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to keypad child\0A\00", [40 x i8] zeroinitializer }, align 32
@tc3589x_device_init._entry_ptr.38 = internal global ptr @tc3589x_device_init._entry.36, section ".printk_index", align 4
@tc3589x_device_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 308, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"added keypad block\0A\00", [44 x i8] zeroinitializer }, align 32
@tc3589x_device_init._entry_ptr.41 = internal global ptr @tc3589x_device_init._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc3589x-gpio\00", [19 x i8] zeroinitializer }, align 32
@gpio_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc3589x-keypad\00", [17 x i8] zeroinitializer }, align 32
@keypad_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@switch.table.tc3589x_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 20, i32 24, i32 20, i32 20], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 48, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 67, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 87, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 109, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"tc3589x_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 485, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 487, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"tc3589x_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 314, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"tc3589x_dev_pm_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 471, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"tc3589x_id\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 473, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 367, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 384, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 419, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 425, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 346, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 348, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 262, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 266, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"tc3589x_irq_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 229, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 242, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"tc3589x_dev_gpio\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 160, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 294, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 297, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"tc3589x_dev_keypad\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 169, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 305, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 308, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 162, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"gpio_resources\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 144, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 171, i32 21 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"keypad_resources\00", align 1
@___asan_gen_.210 = private constant [25 x i8] c"../drivers/mfd/tc3589x.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 152, i32 30 }
@___asan_gen_.212 = private unnamed_addr constant [27 x i8] c"switch.table.tc3589x_probe\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_tc3589x_exit, ptr @__initcall__kmod_tc3589x__288_500_tc3589x_init4, ptr @__ksymtab_tc3589x_block_read, ptr @__ksymtab_tc3589x_block_write, ptr @__ksymtab_tc3589x_reg_read, ptr @__ksymtab_tc3589x_reg_write, ptr @__ksymtab_tc3589x_set_bits, ptr @tc3589x_block_read._entry, ptr @tc3589x_block_read._entry_ptr, ptr @tc3589x_block_write._entry, ptr @tc3589x_block_write._entry_ptr, ptr @tc3589x_chip_init._entry, ptr @tc3589x_chip_init._entry.25, ptr @tc3589x_chip_init._entry_ptr, ptr @tc3589x_chip_init._entry_ptr.28, ptr @tc3589x_device_init._entry, ptr @tc3589x_device_init._entry.33, ptr @tc3589x_device_init._entry.36, ptr @tc3589x_device_init._entry.39, ptr @tc3589x_device_init._entry_ptr, ptr @tc3589x_device_init._entry_ptr.35, ptr @tc3589x_device_init._entry_ptr.38, ptr @tc3589x_device_init._entry_ptr.41, ptr @tc3589x_exit, ptr @tc3589x_irq_init._entry, ptr @tc3589x_irq_init._entry_ptr, ptr @tc3589x_probe._entry, ptr @tc3589x_probe._entry.15, ptr @tc3589x_probe._entry.18, ptr @tc3589x_probe._entry_ptr, ptr @tc3589x_probe._entry_ptr.17, ptr @tc3589x_probe._entry_ptr.20, ptr @tc3589x_reg_read._entry, ptr @tc3589x_reg_read._entry_ptr, ptr @tc3589x_reg_write._entry, ptr @tc3589x_reg_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @tc3589x_driver, ptr @.str.11, ptr @tc3589x_match, ptr @tc3589x_dev_pm_ops, ptr @tc3589x_id, ptr @.str.12, ptr @.str.13, ptr @tc3589x_probe.__key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @tc3589x_irq_ops, ptr @.str.29, ptr @.str.30, ptr @tc3589x_dev_gpio, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @tc3589x_dev_keypad, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @gpio_resources, ptr @.str.43, ptr @keypad_resources, ptr @switch.table.tc3589x_probe], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_block_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_block_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_chip_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_dev_gpio to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_device_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_dev_keypad to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_device_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_device_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc3589x_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc3589x_reg_read(ptr nocapture noundef readonly %tc3589x, i8 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 2
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc3589x_reg_write(ptr nocapture noundef readonly %tc3589x, i8 noundef zeroext %reg, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 2
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc3589x_block_read(ptr nocapture noundef readonly %tc3589x, i8 noundef zeroext %reg, i8 noundef zeroext %length, ptr noundef %values) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 2
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %length, ptr noundef %values) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc3589x_block_write(ptr nocapture noundef readonly %tc3589x, i8 noundef zeroext %reg, i8 noundef zeroext %length, ptr noundef %values) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 2
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %length, ptr noundef %values) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc3589x_set_bits(ptr noundef %tc3589x, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %tc3589x, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 2
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tc3589x_reg_read.exit.thread, label %if.end

tc3589x_reg_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %conv.i = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %call.i) #9
  br label %out

if.end:                                           ; preds = %entry
  %conv = zext i8 %mask to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %call.i, %neg
  %4 = trunc i32 %and to i8
  %conv2 = or i8 %4, %val
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %call.i14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %reg, i8 noundef zeroext %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.i15 = icmp slt i32 %call.i14, 0
  br i1 %cmp.i15, label %do.end.i18, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end.i18:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i16 = getelementptr inbounds %struct.tc3589x, ptr %tc3589x, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i16, align 4
  %conv.i17 = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %conv.i17, i32 noundef %call.i14) #9
  br label %out

out:                                              ; preds = %do.end.i18, %if.end.out_crit_edge, %tc3589x_reg_read.exit.thread
  %ret.0 = phi i32 [ %call.i, %tc3589x_reg_read.exit.thread ], [ %call.i14, %if.end.out_crit_edge ], [ %call.i14, %do.end.i18 ]
  tail call void @mutex_unlock(ptr noundef %tc3589x) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tc3589x_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tc3589x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call ptr @of_match_device(ptr noundef nonnull @tc3589x_match, ptr noundef %dev) #6
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.do.end_crit_edge, label %if.end6.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end6.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call2.i, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %call7.i = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #6
  %cmp.not32.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not32.i, label %if.end6.i.tc3589x_of_probe.exit_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.tc3589x_of_probe.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc3589x_of_probe.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %child.033.i = phi ptr [ %call18.i, %for.inc.i.for.body.i_crit_edge ], [ %call7.i, %if.end6.i.for.body.i_crit_edge ]
  %call8.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.033.i, ptr noundef nonnull @.str.21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.body.i.if.end11.i_crit_edge, label %if.then10.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i, align 4
  %or.i = or i32 %10, 1
  store i32 %or.i, ptr %call.i.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %for.body.i.if.end11.i_crit_edge
  %call12.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.033.i, ptr noundef nonnull @.str.22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.for.inc.i_crit_edge, label %if.then14.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i.i, align 4
  %or16.i = or i32 %12, 2
  store i32 %or16.i, ptr %call.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end11.i.for.inc.i_crit_edge
  %call18.i = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %child.033.i) #6
  %cmp.not.i = icmp eq ptr %call18.i, null
  br i1 %cmp.not.i, label %for.inc.i.tc3589x_of_probe.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.tc3589x_of_probe.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc3589x_of_probe.exit

tc3589x_of_probe.exit:                            ; preds = %for.inc.i.tc3589x_of_probe.exit_crit_edge, %if.end6.i.tc3589x_of_probe.exit_crit_edge
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %tc3589x_of_probe.exit.do.end_crit_edge, label %tc3589x_of_probe.exit.if.end8_crit_edge

tc3589x_of_probe.exit.if.end8_crit_edge:          ; preds = %tc3589x_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

tc3589x_of_probe.exit.do.end_crit_edge:           ; preds = %tc3589x_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %tc3589x_of_probe.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i120 = phi ptr [ %call.i.i, %tc3589x_of_probe.exit.do.end_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.i.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  %13 = ptrtoint ptr %retval.0.i120 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %tc3589x_of_probe.exit.if.end8_crit_edge
  %version.1 = phi i32 [ %8, %tc3589x_of_probe.exit.if.end8_crit_edge ], [ %15, %if.else ]
  %pdata.0 = phi ptr [ %call.i.i, %tc3589x_of_probe.exit.if.end8_crit_edge ], [ %3, %if.else ]
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i89 = tail call i32 %21(ptr noundef %17) #6
  %and.i = and i32 %call.i.i89, 202899456
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899456, i32 %and.i)
  %cmp.i90.not = icmp eq i32 %and.i, 202899456
  br i1 %cmp.i90.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #6
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %do.body18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body18:                                        ; preds = %if.end12
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @tc3589x_probe.__key) #6
  %dev22 = getelementptr inbounds %struct.tc3589x, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev22, align 4
  %i2c23 = getelementptr inbounds %struct.tc3589x, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %i2c23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %i2c, ptr %i2c23, align 4
  %pdata24 = getelementptr inbounds %struct.tc3589x, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %pdata24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pdata.0, ptr %pdata24, align 4
  %switch.tableidx = add i32 %version.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %25 = icmp ult i32 %switch.tableidx, 4
  br i1 %25, label %switch.lookup, label %do.body18.sw.epilog_crit_edge

do.body18.sw.epilog_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tc3589x_probe, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.body18.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 24, %do.body18.sw.epilog_crit_edge ]
  %num_gpio26 = getelementptr inbounds %struct.tc3589x, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %num_gpio26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %num_gpio26, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %i2c23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c23, align 4
  %call.i.i91 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %cmp.i.i = icmp slt i32 %call.i.i91, 0
  br i1 %cmp.i.i, label %tc3589x_reg_read.exit.thread.i, label %if.end.i92

tc3589x_reg_read.exit.thread.i:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str, i32 noundef 128, i32 noundef %call.i.i91) #9
  br label %cleanup

if.end.i92:                                       ; preds = %sw.epilog
  %33 = ptrtoint ptr %i2c23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c23, align 4
  %call.i32.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext -127) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp.i33.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp.i33.i, label %tc3589x_reg_read.exit36.thread.i, label %if.end4.i

tc3589x_reg_read.exit36.thread.i:                 ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str, i32 noundef 129, i32 noundef %call.i32.i) #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i91)
  %cmp5.not.i = icmp eq i32 %call.i.i91, 3
  %37 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev22, align 4
  br i1 %cmp5.not.i, label %do.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.23, i32 noundef %call.i.i91) #9
  br label %cleanup

do.end10.i:                                       ; preds = %if.end4.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %call.i32.i) #9
  %39 = ptrtoint ptr %i2c23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c23, align 4
  %call.i111 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -126, i8 noundef zeroext 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 0
  br i1 %cmp.i112, label %tc3589x_reg_write.exit116.thread, label %if.end15.i

tc3589x_reg_write.exit116.thread:                 ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.5, i32 noundef 130, i32 noundef %call.i111) #9
  br label %cleanup

if.end15.i:                                       ; preds = %do.end10.i
  %43 = ptrtoint ptr %i2c23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c23, align 4
  %call.i105 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -124, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %do.end.i108, label %tc3589x_chip_init.exit

do.end.i108:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.5, i32 noundef 132, i32 noundef %call.i105) #9
  br label %cleanup

tc3589x_chip_init.exit:                           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool28.not = icmp eq i32 %call.i105, 0
  br i1 %tobool28.not, label %if.end30, label %tc3589x_chip_init.exit.cleanup_crit_edge

tc3589x_chip_init.exit.cleanup_crit_edge:         ; preds = %tc3589x_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %tc3589x_chip_init.exit
  %tobool.not.i.i.i = icmp eq ptr %1, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i.i, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @tc3589x_irq_ops, ptr noundef nonnull %call.i) #6
  %domain.i = getelementptr inbounds %struct.tc3589x, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call1.i.i, ptr %domain.i, align 4
  %tobool.not.i95 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i95, label %tc3589x_irq_init.exit, label %if.end34

tc3589x_irq_init.exit:                            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %50 = ptrtoint ptr %i2c23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c23, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %call36 = tail call i32 @request_threaded_irq(i32 noundef %53, ptr noundef null, ptr noundef nonnull @tc3589x_irq, i32 noundef 8194, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.16, i32 noundef %call36) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %56 = ptrtoint ptr %pdata24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdata24, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %and.i98 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99, label %if.end43.if.end8.i_crit_edge, label %if.then.i

if.end43.if.end8.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end43
  %60 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev22, align 4
  %62 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %domain.i, align 4
  %call.i102 = tail call i32 @mfd_add_devices(ptr noundef %61, i32 noundef -1, ptr noundef nonnull @tc3589x_dev_gpio, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool1.not.i = icmp eq i32 %call.i102, 0
  %64 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev22, align 4
  br i1 %tobool1.not.i, label %do.end6.i, label %do.end.i103

do.end.i103:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.31) #9
  br label %do.end49

do.end6.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.34) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end6.i, %if.end43.if.end8.i_crit_edge
  %and9.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.cleanup_crit_edge, label %if.then11.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11.i:                                      ; preds = %if.end8.i
  %66 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev22, align 4
  %68 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %domain.i, align 4
  %call14.i = tail call i32 @mfd_add_devices(ptr noundef %67, i32 noundef -1, ptr noundef nonnull @tc3589x_dev_keypad, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  %70 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev22, align 4
  br i1 %tobool15.not.i, label %do.end24.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.37) #9
  br label %do.end49

do.end24.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.40) #9
  br label %cleanup

do.end49:                                         ; preds = %do.end19.i, %do.end.i103
  %retval.0.i104 = phi i32 [ %call.i102, %do.end.i103 ], [ %call14.i, %do.end19.i ]
  %72 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.19) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end24.i, %if.end8.i.cleanup_crit_edge, %do.end41, %tc3589x_irq_init.exit, %tc3589x_chip_init.exit.cleanup_crit_edge, %do.end.i108, %tc3589x_reg_write.exit116.thread, %do.end.i, %tc3589x_reg_read.exit36.thread.i, %tc3589x_reg_read.exit.thread.i, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call36, %do.end41 ], [ %retval.0.i104, %do.end49 ], [ %13, %do.end ], [ -5, %if.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call.i105, %tc3589x_chip_init.exit.cleanup_crit_edge ], [ -38, %tc3589x_irq_init.exit ], [ %call.i105, %do.end.i108 ], [ %call.i111, %tc3589x_reg_write.exit116.thread ], [ %call.i32.i, %tc3589x_reg_read.exit36.thread.i ], [ %call.i.i91, %tc3589x_reg_read.exit.thread.i ], [ -22, %do.end.i ], [ 0, %do.end24.i ], [ 0, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.tc3589x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @mfd_remove_devices(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c.i = getelementptr inbounds %struct.tc3589x, ptr %data, i32 0, i32 2
  %domain = getelementptr inbounds %struct.tc3589x, ptr %data, i32 0, i32 3
  %dev.i19 = getelementptr inbounds %struct.tc3589x, ptr %data, i32 0, i32 1
  br label %again

again:                                            ; preds = %tc3589x_reg_read.exit21.again_crit_edge, %entry
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tc3589x_reg_read.exit.thread, label %while.cond.preheader

while.cond.preheader:                             ; preds = %again
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not23 = icmp eq i32 %call.i, 0
  br i1 %tobool.not23, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

tc3589x_reg_read.exit.thread:                     ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev.i19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 145, i32 noundef %call.i) #9
  br label %cleanup

while.body:                                       ; preds = %irq_find_mapping.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %status.024 = phi i32 [ %and, %irq_find_mapping.exit.while.body_crit_edge ], [ %call.i, %while.cond.preheader.while.body_crit_edge ]
  %4 = call i32 @llvm.cttz.i32(i32 %status.024, i1 true) #6, !range !129
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq.i, align 4, !annotation !130
  %call.i15 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %4, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i15, null
  br i1 %tobool.not.i, label %while.body.irq_find_mapping.exit_crit_edge, label %if.then.i

while.body.irq_find_mapping.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %while.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ 0, %while.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i) #6
  %shl = shl nuw i32 1, %4
  %neg = xor i32 %shl, -1
  %and = and i32 %status.024, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.while.end_crit_edge, label %irq_find_mapping.exit.while.body_crit_edge

irq_find_mapping.exit.while.body_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

irq_find_mapping.exit.while.end_crit_edge:        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %irq_find_mapping.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  %call.i17 = call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i18 = icmp slt i32 %call.i17, 0
  br i1 %cmp.i18, label %do.end.i20, label %while.end.tc3589x_reg_read.exit21_crit_edge

while.end.tc3589x_reg_read.exit21_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc3589x_reg_read.exit21

do.end.i20:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 145, i32 noundef %call.i17) #9
  br label %tc3589x_reg_read.exit21

tc3589x_reg_read.exit21:                          ; preds = %do.end.i20, %while.end.tc3589x_reg_read.exit21_crit_edge
  %tobool4.not = icmp eq i32 %call.i17, 0
  br i1 %tobool4.not, label %tc3589x_reg_read.exit21.cleanup_crit_edge, label %tc3589x_reg_read.exit21.again_crit_edge

tc3589x_reg_read.exit21.again_crit_edge:          ; preds = %tc3589x_reg_read.exit21
  call void @__sanitizer_cov_trace_pc() #8
  br label %again

tc3589x_reg_read.exit21.cleanup_crit_edge:        ; preds = %tc3589x_reg_read.exit21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %tc3589x_reg_read.exit21.cleanup_crit_edge, %tc3589x_reg_read.exit.thread
  %retval.0 = phi i32 [ 0, %tc3589x_reg_read.exit.thread ], [ 1, %tc3589x_reg_read.exit21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_irq_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %virq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %i2c = getelementptr inbounds %struct.tc3589x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %can_wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -120, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.tc3589x, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef 136, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ %call.i, %if.then.if.end_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %i2c = getelementptr inbounds %struct.tc3589x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %can_wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -120, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.tc3589x, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef 136, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ %call.i, %if.then.if.end_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tc3589x.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tc3589x_reg_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tc3589x_reg_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_tc3589x_reg_read, !9, !"__ksymtab_tc3589x_reg_read", i1 false, i1 false}
!9 = !{!"../drivers/mfd/tc3589x.c", i32 53, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/tc3589x.c", i32 67, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tc3589x_reg_write._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tc3589x_reg_write._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_tc3589x_reg_write, !16, !"__ksymtab_tc3589x_reg_write", i1 false, i1 false}
!16 = !{!"../drivers/mfd/tc3589x.c", i32 72, i32 1}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/tc3589x.c", i32 87, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tc3589x_block_read._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tc3589x_block_read._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_tc3589x_block_read, !23, !"__ksymtab_tc3589x_block_read", i1 false, i1 false}
!23 = !{!"../drivers/mfd/tc3589x.c", i32 92, i32 1}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/tc3589x.c", i32 109, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tc3589x_block_write._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @tc3589x_block_write._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_tc3589x_block_write, !30, !"__ksymtab_tc3589x_block_write", i1 false, i1 false}
!30 = !{!"../drivers/mfd/tc3589x.c", i32 114, i32 1}
!31 = !{ptr @__ksymtab_tc3589x_set_bits, !32, !"__ksymtab_tc3589x_set_bits", i1 false, i1 false}
!32 = !{!"../drivers/mfd/tc3589x.c", i32 142, i32 1}
!33 = !{ptr @__initcall__kmod_tc3589x__288_500_tc3589x_init4, !34, !"__initcall__kmod_tc3589x__288_500_tc3589x_init4", i1 false, i1 false}
!34 = !{!"../drivers/mfd/tc3589x.c", i32 500, i32 1}
!35 = !{ptr @__exitcall_tc3589x_exit, !36, !"__exitcall_tc3589x_exit", i1 false, i1 false}
!36 = !{!"../drivers/mfd/tc3589x.c", i32 506, i32 1}
!37 = !{ptr @__UNIQUE_ID_file289, !38, !"__UNIQUE_ID_file289", i1 false, i1 false}
!38 = !{!"../drivers/mfd/tc3589x.c", i32 508, i32 1}
!39 = !{ptr @__UNIQUE_ID_license290, !38, !"__UNIQUE_ID_license290", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_description291, !41, !"__UNIQUE_ID_description291", i1 false, i1 false}
!41 = !{!"../drivers/mfd/tc3589x.c", i32 509, i32 1}
!42 = !{ptr @__UNIQUE_ID_author292, !43, !"__UNIQUE_ID_author292", i1 false, i1 false}
!43 = !{!"../drivers/mfd/tc3589x.c", i32 510, i32 1}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/tc3589x.c", i32 487, i32 11}
!46 = !{ptr @tc3589x_driver, !47, !"tc3589x_driver", i1 false, i1 false}
!47 = !{!"../drivers/mfd/tc3589x.c", i32 485, i32 26}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/tc3589x.c", i32 367, i32 4}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tc3589x_probe._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tc3589x_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @tc3589x_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/mfd/tc3589x.c", i32 384, i32 2}
!55 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/tc3589x.c", i32 419, i32 3}
!58 = !{ptr @tc3589x_probe._entry.15, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tc3589x_probe._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/tc3589x.c", i32 425, i32 3}
!62 = !{ptr @tc3589x_probe._entry.18, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tc3589x_probe._entry_ptr.20, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/tc3589x.c", i32 346, i32 38}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/tc3589x.c", i32 348, i32 38}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/tc3589x.c", i32 262, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tc3589x_chip_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tc3589x_chip_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/tc3589x.c", i32 266, i32 2}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tc3589x_chip_init._entry.25, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @tc3589x_chip_init._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/tc3589x.c", i32 242, i32 3}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tc3589x_irq_init._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tc3589x_irq_init._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @tc3589x_irq_ops, !84, !"tc3589x_irq_ops", i1 false, i1 false}
!84 = !{!"../drivers/mfd/tc3589x.c", i32 229, i32 36}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/tc3589x.c", i32 294, i32 4}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @tc3589x_device_init._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @tc3589x_device_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/tc3589x.c", i32 297, i32 3}
!92 = !{ptr @tc3589x_device_init._entry.33, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tc3589x_device_init._entry_ptr.35, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/tc3589x.c", i32 305, i32 4}
!96 = !{ptr @tc3589x_device_init._entry.36, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tc3589x_device_init._entry_ptr.38, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/tc3589x.c", i32 308, i32 3}
!100 = !{ptr @tc3589x_device_init._entry.39, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @tc3589x_device_init._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/tc3589x.c", i32 162, i32 12}
!104 = !{ptr @tc3589x_dev_gpio, !105, !"tc3589x_dev_gpio", i1 false, i1 false}
!105 = !{!"../drivers/mfd/tc3589x.c", i32 160, i32 30}
!106 = !{ptr @gpio_resources, !107, !"gpio_resources", i1 false, i1 false}
!107 = !{!"../drivers/mfd/tc3589x.c", i32 144, i32 30}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/tc3589x.c", i32 171, i32 21}
!110 = !{ptr @tc3589x_dev_keypad, !111, !"tc3589x_dev_keypad", i1 false, i1 false}
!111 = !{!"../drivers/mfd/tc3589x.c", i32 169, i32 30}
!112 = !{ptr @keypad_resources, !113, !"keypad_resources", i1 false, i1 false}
!113 = !{!"../drivers/mfd/tc3589x.c", i32 152, i32 30}
!114 = !{ptr @tc3589x_match, !115, !"tc3589x_match", i1 false, i1 false}
!115 = !{!"../drivers/mfd/tc3589x.c", i32 314, i32 34}
!116 = !{ptr @tc3589x_dev_pm_ops, !117, !"tc3589x_dev_pm_ops", i1 false, i1 false}
!117 = !{!"../drivers/mfd/tc3589x.c", i32 471, i32 8}
!118 = !{ptr @tc3589x_id, !119, !"tc3589x_id", i1 false, i1 false}
!119 = !{!"../drivers/mfd/tc3589x.c", i32 473, i32 35}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i32 0, i32 33}
!130 = !{!"auto-init"}
