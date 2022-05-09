; ModuleID = '/llk/IR_all_yes/drivers/mfd/max14577.c_pt.bc'
source_filename = "../drivers/mfd/max14577.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+maxim_charger_currents\22, \22a\22\09"
module asm "\09.weak\09__crc_maxim_charger_currents\09\09\09\09"
module asm "\09.long\09__crc_maxim_charger_currents\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_maxim_charger_currents:\09\09\09\09\09"
module asm "\09.asciz \09\22maxim_charger_currents\22\09\09\09\09\09"
module asm "__kstrtabns_maxim_charger_currents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+maxim_charger_calc_reg_current\22, \22a\22\09"
module asm "\09.weak\09__crc_maxim_charger_calc_reg_current\09\09\09\09"
module asm "\09.long\09__crc_maxim_charger_calc_reg_current\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_maxim_charger_calc_reg_current:\09\09\09\09\09"
module asm "\09.asciz \09\22maxim_charger_calc_reg_current\22\09\09\09\09\09"
module asm "__kstrtabns_maxim_charger_calc_reg_current:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.maxim_charger_current = type { i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.max14577 = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }

@maxim_charger_currents = dso_local constant { [3 x %struct.maxim_charger_current], [48 x i8] } { [3 x %struct.maxim_charger_current] [%struct.maxim_charger_current zeroinitializer, %struct.maxim_charger_current { i32 90000, i32 200000, i32 50000, i32 950000 }, %struct.maxim_charger_current { i32 45000, i32 100000, i32 25000, i32 475000 }], [48 x i8] zeroinitializer }, align 32
@__kstrtab_maxim_charger_currents = external dso_local constant [0 x i8], align 1
@__kstrtabns_maxim_charger_currents = external dso_local constant [0 x i8], align 1
@__ksymtab_maxim_charger_currents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @maxim_charger_currents to i32), ptr @__kstrtab_maxim_charger_currents, ptr @__kstrtabns_maxim_charger_currents }, section "___ksymtab_gpl+maxim_charger_currents", align 4
@__kstrtab_maxim_charger_calc_reg_current = external dso_local constant [0 x i8], align 1
@__kstrtabns_maxim_charger_calc_reg_current = external dso_local constant [0 x i8], align 1
@__ksymtab_maxim_charger_calc_reg_current = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @maxim_charger_calc_reg_current to i32), ptr @__kstrtab_maxim_charger_calc_reg_current, ptr @__kstrtabns_maxim_charger_calc_reg_current }, section "___ksymtab_gpl+maxim_charger_calc_reg_current", align 4
@__initcall__kmod_max14577__297_554_max14577_i2c_init6 = internal global ptr @max14577_i2c_init, section ".initcall6.init", align 4
@max14577_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max14577_i2c_probe, ptr @max14577_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max14577_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max14577_pm, ptr null, ptr null }, ptr @max14577_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max14577_i2c_exit = internal global ptr @max14577_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [92 x i8] c"max14577.author=Chanwoo Choi <cw00.choi@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [66 x i8] c"max14577.description=Maxim 14577/77836 multi-function core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [35 x i8] c"max14577.file=drivers/mfd/max14577\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [21 x i8] c"max14577.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max14577\00", [23 x i8] zeroinitializer }, align 32
@max14577_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max14577\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max14577_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max14577_suspend, ptr @max14577_resume, ptr @max14577_suspend, ptr @max14577_resume, ptr @max14577_suspend, ptr @max14577_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max14577_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max14577\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max77836\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max14577_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No platform data found.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max14577_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/max14577.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max14577_i2c_probe._entry_ptr = internal global ptr @max14577_i2c_probe._entry, section ".printk_index", align 4
@max14577_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max14577_muic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @max14577_muic_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"max14577:395:(&max14577_muic_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@max14577_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@max14577_i2c_probe._entry_ptr.9 = internal global ptr @max14577_i2c_probe._entry.7, section ".printk_index", align 4
@max77836_devs = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.21, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.22, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.23, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.25, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.27, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@max14577_devs = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.30, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.31, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.32, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.34, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@max14577_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max14577_i2c_probe._entry_ptr.12 = internal global ptr @max14577_i2c_probe._entry.10, section ".printk_index", align 4
@max14577_print_dev_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read DEVICEID register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max14577_print_dev_type\00", [40 x i8] zeroinitializer }, align 32
@max14577_print_dev_type._entry_ptr = internal global ptr @max14577_print_dev_type._entry, section ".printk_index", align 4
@max14577_print_dev_type._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 283, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device type: %u (ID: 0x%x, vendor: 0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max14577_print_dev_type._entry_ptr.18 = internal global ptr @max14577_print_dev_type._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77836-muic\00", [18 x i8] zeroinitializer }, align 32
@max77836_muic_irqs = internal constant { [14 x %struct.regmap_irq], [104 x i8] } { [14 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }], [104 x i8] zeroinitializer }, align 32
@max77836_muic_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.19, i32 0, i32 0, ptr null, i32 0, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 3, ptr @max77836_muic_irqs, i32 14, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,max77836-muic\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77836-regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxim,max77836-regulator\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77836-charger\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"maxim,max77836-charger\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77836-battery\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"maxim,max77836-battery\00", [41 x i8] zeroinitializer }, align 32
@max14577_irqs = internal constant { [12 x %struct.regmap_irq], [112 x i8] } { [12 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }], [112 x i8] zeroinitializer }, align 32
@max14577_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 3, ptr @max14577_irqs, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max14577-muic\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,max14577-muic\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max14577-regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxim,max14577-regulator\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max14577-charger\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"maxim,max14577-charger\00", [41 x i8] zeroinitializer }, align 32
@max77836_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register PMIC I2C device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77836_init\00", [18 x i8] zeroinitializer }, align 32
@max77836_init._entry_ptr = internal global ptr @max77836_init._entry, section ".printk_index", align 4
@max77836_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77836_pmic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @max77836_muic_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 97, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"max14577:309:(&max77836_pmic_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@max77836_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate PMIC register map: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@max77836_init._entry_ptr.40 = internal global ptr @max77836_init._entry.38, section ".printk_index", align 4
@max77836_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read PMIC register\0A\00", [34 x i8] zeroinitializer }, align 32
@max77836_init._entry_ptr.43 = internal global ptr @max77836_init._entry.41, section ".printk_index", align 4
@max77836_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write PMIC register\0A\00", [33 x i8] zeroinitializer }, align 32
@max77836_init._entry_ptr.46 = internal global ptr @max77836_init._entry.44, section ".printk_index", align 4
@max77836_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request PMIC IRQ %d: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max77836_init._entry_ptr.49 = internal global ptr @max77836_init._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77836-pmic\00", [18 x i8] zeroinitializer }, align 32
@max77836_pmic_irqs = internal constant { [2 x %struct.regmap_irq], [56 x i8] } { [2 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@max77836_pmic_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.50, i32 0, i32 0, ptr null, i32 0, i32 36, i32 38, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77836_pmic_irqs, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"maxim_charger_currents\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 23, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"max14577_i2c_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 522, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 524, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"max14577_dt_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 134, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"max14577_pm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 520, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"max14577_i2c_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 478, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 381, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"max14577_muic_regmap_config\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 177, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 394, i32 21 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 398, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"max77836_devs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 115, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"max14577_devs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 100, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 436, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 272, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 282, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 240, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"max77836_muic_irqs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 219, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"max77836_muic_irq_chip\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 239, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 118, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 121, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 122, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 125, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 126, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 129, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 130, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"max14577_irqs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 191, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"max14577_irq_chip\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 209, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 102, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 103, i32 20 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 106, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 107, i32 20 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 110, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 111, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 303, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"max77836_pmic_regmap_config\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 184, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 308, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 312, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 321, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 330, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 339, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 255, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"max77836_pmic_irqs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 249, i32 32 }
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"max77836_pmic_irq_chip\00", align 1
@___asan_gen_.236 = private constant [26 x i8] c"../drivers/mfd/max14577.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 254, i32 37 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_max14577_i2c_exit, ptr @__initcall__kmod_max14577__297_554_max14577_i2c_init6, ptr @__ksymtab_maxim_charger_calc_reg_current, ptr @__ksymtab_maxim_charger_currents, ptr @max14577_i2c_exit, ptr @max14577_i2c_probe._entry, ptr @max14577_i2c_probe._entry.10, ptr @max14577_i2c_probe._entry.7, ptr @max14577_i2c_probe._entry_ptr, ptr @max14577_i2c_probe._entry_ptr.12, ptr @max14577_i2c_probe._entry_ptr.9, ptr @max14577_print_dev_type._entry, ptr @max14577_print_dev_type._entry.15, ptr @max14577_print_dev_type._entry_ptr, ptr @max14577_print_dev_type._entry_ptr.18, ptr @max77836_init._entry, ptr @max77836_init._entry.38, ptr @max77836_init._entry.41, ptr @max77836_init._entry.44, ptr @max77836_init._entry.47, ptr @max77836_init._entry_ptr, ptr @max77836_init._entry_ptr.40, ptr @max77836_init._entry_ptr.43, ptr @max77836_init._entry_ptr.46, ptr @max77836_init._entry_ptr.49, ptr @maxim_charger_currents, ptr @max14577_i2c_driver, ptr @.str, ptr @max14577_dt_match, ptr @max14577_pm, ptr @max14577_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max14577_i2c_probe._key, ptr @max14577_muic_regmap_config, ptr @.str.6, ptr @.str.8, ptr @max77836_devs, ptr @max14577_devs, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @max77836_muic_irqs, ptr @max77836_muic_irq_chip, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @max14577_irqs, ptr @max14577_irq_chip, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @max77836_init._key, ptr @max77836_pmic_regmap_config, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @max77836_pmic_irqs, ptr @max77836_pmic_irq_chip], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_charger_currents to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_devs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_devs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_print_dev_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_print_dev_type._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_muic_irqs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_muic_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_irqs to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_pmic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_pmic_irqs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_pmic_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @maxim_charger_calc_reg_current(ptr nocapture noundef readonly %limits, i32 noundef %min_ua, i32 noundef %max_ua, ptr nocapture noundef writeonly %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %min_ua, i32 %max_ua)
  %cmp = icmp ugt i32 %min_ua, %max_ua
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max = getelementptr inbounds %struct.maxim_charger_current, ptr %limits, i32 0, i32 3
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %min_ua)
  %cmp1 = icmp ult i32 %1, %min_ua
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %max_ua)
  %cmp2 = icmp ugt i32 %3, %max_ua
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %high_start = getelementptr inbounds %struct.maxim_charger_current, ptr %limits, i32 0, i32 1
  %4 = ptrtoint ptr %high_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %high_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_ua)
  %cmp5 = icmp ugt i32 %5, %max_ua
  br i1 %cmp5, label %if.end4.cleanup.sink.split_crit_edge, label %if.end7

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %max_ua)
  %sub = sub i32 %6, %5
  %high_step = getelementptr inbounds %struct.maxim_charger_current, ptr %limits, i32 0, i32 2
  %7 = ptrtoint ptr %high_step to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %high_step, align 4
  %div = udiv i32 %sub, %8
  %9 = trunc i32 %div to i8
  %conv11 = or i8 %9, 16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %if.end4.cleanup.sink.split_crit_edge
  %conv11.sink = phi i8 [ %conv11, %if.end7 ], [ 0, %if.end4.cleanup.sink.split_crit_edge ]
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11.sink, ptr %dst, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_i2c_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max14577_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max14577_i2c_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max14577_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #4 align 64 {
entry:
  %val.i.i130 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end7.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %platform_data, align 8
  br label %if.end11

if.end7:                                          ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %do.end, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %if.end7.thread
  %call.i129 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #8
  %tobool14.not = icmp eq ptr %call.i129, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i129, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %call.i129 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i129, align 4
  %i2c19 = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 1
  %7 = ptrtoint ptr %i2c19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c, ptr %i2c19, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq20 = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 8
  %10 = ptrtoint ptr %irq20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq20, align 4
  %call21 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max14577_muic_regmap_config, ptr noundef nonnull @max14577_i2c_probe._key, ptr noundef nonnull @.str.6) #8
  %regmap = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call21 to i32
  %13 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i129, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %12) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end16
  br i1 %tobool.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end31
  %call35 = tail call ptr @of_match_device(ptr noundef nonnull @max14577_dt_match, ptr noundef %dev) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then33.if.end40_crit_edge, label %if.then37

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call35, i32 0, i32 3
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %if.end40.sink.split

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.else, %if.then37
  %.sink = phi i32 [ %17, %if.then37 ], [ %19, %if.else ]
  %dev_type = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 3
  %20 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %dev_type, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.then33.if.end40_crit_edge
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i.i, align 4, !annotation !139
  %call.i.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %val.i.i) #8
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %call.i.i) #11
  br label %max14577_print_dev_type.exit

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %25, 7
  %28 = lshr i32 %25, 3
  %29 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i129, align 4
  %dev_type.i = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 3
  %31 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_type.i, align 4
  %conv10.i = and i32 %28, 31
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.16, i32 noundef %32, i32 noundef %conv10.i, i32 noundef %and.i) #11
  br label %max14577_print_dev_type.exit

max14577_print_dev_type.exit:                     ; preds = %if.end.i, %do.end.i
  %dev_type41 = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 3
  %33 = ptrtoint ptr %dev_type41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_type41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cond = icmp eq i32 %34, 2
  %max77836_muic_irq_chip.max14577_irq_chip = select i1 %cond, ptr @max77836_muic_irq_chip, ptr @max14577_irq_chip
  %max77836_devs.max14577_devs = select i1 %cond, ptr @max77836_devs, ptr @max14577_devs
  %. = select i1 %cond, i32 4, i32 3
  %.128 = select i1 %cond, i32 8320, i32 8192
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq20, align 4
  %irq_data = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 6
  %call45 = call i32 @regmap_add_irq_chip(ptr noundef %36, i32 noundef %38, i32 noundef %.128, i32 noundef 0, ptr noundef nonnull %max77836_muic_irq_chip.max14577_irq_chip, ptr noundef %irq_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp.not = icmp eq i32 %call45, 0
  br i1 %cmp.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %max14577_print_dev_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %40, i32 noundef %call45) #11
  br label %cleanup

if.end52:                                         ; preds = %max14577_print_dev_type.exit
  %41 = ptrtoint ptr %dev_type41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dev_type41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp54 = icmp eq i32 %42, 2
  br i1 %cmp54, label %if.then55, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  %43 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c19, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i, align 8
  %call.i131 = call ptr @i2c_new_dummy_device(ptr noundef %46, i16 noundef zeroext 35) #8
  %i2c_pmic.i = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 2
  %47 = ptrtoint ptr %i2c_pmic.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i131, ptr %i2c_pmic.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i132, label %if.end.i133

do.end.i132:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.35) #11
  %50 = ptrtoint ptr %i2c_pmic.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_pmic.i, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %max77836_init.exit

if.end.i133:                                      ; preds = %if.then55
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %call.i131, i32 0, i32 4, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i129, ptr %driver_data.i.i.i, align 4
  %54 = ptrtoint ptr %i2c_pmic.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c_pmic.i, align 4
  %call7.i = call ptr @__devm_regmap_init_i2c(ptr noundef %55, ptr noundef nonnull @max77836_pmic_regmap_config, ptr noundef nonnull @max77836_init._key, ptr noundef nonnull @.str.37) #8
  %regmap_pmic.i = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 5
  %56 = ptrtoint ptr %regmap_pmic.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i, ptr %regmap_pmic.i, align 4
  %cmp.i79.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.i, label %if.then10.i, label %if.end17.i

if.then10.i:                                      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %call7.i to i32
  %58 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.39, i32 noundef %57) #11
  br label %err.i

if.end17.i:                                       ; preds = %if.end.i133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i130) #8
  %60 = ptrtoint ptr %val.i.i130 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %val.i.i130, align 4, !annotation !139
  %call.i.i134 = call i32 @regmap_read(ptr noundef %call7.i, i32 noundef 35, ptr noundef nonnull %val.i.i130) #8
  %61 = ptrtoint ptr %val.i.i130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i.i130, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i130) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %cmp.i135 = icmp slt i32 %call.i.i134, 0
  br i1 %cmp.i135, label %do.end23.i, label %if.end25.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.42) #11
  br label %err.i

if.end25.i:                                       ; preds = %if.end17.i
  %65 = and i32 %62, 245
  %66 = ptrtoint ptr %regmap_pmic.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap_pmic.i, align 4
  %call.i81.i = call i32 @regmap_write(ptr noundef %67, i32 noundef 35, i32 noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp32.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.45) #11
  br label %err.i

if.end39.i:                                       ; preds = %if.end25.i
  %70 = ptrtoint ptr %regmap_pmic.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap_pmic.i, align 4
  %72 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq20, align 4
  %irq_data_pmic.i = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 7
  %call41.i = call i32 @regmap_add_irq_chip(ptr noundef %71, i32 noundef %73, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77836_pmic_irq_chip, ptr noundef %irq_data_pmic.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.not.i = icmp eq i32 %call41.i, 0
  br i1 %cmp42.not.i, label %if.end39.i.if.end60_crit_edge, label %do.end47.i

if.end39.i.if.end60_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end47.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i129, align 4
  %76 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.48, i32 noundef %77, i32 noundef %call41.i) #11
  br label %err.i

err.i:                                            ; preds = %do.end47.i, %do.end37.i, %do.end23.i, %if.then10.i
  %ret.0.i = phi i32 [ %57, %if.then10.i ], [ %call.i.i134, %do.end23.i ], [ %call.i81.i, %do.end37.i ], [ %call41.i, %do.end47.i ]
  %78 = ptrtoint ptr %i2c_pmic.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i2c_pmic.i, align 4
  call void @i2c_unregister_device(ptr noundef %79) #8
  br label %max77836_init.exit

max77836_init.exit:                               ; preds = %err.i, %do.end.i132
  %retval.0.i = phi i32 [ %52, %do.end.i132 ], [ %ret.0.i, %err.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp57 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp57, label %max77836_init.exit.err_max77836_crit_edge, label %max77836_init.exit.if.end60_crit_edge

max77836_init.exit.if.end60_crit_edge:            ; preds = %max77836_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

max77836_init.exit.err_max77836_crit_edge:        ; preds = %max77836_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_max77836

if.end60:                                         ; preds = %max77836_init.exit.if.end60_crit_edge, %if.end39.i.if.end60_crit_edge, %if.end52.if.end60_crit_edge
  %80 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i129, align 4
  %call62 = call i32 @mfd_add_devices(ptr noundef %81, i32 noundef -1, ptr noundef nonnull %max77836_devs.max14577_devs, i32 noundef %., ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %err_mfd, label %if.end65

if.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i129, align 4
  %call67 = call i32 @device_init_wakeup(ptr noundef %83, i1 noundef zeroext true) #8
  br label %cleanup

err_mfd:                                          ; preds = %if.end60
  %84 = ptrtoint ptr %dev_type41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dev_type41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp69 = icmp eq i32 %85, 2
  br i1 %cmp69, label %if.then70, label %err_mfd.err_max77836_crit_edge

err_mfd.err_max77836_crit_edge:                   ; preds = %err_mfd
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_max77836

if.then70:                                        ; preds = %err_mfd
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq20, align 4
  %irq_data_pmic.i137 = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 7
  %88 = ptrtoint ptr %irq_data_pmic.i137 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %irq_data_pmic.i137, align 4
  call void @regmap_del_irq_chip(i32 noundef %87, ptr noundef %89) #8
  %i2c_pmic.i138 = getelementptr inbounds %struct.max14577, ptr %call.i129, i32 0, i32 2
  %90 = ptrtoint ptr %i2c_pmic.i138 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c_pmic.i138, align 4
  call void @i2c_unregister_device(ptr noundef %91) #8
  br label %err_max77836

err_max77836:                                     ; preds = %if.then70, %err_mfd.err_max77836_crit_edge, %max77836_init.exit.err_max77836_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %max77836_init.exit.err_max77836_crit_edge ], [ %call62, %if.then70 ], [ %call62, %err_mfd.err_max77836_crit_edge ]
  %92 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq20, align 4
  %94 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %irq_data, align 4
  call void @regmap_del_irq_chip(i32 noundef %93, ptr noundef %95) #8
  br label %cleanup

cleanup:                                          ; preds = %err_max77836, %if.end65, %do.end49, %if.then24, %if.end11.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then24 ], [ %call45, %do.end49 ], [ %ret.0, %err_max77836 ], [ 0, %if.end65 ], [ -22, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_i2c_remove(ptr nocapture noundef readonly %i2c) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mfd_remove_devices(ptr noundef %3) #8
  %irq = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #8
  %dev_type = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %irq_data_pmic.i = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %irq_data_pmic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_data_pmic.i, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %11, ptr noundef %13) #8
  %i2c_pmic.i = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %i2c_pmic.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_pmic.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max14577_muic_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 6
  ret i1 %switch
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max77836_muic_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off.i = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg.off.i)
  %switch.i = icmp ult i32 %reg.off.i, 6
  br i1 %switch.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %reg, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 19
  br i1 %0, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %switch.tableidx to i19
  %switch.downshift = lshr i19 -241613, %switch.cast
  %1 = and i19 %switch.downshift, 1
  %switch.masked = icmp ne i19 %1, 0
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %switch.masked, %switch.lookup ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %irq3 = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq3, align 4
  tail call void @disable_irq(i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %irq3 = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq3, align 4
  tail call void @enable_irq(i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @maxim_charger_currents, !1, !"maxim_charger_currents", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max14577.c", i32 23, i32 36}
!2 = !{ptr @__ksymtab_maxim_charger_currents, !3, !"__ksymtab_maxim_charger_currents", i1 false, i1 false}
!3 = !{!"../drivers/mfd/max14577.c", i32 38, i32 1}
!4 = !{ptr @__ksymtab_maxim_charger_calc_reg_current, !5, !"__ksymtab_maxim_charger_calc_reg_current", i1 false, i1 false}
!5 = !{!"../drivers/mfd/max14577.c", i32 98, i32 1}
!6 = !{ptr @__initcall__kmod_max14577__297_554_max14577_i2c_init6, !7, !"__initcall__kmod_max14577__297_554_max14577_i2c_init6", i1 false, i1 false}
!7 = !{!"../drivers/mfd/max14577.c", i32 554, i32 1}
!8 = !{ptr @__exitcall_max14577_i2c_exit, !9, !"__exitcall_max14577_i2c_exit", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max14577.c", i32 560, i32 1}
!10 = !{ptr @__UNIQUE_ID_author298, !11, !"__UNIQUE_ID_author298", i1 false, i1 false}
!11 = !{!"../drivers/mfd/max14577.c", i32 562, i32 1}
!12 = !{ptr @__UNIQUE_ID_description299, !13, !"__UNIQUE_ID_description299", i1 false, i1 false}
!13 = !{!"../drivers/mfd/max14577.c", i32 563, i32 1}
!14 = !{ptr @__UNIQUE_ID_file300, !15, !"__UNIQUE_ID_file300", i1 false, i1 false}
!15 = !{!"../drivers/mfd/max14577.c", i32 564, i32 1}
!16 = !{ptr @__UNIQUE_ID_license301, !15, !"__UNIQUE_ID_license301", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/max14577.c", i32 524, i32 11}
!19 = !{ptr @max14577_i2c_driver, !20, !"max14577_i2c_driver", i1 false, i1 false}
!20 = !{!"../drivers/mfd/max14577.c", i32 522, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/max14577.c", i32 381, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max14577_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @max14577_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @max14577_i2c_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/mfd/max14577.c", i32 394, i32 21}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/max14577.c", i32 398, i32 3}
!34 = !{ptr @max14577_i2c_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @max14577_i2c_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/max14577.c", i32 436, i32 3}
!38 = !{ptr @max14577_i2c_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max14577_i2c_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @max14577_muic_regmap_config, !41, !"max14577_muic_regmap_config", i1 false, i1 false}
!41 = !{!"../drivers/mfd/max14577.c", i32 177, i32 35}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/max14577.c", i32 272, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @max14577_print_dev_type._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @max14577_print_dev_type._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/max14577.c", i32 282, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @max14577_print_dev_type._entry.15, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @max14577_print_dev_type._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/max14577.c", i32 240, i32 12}
!54 = !{ptr @max77836_muic_irq_chip, !55, !"max77836_muic_irq_chip", i1 false, i1 false}
!55 = !{!"../drivers/mfd/max14577.c", i32 239, i32 37}
!56 = !{ptr @max77836_muic_irqs, !57, !"max77836_muic_irqs", i1 false, i1 false}
!57 = !{!"../drivers/mfd/max14577.c", i32 219, i32 32}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/max14577.c", i32 118, i32 20}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/max14577.c", i32 121, i32 11}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/max14577.c", i32 122, i32 20}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/max14577.c", i32 125, i32 11}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/max14577.c", i32 126, i32 20}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/max14577.c", i32 129, i32 11}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/max14577.c", i32 130, i32 20}
!72 = !{ptr @max77836_devs, !73, !"max77836_devs", i1 false, i1 false}
!73 = !{!"../drivers/mfd/max14577.c", i32 115, i32 30}
!74 = !{ptr @max14577_irq_chip, !75, !"max14577_irq_chip", i1 false, i1 false}
!75 = !{!"../drivers/mfd/max14577.c", i32 209, i32 37}
!76 = !{ptr @max14577_irqs, !77, !"max14577_irqs", i1 false, i1 false}
!77 = !{!"../drivers/mfd/max14577.c", i32 191, i32 32}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/max14577.c", i32 102, i32 11}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/max14577.c", i32 103, i32 20}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/max14577.c", i32 106, i32 11}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/max14577.c", i32 107, i32 20}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/max14577.c", i32 110, i32 11}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/max14577.c", i32 111, i32 20}
!90 = !{ptr @max14577_devs, !91, !"max14577_devs", i1 false, i1 false}
!91 = !{!"../drivers/mfd/max14577.c", i32 100, i32 30}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/max14577.c", i32 303, i32 3}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @max77836_init._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @max77836_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @max77836_init._key, !98, !"_key", i1 false, i1 false}
!98 = !{!"../drivers/mfd/max14577.c", i32 308, i32 26}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/max14577.c", i32 312, i32 3}
!102 = !{ptr @max77836_init._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @max77836_init._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mfd/max14577.c", i32 321, i32 3}
!106 = !{ptr @max77836_init._entry.41, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @max77836_init._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/max14577.c", i32 330, i32 3}
!110 = !{ptr @max77836_init._entry.44, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @max77836_init._entry_ptr.46, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mfd/max14577.c", i32 339, i32 3}
!114 = !{ptr @max77836_init._entry.47, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @max77836_init._entry_ptr.49, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @max77836_pmic_regmap_config, !117, !"max77836_pmic_regmap_config", i1 false, i1 false}
!117 = !{!"../drivers/mfd/max14577.c", i32 184, i32 35}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mfd/max14577.c", i32 255, i32 12}
!120 = !{ptr @max77836_pmic_irq_chip, !121, !"max77836_pmic_irq_chip", i1 false, i1 false}
!121 = !{!"../drivers/mfd/max14577.c", i32 254, i32 37}
!122 = !{ptr @max77836_pmic_irqs, !123, !"max77836_pmic_irqs", i1 false, i1 false}
!123 = !{!"../drivers/mfd/max14577.c", i32 249, i32 32}
!124 = !{ptr @max14577_dt_match, !125, !"max14577_dt_match", i1 false, i1 false}
!125 = !{!"../drivers/mfd/max14577.c", i32 134, i32 34}
!126 = !{ptr @max14577_pm, !127, !"max14577_pm", i1 false, i1 false}
!127 = !{!"../drivers/mfd/max14577.c", i32 520, i32 8}
!128 = !{ptr @max14577_i2c_id, !129, !"max14577_i2c_id", i1 false, i1 false}
!129 = !{!"../drivers/mfd/max14577.c", i32 478, i32 35}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
