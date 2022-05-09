; ModuleID = '/llk/IR_all_yes/drivers/mfd/pcf50633-core.c_pt.bc'
source_filename = "../drivers/mfd/pcf50633-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcf50633_read_block\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_read_block\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_read_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_read_block:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_read_block\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_read_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_write_block\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_write_block\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_write_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_write_block:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_write_block\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_write_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_reg_read\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_reg_read\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_reg_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_reg_write\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_reg_set_bit_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_reg_set_bit_mask\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_reg_set_bit_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_reg_set_bit_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_reg_set_bit_mask\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_reg_set_bit_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_reg_clear_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_reg_clear_bits\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_reg_clear_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_reg_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_reg_clear_bits\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_reg_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pcf50633 = type { ptr, ptr, ptr, i32, [40 x %struct.pcf50633_irq], %struct.work_struct, ptr, %struct.mutex, [5 x i8], [5 x i8], [5 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }
%struct.pcf50633_irq = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.pcf50633_platform_data = type { [11 x %struct.regulator_init_data], ptr, i32, i32, ptr, ptr, ptr, ptr, [5 x i8], ptr }

@__kstrtab_pcf50633_read_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_read_block = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_read_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_read_block to i32), ptr @__kstrtab_pcf50633_read_block, ptr @__kstrtabns_pcf50633_read_block }, section "___ksymtab_gpl+pcf50633_read_block", align 4
@__kstrtab_pcf50633_write_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_write_block = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_write_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_write_block to i32), ptr @__kstrtab_pcf50633_write_block, ptr @__kstrtabns_pcf50633_write_block }, section "___ksymtab_gpl+pcf50633_write_block", align 4
@__kstrtab_pcf50633_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_reg_read to i32), ptr @__kstrtab_pcf50633_reg_read, ptr @__kstrtabns_pcf50633_reg_read }, section "___ksymtab_gpl+pcf50633_reg_read", align 4
@__kstrtab_pcf50633_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_reg_write to i32), ptr @__kstrtab_pcf50633_reg_write, ptr @__kstrtabns_pcf50633_reg_write }, section "___ksymtab_gpl+pcf50633_reg_write", align 4
@__kstrtab_pcf50633_reg_set_bit_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_reg_set_bit_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_reg_set_bit_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_reg_set_bit_mask to i32), ptr @__kstrtab_pcf50633_reg_set_bit_mask, ptr @__kstrtabns_pcf50633_reg_set_bit_mask }, section "___ksymtab_gpl+pcf50633_reg_set_bit_mask", align 4
@__kstrtab_pcf50633_reg_clear_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_reg_clear_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_reg_clear_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_reg_clear_bits to i32), ptr @__kstrtab_pcf50633_reg_clear_bits, ptr @__kstrtabns_pcf50633_reg_clear_bits }, section "___ksymtab_gpl+pcf50633_reg_clear_bits", align 4
@pcf50633_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pcf50633_probe, ptr @pcf50633_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcf50633_pm, ptr null, ptr null }, ptr @pcf50633_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description288 = internal constant [58 x i8] c"pcf50633.description=I2C chip driver for NXP PCF50633 PMU\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"pcf50633.author=Harald Welte <laforge@openmoko.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [35 x i8] c"pcf50633.file=drivers/mfd/pcf50633\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [21 x i8] c"pcf50633.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pcf50633__292_326_pcf50633_init4 = internal global ptr @pcf50633_init, section ".initcall4.init", align 4
@__exitcall_pcf50633_exit = internal global ptr @pcf50633_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcf50633\00", [23 x i8] zeroinitializer }, align 32
@pcf50633_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pcf50633_suspend, ptr @pcf50633_resume, ptr @pcf50633_suspend, ptr @pcf50633_resume, ptr @pcf50633_suspend, ptr @pcf50633_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pcf50633_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pcf50633\00\00\00\00\00\00\00\00\00\00\00\00", i32 115 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Missing IRQ\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcf50633_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mfd/pcf50633-core.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry_ptr = internal global ptr @pcf50633_probe._entry, section ".printk_index", align 4
@pcf50633_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pcf->lock\00", [21 x i8] zeroinitializer }, align 32
@pcf50633_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pcf50633_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"pcf50633_core:210:(&pcf50633_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry_ptr.10 = internal global ptr @pcf50633_probe._entry.8, section ".printk_index", align 4
@pcf50633_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to probe pcf50633\0A\00", [38 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry_ptr.13 = internal global ptr @pcf50633_probe._entry.11, section ".printk_index", align 4
@pcf50633_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 226, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Probed device version %d variant %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry_ptr.17 = internal global ptr @pcf50633_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcf50633-input\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633-rtc\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633-mbc\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633-adc\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcf50633-backlight\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcf50633-regulator\00", [45 x i8] zeroinitializer }, align 32
@pcf_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcf_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 260, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error creating sysfs entries\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcf50633_probe._entry_ptr.27 = internal global ptr @pcf50633_probe._entry.24, section ".printk_index", align 4
@pcf50633_client_dev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to allocate %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pcf50633_client_dev_register\00", [35 x i8] zeroinitializer }, align 32
@pcf50633_client_dev_register._entry_ptr = internal global ptr @pcf50633_client_dev_register._entry, section ".printk_index", align 4
@pcf50633_client_dev_register._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcf50633_client_dev_register._entry_ptr.32 = internal global ptr @pcf50633_client_dev_register._entry.30, section ".printk_index", align 4
@pcf_sysfs_entries = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_dump_regs, ptr @dev_attr_resume_reason, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_dump_regs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dump_regs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_resume_reason = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resume_reason_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_regs\00", [22 x i8] zeroinitializer }, align 32
@dump_regs_show.address_no_read = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\03\04\05\06\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"resume_reason\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%02x%02x%02x%02x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"pcf50633_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 302, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 304, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"pcf50633_pm\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 179, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"pcf50633_id_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 296, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 196, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 208, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"pcf50633_regmap_config\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 181, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 210, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 213, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 220, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 225, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 231, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 232, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 233, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 234, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 235, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 239, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"pcf_attr_group\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 134, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 260, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 147, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 155, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"pcf_sysfs_entries\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 128, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"dev_attr_dump_regs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"dev_attr_resume_reason\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 109, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"address_no_read\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 87, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 104, i32 25 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 126, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [31 x i8] c"../drivers/mfd/pcf50633-core.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 117, i32 19 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_pcf50633_exit, ptr @__initcall__kmod_pcf50633__292_326_pcf50633_init4, ptr @__ksymtab_pcf50633_read_block, ptr @__ksymtab_pcf50633_reg_clear_bits, ptr @__ksymtab_pcf50633_reg_read, ptr @__ksymtab_pcf50633_reg_set_bit_mask, ptr @__ksymtab_pcf50633_reg_write, ptr @__ksymtab_pcf50633_write_block, ptr @pcf50633_client_dev_register._entry, ptr @pcf50633_client_dev_register._entry.30, ptr @pcf50633_client_dev_register._entry_ptr, ptr @pcf50633_client_dev_register._entry_ptr.32, ptr @pcf50633_exit, ptr @pcf50633_probe._entry, ptr @pcf50633_probe._entry.11, ptr @pcf50633_probe._entry.14, ptr @pcf50633_probe._entry.24, ptr @pcf50633_probe._entry.8, ptr @pcf50633_probe._entry_ptr, ptr @pcf50633_probe._entry_ptr.10, ptr @pcf50633_probe._entry_ptr.13, ptr @pcf50633_probe._entry_ptr.17, ptr @pcf50633_probe._entry_ptr.27, ptr @pcf50633_driver, ptr @.str, ptr @pcf50633_pm, ptr @pcf50633_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pcf50633_probe.__key, ptr @.str.6, ptr @pcf50633_probe._key, ptr @pcf50633_regmap_config, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pcf_attr_group, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @pcf_sysfs_entries, ptr @dev_attr_dump_regs, ptr @dev_attr_resume_reason, ptr @.str.33, ptr @dump_regs_show.address_no_read, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_client_dev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_client_dev_register._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf_sysfs_entries to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dump_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resume_reason to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_regs_show.address_no_read to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_read_block(ptr nocapture noundef readonly %pcf, i8 noundef zeroext %reg, i32 noundef %nr_regs, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %call = tail call i32 @regmap_raw_read(ptr noundef %1, i32 noundef %conv, ptr noundef %data, i32 noundef %nr_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %nr_regs.call = select i1 %cmp.not, i32 %nr_regs, i32 %call
  ret i32 %nr_regs.call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_write_block(ptr nocapture noundef readonly %pcf, i8 noundef zeroext %reg, i32 noundef %nr_regs, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %call = tail call i32 @regmap_raw_write(ptr noundef %1, i32 noundef %conv, ptr noundef %data, i32 noundef %nr_regs) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @pcf50633_reg_read(ptr nocapture noundef readonly %pcf, i8 noundef zeroext %reg) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !111
  %regmap = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %conv2 = trunc i32 %4 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_reg_write(ptr nocapture noundef readonly %pcf, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %conv1 = zext i8 %val to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_reg_set_bit_mask(ptr nocapture noundef readonly %pcf, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %conv1 = zext i8 %mask to i32
  %conv2 = zext i8 %val to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_reg_clear_bits(ptr nocapture noundef readonly %pcf, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %conv1 = zext i8 %val to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf50633_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pcf50633_driver) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_probe(ptr noundef %client, ptr nocapture noundef readnone %ids) #0 align 64 {
entry:
  %val.i149 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 564, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %pdata9 = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdata9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %pdata9, align 4
  %lock = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @pcf50633_probe.__key) #7
  %call13 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @pcf50633_regmap_config, ptr noundef nonnull @pcf50633_probe._key, ptr noundef nonnull @.str.7) #7
  %regmap = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call13 to i32
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef %8) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !111
  %call.i147 = call i32 @regmap_read(ptr noundef %call13, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp.i148 = icmp slt i32 %call.i147, 0
  br i1 %cmp.i148, label %if.end23.pcf50633_reg_read.exit_crit_edge, label %if.end.i

if.end23.pcf50633_reg_read.exit_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcf50633_reg_read.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %phi.bo = and i32 %13, 255
  br label %pcf50633_reg_read.exit

pcf50633_reg_read.exit:                           ; preds = %if.end.i, %if.end23.pcf50633_reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end.i ], [ 255, %if.end23.pcf50633_reg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i149) #7
  %14 = ptrtoint ptr %val.i149 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i149, align 4, !annotation !111
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i151 = call i32 @regmap_read(ptr noundef %16, i32 noundef 1, ptr noundef nonnull %val.i149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp.i152 = icmp slt i32 %call.i151, 0
  br i1 %cmp.i152, label %pcf50633_reg_read.exit.pcf50633_reg_read.exit156_crit_edge, label %if.end.i154

pcf50633_reg_read.exit.pcf50633_reg_read.exit156_crit_edge: ; preds = %pcf50633_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcf50633_reg_read.exit156

if.end.i154:                                      ; preds = %pcf50633_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val.i149 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i149, align 4
  %phi.bo218 = and i32 %18, 255
  br label %pcf50633_reg_read.exit156

pcf50633_reg_read.exit156:                        ; preds = %if.end.i154, %pcf50633_reg_read.exit.pcf50633_reg_read.exit156_crit_edge
  %retval.0.i155 = phi i32 [ %phi.bo218, %if.end.i154 ], [ 255, %pcf50633_reg_read.exit.pcf50633_reg_read.exit156_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i149) #7
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i, i32 noundef %retval.0.i155) #10
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call41 = call i32 @pcf50633_irq_init(ptr noundef nonnull %call.i, i32 noundef %22) #7
  %input_pdev = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 16
  %call.i157 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.18, i32 noundef -1) #7
  %23 = ptrtoint ptr %input_pdev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i157, ptr %input_pdev, align 4
  %tobool.not.i = icmp eq ptr %call.i157, null
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i158

do.end.i:                                         ; preds = %pcf50633_reg_read.exit156
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18) #10
  br label %pcf50633_client_dev_register.exit

if.end.i158:                                      ; preds = %pcf50633_reg_read.exit156
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %call.i157, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %parent.i, align 8
  %27 = ptrtoint ptr %input_pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input_pdev, align 4
  %call3.i = call i32 @platform_device_add(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i158.pcf50633_client_dev_register.exit_crit_edge, label %do.end8.i

if.end.i158.pcf50633_client_dev_register.exit_crit_edge: ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcf50633_client_dev_register.exit

do.end8.i:                                        ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.18, i32 noundef %call3.i) #10
  %31 = ptrtoint ptr %input_pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input_pdev, align 4
  call void @platform_device_put(ptr noundef %32) #7
  %33 = ptrtoint ptr %input_pdev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %input_pdev, align 4
  br label %pcf50633_client_dev_register.exit

pcf50633_client_dev_register.exit:                ; preds = %do.end8.i, %if.end.i158.pcf50633_client_dev_register.exit_crit_edge, %do.end.i
  %rtc_pdev = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 13
  %call.i159 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.19, i32 noundef -1) #7
  %34 = ptrtoint ptr %rtc_pdev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i159, ptr %rtc_pdev, align 4
  %tobool.not.i160 = icmp eq ptr %call.i159, null
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i160, label %do.end.i161, label %if.end.i165

do.end.i161:                                      ; preds = %pcf50633_client_dev_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19) #10
  br label %pcf50633_client_dev_register.exit167

if.end.i165:                                      ; preds = %pcf50633_client_dev_register.exit
  %parent.i162 = getelementptr inbounds %struct.platform_device, ptr %call.i159, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %parent.i162 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %parent.i162, align 8
  %38 = ptrtoint ptr %rtc_pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtc_pdev, align 4
  %call3.i163 = call i32 @platform_device_add(ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i163)
  %tobool4.not.i164 = icmp eq i32 %call3.i163, 0
  br i1 %tobool4.not.i164, label %if.end.i165.pcf50633_client_dev_register.exit167_crit_edge, label %do.end8.i166

if.end.i165.pcf50633_client_dev_register.exit167_crit_edge: ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcf50633_client_dev_register.exit167

do.end8.i166:                                     ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.19, i32 noundef %call3.i163) #10
  %42 = ptrtoint ptr %rtc_pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rtc_pdev, align 4
  call void @platform_device_put(ptr noundef %43) #7
  %44 = ptrtoint ptr %rtc_pdev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rtc_pdev, align 4
  br label %pcf50633_client_dev_register.exit167

pcf50633_client_dev_register.exit167:             ; preds = %do.end8.i166, %if.end.i165.pcf50633_client_dev_register.exit167_crit_edge, %do.end.i161
  %mbc_pdev = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 14
  %call.i168 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.20, i32 noundef -1) #7
  %45 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i168, ptr %mbc_pdev, align 4
  %tobool.not.i169 = icmp eq ptr %call.i168, null
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i169, label %do.end.i170, label %if.end.i174

do.end.i170:                                      ; preds = %pcf50633_client_dev_register.exit167
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.20) #10
  br label %pcf50633_client_dev_register.exit176

if.end.i174:                                      ; preds = %pcf50633_client_dev_register.exit167
  %parent.i171 = getelementptr inbounds %struct.platform_device, ptr %call.i168, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %parent.i171 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %parent.i171, align 8
  %49 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mbc_pdev, align 4
  %call3.i172 = call i32 @platform_device_add(ptr noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i172)
  %tobool4.not.i173 = icmp eq i32 %call3.i172, 0
  br i1 %tobool4.not.i173, label %if.end.i174.pcf50633_client_dev_register.exit176_crit_edge, label %do.end8.i175

if.end.i174.pcf50633_client_dev_register.exit176_crit_edge: ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcf50633_client_dev_register.exit176

do.end8.i175:                                     ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.20, i32 noundef %call3.i172) #10
  %53 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mbc_pdev, align 4
  call void @platform_device_put(ptr noundef %54) #7
  %55 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %mbc_pdev, align 4
  br label %pcf50633_client_dev_register.exit176

pcf50633_client_dev_register.exit176:             ; preds = %do.end8.i175, %if.end.i174.pcf50633_client_dev_register.exit176_crit_edge, %do.end.i170
  %adc_pdev = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 15
  %call.i177 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.21, i32 noundef -1) #7
  %56 = ptrtoint ptr %adc_pdev to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i177, ptr %adc_pdev, align 4
  %tobool.not.i178 = icmp eq ptr %call.i177, null
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i178, label %do.end.i179, label %if.end.i183

do.end.i179:                                      ; preds = %pcf50633_client_dev_register.exit176
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21) #10
  br label %pcf50633_client_dev_register.exit185

if.end.i183:                                      ; preds = %pcf50633_client_dev_register.exit176
  %parent.i180 = getelementptr inbounds %struct.platform_device, ptr %call.i177, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %parent.i180 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %parent.i180, align 8
  %60 = ptrtoint ptr %adc_pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adc_pdev, align 4
  %call3.i181 = call i32 @platform_device_add(ptr noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i181)
  %tobool4.not.i182 = icmp eq i32 %call3.i181, 0
  br i1 %tobool4.not.i182, label %if.end.i183.pcf50633_client_dev_register.exit185_crit_edge, label %do.end8.i184

if.end.i183.pcf50633_client_dev_register.exit185_crit_edge: ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcf50633_client_dev_register.exit185

do.end8.i184:                                     ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.21, i32 noundef %call3.i181) #10
  %64 = ptrtoint ptr %adc_pdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adc_pdev, align 4
  call void @platform_device_put(ptr noundef %65) #7
  %66 = ptrtoint ptr %adc_pdev to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %adc_pdev, align 4
  br label %pcf50633_client_dev_register.exit185

pcf50633_client_dev_register.exit185:             ; preds = %do.end8.i184, %if.end.i183.pcf50633_client_dev_register.exit185_crit_edge, %do.end.i179
  %bl_pdev = getelementptr inbounds %struct.pcf50633, ptr %call.i, i32 0, i32 17
  %call.i186 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.22, i32 noundef -1) #7
  %67 = ptrtoint ptr %bl_pdev to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i186, ptr %bl_pdev, align 4
  %tobool.not.i187 = icmp eq ptr %call.i186, null
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i187, label %do.end.i188, label %if.end.i192

do.end.i188:                                      ; preds = %pcf50633_client_dev_register.exit185
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.22) #10
  br label %for.body.preheader

if.end.i192:                                      ; preds = %pcf50633_client_dev_register.exit185
  %parent.i189 = getelementptr inbounds %struct.platform_device, ptr %call.i186, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %parent.i189 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %parent.i189, align 8
  %71 = ptrtoint ptr %bl_pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bl_pdev, align 4
  %call3.i190 = call i32 @platform_device_add(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i190)
  %tobool4.not.i191 = icmp eq i32 %call3.i190, 0
  br i1 %tobool4.not.i191, label %if.end.i192.for.body.preheader_crit_edge, label %do.end8.i193

if.end.i192.for.body.preheader_crit_edge:         ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.end8.i193:                                     ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.22, i32 noundef %call3.i190) #10
  %75 = ptrtoint ptr %bl_pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bl_pdev, align 4
  call void @platform_device_put(ptr noundef %76) #7
  %77 = ptrtoint ptr %bl_pdev to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %bl_pdev, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end8.i193, %if.end.i192.for.body.preheader_crit_edge, %do.end.i188
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %for.body.preheader
  %i.0199 = phi i32 [ %inc, %if.end57.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call44 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.23, i32 noundef %i.0199) #7
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %for.body.err2_crit_edge, label %if.end47

for.body.err2_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err2

if.end47:                                         ; preds = %for.body
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %call44, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %parent, align 8
  %arrayidx = getelementptr [11 x %struct.regulator_init_data], ptr %1, i32 0, i32 %i.0199
  %call50 = call i32 @platform_device_add_data(ptr noundef nonnull %call44, ptr noundef %arrayidx, i32 noundef 228) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.err_crit_edge

if.end47.err_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end53:                                         ; preds = %if.end47
  %call54 = call i32 @platform_device_add(ptr noundef nonnull %call44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.err_crit_edge

if.end53.err_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end57:                                         ; preds = %if.end53
  %arrayidx58 = getelementptr %struct.pcf50633, ptr %call.i, i32 0, i32 18, i32 %i.0199
  %81 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call44, ptr %arrayidx58, align 4
  %inc = add nuw nsw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end57
  %call60 = call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @pcf_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %for.end.if.end67_crit_edge, label %do.end65

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end65:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.25) #10
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %for.end.if.end67_crit_edge
  %probe_done = getelementptr inbounds %struct.pcf50633_platform_data, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %probe_done to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %probe_done, align 4
  %tobool68.not = icmp eq ptr %85, null
  br i1 %tobool68.not, label %if.end67.cleanup_crit_edge, label %if.then69

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void %85(ptr noundef nonnull %call.i) #7
  br label %cleanup

err:                                              ; preds = %if.end53.err_crit_edge, %if.end47.err_crit_edge
  %ret.0 = phi i32 [ %call50, %if.end47.err_crit_edge ], [ %call54, %if.end53.err_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call44) #7
  br label %err2

err2:                                             ; preds = %err, %for.body.err2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err ], [ -12, %for.body.err2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0199)
  %cmp73200.not = icmp eq i32 %i.0199, 0
  br i1 %cmp73200.not, label %err2.cleanup_crit_edge, label %err2.for.body75_crit_edge

err2.for.body75_crit_edge:                        ; preds = %err2
  br label %for.body75

err2.cleanup_crit_edge:                           ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %err2.for.body75_crit_edge
  %j.0201 = phi i32 [ %inc79, %for.body75.for.body75_crit_edge ], [ 0, %err2.for.body75_crit_edge ]
  %arrayidx77 = getelementptr %struct.pcf50633, ptr %call.i, i32 0, i32 18, i32 %j.0201
  %86 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx77, align 4
  call void @platform_device_put(ptr noundef %87) #7
  %inc79 = add nuw nsw i32 %j.0201, 1
  %exitcond207.not = icmp eq i32 %inc79, %i.0199
  br i1 %exitcond207.not, label %for.body75.cleanup_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75

for.body75.cleanup_crit_edge:                     ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body75.cleanup_crit_edge, %err2.cleanup_crit_edge, %if.then69, %if.end67.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %if.then16 ], [ -2, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %if.end67.cleanup_crit_edge ], [ %ret.1, %err2.cleanup_crit_edge ], [ %ret.1, %for.body75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pcf_attr_group) #7
  tail call void @pcf50633_irq_free(ptr noundef %1) #7
  %input_pdev = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %input_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #7
  %rtc_pdev = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %rtc_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #7
  %mbc_pdev = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbc_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %7) #7
  %adc_pdev = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %adc_pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adc_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %9) #7
  %bl_pdev = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %bl_pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bl_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %11) #7
  %arrayidx = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %13) #7
  %arrayidx.1 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @platform_device_unregister(ptr noundef %15) #7
  %arrayidx.2 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  tail call void @platform_device_unregister(ptr noundef %17) #7
  %arrayidx.3 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  tail call void @platform_device_unregister(ptr noundef %19) #7
  %arrayidx.4 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  tail call void @platform_device_unregister(ptr noundef %21) #7
  %arrayidx.5 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.5, align 4
  tail call void @platform_device_unregister(ptr noundef %23) #7
  %arrayidx.6 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.6, align 4
  tail call void @platform_device_unregister(ptr noundef %25) #7
  %arrayidx.7 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 7
  %26 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.7, align 4
  tail call void @platform_device_unregister(ptr noundef %27) #7
  %arrayidx.8 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 8
  %28 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.8, align 4
  tail call void @platform_device_unregister(ptr noundef %29) #7
  %arrayidx.9 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 9
  %30 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.9, align 4
  tail call void @platform_device_unregister(ptr noundef %31) #7
  %arrayidx.10 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 18, i32 10
  %32 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.10, align 4
  tail call void @platform_device_unregister(ptr noundef %33) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_irq_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_regs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %dump = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dump) #7
  %regmap.i = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %dump, i32 255, i32 16)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %entry
  %buf1.031 = phi ptr [ %buf, %entry ], [ %add.ptr, %for.end.for.cond1.preheader_crit_edge ]
  %idx.030 = phi i32 [ 0, %entry ], [ %idx.2, %for.end.for.cond1.preheader_crit_edge ]
  %n.029 = phi i32 [ 0, %entry ], [ %add13, %for.end.for.cond1.preheader_crit_edge ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader
  %idx.128 = phi i32 [ %idx.030, %for.cond1.preheader ], [ %idx.2, %for.inc.for.body3_crit_edge ]
  %n1.026 = phi i32 [ 0, %for.cond1.preheader ], [ %inc10, %for.inc.for.body3_crit_edge ]
  %arrayidx = getelementptr [6 x i8], ptr @dump_regs_show.address_no_read, i32 0, i32 %idx.128
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %n.029, i32 %conv)
  %cmp4 = icmp eq i32 %n.029, %conv
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %idx.128, 1
  br label %for.inc

if.else:                                          ; preds = %for.body3
  %add = add nuw nsw i32 %n1.026, %n.029
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !111
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %add, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.else.pcf50633_reg_read.exit_crit_edge, label %if.end.i

if.else.pcf50633_reg_read.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcf50633_reg_read.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %9 to i8
  br label %pcf50633_reg_read.exit

pcf50633_reg_read.exit:                           ; preds = %if.end.i, %if.else.pcf50633_reg_read.exit_crit_edge
  %retval.0.i = phi i8 [ %conv2.i, %if.end.i ], [ -1, %if.else.pcf50633_reg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %for.inc

for.inc:                                          ; preds = %pcf50633_reg_read.exit, %if.then
  %.sink = phi i8 [ 0, %if.then ], [ %retval.0.i, %pcf50633_reg_read.exit ]
  %idx.2 = phi i32 [ %inc, %if.then ], [ %idx.128, %pcf50633_reg_read.exit ]
  %arrayidx6 = getelementptr [16 x i8], ptr %dump, i32 0, i32 %n1.026
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %arrayidx6, align 1
  %inc10 = add nuw nsw i32 %n1.026, 1
  %exitcond.not = icmp eq i32 %inc10, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end:                                          ; preds = %for.inc
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf1.031, ptr noundef nonnull @.str.34, i32 noundef 16, ptr noundef nonnull %dump)
  %add.ptr = getelementptr i8, ptr %buf1.031, i32 %call11
  %add13 = add nuw nsw i32 %n.029, 16
  %cmp = icmp ult i32 %n.029, 240
  br i1 %cmp, label %for.end.for.cond1.preheader_crit_edge, label %for.end14

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.end14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dump) #7
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resume_reason_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %resume_reason = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %resume_reason to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resume_reason, align 2
  %conv = zext i8 %3 to i32
  %arrayidx2 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %arrayidx5 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 2
  %conv6 = zext i8 %7 to i32
  %arrayidx8 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %arrayidx11 = getelementptr %struct.pcf50633, ptr %1, i32 0, i32 10, i32 4
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 2
  %conv12 = zext i8 %11 to i32
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12)
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcf50633_irq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pcf50633_irq_suspend(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pcf50633_irq_resume(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_irq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_irq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88, !89, !91, !93, !95, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__ksymtab_pcf50633_read_block, !1, !"__ksymtab_pcf50633_read_block", i1 false, i1 false}
!1 = !{!"../drivers/mfd/pcf50633-core.c", i32 38, i32 1}
!2 = !{ptr @__ksymtab_pcf50633_write_block, !3, !"__ksymtab_pcf50633_write_block", i1 false, i1 false}
!3 = !{!"../drivers/mfd/pcf50633-core.c", i32 46, i32 1}
!4 = !{ptr @__ksymtab_pcf50633_reg_read, !5, !"__ksymtab_pcf50633_reg_read", i1 false, i1 false}
!5 = !{!"../drivers/mfd/pcf50633-core.c", i32 59, i32 1}
!6 = !{ptr @__ksymtab_pcf50633_reg_write, !7, !"__ksymtab_pcf50633_reg_write", i1 false, i1 false}
!7 = !{!"../drivers/mfd/pcf50633-core.c", i32 65, i32 1}
!8 = !{ptr @__ksymtab_pcf50633_reg_set_bit_mask, !9, !"__ksymtab_pcf50633_reg_set_bit_mask", i1 false, i1 false}
!9 = !{!"../drivers/mfd/pcf50633-core.c", i32 71, i32 1}
!10 = !{ptr @__ksymtab_pcf50633_reg_clear_bits, !11, !"__ksymtab_pcf50633_reg_clear_bits", i1 false, i1 false}
!11 = !{!"../drivers/mfd/pcf50633-core.c", i32 77, i32 1}
!12 = !{ptr @__UNIQUE_ID_description288, !13, !"__UNIQUE_ID_description288", i1 false, i1 false}
!13 = !{!"../drivers/mfd/pcf50633-core.c", i32 322, i32 1}
!14 = !{ptr @__UNIQUE_ID_author289, !15, !"__UNIQUE_ID_author289", i1 false, i1 false}
!15 = !{!"../drivers/mfd/pcf50633-core.c", i32 323, i32 1}
!16 = !{ptr @__UNIQUE_ID_file290, !17, !"__UNIQUE_ID_file290", i1 false, i1 false}
!17 = !{!"../drivers/mfd/pcf50633-core.c", i32 324, i32 1}
!18 = !{ptr @__UNIQUE_ID_license291, !17, !"__UNIQUE_ID_license291", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_pcf50633__292_326_pcf50633_init4, !20, !"__initcall__kmod_pcf50633__292_326_pcf50633_init4", i1 false, i1 false}
!20 = !{!"../drivers/mfd/pcf50633-core.c", i32 326, i32 1}
!21 = !{ptr @__exitcall_pcf50633_exit, !22, !"__exitcall_pcf50633_exit", i1 false, i1 false}
!22 = !{!"../drivers/mfd/pcf50633-core.c", i32 327, i32 1}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/pcf50633-core.c", i32 304, i32 11}
!25 = !{ptr @pcf50633_driver, !26, !"pcf50633_driver", i1 false, i1 false}
!26 = !{!"../drivers/mfd/pcf50633-core.c", i32 302, i32 26}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/pcf50633-core.c", i32 196, i32 3}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pcf50633_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @pcf50633_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @pcf50633_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/mfd/pcf50633-core.c", i32 208, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pcf50633_probe._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/mfd/pcf50633-core.c", i32 210, i32 16}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/pcf50633-core.c", i32 213, i32 3}
!43 = !{ptr @pcf50633_probe._entry.8, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pcf50633_probe._entry_ptr.10, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/pcf50633-core.c", i32 220, i32 3}
!47 = !{ptr @pcf50633_probe._entry.11, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pcf50633_probe._entry_ptr.13, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/pcf50633-core.c", i32 225, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pcf50633_probe._entry.14, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @pcf50633_probe._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/pcf50633-core.c", i32 231, i32 36}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/pcf50633-core.c", i32 232, i32 36}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/pcf50633-core.c", i32 233, i32 36}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/pcf50633-core.c", i32 234, i32 36}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/pcf50633-core.c", i32 235, i32 36}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/pcf50633-core.c", i32 239, i32 32}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/pcf50633-core.c", i32 260, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pcf50633_probe._entry.24, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @pcf50633_probe._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pcf50633_regmap_config, !72, !"pcf50633_regmap_config", i1 false, i1 false}
!72 = !{!"../drivers/mfd/pcf50633-core.c", i32 181, i32 35}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/pcf50633-core.c", i32 147, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pcf50633_client_dev_register._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pcf50633_client_dev_register._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/pcf50633-core.c", i32 155, i32 3}
!80 = !{ptr @pcf50633_client_dev_register._entry.30, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pcf50633_client_dev_register._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @pcf_attr_group, !83, !"pcf_attr_group", i1 false, i1 false}
!83 = !{!"../drivers/mfd/pcf50633-core.c", i32 134, i32 31}
!84 = !{ptr @pcf_sysfs_entries, !85, !"pcf_sysfs_entries", i1 false, i1 false}
!85 = !{!"../drivers/mfd/pcf50633-core.c", i32 128, i32 26}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/pcf50633-core.c", i32 109, i32 8}
!88 = !{ptr @dev_attr_dump_regs, !87, !"dev_attr_dump_regs", i1 false, i1 false}
!89 = !{ptr @dump_regs_show.address_no_read, !90, !"address_no_read", i1 false, i1 false}
!90 = !{!"../drivers/mfd/pcf50633-core.c", i32 87, i32 12}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mfd/pcf50633-core.c", i32 104, i32 25}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/pcf50633-core.c", i32 126, i32 8}
!95 = !{ptr @dev_attr_resume_reason, !94, !"dev_attr_resume_reason", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/pcf50633-core.c", i32 117, i32 19}
!98 = !{ptr @pcf50633_pm, !99, !"pcf50633_pm", i1 false, i1 false}
!99 = !{!"../drivers/mfd/pcf50633-core.c", i32 179, i32 8}
!100 = !{ptr @pcf50633_id_table, !101, !"pcf50633_id_table", i1 false, i1 false}
!101 = !{!"../drivers/mfd/pcf50633-core.c", i32 296, i32 35}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
