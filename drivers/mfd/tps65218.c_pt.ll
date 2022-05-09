; ModuleID = '/llk/IR_all_yes/drivers/mfd/tps65218.c_pt.bc'
source_filename = "../drivers/mfd/tps65218.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tps65218_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65218_reg_write\09\09\09\09"
module asm "\09.long\09__crc_tps65218_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65218_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65218_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_tps65218_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tps65218_set_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65218_set_bits\09\09\09\09"
module asm "\09.long\09__crc_tps65218_set_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65218_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65218_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65218_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tps65218_clear_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65218_clear_bits\09\09\09\09"
module asm "\09.long\09__crc_tps65218_clear_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65218_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65218_clear_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65218_clear_bits:\09\09\09\09\09"
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
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tps65218 = type { ptr, i32, i8, %struct.mutex, i32, i32, ptr, [9 x %struct.regulator_desc], ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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

@__kstrtab_tps65218_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65218_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65218_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65218_reg_write to i32), ptr @__kstrtab_tps65218_reg_write, ptr @__kstrtabns_tps65218_reg_write }, section "___ksymtab_gpl+tps65218_reg_write", align 4
@__kstrtab_tps65218_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65218_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65218_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65218_set_bits to i32), ptr @__kstrtab_tps65218_set_bits, ptr @__kstrtabns_tps65218_set_bits }, section "___ksymtab_gpl+tps65218_set_bits", align 4
@__kstrtab_tps65218_clear_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65218_clear_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65218_clear_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65218_clear_bits to i32), ptr @__kstrtab_tps65218_clear_bits, ptr @__kstrtabns_tps65218_clear_bits }, section "___ksymtab_gpl+tps65218_clear_bits", align 4
@__initcall__kmod_tps65218__288_363_tps65218_driver_init6 = internal global ptr @tps65218_driver_init, section ".initcall6.init", align 4
@tps65218_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tps65218_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_tps65218_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65218_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps65218_driver_exit = internal global ptr @tps65218_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [45 x i8] c"tps65218.author=J Keerthy <j-keerthy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"tps65218.description=TPS65218 chip family multi-function driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"tps65218.file=drivers/mfd/tps65218\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"tps65218.license=GPL v2\00", section ".modinfo", align 1
@tps65218_update_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read from reg 0x%x failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tps65218_update_bits\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/tps65218.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65218_update_bits._entry_ptr = internal global ptr @tps65218_update_bits._entry, section ".printk_index", align 4
@tps65218_update_bits._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write for reg 0x%x failed\0A\00", [37 x i8] zeroinitializer }, align 32
@tps65218_update_bits._entry_ptr.7 = internal global ptr @tps65218_update_bits._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps65218\00", [23 x i8] zeroinitializer }, align 32
@of_tps65218_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tps65218_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps65218\00\00\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tps65218_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps65218_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @tps65218_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tps65218:305:(&tps65218_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@tps65218_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tps65218_probe\00", [17 x i8] zeroinitializer }, align 32
@tps65218_probe._entry_ptr = internal global ptr @tps65218_probe._entry, section ".printk_index", align 4
@tps65218_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tps->tps_lock\00", [17 x i8] zeroinitializer }, align 32
@tps65218_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read chipid: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tps65218_probe._entry_ptr.15 = internal global ptr @tps65218_probe._entry.13, section ".printk_index", align 4
@tps65218_cells = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.27, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.29, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@tps65218_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tps65218_yes_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tps65218_yes_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 2 }, %struct.regmap_range { i32 5, i32 5 }], [16 x i8] zeroinitializer }, align 32
@tps65218_irqs = internal constant { [16 x %struct.regmap_irq], [128 x i8] } { [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer], [128 x i8] zeroinitializer }, align 32
@tps65218_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.8, i32 0, i32 0, ptr null, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 2, ptr @tps65218_irqs, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ti,strict-supply-voltage-supervision\00", [59 x i8] zeroinitializer }, align 32
@tps65218_voltage_set_strict._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid ti,strict-supply-voltage-supervision value\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tps65218_voltage_set_strict\00", [36 x i8] zeroinitializer }, align 32
@tps65218_voltage_set_strict._entry_ptr = internal global ptr @tps65218_voltage_set_strict._entry, section ".printk_index", align 4
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ti,under-voltage-limit-microvolt\00", [63 x i8] zeroinitializer }, align 32
@tps65218_voltage_set_uvlo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid ti,under-voltage-limit-microvolt value\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tps65218_voltage_set_uvlo\00", [38 x i8] zeroinitializer }, align 32
@tps65218_voltage_set_uvlo._entry_ptr = internal global ptr @tps65218_voltage_set_uvlo._entry, section ".printk_index", align 4
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ti,under-voltage-hyst-microvolt\00", [32 x i8] zeroinitializer }, align 32
@tps65218_voltage_set_uv_hyst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid ti,under-voltage-hyst-microvolt value\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tps65218_voltage_set_uv_hyst\00", [35 x i8] zeroinitializer }, align 32
@tps65218_voltage_set_uv_hyst._entry_ptr = internal global ptr @tps65218_voltage_set_uv_hyst._entry, section ".printk_index", align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65218-pwrbutton\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,tps65218-pwrbutton\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65218-gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,tps65218-gpio\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65218-regulator\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 2750000, i64 2950000, i64 3250000, i64 3350000]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 200000, i64 400000]
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"tps65218_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 354, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 96, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 106, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 356, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"of_tps65218_match_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 208, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"tps65218_id_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 348, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"tps65218_regmap_config\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 136, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 305, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 308, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 313, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 323, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"tps65218_cells\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 36, i32 30 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"tps65218_volatile_table\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 131, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"tps65218_yes_ranges\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 126, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"tps65218_irqs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 143, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"tps65218_irq_chip\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 198, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 219, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 224, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 263, i32 6 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 280, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 241, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 245, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 38, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 39, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 42, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 43, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [26 x i8] c"../drivers/mfd/tps65218.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 45, i32 12 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps65218_driver_exit, ptr @__initcall__kmod_tps65218__288_363_tps65218_driver_init6, ptr @__ksymtab_tps65218_clear_bits, ptr @__ksymtab_tps65218_reg_write, ptr @__ksymtab_tps65218_set_bits, ptr @tps65218_driver_exit, ptr @tps65218_probe._entry, ptr @tps65218_probe._entry.13, ptr @tps65218_probe._entry_ptr, ptr @tps65218_probe._entry_ptr.15, ptr @tps65218_update_bits._entry, ptr @tps65218_update_bits._entry.5, ptr @tps65218_update_bits._entry_ptr, ptr @tps65218_update_bits._entry_ptr.7, ptr @tps65218_voltage_set_strict._entry, ptr @tps65218_voltage_set_strict._entry_ptr, ptr @tps65218_voltage_set_uv_hyst._entry, ptr @tps65218_voltage_set_uv_hyst._entry_ptr, ptr @tps65218_voltage_set_uvlo._entry, ptr @tps65218_voltage_set_uvlo._entry_ptr, ptr @tps65218_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @of_tps65218_match_table, ptr @tps65218_id_table, ptr @tps65218_probe._key, ptr @tps65218_regmap_config, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tps65218_probe.__key, ptr @.str.12, ptr @.str.14, ptr @tps65218_cells, ptr @tps65218_volatile_table, ptr @tps65218_yes_ranges, ptr @tps65218_irqs, ptr @tps65218_irq_chip, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_update_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_update_bits._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_tps65218_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_cells to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_yes_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_irqs to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_voltage_set_strict._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_voltage_set_uvlo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_voltage_set_uv_hyst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65218_reg_write(ptr nocapture noundef readonly %tps, i32 noundef %reg, i32 noundef %val, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.tps65218, ptr %tps, i32 0, i32 8
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  %xor = xor i32 %reg, 125
  %regmap2 = getelementptr inbounds %struct.tps65218, ptr %tps, i32 0, i32 8
  %1 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap2, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 16, i32 noundef %xor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.cleanup.sink.split_crit_edge

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb1.cleanup.sink.split_crit_edge, %sw.bb
  %regmap2.sink = phi ptr [ %regmap, %sw.bb ], [ %regmap2, %sw.bb1.cleanup.sink.split_crit_edge ]
  %3 = ptrtoint ptr %regmap2.sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap2.sink, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %reg, i32 noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65218_set_bits(ptr noundef %tps, i32 noundef %reg, i32 noundef %mask, i32 noundef %val, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tps65218_update_bits(ptr noundef %tps, i32 noundef %reg, i32 noundef %mask, i32 noundef %val, i32 noundef %level)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps65218_update_bits(ptr noundef %tps, i32 noundef %reg, i32 noundef %mask, i32 noundef %val, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !103
  %regmap = getelementptr inbounds %struct.tps65218, ptr %tps, i32 0, i32 8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %reg, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %reg) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i32 %mask, -1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %and = and i32 %6, %neg
  %and1 = and i32 %val, %mask
  %or = or i32 %and, %and1
  store i32 %or, ptr %data, align 4
  %tps_lock = getelementptr inbounds %struct.tps65218, ptr %tps, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %tps_lock, i32 noundef 0) #5
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %9 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %level, label %if.end.do.end7_crit_edge [
    i32 0, label %if.end.tps65218_reg_write.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end.tps65218_reg_write.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65218_reg_write.exit

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

sw.bb1.i:                                         ; preds = %if.end
  %xor.i = xor i32 %reg, 125
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 16, i32 noundef %xor.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %sw.bb1.i.do.end7_crit_edge, label %sw.bb1.i.tps65218_reg_write.exit_crit_edge

sw.bb1.i.tps65218_reg_write.exit_crit_edge:       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65218_reg_write.exit

sw.bb1.i.do.end7_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

tps65218_reg_write.exit:                          ; preds = %sw.bb1.i.tps65218_reg_write.exit_crit_edge, %if.end.tps65218_reg_write.exit_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call5.i = call i32 @regmap_write(ptr noundef %13, i32 noundef %reg, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool3.not = icmp eq i32 %call5.i, 0
  br i1 %tobool3.not, label %tps65218_reg_write.exit.if.end9_crit_edge, label %tps65218_reg_write.exit.do.end7_crit_edge

tps65218_reg_write.exit.do.end7_crit_edge:        ; preds = %tps65218_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

tps65218_reg_write.exit.if.end9_crit_edge:        ; preds = %tps65218_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end7:                                          ; preds = %tps65218_reg_write.exit.do.end7_crit_edge, %sw.bb1.i.do.end7_crit_edge, %if.end.do.end7_crit_edge
  %retval.0.i26 = phi i32 [ %call5.i, %tps65218_reg_write.exit.do.end7_crit_edge ], [ -22, %if.end.do.end7_crit_edge ], [ %call3.i, %sw.bb1.i.do.end7_crit_edge ]
  %14 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %reg) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %tps65218_reg_write.exit.if.end9_crit_edge
  %retval.0.i27 = phi i32 [ %retval.0.i26, %do.end7 ], [ 0, %tps65218_reg_write.exit.if.end9_crit_edge ]
  call void @mutex_unlock(ptr noundef %tps_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i27, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65218_clear_bits(ptr noundef %tps, i32 noundef %reg, i32 noundef %mask, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tps65218_update_bits(ptr noundef %tps, i32 noundef %reg, i32 noundef %mask, i32 noundef 0, i32 noundef %level)
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps65218_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65218_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tps65218_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_probe(ptr noundef %client, ptr nocapture noundef readnone %ids) #0 align 64 {
entry:
  %hyst.i = alloca i32, align 4
  %uvlo.i = alloca i32, align 4
  %strict.i = alloca i32, align 4
  %chipid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid) #5
  %0 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chipid, align 4, !annotation !103
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2320, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.tps65218, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq3, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tps65218_regmap_config, ptr noundef nonnull @tps65218_probe._key, ptr noundef nonnull @.str.9) #5
  %regmap = getelementptr inbounds %struct.tps65218, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %do.body12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call4 to i32
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %7) #8
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %tps_lock = getelementptr inbounds %struct.tps65218, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %tps_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @tps65218_probe.__key) #5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq3, align 4
  %irq_data = getelementptr inbounds %struct.tps65218, ptr %call.i, i32 0, i32 6
  %call18 = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %dev, ptr noundef %11, i32 noundef %13, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull @tps65218_irq_chip, ptr noundef %irq_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %do.body12.cleanup_crit_edge, label %if.end20

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %do.body12
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call22 = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %chipid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %call22) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chipid, align 4
  %20 = trunc i32 %19 to i8
  %conv = and i8 %20, 7
  %rev = getelementptr inbounds %struct.tps65218, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %rev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strict.i) #5
  %22 = ptrtoint ptr %strict.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %strict.i, align 4, !annotation !103
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.17, ptr noundef nonnull %strict.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end.i:                                         ; preds = %if.end29
  %27 = ptrtoint ptr %strict.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %strict.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch.i = icmp ult i32 %28, 2
  br i1 %switch.i, label %if.end4.i, label %tps65218_voltage_set_strict.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not.i = icmp eq i32 %28, 0
  %cond.i = select i1 %tobool5.not.i, i32 0, i32 4
  %call6.i = call fastcc i32 @tps65218_update_bits(ptr noundef nonnull %call.i, i32 noundef 19, i32 noundef 4, i32 noundef %cond.i, i32 noundef 1) #5
  br label %if.end33

tps65218_voltage_set_strict.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strict.i) #5
  br label %cleanup

if.end33:                                         ; preds = %if.end4.i, %if.end29.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strict.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uvlo.i) #5
  %31 = ptrtoint ptr %uvlo.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %uvlo.i, align 4, !annotation !103
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %of_node.i85 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %of_node.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node.i85, align 8
  %call.i.i.i86 = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.20, ptr noundef nonnull %uvlo.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i86)
  %tobool.not.i87 = icmp sgt i32 %call.i.i.i86, -1
  br i1 %tobool.not.i87, label %if.end.i88, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end.i88:                                       ; preds = %if.end33
  %36 = ptrtoint ptr %uvlo.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %uvlo.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %37, label %tps65218_voltage_set_uvlo.exit [
    i32 2750000, label %if.end.i88.sw.epilog.i_crit_edge
    i32 2950000, label %sw.bb1.i
    i32 3250000, label %sw.bb2.i
    i32 3350000, label %sw.bb3.i
  ]

if.end.i88.sw.epilog.i_crit_edge:                 ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.i88.sw.epilog.i_crit_edge
  %uvloval.0.i = phi i32 [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.end.i88.sw.epilog.i_crit_edge ]
  %call5.i = call fastcc i32 @tps65218_update_bits(ptr noundef nonnull %call.i, i32 noundef 19, i32 noundef 3, i32 noundef %uvloval.0.i, i32 noundef 1) #5
  br label %if.end37

tps65218_voltage_set_uvlo.exit:                   ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uvlo.i) #5
  br label %cleanup

if.end37:                                         ; preds = %sw.epilog.i, %if.end33.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uvlo.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hyst.i) #5
  %41 = ptrtoint ptr %hyst.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %hyst.i, align 4, !annotation !103
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %of_node.i91 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %of_node.i91 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node.i91, align 8
  %call.i.i.i92 = call i32 @of_property_read_variable_u32_array(ptr noundef %45, ptr noundef nonnull @.str.23, ptr noundef nonnull %hyst.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i92)
  %tobool.not.i93 = icmp sgt i32 %call.i.i.i92, -1
  br i1 %tobool.not.i93, label %if.end.i94, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end.i94:                                       ; preds = %if.end37
  %46 = ptrtoint ptr %hyst.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hyst.i, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %47, label %tps65218_voltage_set_uv_hyst.exit [
    i32 400000, label %if.end.i94.if.end4.i98_crit_edge
    i32 200000, label %if.end.i94.if.end4.i98_crit_edge106
  ]

if.end.i94.if.end4.i98_crit_edge106:              ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i98

if.end.i94.if.end4.i98_crit_edge:                 ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i98

if.end4.i98:                                      ; preds = %if.end.i94.if.end4.i98_crit_edge, %if.end.i94.if.end4.i98_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %47)
  %cmp5.i = icmp eq i32 %47, 400000
  %cond.i96 = select i1 %cmp5.i, i32 64, i32 0
  %call6.i97 = call fastcc i32 @tps65218_update_bits(ptr noundef nonnull %call.i, i32 noundef 20, i32 noundef 64, i32 noundef %cond.i96, i32 noundef 1) #5
  br label %if.end41

tps65218_voltage_set_uv_hyst.exit:                ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hyst.i) #5
  br label %cleanup

if.end41:                                         ; preds = %if.end4.i98, %if.end37.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hyst.i) #5
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %53 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %irq_data, align 4
  %call44 = call ptr @regmap_irq_get_domain(ptr noundef %54) #5
  %call45 = call i32 @mfd_add_devices(ptr noundef %52, i32 noundef -2, ptr noundef nonnull @tps65218_cells, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef %call44) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %tps65218_voltage_set_uv_hyst.exit, %tps65218_voltage_set_uvlo.exit, %tps65218_voltage_set_strict.exit, %do.end27, %do.body12.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then7 ], [ %call22, %do.end27 ], [ %call45, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %do.body12.cleanup_crit_edge ], [ -22, %tps65218_voltage_set_strict.exit ], [ -22, %tps65218_voltage_set_uvlo.exit ], [ -22, %tps65218_voltage_set_uv_hyst.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__ksymtab_tps65218_reg_write, !1, !"__ksymtab_tps65218_reg_write", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tps65218.c", i32 77, i32 1}
!2 = !{ptr @__ksymtab_tps65218_set_bits, !3, !"__ksymtab_tps65218_set_bits", i1 false, i1 false}
!3 = !{!"../drivers/mfd/tps65218.c", i32 117, i32 1}
!4 = !{ptr @__ksymtab_tps65218_clear_bits, !5, !"__ksymtab_tps65218_clear_bits", i1 false, i1 false}
!5 = !{!"../drivers/mfd/tps65218.c", i32 124, i32 1}
!6 = !{ptr @__initcall__kmod_tps65218__288_363_tps65218_driver_init6, !7, !"__initcall__kmod_tps65218__288_363_tps65218_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/mfd/tps65218.c", i32 363, i32 1}
!8 = !{ptr @__exitcall_tps65218_driver_exit, !7, !"__exitcall_tps65218_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author289, !10, !"__UNIQUE_ID_author289", i1 false, i1 false}
!10 = !{!"../drivers/mfd/tps65218.c", i32 365, i32 1}
!11 = !{ptr @__UNIQUE_ID_description290, !12, !"__UNIQUE_ID_description290", i1 false, i1 false}
!12 = !{!"../drivers/mfd/tps65218.c", i32 366, i32 1}
!13 = !{ptr @__UNIQUE_ID_file291, !14, !"__UNIQUE_ID_file291", i1 false, i1 false}
!14 = !{!"../drivers/mfd/tps65218.c", i32 367, i32 1}
!15 = !{ptr @__UNIQUE_ID_license292, !14, !"__UNIQUE_ID_license292", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/tps65218.c", i32 96, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tps65218_update_bits._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tps65218_update_bits._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/tps65218.c", i32 106, i32 3}
!26 = !{ptr @tps65218_update_bits._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tps65218_update_bits._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/tps65218.c", i32 356, i32 11}
!30 = !{ptr @tps65218_driver, !31, !"tps65218_driver", i1 false, i1 false}
!31 = !{!"../drivers/mfd/tps65218.c", i32 354, i32 26}
!32 = !{ptr @tps65218_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/mfd/tps65218.c", i32 305, i32 16}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/tps65218.c", i32 308, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tps65218_probe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @tps65218_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tps65218_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/mfd/tps65218.c", i32 313, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/tps65218.c", i32 323, i32 3}
!45 = !{ptr @tps65218_probe._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tps65218_probe._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @tps65218_regmap_config, !48, !"tps65218_regmap_config", i1 false, i1 false}
!48 = !{!"../drivers/mfd/tps65218.c", i32 136, i32 35}
!49 = !{ptr @tps65218_volatile_table, !50, !"tps65218_volatile_table", i1 false, i1 false}
!50 = !{!"../drivers/mfd/tps65218.c", i32 131, i32 41}
!51 = !{ptr @tps65218_yes_ranges, !52, !"tps65218_yes_ranges", i1 false, i1 false}
!52 = !{!"../drivers/mfd/tps65218.c", i32 126, i32 34}
!53 = !{ptr @tps65218_irq_chip, !54, !"tps65218_irq_chip", i1 false, i1 false}
!54 = !{!"../drivers/mfd/tps65218.c", i32 198, i32 31}
!55 = !{ptr @tps65218_irqs, !56, !"tps65218_irqs", i1 false, i1 false}
!56 = !{!"../drivers/mfd/tps65218.c", i32 143, i32 32}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/tps65218.c", i32 219, i32 6}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/tps65218.c", i32 224, i32 3}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tps65218_voltage_set_strict._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @tps65218_voltage_set_strict._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/tps65218.c", i32 263, i32 6}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/tps65218.c", i32 280, i32 3}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tps65218_voltage_set_uvlo._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @tps65218_voltage_set_uvlo._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/tps65218.c", i32 241, i32 6}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/tps65218.c", i32 245, i32 3}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tps65218_voltage_set_uv_hyst._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @tps65218_voltage_set_uv_hyst._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/tps65218.c", i32 38, i32 11}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/tps65218.c", i32 39, i32 20}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/tps65218.c", i32 42, i32 11}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/tps65218.c", i32 43, i32 20}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/tps65218.c", i32 45, i32 12}
!88 = !{ptr @tps65218_cells, !89, !"tps65218_cells", i1 false, i1 false}
!89 = !{!"../drivers/mfd/tps65218.c", i32 36, i32 30}
!90 = !{ptr @of_tps65218_match_table, !91, !"of_tps65218_match_table", i1 false, i1 false}
!91 = !{!"../drivers/mfd/tps65218.c", i32 208, i32 34}
!92 = !{ptr @tps65218_id_table, !93, !"tps65218_id_table", i1 false, i1 false}
!93 = !{!"../drivers/mfd/tps65218.c", i32 348, i32 35}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
