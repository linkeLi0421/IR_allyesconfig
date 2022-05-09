; ModuleID = '/llk/IR_all_yes/drivers/mfd/tps65217.c_pt.bc'
source_filename = "../drivers/mfd/tps65217.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tps65217_reg_read\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65217_reg_read\09\09\09\09"
module asm "\09.long\09__crc_tps65217_reg_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tps65217_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65217_reg_write\09\09\09\09"
module asm "\09.long\09__crc_tps65217_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tps65217_set_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65217_set_bits\09\09\09\09"
module asm "\09.long\09__crc_tps65217_set_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tps65217_clear_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65217_clear_bits\09\09\09\09"
module asm "\09.long\09__crc_tps65217_clear_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_clear_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tps65217 = type { ptr, ptr, [7 x %struct.regulator_desc], ptr, ptr, ptr, %struct.mutex, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_tps65217_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_reg_read to i32), ptr @__kstrtab_tps65217_reg_read, ptr @__kstrtabns_tps65217_reg_read }, section "___ksymtab_gpl+tps65217_reg_read", align 4
@__kstrtab_tps65217_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_reg_write to i32), ptr @__kstrtab_tps65217_reg_write, ptr @__kstrtabns_tps65217_reg_write }, section "___ksymtab_gpl+tps65217_reg_write", align 4
@__kstrtab_tps65217_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_set_bits to i32), ptr @__kstrtab_tps65217_set_bits, ptr @__kstrtabns_tps65217_set_bits }, section "___ksymtab_gpl+tps65217_set_bits", align 4
@__kstrtab_tps65217_clear_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_clear_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_clear_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_clear_bits to i32), ptr @__kstrtab_tps65217_clear_bits, ptr @__kstrtabns_tps65217_clear_bits }, section "___ksymtab_gpl+tps65217_clear_bits", align 4
@__initcall__kmod_tps65217__288_423_tps65217_init4 = internal global ptr @tps65217_init, section ".initcall4.init", align 4
@tps65217_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @tps65217_remove, ptr @tps65217_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps65217_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65217_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps65217_exit = internal global ptr @tps65217_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"tps65217.author=AnilKumar Ch <anilkumar@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"tps65217.description=TPS65217 chip family multi-function driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"tps65217.file=drivers/mfd/tps65217\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"tps65217.license=GPL v2\00", section ".modinfo", align 1
@tps65217_update_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read from reg 0x%x failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tps65217_update_bits\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/tps65217.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65217_update_bits._entry_ptr = internal global ptr @tps65217_update_bits._entry, section ".printk_index", align 4
@tps65217_update_bits._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write for reg 0x%x failed\0A\00", [37 x i8] zeroinitializer }, align 32
@tps65217_update_bits._entry_ptr.7 = internal global ptr @tps65217_update_bits._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps65217\00", [23 x i8] zeroinitializer }, align 32
@tps65217_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65217\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tps65217_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps65217\00\00\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ti,pmic-shutdown-controller\00", [36 x i8] zeroinitializer }, align 32
@tps65217_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps65217_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @tps65217_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tps65217:336:(&tps65217_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@tps65217_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tps65217_probe\00", [17 x i8] zeroinitializer }, align 32
@tps65217_probe._entry_ptr = internal global ptr @tps65217_probe._entry, section ".printk_index", align 4
@tps65217s = internal global { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.39, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.41, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.43, i64 0, i8 0, ptr null, i32 2, ptr @charger_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.45, i64 0, i8 0, ptr null, i32 1, ptr @pb_resources, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@tps65217_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mfd_add_devices failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tps65217_probe._entry_ptr.15 = internal global ptr @tps65217_probe._entry.13, section ".printk_index", align 4
@tps65217_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read revision register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tps65217_probe._entry_ptr.18 = internal global ptr @tps65217_probe._entry.16, section ".printk_index", align 4
@tps65217_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 375, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to set the status OFF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tps65217_probe._entry_ptr.22 = internal global ptr @tps65217_probe._entry.19, section ".printk_index", align 4
@tps65217_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.2, i32 380, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TPS65217 ID %#x version 1.%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tps65217_probe._entry_ptr.26 = internal global ptr @tps65217_probe._entry.23, section ".printk_index", align 4
@tps65217_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tps->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@tps65217_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @tps65217_irq_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tps65217_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps65217_irq_init\00", [46 x i8] zeroinitializer }, align 32
@tps65217_irq_init._entry_ptr = internal global ptr @tps65217_irq_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tps65217-irq\00", [19 x i8] zeroinitializer }, align 32
@tps65217_irq_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tps65217_irq_init._entry_ptr.33 = internal global ptr @tps65217_irq_init._entry.31, section ".printk_index", align 4
@tps65217_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr @tps65217_irq_enable, ptr @tps65217_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65217_irq_lock, ptr @tps65217_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@tps65217_irq_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync IRQ masks\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tps65217_irq_sync_unlock\00", [39 x i8] zeroinitializer }, align 32
@tps65217_irq_sync_unlock._entry_ptr = internal global ptr @tps65217_irq_sync_unlock._entry, section ".printk_index", align 4
@tps65217_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read IRQ status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps65217_irq_thread\00", [44 x i8] zeroinitializer }, align 32
@tps65217_irq_thread._entry_ptr = internal global ptr @tps65217_irq_thread._entry, section ".printk_index", align 4
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65217-pmic\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,tps65217-pmic\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tps65217-bl\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,tps65217-bl\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tps65217-charger\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,tps65217-charger\00", [44 x i8] zeroinitializer }, align 32
@charger_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr @.str.46, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.47, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65217-pwrbutton\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,tps65217-pwrbutton\00", [42 x i8] zeroinitializer }, align 32
@pb_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr @.str.48, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AC\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PB\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"tps65217_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 409, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 267, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 276, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 411, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"tps65217_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 313, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"tps65217_id_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 403, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 327, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [23 x i8] c"tps65217_regmap_config\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 305, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 336, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 339, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"tps65217s\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 89, i32 24 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 358, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 364, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 375, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 378, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 162, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"tps65217_irq_domain_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 154, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 173, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 179, i32 6 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 181, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"tps65217_irq_chip\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 81, i32 24 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 60, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 122, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 91, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 92, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 95, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 96, i32 20 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 99, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 102, i32 20 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"charger_resources\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 36, i32 30 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 105, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 108, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"pb_resources\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 41, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 37, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 38, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [26 x i8] c"../drivers/mfd/tps65217.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 42, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps65217_exit, ptr @__initcall__kmod_tps65217__288_423_tps65217_init4, ptr @__ksymtab_tps65217_clear_bits, ptr @__ksymtab_tps65217_reg_read, ptr @__ksymtab_tps65217_reg_write, ptr @__ksymtab_tps65217_set_bits, ptr @tps65217_exit, ptr @tps65217_irq_init._entry, ptr @tps65217_irq_init._entry.31, ptr @tps65217_irq_init._entry_ptr, ptr @tps65217_irq_init._entry_ptr.33, ptr @tps65217_irq_sync_unlock._entry, ptr @tps65217_irq_sync_unlock._entry_ptr, ptr @tps65217_irq_thread._entry, ptr @tps65217_irq_thread._entry_ptr, ptr @tps65217_probe._entry, ptr @tps65217_probe._entry.13, ptr @tps65217_probe._entry.16, ptr @tps65217_probe._entry.19, ptr @tps65217_probe._entry.23, ptr @tps65217_probe._entry_ptr, ptr @tps65217_probe._entry_ptr.15, ptr @tps65217_probe._entry_ptr.18, ptr @tps65217_probe._entry_ptr.22, ptr @tps65217_probe._entry_ptr.26, ptr @tps65217_update_bits._entry, ptr @tps65217_update_bits._entry.5, ptr @tps65217_update_bits._entry_ptr, ptr @tps65217_update_bits._entry_ptr.7, ptr @tps65217_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @tps65217_of_match, ptr @tps65217_id_table, ptr @.str.9, ptr @tps65217_probe._key, ptr @tps65217_regmap_config, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @tps65217s, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @tps65217_irq_init.__key, ptr @.str.27, ptr @tps65217_irq_domain_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @tps65217_irq_chip, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @charger_resources, ptr @.str.44, ptr @.str.45, ptr @pb_resources, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_update_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_update_bits._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217s to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_irq_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_irq_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65217_reg_read(ptr nocapture noundef readonly %tps, i32 noundef %reg, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_read(ptr noundef %1, i32 noundef %reg, ptr noundef %val) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65217_reg_write(ptr nocapture noundef readonly %tps, i32 noundef %reg, i32 noundef %val, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  %xor = xor i32 %reg, 125
  %regmap2 = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 3
  %1 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap2, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 11, i32 noundef %xor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.cleanup.sink.split_crit_edge

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %xor7 = xor i32 %reg, 125
  %regmap8 = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 3
  %3 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap8, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 11, i32 noundef %xor7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %sw.bb6.cleanup_crit_edge, label %if.end12

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %sw.bb6
  %5 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap8, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %reg, i32 noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap8, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 11, i32 noundef %xor7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end17.cleanup.sink.split_crit_edge

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end17.cleanup.sink.split_crit_edge, %sw.bb1.cleanup.sink.split_crit_edge, %sw.bb
  %regmap8.sink = phi ptr [ %regmap, %sw.bb ], [ %regmap2, %sw.bb1.cleanup.sink.split_crit_edge ], [ %regmap8, %if.end17.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %regmap8.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap8.sink, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %reg, i32 noundef %val) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.bb1.cleanup_crit_edge ], [ %call9, %sw.bb6.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call24, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65217_set_bits(ptr nocapture noundef readonly %tps, i32 noundef %reg, i32 noundef %mask, i32 noundef %val, i32 noundef %level) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data.i, align 4, !annotation !134
  %regmap.i.i = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %reg, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %neg.i = xor i32 %mask, -1
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 4
  %and.i = and i32 %4, %neg.i
  %and1.i = and i32 %val, %mask
  %or.i = or i32 %and.i, %and1.i
  store i32 %or.i, ptr %data.i, align 4
  %call2.i = call i32 @tps65217_reg_write(ptr noundef %tps, i32 noundef %reg, i32 noundef %or.i, i32 noundef %level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.tps65217_update_bits.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.tps65217_update_bits.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps65217_update_bits.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.6.sink.i = phi ptr [ @.str, %entry.cleanup.sink.split.i_crit_edge ], [ @.str.6, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %entry.cleanup.sink.split.i_crit_edge ], [ %call2.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %5 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %.str.6.sink.i, i32 noundef %reg) #10
  br label %tps65217_update_bits.exit

tps65217_update_bits.exit:                        ; preds = %cleanup.sink.split.i, %if.end.i.tps65217_update_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.tps65217_update_bits.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65217_clear_bits(ptr nocapture noundef readonly %tps, i32 noundef %reg, i32 noundef %mask, i32 noundef %level) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data.i, align 4, !annotation !134
  %regmap.i.i = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %reg, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %neg.i = xor i32 %mask, -1
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 4
  %and.i = and i32 %4, %neg.i
  store i32 %and.i, ptr %data.i, align 4
  %call2.i = call i32 @tps65217_reg_write(ptr noundef %tps, i32 noundef %reg, i32 noundef %and.i, i32 noundef %level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.tps65217_update_bits.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.tps65217_update_bits.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps65217_update_bits.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.6.sink.i = phi ptr [ @.str, %entry.cleanup.sink.split.i_crit_edge ], [ @.str.6, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %entry.cleanup.sink.split.i_crit_edge ], [ %call2.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %5 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %.str.6.sink.i, i32 noundef %reg) #10
  br label %tps65217_update_bits.exit

tps65217_update_bits.exit:                        ; preds = %cleanup.sink.split.i, %if.end.i.tps65217_update_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.tps65217_update_bits.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps65217_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65217_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tps65217_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_domain = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  br label %for.inc

irq_find_mapping.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.for.inc_crit_edge, label %if.then

irq_find_mapping.exit.for.inc_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @irq_dispose_mapping(i32 noundef %6) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %irq_find_mapping.exit.for.inc_crit_edge, %irq_find_mapping.exit.thread
  %7 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.1 = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %irq_find_mapping.exit.thread.1, label %irq_find_mapping.exit.1

irq_find_mapping.exit.1:                          ; preds = %for.inc
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %irq_find_mapping.exit.1.for.inc.1_crit_edge, label %if.then.1

irq_find_mapping.exit.1.for.inc.1_crit_edge:      ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @irq_dispose_mapping(i32 noundef %11) #7
  br label %for.inc.1

irq_find_mapping.exit.thread.1:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %irq_find_mapping.exit.thread.1, %if.then.1, %irq_find_mapping.exit.1.for.inc.1_crit_edge
  %12 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.2 = call ptr @__irq_resolve_mapping(ptr noundef %13, i32 noundef 2, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.i.2, label %irq_find_mapping.exit.thread.2, label %irq_find_mapping.exit.2

irq_find_mapping.exit.2:                          ; preds = %for.inc.1
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.2 = icmp eq i32 %16, 0
  br i1 %tobool.not.2, label %irq_find_mapping.exit.2.for.inc.2_crit_edge, label %if.then.2

irq_find_mapping.exit.2.for.inc.2_crit_edge:      ; preds = %irq_find_mapping.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %irq_find_mapping.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  call void @irq_dispose_mapping(i32 noundef %16) #7
  br label %for.inc.2

irq_find_mapping.exit.thread.2:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %irq_find_mapping.exit.thread.2, %if.then.2, %irq_find_mapping.exit.2.for.inc.2_crit_edge
  %17 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_domain, align 4
  call void @irq_domain_remove(ptr noundef %18) #7
  %19 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %irq_domain, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_probe(ptr noundef %client) #0 align 64 {
entry:
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #7
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !134
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  %call.i85 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1828, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i85, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i85, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i85 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i85, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tps65217_regmap_config, ptr noundef nonnull @tps65217_probe._key, ptr noundef nonnull @.str.10) #7
  %regmap = getelementptr inbounds %struct.tps65217, ptr %call.i85, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  %7 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %6) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %for.body.preheader, label %if.then14

for.body.preheader:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 0, i32 14), align 8
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 1, i32 14), align 8
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 2, i32 14), align 8
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 3, i32 14), align 8
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tps65217_irq_init(ptr noundef nonnull %call.i85, i32 noundef %10)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %for.body.preheader
  %11 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i85, align 4
  %irq_domain = getelementptr inbounds %struct.tps65217, ptr %call.i85, i32 0, i32 5
  %13 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_domain, align 4
  %call19 = tail call i32 @devm_mfd_add_devices(ptr noundef %12, i32 noundef -1, ptr noundef nonnull @tps65217s, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef %call19) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i86 = call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %version) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp28 = icmp slt i32 %call.i86, 0
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.17, i32 noundef %call.i86) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  br i1 %tobool.i.not, label %if.end34.do.end48_crit_edge, label %if.then36

if.end34.do.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.then36:                                        ; preds = %if.end34
  %call37 = call i32 @tps65217_set_bits(ptr noundef nonnull %call.i85, i32 noundef 10, i32 noundef 128, i32 noundef 128, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.do.end48_crit_edge, label %do.end42

if.then36.do.end48_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i85, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.20) #10
  br label %do.end48

do.end48:                                         ; preds = %do.end42, %if.then36.do.end48_crit_edge, %if.end34.do.end48_crit_edge
  %23 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i85, align 4
  %25 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %version, align 4
  %and = lshr i32 %26, 4
  %shr = and i32 %and, 15
  %and50 = and i32 %26, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.24, i32 noundef %shr, i32 noundef %and50) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.end32, %do.end24, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ %call19, %do.end24 ], [ %call.i86, %do.end32 ], [ 0, %do.end48 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tps65217_irq_init(ptr noundef %tps, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @tps65217_irq_init.__key) #7
  %irq1 = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 8
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %irq, ptr %irq1, align 4
  %irq_mask = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 7
  %1 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 112, ptr %irq_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #7
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data.i.i, align 4, !annotation !134
  %regmap.i.i.i = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 3
  %3 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 2, ptr noundef nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup.sink.split.i.i_crit_edge

entry.cleanup.sink.split.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %entry
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.i.i, align 4
  %or.i.i = or i32 %6, 112
  store i32 %or.i.i, ptr %data.i.i, align 4
  %7 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i.i, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 2, i32 noundef %or.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool3.not.i.i = icmp eq i32 %call24.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.tps65217_set_bits.exit_crit_edge, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.end.i.i.tps65217_set_bits.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps65217_set_bits.exit

cleanup.sink.split.i.i:                           ; preds = %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %entry.cleanup.sink.split.i.i_crit_edge
  %.str.6.sink.i.i = phi ptr [ @.str, %entry.cleanup.sink.split.i.i_crit_edge ], [ @.str.6, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %9 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull %.str.6.sink.i.i, i32 noundef 2) #10
  br label %tps65217_set_bits.exit

tps65217_set_bits.exit:                           ; preds = %cleanup.sink.split.i.i, %if.end.i.i.tps65217_set_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  %11 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tps, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i1 = icmp eq ptr %14, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i1, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @tps65217_irq_domain_ops, ptr noundef %tps) #7
  %irq_domain = getelementptr inbounds %struct.tps65217, ptr %tps, i32 0, i32 5
  %15 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  %16 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tps, align 4
  br i1 %tobool.not, label %do.end6, label %if.end

do.end6:                                          ; preds = %tps65217_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end:                                           ; preds = %tps65217_set_bits.exit
  %call9 = call i32 @devm_request_threaded_irq(ptr noundef %17, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @tps65217_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.30, ptr noundef %tps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %irq, i32 noundef %call9) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %do.end6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tps65217_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cond = icmp eq i32 %reg, 2
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !134
  %regmap.i = getelementptr inbounds %struct.tps65217, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %irq_domain = getelementptr inbounds %struct.tps65217, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then2

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.36, i32 noundef %call.i) #10
  br label %cleanup

if.then2:                                         ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i19 = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i19, null
  br i1 %tobool.not.i, label %if.then2.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then2.irq_find_mapping.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then2.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ 0, %if.then2.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i) #7
  br label %for.inc

for.inc:                                          ; preds = %irq_find_mapping.exit, %for.cond.preheader.for.inc_crit_edge
  %12 = xor i1 %tobool.not, true
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and.1 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  %15 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i19.1 = call ptr @__irq_resolve_mapping(ptr noundef %16, i32 noundef 1, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.1 = icmp eq ptr %call.i19.1, null
  br i1 %tobool.not.i.1, label %if.then2.1.irq_find_mapping.exit.1_crit_edge, label %if.then.i.1

if.then2.1.irq_find_mapping.exit.1_crit_edge:     ; preds = %if.then2.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.1

if.then.i.1:                                      ; preds = %if.then2.1
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.1

irq_find_mapping.exit.1:                          ; preds = %if.then.i.1, %if.then2.1.irq_find_mapping.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %19, %if.then.i.1 ], [ 0, %if.then2.1.irq_find_mapping.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %irq_find_mapping.exit.1, %for.inc.for.inc.1_crit_edge
  %handled.1.off0.1 = phi i1 [ true, %irq_find_mapping.exit.1 ], [ %12, %for.inc.for.inc.1_crit_edge ]
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %and.2 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  %22 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i19.2 = call ptr @__irq_resolve_mapping(ptr noundef %23, i32 noundef 2, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.2 = icmp eq ptr %call.i19.2, null
  br i1 %tobool.not.i.2, label %if.then2.2.irq_find_mapping.exit.2_crit_edge, label %if.then.i.2

if.then2.2.irq_find_mapping.exit.2_crit_edge:     ; preds = %if.then2.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.2

if.then.i.2:                                      ; preds = %if.then2.2
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.2

irq_find_mapping.exit.2:                          ; preds = %if.then.i.2, %if.then2.2.irq_find_mapping.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %26, %if.then.i.2 ], [ 0, %if.then2.2.irq_find_mapping.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i.2) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %irq_find_mapping.exit.2, %for.inc.1.for.inc.2_crit_edge
  %handled.1.off0.2 = phi i1 [ true, %irq_find_mapping.exit.2 ], [ %handled.1.off0.1, %for.inc.1.for.inc.2_crit_edge ]
  %. = zext i1 %handled.1.off0.2 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %., %for.inc.2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @tps65217_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #7
  %irq = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @irq_set_parent(i32 noundef %virq, i32 noundef %3) #7
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tps65217_irq_enable(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl1 = shl i32 16, %3
  %irq_mask = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_mask, align 4
  %6 = trunc i32 %shl1 to i8
  %7 = xor i8 %6, -1
  %conv4 = and i8 %5, %7
  store i8 %conv4, ptr %irq_mask, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tps65217_irq_disable(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl1 = shl i32 16, %3
  %irq_mask = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_mask, align 4
  %6 = trunc i32 %shl1 to i8
  %conv4 = or i8 %5, %6
  store i8 %conv4, ptr %irq_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps65217_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps65217_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_mask = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #7
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data.i.i, align 4, !annotation !134
  %regmap.i.i.i = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data.i.i, align 4
  %and.i.i = and i32 %8, -113
  %9 = and i8 %3, 112
  %and1.i.i = zext i8 %9 to i32
  %or.i.i = or i32 %and.i.i, %and1.i.i
  store i32 %or.i.i, ptr %data.i.i, align 4
  %10 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i.i, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 2, i32 noundef %or.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool3.not.i.i = icmp eq i32 %call24.i, 0
  br i1 %tobool3.not.i.i, label %tps65217_set_bits.exit.thread, label %if.end.i.i.do.end_crit_edge

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

tps65217_set_bits.exit.thread:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  br label %if.end

do.end:                                           ; preds = %if.end.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  %.str.6.sink.i.i = phi ptr [ @.str, %entry.do.end_crit_edge ], [ @.str.6, %if.end.i.i.do.end_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.6.sink.i.i, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.34) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %tps65217_set_bits.exit.thread
  %irq_lock = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %irq_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__ksymtab_tps65217_reg_read, !1, !"__ksymtab_tps65217_reg_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tps65217.c", i32 203, i32 1}
!2 = !{ptr @__ksymtab_tps65217_reg_write, !3, !"__ksymtab_tps65217_reg_write", i1 false, i1 false}
!3 = !{!"../drivers/mfd/tps65217.c", i32 248, i32 1}
!4 = !{ptr @__ksymtab_tps65217_set_bits, !5, !"__ksymtab_tps65217_set_bits", i1 false, i1 false}
!5 = !{!"../drivers/mfd/tps65217.c", i32 286, i32 1}
!6 = !{ptr @__ksymtab_tps65217_clear_bits, !7, !"__ksymtab_tps65217_clear_bits", i1 false, i1 false}
!7 = !{!"../drivers/mfd/tps65217.c", i32 293, i32 1}
!8 = !{ptr @__initcall__kmod_tps65217__288_423_tps65217_init4, !9, !"__initcall__kmod_tps65217__288_423_tps65217_init4", i1 false, i1 false}
!9 = !{!"../drivers/mfd/tps65217.c", i32 423, i32 1}
!10 = !{ptr @__exitcall_tps65217_exit, !11, !"__exitcall_tps65217_exit", i1 false, i1 false}
!11 = !{!"../drivers/mfd/tps65217.c", i32 429, i32 1}
!12 = !{ptr @__UNIQUE_ID_author289, !13, !"__UNIQUE_ID_author289", i1 false, i1 false}
!13 = !{!"../drivers/mfd/tps65217.c", i32 431, i32 1}
!14 = !{ptr @__UNIQUE_ID_description290, !15, !"__UNIQUE_ID_description290", i1 false, i1 false}
!15 = !{!"../drivers/mfd/tps65217.c", i32 432, i32 1}
!16 = !{ptr @__UNIQUE_ID_file291, !17, !"__UNIQUE_ID_file291", i1 false, i1 false}
!17 = !{!"../drivers/mfd/tps65217.c", i32 433, i32 1}
!18 = !{ptr @__UNIQUE_ID_license292, !17, !"__UNIQUE_ID_license292", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/tps65217.c", i32 267, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tps65217_update_bits._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @tps65217_update_bits._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/tps65217.c", i32 276, i32 3}
!29 = !{ptr @tps65217_update_bits._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tps65217_update_bits._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/tps65217.c", i32 411, i32 11}
!33 = !{ptr @tps65217_driver, !34, !"tps65217_driver", i1 false, i1 false}
!34 = !{!"../drivers/mfd/tps65217.c", i32 409, i32 26}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/tps65217.c", i32 327, i32 9}
!37 = !{ptr @tps65217_probe._key, !38, !"_key", i1 false, i1 false}
!38 = !{!"../drivers/mfd/tps65217.c", i32 336, i32 16}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/tps65217.c", i32 339, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tps65217_probe._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tps65217_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/tps65217.c", i32 358, i32 3}
!47 = !{ptr @tps65217_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tps65217_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/tps65217.c", i32 364, i32 3}
!51 = !{ptr @tps65217_probe._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tps65217_probe._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/tps65217.c", i32 375, i32 4}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tps65217_probe._entry.19, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tps65217_probe._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/tps65217.c", i32 378, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tps65217_probe._entry.23, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @tps65217_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @tps65217_regmap_config, !64, !"tps65217_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/mfd/tps65217.c", i32 305, i32 35}
!65 = !{ptr @tps65217_irq_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/mfd/tps65217.c", i32 162, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/tps65217.c", i32 173, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tps65217_irq_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tps65217_irq_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/tps65217.c", i32 179, i32 6}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/tps65217.c", i32 181, i32 3}
!77 = !{ptr @tps65217_irq_init._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tps65217_irq_init._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @tps65217_irq_domain_ops, !80, !"tps65217_irq_domain_ops", i1 false, i1 false}
!80 = !{!"../drivers/mfd/tps65217.c", i32 154, i32 36}
!81 = !{ptr @tps65217_irq_chip, !82, !"tps65217_irq_chip", i1 false, i1 false}
!82 = !{!"../drivers/mfd/tps65217.c", i32 81, i32 24}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mfd/tps65217.c", i32 60, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tps65217_irq_sync_unlock._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tps65217_irq_sync_unlock._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/tps65217.c", i32 122, i32 3}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tps65217_irq_thread._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @tps65217_irq_thread._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/tps65217.c", i32 91, i32 11}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mfd/tps65217.c", i32 92, i32 20}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/tps65217.c", i32 95, i32 11}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/tps65217.c", i32 96, i32 20}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/tps65217.c", i32 99, i32 11}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mfd/tps65217.c", i32 102, i32 20}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/tps65217.c", i32 105, i32 11}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mfd/tps65217.c", i32 108, i32 20}
!109 = !{ptr @tps65217s, !110, !"tps65217s", i1 false, i1 false}
!110 = !{!"../drivers/mfd/tps65217.c", i32 89, i32 24}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mfd/tps65217.c", i32 37, i32 2}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/tps65217.c", i32 38, i32 2}
!115 = !{ptr @charger_resources, !116, !"charger_resources", i1 false, i1 false}
!116 = !{!"../drivers/mfd/tps65217.c", i32 36, i32 30}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/tps65217.c", i32 42, i32 2}
!119 = !{ptr @pb_resources, !120, !"pb_resources", i1 false, i1 false}
!120 = !{!"../drivers/mfd/tps65217.c", i32 41, i32 30}
!121 = !{ptr @tps65217_of_match, !122, !"tps65217_of_match", i1 false, i1 false}
!122 = !{!"../drivers/mfd/tps65217.c", i32 313, i32 34}
!123 = !{ptr @tps65217_id_table, !124, !"tps65217_id_table", i1 false, i1 false}
!124 = !{!"../drivers/mfd/tps65217.c", i32 403, i32 35}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
