; ModuleID = '/llk/IR_all_yes/drivers/mfd/axp20x.c_pt.bc'
source_filename = "../drivers/mfd/axp20x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+axp20x_match_device\22, \22a\22\09"
module asm "\09.weak\09__crc_axp20x_match_device\09\09\09\09"
module asm "\09.long\09__crc_axp20x_match_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_axp20x_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22axp20x_match_device\22\09\09\09\09\09"
module asm "__kstrtabns_axp20x_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+axp20x_device_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_axp20x_device_probe\09\09\09\09"
module asm "\09.long\09__crc_axp20x_device_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_axp20x_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22axp20x_device_probe\22\09\09\09\09\09"
module asm "__kstrtabns_axp20x_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+axp20x_device_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_axp20x_device_remove\09\09\09\09"
module asm "\09.long\09__crc_axp20x_device_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_axp20x_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22axp20x_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_axp20x_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.78 }
%union.anon.78 = type { %union.anon.79 }
%union.anon.79 = type { [1 x i64] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }

@axp20x_match_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 848, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to match OF ID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axp20x_match_device\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mfd/axp20x.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_match_device._entry_ptr = internal global ptr @axp20x_match_device._entry, section ".printk_index", align 4
@axp20x_match_device._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 855, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to match ACPI ID and data\0A\00", [62 x i8] zeroinitializer }, align 32
@axp20x_match_device._entry_ptr.7 = internal global ptr @axp20x_match_device._entry.5, section ".printk_index", align 4
@axp152_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp152_pek_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@axp152_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 157, ptr @axp152_writeable_table, ptr null, ptr @axp152_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@axp20x_cells = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.31, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp20x_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.34, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.38, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.40, i64 0, i8 0, ptr null, i32 4, ptr @axp20x_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@axp20x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 207, ptr @axp20x_writeable_table, ptr null, ptr @axp20x_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@axp221_cells = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.52, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.53, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.54, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.55, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], [144 x i8] zeroinitializer }, align 32
@axp22x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 230, ptr @axp22x_writeable_table, ptr null, ptr @axp22x_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@axp223_cells = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.52, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.54, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.53, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.58, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], [144 x i8] zeroinitializer }, align 32
@axp288_cells = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.59, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @axp288_adc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.60, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 4, ptr @axp288_extcon_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.61, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 9, ptr @axp288_charger_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.62, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @axp288_fuel_gauge_sw_node, ptr null, i64 0, i8 0, ptr null, i32 6, ptr @axp288_fuel_gauge_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp288_power_button_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.63, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [144 x i8] zeroinitializer }, align 32
@axp288_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 237, ptr @axp288_writeable_table, ptr null, ptr @axp288_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@axp803_cells = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp803_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.69, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.70, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.71, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.72, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.73, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.74, i64 0, i8 0, ptr null, i32 2, ptr @axp803_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"x-powers,self-working-mode\00", [37 x i8] zeroinitializer }, align 32
@axp806_self_working_cells = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp806_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@axp806_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.32, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@axp806_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr @axp806_writeable_table, ptr null, ptr @axp806_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@axp809_cells = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp809_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@axp813_cells = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp803_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.69, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.70, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.71, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.72, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.73, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.74, i64 0, i8 0, ptr null, i32 2, ptr @axp803_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@axp20x_match_device._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 937, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported AXP20X ID %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@axp20x_match_device._entry_ptr.11 = internal global ptr @axp20x_match_device._entry.9, section ".printk_index", align 4
@axp20x_match_device._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 941, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AXP20x variant %s found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@axp20x_match_device._entry_ptr.15 = internal global ptr @axp20x_match_device._entry.12, section ".printk_index", align 4
@axp20x_model_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], [56 x i8] zeroinitializer }, align 32
@__kstrtab_axp20x_match_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_axp20x_match_device = external dso_local constant [0 x i8], align 1
@__ksymtab_axp20x_match_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @axp20x_match_device to i32), ptr @__kstrtab_axp20x_match_device, ptr @__kstrtabns_axp20x_match_device }, section "___ksymtab+axp20x_match_device", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"x-powers,master-mode\00", [43 x i8] zeroinitializer }, align 32
@axp20x_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 989, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add irq chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axp20x_device_probe\00", [44 x i8] zeroinitializer }, align 32
@axp20x_device_probe._entry_ptr = internal global ptr @axp20x_device_probe._entry, section ".printk_index", align 4
@axp20x_device_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 998, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add MFD devices: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@axp20x_device_probe._entry_ptr.21 = internal global ptr @axp20x_device_probe._entry.19, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@axp20x_pm_power_off = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@axp20x_device_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1008, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AXP20X driver loaded\0A\00", [42 x i8] zeroinitializer }, align 32
@axp20x_device_probe._entry_ptr.24 = internal global ptr @axp20x_device_probe._entry.22, section ".printk_index", align 4
@__kstrtab_axp20x_device_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_axp20x_device_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_axp20x_device_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @axp20x_device_probe to i32), ptr @__kstrtab_axp20x_device_probe, ptr @__kstrtabns_axp20x_device_probe }, section "___ksymtab+axp20x_device_probe", align 4
@__kstrtab_axp20x_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_axp20x_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_axp20x_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @axp20x_device_remove to i32), ptr @__kstrtab_axp20x_device_remove, ptr @__kstrtabns_axp20x_device_remove }, section "___ksymtab+axp20x_device_remove", align 4
@__UNIQUE_ID_description289 = internal constant [51 x i8] c"axp20x.description=PMIC MFD core driver for AXP20X\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [46 x i8] c"axp20x.author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [31 x i8] c"axp20x.file=drivers/mfd/axp20x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"axp20x.license=GPL\00", section ".modinfo", align 1
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp20x-pek\00", [21 x i8] zeroinitializer }, align 32
@axp152_pek_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 12, i32 12, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 13, i32 13, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PEK_DBR\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PEK_DBF\00", [24 x i8] zeroinitializer }, align 32
@axp152_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp152_writeable_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp152_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp152_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp152_writeable_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 18, i32 74 }, %struct.regmap_range { i32 128, i32 157 }], [16 x i8] zeroinitializer }, align 32
@axp152_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 1 }, %struct.regmap_range { i32 64, i32 74 }, %struct.regmap_range { i32 151, i32 151 }], [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axp152_irq_chip\00", [16 x i8] zeroinitializer }, align 32
@axp152_regmap_irqs = internal constant { [18 x %struct.regmap_irq], [184 x i8] } { [18 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }], [184 x i8] zeroinitializer }, align 32
@axp152_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.28, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 96, i8 0, i32 3, ptr @axp152_regmap_irqs, i32 18, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axp20x-gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"x-powers,axp209-gpio\00", [43 x i8] zeroinitializer }, align 32
@axp20x_pek_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 33, i32 33, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 34, i32 34, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp20x-regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp20x-adc\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x-powers,axp209-adc\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"axp20x-battery-power-supply\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"x-powers,axp209-battery-power-supply\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axp20x-ac-power-supply\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"x-powers,axp202-ac-power-supply\00", [32 x i8] zeroinitializer }, align 32
@axp20x_ac_power_supply_resources = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr @.str.41, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr @.str.42, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1, i32 1, ptr @.str.43, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"axp20x-usb-power-supply\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"x-powers,axp202-usb-power-supply\00", [63 x i8] zeroinitializer }, align 32
@axp20x_usb_power_supply_resources = internal constant { [4 x %struct.resource], [32 x i8] } { [4 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.44, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr @.str.45, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 26, i32 26, ptr @.str.46, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 27, i32 27, ptr @.str.47, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ACIN_PLUGIN\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACIN_REMOVAL\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ACIN_OVER_V\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VBUS_PLUGIN\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VBUS_REMOVAL\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VBUS_VALID\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VBUS_NOT_VALID\00", [17 x i8] zeroinitializer }, align 32
@axp20x_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp20x_writeable_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp20x_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp20x_volatile_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp20x_writeable_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 76 }, %struct.regmap_range { i32 51, i32 52 }, %struct.regmap_range { i32 128, i32 185 }, %struct.regmap_range { i32 186, i32 207 }], [32 x i8] zeroinitializer }, align 32
@axp20x_volatile_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 51, i32 52 }, %struct.regmap_range { i32 64, i32 76 }, %struct.regmap_range { i32 86, i32 127 }, %struct.regmap_range { i32 148, i32 149 }, %struct.regmap_range { i32 185, i32 187 }], [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axp20x_irq_chip\00", [16 x i8] zeroinitializer }, align 32
@axp20x_regmap_irqs = internal constant { [39 x %struct.regmap_irq], [324 x i8] } { [39 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }], [324 x i8] zeroinitializer }, align 32
@axp20x_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.48, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 96, i8 0, i32 5, ptr @axp20x_regmap_irqs, i32 39, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp221-pek\00", [21 x i8] zeroinitializer }, align 32
@axp22x_pek_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 22, i32 22, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 23, i32 23, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp22x-adc\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x-powers,axp221-adc\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"x-powers,axp221-ac-power-supply\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"x-powers,axp221-battery-power-supply\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"x-powers,axp221-usb-power-supply\00", [63 x i8] zeroinitializer }, align 32
@axp22x_usb_power_supply_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.44, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr @.str.45, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@axp22x_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp22x_writeable_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp22x_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp22x_volatile_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp22x_writeable_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 76 }, %struct.regmap_range { i32 51, i32 53 }, %struct.regmap_range { i32 128, i32 230 }], [40 x i8] zeroinitializer }, align 32
@axp22x_volatile_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }, %struct.regmap_range { i32 64, i32 76 }, %struct.regmap_range { i32 148, i32 148 }, %struct.regmap_range { i32 86, i32 127 }, %struct.regmap_range { i32 185, i32 185 }], [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axp22x_irq_chip\00", [16 x i8] zeroinitializer }, align 32
@axp22x_regmap_irqs = internal constant { [26 x %struct.regmap_irq], [248 x i8] } { [26 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }], [248 x i8] zeroinitializer }, align 32
@axp22x_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.56, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 96, i8 0, i32 5, ptr @axp22x_regmap_irqs, i32 26, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"x-powers,axp223-usb-power-supply\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp288_adc\00", [21 x i8] zeroinitializer }, align 32
@axp288_adc_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.64, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axp288_extcon\00", [18 x i8] zeroinitializer }, align 32
@axp288_extcon_resources = internal constant { [4 x %struct.resource], [32 x i8] } { [4 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 40, i32 40, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 41, i32 41, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axp288_charger\00", [17 x i8] zeroinitializer }, align 32
@axp288_charger_resources = internal constant { [9 x %struct.resource], [64 x i8] } { [9 x %struct.resource] [%struct.resource { i32 4, i32 4, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 10, i32 10, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 11, i32 11, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 13, i32 13, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 20, i32 20, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 21, i32 21, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 22, i32 22, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 23, i32 23, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [64 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axp288_fuel_gauge\00", [46 x i8] zeroinitializer }, align 32
@axp288_fuel_gauge_sw_node = internal constant { %struct.software_node, [20 x i8] } { %struct.software_node { ptr @.str.62, ptr null, ptr @axp288_fuel_gauge_properties }, [20 x i8] zeroinitializer }, align 32
@axp288_fuel_gauge_resources = internal constant { [6 x %struct.resource], [32 x i8] } { [6 x %struct.resource] [%struct.resource { i32 16, i32 16, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 17, i32 17, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 18, i32 18, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 19, i32 19, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 24, i32 24, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 25, i32 25, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@axp288_power_button_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 38, i32 38, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 37, i32 37, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp288_pmic_acpi\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPADC\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"supplied-from\00", [18 x i8] zeroinitializer }, align 32
@axp288_fuel_gauge_suppliers = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.61], [28 x i8] zeroinitializer }, align 32
@axp288_fuel_gauge_properties = internal constant { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }>, [48 x i8] } { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.65, i32 4, i8 0, i32 4, { ptr, [4 x i8] } { ptr @axp288_fuel_gauge_suppliers, [4 x i8] undef } }, %struct.property_entry zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@axp288_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp288_writeable_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp288_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp288_volatile_ranges, i32 10, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp288_writeable_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 77 }, %struct.regmap_range { i32 128, i32 237 }], [16 x i8] zeroinitializer }, align 32
@axp288_volatile_ranges = internal constant { [10 x %struct.regmap_range], [48 x i8] } { [10 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 16, i32 42 }, %struct.regmap_range { i32 44, i32 44 }, %struct.regmap_range { i32 47, i32 48 }, %struct.regmap_range { i32 53, i32 53 }, %struct.regmap_range { i32 64, i32 127 }, %struct.regmap_range { i32 138, i32 138 }, %struct.regmap_range { i32 146, i32 148 }, %struct.regmap_range { i32 160, i32 161 }, %struct.regmap_range { i32 185, i32 229 }], [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axp288_irq_chip\00", [16 x i8] zeroinitializer }, align 32
@axp288_regmap_irqs = internal constant { [42 x %struct.regmap_irq], [376 x i8] } { [42 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 2, %struct.regmap_irq_type zeroinitializer }], [376 x i8] zeroinitializer }, align 32
@axp288_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.67, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 96, i8 0, i32 6, ptr @axp288_regmap_irqs, i32 42, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@axp803_pek_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 27, i32 27, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"x-powers,axp813-gpio\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp813-adc\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x-powers,axp813-adc\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"x-powers,axp813-battery-power-supply\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"x-powers,axp813-ac-power-supply\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"x-powers,axp813-usb-power-supply\00", [63 x i8] zeroinitializer }, align 32
@axp803_usb_power_supply_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.44, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr @.str.45, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axp803\00", [25 x i8] zeroinitializer }, align 32
@axp803_regmap_irqs = internal constant { [35 x %struct.regmap_irq], [308 x i8] } { [35 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 1, %struct.regmap_irq_type zeroinitializer }], [308 x i8] zeroinitializer }, align 32
@axp803_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.75, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 96, i8 0, i32 6, ptr @axp803_regmap_irqs, i32 35, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@axp806_pek_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 11, i32 11, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 10, i32 10, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@axp806_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp806_writeable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp806_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @axp806_volatile_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@axp806_writeable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 7 }, %struct.regmap_range { i32 16, i32 38 }, %struct.regmap_range { i32 64, i32 65 }, %struct.regmap_range { i32 72, i32 73 }, %struct.regmap_range { i32 255, i32 255 }], [56 x i8] zeroinitializer }, align 32
@axp806_volatile_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 72, i32 73 }], [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axp806\00", [25 x i8] zeroinitializer }, align 32
@axp806_regmap_irqs = internal constant { [12 x %struct.regmap_irq], [112 x i8] } { [12 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }], [112 x i8] zeroinitializer }, align 32
@axp806_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.77, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 96, i8 0, i32 2, ptr @axp806_regmap_irqs, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@axp809_pek_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 27, i32 27, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axp809\00", [25 x i8] zeroinitializer }, align 32
@axp809_regmap_irqs = internal constant { [33 x %struct.regmap_irq], [316 x i8] } { [33 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }], [316 x i8] zeroinitializer }, align 32
@axp809_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.79, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 96, i8 0, i32 5, ptr @axp809_regmap_irqs, i32 33, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP152\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP202\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP209\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP221\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP223\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP288\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP803\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP806\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP809\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXP813\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 848, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 855, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"axp152_cells\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 672, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"axp152_regmap_config\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 239, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"axp20x_cells\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 591, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"axp20x_regmap_config\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 248, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"axp221_cells\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 620, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"axp22x_regmap_config\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 257, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"axp223_cells\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 646, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"axp288_cells\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 715, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"axp288_regmap_config\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 266, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"axp803_cells\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 742, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 906, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"axp806_self_working_cells\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 770, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"axp806_cells\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 779, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"axp806_regmap_config\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 275, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"axp809_cells\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 786, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"axp813_cells\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 797, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 937, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 940, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"axp20x_model_names\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 35, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 971, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 988, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 998, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"axp20x_pm_power_off\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 826, i32 27 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1008, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 674, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"axp152_pek_resources\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 171, i32 30 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 172, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 173, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [23 x i8] c"axp152_writeable_table\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 59, i32 41 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"axp152_volatile_table\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 64, i32 41 }
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"axp152_writeable_ranges\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 48, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant [23 x i8] c"axp152_volatile_ranges\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 53, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 506, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant [19 x i8] c"axp152_regmap_irqs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 287, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant [23 x i8] c"axp152_regmap_irq_chip\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 505, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 593, i32 12 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 594, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant [21 x i8] c"axp20x_pek_resources\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 182, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 600, i32 12 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 602, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 603, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 605, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 606, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 608, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 609, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant [33 x i8] c"axp20x_ac_power_supply_resources\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 176, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 613, i32 12 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 614, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant [34 x i8] c"axp20x_usb_power_supply_resources\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 187, i32 30 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 177, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 178, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 179, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 188, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 189, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 190, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 191, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [23 x i8] c"axp20x_writeable_table\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 85, i32 41 }
@___asan_gen_.307 = private unnamed_addr constant [22 x i8] c"axp20x_volatile_table\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 90, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant [24 x i8] c"axp20x_writeable_ranges\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 69, i32 34 }
@___asan_gen_.313 = private unnamed_addr constant [23 x i8] c"axp20x_volatile_ranges\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 76, i32 34 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 518, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"axp20x_regmap_irqs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 307, i32 32 }
@___asan_gen_.322 = private unnamed_addr constant [23 x i8] c"axp20x_regmap_irq_chip\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 517, i32 37 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 622, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"axp22x_pek_resources\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 205, i32 30 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 628, i32 12 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 629, i32 20 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 632, i32 20 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 637, i32 20 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 640, i32 20 }
@___asan_gen_.346 = private unnamed_addr constant [34 x i8] c"axp22x_usb_power_supply_resources\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 194, i32 30 }
@___asan_gen_.349 = private unnamed_addr constant [23 x i8] c"axp22x_writeable_table\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 110, i32 41 }
@___asan_gen_.352 = private unnamed_addr constant [22 x i8] c"axp22x_volatile_table\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 115, i32 41 }
@___asan_gen_.355 = private unnamed_addr constant [24 x i8] c"axp22x_writeable_ranges\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 96, i32 34 }
@___asan_gen_.358 = private unnamed_addr constant [23 x i8] c"axp22x_volatile_ranges\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 102, i32 34 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 531, i32 12 }
@___asan_gen_.364 = private unnamed_addr constant [19 x i8] c"axp22x_regmap_irqs\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 347, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant [23 x i8] c"axp22x_regmap_irq_chip\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 530, i32 37 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 666, i32 20 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 717, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"axp288_adc_resources\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 680, i32 30 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 721, i32 12 }
@___asan_gen_.382 = private unnamed_addr constant [24 x i8] c"axp288_extcon_resources\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 684, i32 30 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 725, i32 12 }
@___asan_gen_.388 = private unnamed_addr constant [25 x i8] c"axp288_charger_resources\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 691, i32 30 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 729, i32 12 }
@___asan_gen_.394 = private unnamed_addr constant [26 x i8] c"axp288_fuel_gauge_sw_node\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 710, i32 35 }
@___asan_gen_.397 = private unnamed_addr constant [28 x i8] c"axp288_fuel_gauge_resources\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 215, i32 30 }
@___asan_gen_.400 = private unnamed_addr constant [30 x i8] c"axp288_power_button_resources\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 210, i32 30 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 738, i32 12 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 681, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 706, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [28 x i8] c"axp288_fuel_gauge_suppliers\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 703, i32 27 }
@___asan_gen_.415 = private unnamed_addr constant [29 x i8] c"axp288_fuel_gauge_properties\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 705, i32 36 }
@___asan_gen_.418 = private unnamed_addr constant [23 x i8] c"axp288_writeable_table\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 139, i32 41 }
@___asan_gen_.421 = private unnamed_addr constant [22 x i8] c"axp288_volatile_table\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 144, i32 41 }
@___asan_gen_.424 = private unnamed_addr constant [24 x i8] c"axp288_writeable_ranges\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 121, i32 34 }
@___asan_gen_.427 = private unnamed_addr constant [23 x i8] c"axp288_volatile_ranges\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 126, i32 34 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 543, i32 12 }
@___asan_gen_.433 = private unnamed_addr constant [19 x i8] c"axp288_regmap_irqs\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 376, i32 32 }
@___asan_gen_.436 = private unnamed_addr constant [23 x i8] c"axp288_regmap_irq_chip\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 542, i32 37 }
@___asan_gen_.439 = private unnamed_addr constant [21 x i8] c"axp803_pek_resources\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 224, i32 30 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 749, i32 20 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 751, i32 12 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 752, i32 20 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 755, i32 20 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 758, i32 20 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 765, i32 20 }
@___asan_gen_.460 = private unnamed_addr constant [34 x i8] c"axp803_usb_power_supply_resources\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 200, i32 30 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 556, i32 12 }
@___asan_gen_.466 = private unnamed_addr constant [19 x i8] c"axp803_regmap_irqs\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 418, i32 32 }
@___asan_gen_.469 = private unnamed_addr constant [23 x i8] c"axp803_regmap_irq_chip\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 555, i32 37 }
@___asan_gen_.472 = private unnamed_addr constant [21 x i8] c"axp806_pek_resources\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 229, i32 30 }
@___asan_gen_.475 = private unnamed_addr constant [23 x i8] c"axp806_writeable_table\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 161, i32 41 }
@___asan_gen_.478 = private unnamed_addr constant [22 x i8] c"axp806_volatile_table\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 166, i32 41 }
@___asan_gen_.481 = private unnamed_addr constant [24 x i8] c"axp806_writeable_ranges\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 149, i32 34 }
@___asan_gen_.484 = private unnamed_addr constant [23 x i8] c"axp806_volatile_ranges\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 157, i32 34 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 568, i32 12 }
@___asan_gen_.490 = private unnamed_addr constant [19 x i8] c"axp806_regmap_irqs\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 455, i32 32 }
@___asan_gen_.493 = private unnamed_addr constant [23 x i8] c"axp806_regmap_irq_chip\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 567, i32 37 }
@___asan_gen_.496 = private unnamed_addr constant [21 x i8] c"axp809_pek_resources\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 234, i32 30 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 580, i32 12 }
@___asan_gen_.502 = private unnamed_addr constant [19 x i8] c"axp809_regmap_irqs\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 470, i32 32 }
@___asan_gen_.505 = private unnamed_addr constant [23 x i8] c"axp809_regmap_irq_chip\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 579, i32 37 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 36, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 37, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 38, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 39, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 40, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 41, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 42, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 43, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 44, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.536 = private constant [24 x i8] c"../drivers/mfd/axp20x.c\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 45, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__ksymtab_axp20x_device_probe, ptr @__ksymtab_axp20x_device_remove, ptr @__ksymtab_axp20x_match_device, ptr @axp20x_device_probe._entry, ptr @axp20x_device_probe._entry.19, ptr @axp20x_device_probe._entry.22, ptr @axp20x_device_probe._entry_ptr, ptr @axp20x_device_probe._entry_ptr.21, ptr @axp20x_device_probe._entry_ptr.24, ptr @axp20x_match_device._entry, ptr @axp20x_match_device._entry.12, ptr @axp20x_match_device._entry.5, ptr @axp20x_match_device._entry.9, ptr @axp20x_match_device._entry_ptr, ptr @axp20x_match_device._entry_ptr.11, ptr @axp20x_match_device._entry_ptr.15, ptr @axp20x_match_device._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @axp152_cells, ptr @axp152_regmap_config, ptr @axp20x_cells, ptr @axp20x_regmap_config, ptr @axp221_cells, ptr @axp22x_regmap_config, ptr @axp223_cells, ptr @axp288_cells, ptr @axp288_regmap_config, ptr @axp803_cells, ptr @.str.8, ptr @axp806_self_working_cells, ptr @axp806_cells, ptr @axp806_regmap_config, ptr @axp809_cells, ptr @axp813_cells, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @axp20x_model_names, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @axp20x_pm_power_off, ptr @.str.23, ptr @.str.25, ptr @axp152_pek_resources, ptr @.str.26, ptr @.str.27, ptr @axp152_writeable_table, ptr @axp152_volatile_table, ptr @axp152_writeable_ranges, ptr @axp152_volatile_ranges, ptr @.str.28, ptr @axp152_regmap_irqs, ptr @axp152_regmap_irq_chip, ptr @.str.30, ptr @.str.31, ptr @axp20x_pek_resources, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @axp20x_ac_power_supply_resources, ptr @.str.39, ptr @.str.40, ptr @axp20x_usb_power_supply_resources, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @axp20x_writeable_table, ptr @axp20x_volatile_table, ptr @axp20x_writeable_ranges, ptr @axp20x_volatile_ranges, ptr @.str.48, ptr @axp20x_regmap_irqs, ptr @axp20x_regmap_irq_chip, ptr @.str.50, ptr @axp22x_pek_resources, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @axp22x_usb_power_supply_resources, ptr @axp22x_writeable_table, ptr @axp22x_volatile_table, ptr @axp22x_writeable_ranges, ptr @axp22x_volatile_ranges, ptr @.str.56, ptr @axp22x_regmap_irqs, ptr @axp22x_regmap_irq_chip, ptr @.str.58, ptr @.str.59, ptr @axp288_adc_resources, ptr @.str.60, ptr @axp288_extcon_resources, ptr @.str.61, ptr @axp288_charger_resources, ptr @.str.62, ptr @axp288_fuel_gauge_sw_node, ptr @axp288_fuel_gauge_resources, ptr @axp288_power_button_resources, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @axp288_fuel_gauge_suppliers, ptr @axp288_fuel_gauge_properties, ptr @axp288_writeable_table, ptr @axp288_volatile_table, ptr @axp288_writeable_ranges, ptr @axp288_volatile_ranges, ptr @.str.67, ptr @axp288_regmap_irqs, ptr @axp288_regmap_irq_chip, ptr @axp803_pek_resources, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @axp803_usb_power_supply_resources, ptr @.str.75, ptr @axp803_regmap_irqs, ptr @axp803_regmap_irq_chip, ptr @axp806_pek_resources, ptr @axp806_writeable_table, ptr @axp806_volatile_table, ptr @axp806_writeable_ranges, ptr @axp806_volatile_ranges, ptr @.str.77, ptr @axp806_regmap_irqs, ptr @axp806_regmap_irq_chip, ptr @axp809_pek_resources, ptr @.str.79, ptr @axp809_regmap_irqs, ptr @axp809_regmap_irq_chip, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_match_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_match_device._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_cells to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp221_cells to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp223_cells to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_cells to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_cells to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_self_working_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp809_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_cells to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_match_device._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_match_device._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_model_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_device_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pm_power_off to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_device_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_pek_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_writeable_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_regmap_irqs to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp152_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pek_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_supply_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_supply_resources to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_writeable_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_volatile_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regmap_irqs to i32), i32 1404, i32 1728, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_pek_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_usb_power_supply_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_writeable_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_volatile_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_regmap_irqs to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_extcon_resources to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_charger_resources to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_fuel_gauge_sw_node to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_fuel_gauge_resources to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_power_button_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_fuel_gauge_suppliers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_fuel_gauge_properties to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_writeable_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_volatile_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_regmap_irqs to i32), i32 1512, i32 1888, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_pek_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_usb_power_supply_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_regmap_irqs to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_pek_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_writeable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_volatile_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_regmap_irqs to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp809_pek_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp809_regmap_irqs to i32), i32 1188, i32 1504, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp809_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axp20x_match_device(ptr noundef %axp20x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %axp20x, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_match_table, align 4
  %call = tail call ptr @of_match_device(ptr noundef %7, ptr noundef %1) #3
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  %variant = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 5
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %variant, align 4
  %12 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end67 [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb17_crit_edge
    i32 2, label %if.end.sw.bb17_crit_edge132
    i32 3, label %sw.bb22
    i32 4, label %sw.bb27
    i32 5, label %sw.bb32
    i32 6, label %sw.bb37
    i32 7, label %sw.bb42
    i32 8, label %sw.bb55
    i32 9, label %sw.bb60
  ]

if.end.sw.bb17_crit_edge132:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %nr_cells = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %13 = ptrtoint ptr %nr_cells to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nr_cells, align 4
  %cells = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %14 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @axp152_cells, ptr %cells, align 4
  %regmap_cfg = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %15 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @axp152_regmap_config, ptr %regmap_cfg, align 4
  %regmap_irq_chip = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %16 = ptrtoint ptr %regmap_irq_chip to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @axp152_regmap_irq_chip, ptr %regmap_irq_chip, align 4
  br label %do.end71

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge132
  %nr_cells18 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %17 = ptrtoint ptr %nr_cells18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %nr_cells18, align 4
  %cells19 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %18 = ptrtoint ptr %cells19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @axp20x_cells, ptr %cells19, align 4
  %regmap_cfg20 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %19 = ptrtoint ptr %regmap_cfg20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @axp20x_regmap_config, ptr %regmap_cfg20, align 4
  %regmap_irq_chip21 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %20 = ptrtoint ptr %regmap_irq_chip21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @axp20x_regmap_irq_chip, ptr %regmap_irq_chip21, align 4
  br label %do.end71

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %nr_cells23 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %21 = ptrtoint ptr %nr_cells23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %nr_cells23, align 4
  %cells24 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %22 = ptrtoint ptr %cells24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @axp221_cells, ptr %cells24, align 4
  %regmap_cfg25 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %23 = ptrtoint ptr %regmap_cfg25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @axp22x_regmap_config, ptr %regmap_cfg25, align 4
  %regmap_irq_chip26 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %24 = ptrtoint ptr %regmap_irq_chip26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @axp22x_regmap_irq_chip, ptr %regmap_irq_chip26, align 4
  br label %do.end71

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %nr_cells28 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %25 = ptrtoint ptr %nr_cells28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %nr_cells28, align 4
  %cells29 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %26 = ptrtoint ptr %cells29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @axp223_cells, ptr %cells29, align 4
  %regmap_cfg30 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %27 = ptrtoint ptr %regmap_cfg30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @axp22x_regmap_config, ptr %regmap_cfg30, align 4
  %regmap_irq_chip31 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %28 = ptrtoint ptr %regmap_irq_chip31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @axp22x_regmap_irq_chip, ptr %regmap_irq_chip31, align 4
  br label %do.end71

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %cells33 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %29 = ptrtoint ptr %cells33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @axp288_cells, ptr %cells33, align 4
  %nr_cells34 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %30 = ptrtoint ptr %nr_cells34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %nr_cells34, align 4
  %regmap_cfg35 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %31 = ptrtoint ptr %regmap_cfg35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @axp288_regmap_config, ptr %regmap_cfg35, align 4
  %regmap_irq_chip36 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %32 = ptrtoint ptr %regmap_irq_chip36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @axp288_regmap_irq_chip, ptr %regmap_irq_chip36, align 4
  %irq_flags = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 2
  %33 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %irq_flags, align 4
  br label %do.end71

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %nr_cells38 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %34 = ptrtoint ptr %nr_cells38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 7, ptr %nr_cells38, align 4
  %cells39 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %35 = ptrtoint ptr %cells39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @axp803_cells, ptr %cells39, align 4
  %regmap_cfg40 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %36 = ptrtoint ptr %regmap_cfg40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @axp288_regmap_config, ptr %regmap_cfg40, align 4
  %regmap_irq_chip41 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %37 = ptrtoint ptr %regmap_irq_chip41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @axp803_regmap_irq_chip, ptr %regmap_irq_chip41, align 4
  br label %do.end71

sw.bb42:                                          ; preds = %if.end
  %38 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %axp20x, align 4
  %of_node44 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %of_node44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node44, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %41, ptr noundef nonnull @.str.8, ptr noundef null) #3
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %sw.bb42.if.else49_crit_edge, label %land.lhs.true

sw.bb42.if.else49_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else49

land.lhs.true:                                    ; preds = %sw.bb42
  %irq = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 1
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp sgt i32 %43, 0
  br i1 %cmp, label %land.lhs.true.if.end52_crit_edge, label %land.lhs.true.if.else49_crit_edge

land.lhs.true.if.else49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else49

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.else49:                                        ; preds = %land.lhs.true.if.else49_crit_edge, %sw.bb42.if.else49_crit_edge
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %land.lhs.true.if.end52_crit_edge
  %.sink = phi i32 [ 1, %if.else49 ], [ 2, %land.lhs.true.if.end52_crit_edge ]
  %axp806_cells.sink = phi ptr [ @axp806_cells, %if.else49 ], [ @axp806_self_working_cells, %land.lhs.true.if.end52_crit_edge ]
  %nr_cells50 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %44 = ptrtoint ptr %nr_cells50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink, ptr %nr_cells50, align 4
  %cells51 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %45 = ptrtoint ptr %cells51 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %axp806_cells.sink, ptr %cells51, align 4
  %regmap_cfg53 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %46 = ptrtoint ptr %regmap_cfg53 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @axp806_regmap_config, ptr %regmap_cfg53, align 4
  %regmap_irq_chip54 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %47 = ptrtoint ptr %regmap_irq_chip54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @axp806_regmap_irq_chip, ptr %regmap_irq_chip54, align 4
  br label %do.end71

sw.bb55:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %nr_cells56 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %48 = ptrtoint ptr %nr_cells56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %nr_cells56, align 4
  %cells57 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %49 = ptrtoint ptr %cells57 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @axp809_cells, ptr %cells57, align 4
  %regmap_cfg58 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %50 = ptrtoint ptr %regmap_cfg58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @axp22x_regmap_config, ptr %regmap_cfg58, align 4
  %regmap_irq_chip59 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %51 = ptrtoint ptr %regmap_irq_chip59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @axp809_regmap_irq_chip, ptr %regmap_irq_chip59, align 4
  br label %do.end71

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %nr_cells61 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %52 = ptrtoint ptr %nr_cells61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 7, ptr %nr_cells61, align 4
  %cells62 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %53 = ptrtoint ptr %cells62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @axp813_cells, ptr %cells62, align 4
  %regmap_cfg63 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 8
  %54 = ptrtoint ptr %regmap_cfg63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @axp288_regmap_config, ptr %regmap_cfg63, align 4
  %regmap_irq_chip64 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %55 = ptrtoint ptr %regmap_irq_chip64 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @axp803_regmap_irq_chip, ptr %regmap_irq_chip64, align 4
  br label %do.end71

do.end67:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %10) #6
  br label %cleanup

do.end71:                                         ; preds = %sw.bb60, %sw.bb55, %if.end52, %sw.bb37, %sw.bb32, %sw.bb27, %sw.bb22, %sw.bb17, %sw.bb
  %56 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %variant, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @axp20x_model_names, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef %59) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %do.end67, %if.else, %do.end
  %retval.0 = phi i32 [ -22, %do.end67 ], [ 0, %do.end71 ], [ -19, %do.end ], [ -19, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axp20x_device_probe(ptr noundef %axp20x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 5
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axp20x, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef null) #3
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.then.if.end8.sink.split_crit_edge

if.then.if.end8.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.sink.split

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axp20x, align 4
  %of_node2 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node2, align 8
  %call.i60 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef null) #3
  %tobool.i61.not = icmp eq ptr %call.i60, null
  %spec.select = select i1 %tobool.i61.not, i32 16, i32 0
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %lor.lhs.false, %if.then.if.end8.sink.split_crit_edge
  %.sink62 = phi i32 [ 0, %if.then.if.end8.sink.split_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 255, i32 noundef %.sink62) #3
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  %irq = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 1
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9 = icmp sgt i32 %13, 0
  br i1 %cmp9, label %if.then10, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then10:                                        ; preds = %if.end8
  %regmap11 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 3
  %14 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap11, align 4
  %irq_flags = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 2
  %16 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_flags, align 4
  %or = or i32 %17, 8320
  %regmap_irq_chip = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 9
  %18 = ptrtoint ptr %regmap_irq_chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_irq_chip, align 4
  %regmap_irqc = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 4
  %call13 = tail call i32 @regmap_add_irq_chip(ptr noundef %15, i32 noundef %13, i32 noundef %or, i32 noundef -1, ptr noundef %19, ptr noundef %regmap_irqc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then10.if.end17_crit_edge, label %do.end

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %axp20x, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %call13) #6
  br label %cleanup

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %22 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %axp20x, align 4
  %cells = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 7
  %24 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cells, align 4
  %nr_cells = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 6
  %26 = ptrtoint ptr %nr_cells to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_cells, align 4
  %call19 = tail call i32 @mfd_add_devices(ptr noundef %23, i32 noundef -1, ptr noundef %25, i32 noundef %27, ptr noundef null, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %axp20x, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.20, i32 noundef %call19) #6
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %regmap_irqc27 = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 4
  %32 = ptrtoint ptr %regmap_irqc27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap_irqc27, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %31, ptr noundef %33) #3
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %34 = load ptr, ptr @pm_power_off, align 4
  %tobool29.not = icmp eq ptr %34, null
  br i1 %tobool29.not, label %if.then30, label %if.end28.do.end34_crit_edge

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %axp20x, ptr @axp20x_pm_power_off, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @axp20x_power_off, ptr @pm_power_off, align 4
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %if.end28.do.end34_crit_edge
  %35 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %axp20x, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.23) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end24, %do.end
  %retval.0 = phi i32 [ %call13, %do.end ], [ %call19, %do.end24 ], [ 0, %do.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_power_off() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @axp20x_pm_power_off, align 4
  %variant = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 50, i32 noundef 128) #3
  tail call void @msleep(i32 noundef 500) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @axp20x_device_remove(ptr nocapture noundef readonly %axp20x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @axp20x_pm_power_off, align 4
  %cmp = icmp eq ptr %0, %axp20x
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store ptr null, ptr @axp20x_pm_power_off, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %axp20x to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %axp20x, align 4
  tail call void @mfd_remove_devices(ptr noundef %2) #3
  %irq = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 1
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %regmap_irqc = getelementptr inbounds %struct.axp20x_dev, ptr %axp20x, i32 0, i32 4
  %5 = ptrtoint ptr %regmap_irqc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_irqc, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %4, ptr noundef %6) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/axp20x.c", i32 848, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @axp20x_match_device._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @axp20x_match_device._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/axp20x.c", i32 855, i32 4}
!10 = !{ptr @axp20x_match_device._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @axp20x_match_device._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/axp20x.c", i32 906, i32 8}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/axp20x.c", i32 937, i32 3}
!16 = !{ptr @axp20x_match_device._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @axp20x_match_device._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/axp20x.c", i32 940, i32 2}
!20 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @axp20x_match_device._entry.12, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @axp20x_match_device._entry_ptr.15, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_axp20x_match_device, !24, !"__ksymtab_axp20x_match_device", i1 false, i1 false}
!24 = !{!"../drivers/mfd/axp20x.c", i32 945, i32 1}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/axp20x.c", i32 971, i32 8}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/axp20x.c", i32 988, i32 4}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @axp20x_device_probe._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @axp20x_device_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/axp20x.c", i32 998, i32 3}
!34 = !{ptr @axp20x_device_probe._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @axp20x_device_probe._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/axp20x.c", i32 1008, i32 2}
!38 = !{ptr @axp20x_device_probe._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @axp20x_device_probe._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_axp20x_device_probe, !41, !"__ksymtab_axp20x_device_probe", i1 false, i1 false}
!41 = !{!"../drivers/mfd/axp20x.c", i32 1012, i32 1}
!42 = !{ptr @__ksymtab_axp20x_device_remove, !43, !"__ksymtab_axp20x_device_remove", i1 false, i1 false}
!43 = !{!"../drivers/mfd/axp20x.c", i32 1024, i32 1}
!44 = !{ptr @__UNIQUE_ID_description289, !45, !"__UNIQUE_ID_description289", i1 false, i1 false}
!45 = !{!"../drivers/mfd/axp20x.c", i32 1026, i32 1}
!46 = !{ptr @__UNIQUE_ID_author290, !47, !"__UNIQUE_ID_author290", i1 false, i1 false}
!47 = !{!"../drivers/mfd/axp20x.c", i32 1027, i32 1}
!48 = !{ptr @__UNIQUE_ID_file291, !49, !"__UNIQUE_ID_file291", i1 false, i1 false}
!49 = !{!"../drivers/mfd/axp20x.c", i32 1028, i32 1}
!50 = !{ptr @__UNIQUE_ID_license292, !49, !"__UNIQUE_ID_license292", i1 false, i1 false}
!51 = !{ptr @axp20x_pm_power_off, !52, !"axp20x_pm_power_off", i1 false, i1 false}
!52 = !{!"../drivers/mfd/axp20x.c", i32 826, i32 27}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/axp20x.c", i32 674, i32 12}
!55 = !{ptr @axp152_cells, !56, !"axp152_cells", i1 false, i1 false}
!56 = !{!"../drivers/mfd/axp20x.c", i32 672, i32 30}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/axp20x.c", i32 172, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/axp20x.c", i32 173, i32 2}
!61 = !{ptr @axp152_pek_resources, !62, !"axp152_pek_resources", i1 false, i1 false}
!62 = !{!"../drivers/mfd/axp20x.c", i32 171, i32 30}
!63 = !{ptr @axp152_regmap_config, !64, !"axp152_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/mfd/axp20x.c", i32 239, i32 35}
!65 = !{ptr @axp152_writeable_table, !66, !"axp152_writeable_table", i1 false, i1 false}
!66 = !{!"../drivers/mfd/axp20x.c", i32 59, i32 41}
!67 = !{ptr @axp152_writeable_ranges, !68, !"axp152_writeable_ranges", i1 false, i1 false}
!68 = !{!"../drivers/mfd/axp20x.c", i32 48, i32 34}
!69 = !{ptr @axp152_volatile_table, !70, !"axp152_volatile_table", i1 false, i1 false}
!70 = !{!"../drivers/mfd/axp20x.c", i32 64, i32 41}
!71 = !{ptr @axp152_volatile_ranges, !72, !"axp152_volatile_ranges", i1 false, i1 false}
!72 = !{!"../drivers/mfd/axp20x.c", i32 53, i32 34}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/axp20x.c", i32 506, i32 12}
!75 = !{ptr @axp152_regmap_irq_chip, !76, !"axp152_regmap_irq_chip", i1 false, i1 false}
!76 = !{!"../drivers/mfd/axp20x.c", i32 505, i32 37}
!77 = !{ptr @axp152_regmap_irqs, !78, !"axp152_regmap_irqs", i1 false, i1 false}
!78 = !{!"../drivers/mfd/axp20x.c", i32 287, i32 32}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/axp20x.c", i32 593, i32 12}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/axp20x.c", i32 594, i32 20}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mfd/axp20x.c", i32 600, i32 12}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/axp20x.c", i32 602, i32 12}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mfd/axp20x.c", i32 603, i32 20}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mfd/axp20x.c", i32 605, i32 12}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mfd/axp20x.c", i32 606, i32 20}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/axp20x.c", i32 608, i32 12}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mfd/axp20x.c", i32 609, i32 20}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/axp20x.c", i32 613, i32 12}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/axp20x.c", i32 614, i32 20}
!101 = !{ptr @axp20x_cells, !102, !"axp20x_cells", i1 false, i1 false}
!102 = !{!"../drivers/mfd/axp20x.c", i32 591, i32 30}
!103 = !{ptr @axp20x_pek_resources, !104, !"axp20x_pek_resources", i1 false, i1 false}
!104 = !{!"../drivers/mfd/axp20x.c", i32 182, i32 30}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/axp20x.c", i32 177, i32 2}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mfd/axp20x.c", i32 178, i32 2}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/axp20x.c", i32 179, i32 2}
!111 = !{ptr @axp20x_ac_power_supply_resources, !112, !"axp20x_ac_power_supply_resources", i1 false, i1 false}
!112 = !{!"../drivers/mfd/axp20x.c", i32 176, i32 30}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/axp20x.c", i32 188, i32 2}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mfd/axp20x.c", i32 189, i32 2}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/axp20x.c", i32 190, i32 2}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mfd/axp20x.c", i32 191, i32 2}
!121 = !{ptr @axp20x_usb_power_supply_resources, !122, !"axp20x_usb_power_supply_resources", i1 false, i1 false}
!122 = !{!"../drivers/mfd/axp20x.c", i32 187, i32 30}
!123 = !{ptr @axp20x_regmap_config, !124, !"axp20x_regmap_config", i1 false, i1 false}
!124 = !{!"../drivers/mfd/axp20x.c", i32 248, i32 35}
!125 = !{ptr @axp20x_writeable_table, !126, !"axp20x_writeable_table", i1 false, i1 false}
!126 = !{!"../drivers/mfd/axp20x.c", i32 85, i32 41}
!127 = !{ptr @axp20x_writeable_ranges, !128, !"axp20x_writeable_ranges", i1 false, i1 false}
!128 = !{!"../drivers/mfd/axp20x.c", i32 69, i32 34}
!129 = !{ptr @axp20x_volatile_table, !130, !"axp20x_volatile_table", i1 false, i1 false}
!130 = !{!"../drivers/mfd/axp20x.c", i32 90, i32 41}
!131 = !{ptr @axp20x_volatile_ranges, !132, !"axp20x_volatile_ranges", i1 false, i1 false}
!132 = !{!"../drivers/mfd/axp20x.c", i32 76, i32 34}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mfd/axp20x.c", i32 518, i32 12}
!135 = !{ptr @axp20x_regmap_irq_chip, !136, !"axp20x_regmap_irq_chip", i1 false, i1 false}
!136 = !{!"../drivers/mfd/axp20x.c", i32 517, i32 37}
!137 = !{ptr @axp20x_regmap_irqs, !138, !"axp20x_regmap_irqs", i1 false, i1 false}
!138 = !{!"../drivers/mfd/axp20x.c", i32 307, i32 32}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/axp20x.c", i32 622, i32 12}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mfd/axp20x.c", i32 628, i32 12}
!143 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mfd/axp20x.c", i32 629, i32 20}
!145 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mfd/axp20x.c", i32 632, i32 20}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mfd/axp20x.c", i32 637, i32 20}
!149 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mfd/axp20x.c", i32 640, i32 20}
!151 = !{ptr @axp221_cells, !152, !"axp221_cells", i1 false, i1 false}
!152 = !{!"../drivers/mfd/axp20x.c", i32 620, i32 30}
!153 = !{ptr @axp22x_pek_resources, !154, !"axp22x_pek_resources", i1 false, i1 false}
!154 = !{!"../drivers/mfd/axp20x.c", i32 205, i32 30}
!155 = !{ptr @axp22x_usb_power_supply_resources, !156, !"axp22x_usb_power_supply_resources", i1 false, i1 false}
!156 = !{!"../drivers/mfd/axp20x.c", i32 194, i32 30}
!157 = !{ptr @axp22x_regmap_config, !158, !"axp22x_regmap_config", i1 false, i1 false}
!158 = !{!"../drivers/mfd/axp20x.c", i32 257, i32 35}
!159 = !{ptr @axp22x_writeable_table, !160, !"axp22x_writeable_table", i1 false, i1 false}
!160 = !{!"../drivers/mfd/axp20x.c", i32 110, i32 41}
!161 = !{ptr @axp22x_writeable_ranges, !162, !"axp22x_writeable_ranges", i1 false, i1 false}
!162 = !{!"../drivers/mfd/axp20x.c", i32 96, i32 34}
!163 = !{ptr @axp22x_volatile_table, !164, !"axp22x_volatile_table", i1 false, i1 false}
!164 = !{!"../drivers/mfd/axp20x.c", i32 115, i32 41}
!165 = !{ptr @axp22x_volatile_ranges, !166, !"axp22x_volatile_ranges", i1 false, i1 false}
!166 = !{!"../drivers/mfd/axp20x.c", i32 102, i32 34}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mfd/axp20x.c", i32 531, i32 12}
!169 = !{ptr @axp22x_regmap_irq_chip, !170, !"axp22x_regmap_irq_chip", i1 false, i1 false}
!170 = !{!"../drivers/mfd/axp20x.c", i32 530, i32 37}
!171 = !{ptr @axp22x_regmap_irqs, !172, !"axp22x_regmap_irqs", i1 false, i1 false}
!172 = !{!"../drivers/mfd/axp20x.c", i32 347, i32 32}
!173 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mfd/axp20x.c", i32 666, i32 20}
!175 = !{ptr @axp223_cells, !176, !"axp223_cells", i1 false, i1 false}
!176 = !{!"../drivers/mfd/axp20x.c", i32 646, i32 30}
!177 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mfd/axp20x.c", i32 717, i32 12}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mfd/axp20x.c", i32 721, i32 12}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mfd/axp20x.c", i32 725, i32 12}
!183 = !{ptr @.str.62, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mfd/axp20x.c", i32 729, i32 12}
!185 = !{ptr @.str.63, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mfd/axp20x.c", i32 738, i32 12}
!187 = !{ptr @axp288_cells, !188, !"axp288_cells", i1 false, i1 false}
!188 = !{!"../drivers/mfd/axp20x.c", i32 715, i32 30}
!189 = !{ptr @.str.64, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mfd/axp20x.c", i32 681, i32 2}
!191 = !{ptr @axp288_adc_resources, !192, !"axp288_adc_resources", i1 false, i1 false}
!192 = !{!"../drivers/mfd/axp20x.c", i32 680, i32 30}
!193 = !{ptr @axp288_extcon_resources, !194, !"axp288_extcon_resources", i1 false, i1 false}
!194 = !{!"../drivers/mfd/axp20x.c", i32 684, i32 30}
!195 = !{ptr @axp288_charger_resources, !196, !"axp288_charger_resources", i1 false, i1 false}
!196 = !{!"../drivers/mfd/axp20x.c", i32 691, i32 30}
!197 = !{ptr @axp288_fuel_gauge_sw_node, !198, !"axp288_fuel_gauge_sw_node", i1 false, i1 false}
!198 = !{!"../drivers/mfd/axp20x.c", i32 710, i32 35}
!199 = !{ptr @.str.65, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mfd/axp20x.c", i32 706, i32 2}
!201 = !{ptr @axp288_fuel_gauge_properties, !202, !"axp288_fuel_gauge_properties", i1 false, i1 false}
!202 = !{!"../drivers/mfd/axp20x.c", i32 705, i32 36}
!203 = !{ptr @axp288_fuel_gauge_suppliers, !204, !"axp288_fuel_gauge_suppliers", i1 false, i1 false}
!204 = !{!"../drivers/mfd/axp20x.c", i32 703, i32 27}
!205 = !{ptr @axp288_fuel_gauge_resources, !206, !"axp288_fuel_gauge_resources", i1 false, i1 false}
!206 = !{!"../drivers/mfd/axp20x.c", i32 215, i32 30}
!207 = !{ptr @axp288_power_button_resources, !208, !"axp288_power_button_resources", i1 false, i1 false}
!208 = !{!"../drivers/mfd/axp20x.c", i32 210, i32 30}
!209 = !{ptr @axp288_regmap_config, !210, !"axp288_regmap_config", i1 false, i1 false}
!210 = !{!"../drivers/mfd/axp20x.c", i32 266, i32 35}
!211 = !{ptr @axp288_writeable_table, !212, !"axp288_writeable_table", i1 false, i1 false}
!212 = !{!"../drivers/mfd/axp20x.c", i32 139, i32 41}
!213 = !{ptr @axp288_writeable_ranges, !214, !"axp288_writeable_ranges", i1 false, i1 false}
!214 = !{!"../drivers/mfd/axp20x.c", i32 121, i32 34}
!215 = !{ptr @axp288_volatile_table, !216, !"axp288_volatile_table", i1 false, i1 false}
!216 = !{!"../drivers/mfd/axp20x.c", i32 144, i32 41}
!217 = !{ptr @axp288_volatile_ranges, !218, !"axp288_volatile_ranges", i1 false, i1 false}
!218 = !{!"../drivers/mfd/axp20x.c", i32 126, i32 34}
!219 = !{ptr @.str.67, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mfd/axp20x.c", i32 543, i32 12}
!221 = !{ptr @axp288_regmap_irq_chip, !222, !"axp288_regmap_irq_chip", i1 false, i1 false}
!222 = !{!"../drivers/mfd/axp20x.c", i32 542, i32 37}
!223 = !{ptr @axp288_regmap_irqs, !224, !"axp288_regmap_irqs", i1 false, i1 false}
!224 = !{!"../drivers/mfd/axp20x.c", i32 376, i32 32}
!225 = !{ptr @.str.69, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mfd/axp20x.c", i32 749, i32 20}
!227 = !{ptr @.str.70, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mfd/axp20x.c", i32 751, i32 12}
!229 = !{ptr @.str.71, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mfd/axp20x.c", i32 752, i32 20}
!231 = !{ptr @.str.72, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mfd/axp20x.c", i32 755, i32 20}
!233 = !{ptr @.str.73, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mfd/axp20x.c", i32 758, i32 20}
!235 = !{ptr @.str.74, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mfd/axp20x.c", i32 765, i32 20}
!237 = !{ptr @axp803_cells, !238, !"axp803_cells", i1 false, i1 false}
!238 = !{!"../drivers/mfd/axp20x.c", i32 742, i32 30}
!239 = !{ptr @axp803_pek_resources, !240, !"axp803_pek_resources", i1 false, i1 false}
!240 = !{!"../drivers/mfd/axp20x.c", i32 224, i32 30}
!241 = !{ptr @axp803_usb_power_supply_resources, !242, !"axp803_usb_power_supply_resources", i1 false, i1 false}
!242 = !{!"../drivers/mfd/axp20x.c", i32 200, i32 30}
!243 = !{ptr @.str.75, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mfd/axp20x.c", i32 556, i32 12}
!245 = !{ptr @axp803_regmap_irq_chip, !246, !"axp803_regmap_irq_chip", i1 false, i1 false}
!246 = !{!"../drivers/mfd/axp20x.c", i32 555, i32 37}
!247 = !{ptr @axp803_regmap_irqs, !248, !"axp803_regmap_irqs", i1 false, i1 false}
!248 = !{!"../drivers/mfd/axp20x.c", i32 418, i32 32}
!249 = !{ptr @axp806_self_working_cells, !250, !"axp806_self_working_cells", i1 false, i1 false}
!250 = !{!"../drivers/mfd/axp20x.c", i32 770, i32 30}
!251 = !{ptr @axp806_pek_resources, !252, !"axp806_pek_resources", i1 false, i1 false}
!252 = !{!"../drivers/mfd/axp20x.c", i32 229, i32 30}
!253 = !{ptr @axp806_cells, !254, !"axp806_cells", i1 false, i1 false}
!254 = !{!"../drivers/mfd/axp20x.c", i32 779, i32 30}
!255 = !{ptr @axp806_regmap_config, !256, !"axp806_regmap_config", i1 false, i1 false}
!256 = !{!"../drivers/mfd/axp20x.c", i32 275, i32 35}
!257 = !{ptr @axp806_writeable_table, !258, !"axp806_writeable_table", i1 false, i1 false}
!258 = !{!"../drivers/mfd/axp20x.c", i32 161, i32 41}
!259 = !{ptr @axp806_writeable_ranges, !260, !"axp806_writeable_ranges", i1 false, i1 false}
!260 = !{!"../drivers/mfd/axp20x.c", i32 149, i32 34}
!261 = !{ptr @axp806_volatile_table, !262, !"axp806_volatile_table", i1 false, i1 false}
!262 = !{!"../drivers/mfd/axp20x.c", i32 166, i32 41}
!263 = !{ptr @axp806_volatile_ranges, !264, !"axp806_volatile_ranges", i1 false, i1 false}
!264 = !{!"../drivers/mfd/axp20x.c", i32 157, i32 34}
!265 = !{ptr @.str.77, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mfd/axp20x.c", i32 568, i32 12}
!267 = !{ptr @axp806_regmap_irq_chip, !268, !"axp806_regmap_irq_chip", i1 false, i1 false}
!268 = !{!"../drivers/mfd/axp20x.c", i32 567, i32 37}
!269 = !{ptr @axp806_regmap_irqs, !270, !"axp806_regmap_irqs", i1 false, i1 false}
!270 = !{!"../drivers/mfd/axp20x.c", i32 455, i32 32}
!271 = !{ptr @axp809_cells, !272, !"axp809_cells", i1 false, i1 false}
!272 = !{!"../drivers/mfd/axp20x.c", i32 786, i32 30}
!273 = !{ptr @axp809_pek_resources, !274, !"axp809_pek_resources", i1 false, i1 false}
!274 = !{!"../drivers/mfd/axp20x.c", i32 234, i32 30}
!275 = !{ptr @.str.79, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mfd/axp20x.c", i32 580, i32 12}
!277 = !{ptr @axp809_regmap_irq_chip, !278, !"axp809_regmap_irq_chip", i1 false, i1 false}
!278 = !{!"../drivers/mfd/axp20x.c", i32 579, i32 37}
!279 = !{ptr @axp809_regmap_irqs, !280, !"axp809_regmap_irqs", i1 false, i1 false}
!280 = !{!"../drivers/mfd/axp20x.c", i32 470, i32 32}
!281 = !{ptr @axp813_cells, !282, !"axp813_cells", i1 false, i1 false}
!282 = !{!"../drivers/mfd/axp20x.c", i32 797, i32 30}
!283 = !{ptr @.str.81, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mfd/axp20x.c", i32 36, i32 2}
!285 = !{ptr @.str.82, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mfd/axp20x.c", i32 37, i32 2}
!287 = !{ptr @.str.83, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mfd/axp20x.c", i32 38, i32 2}
!289 = !{ptr @.str.84, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mfd/axp20x.c", i32 39, i32 2}
!291 = !{ptr @.str.85, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mfd/axp20x.c", i32 40, i32 2}
!293 = !{ptr @.str.86, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mfd/axp20x.c", i32 41, i32 2}
!295 = !{ptr @.str.87, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mfd/axp20x.c", i32 42, i32 2}
!297 = !{ptr @.str.88, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mfd/axp20x.c", i32 43, i32 2}
!299 = !{ptr @.str.89, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/mfd/axp20x.c", i32 44, i32 2}
!301 = !{ptr @.str.90, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mfd/axp20x.c", i32 45, i32 2}
!303 = !{ptr @axp20x_model_names, !304, !"axp20x_model_names", i1 false, i1 false}
!304 = !{!"../drivers/mfd/axp20x.c", i32 35, i32 27}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
