; ModuleID = '/llk/IR_all_yes/drivers/power/supply/qcom_smbb.c_pt.bc'
source_filename = "../drivers/power/supply/qcom_smbb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.smbb_irq = type { ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_off_mask_default = type { i32, i32, i32, i32 }
%struct.smbb_charger_attr = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.smbb_charger = type { i32, i32, ptr, ptr, i8, i8, i32, %struct.mutex, [9 x i32], ptr, ptr, ptr, ptr, %struct.regulator_desc, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_qcom_smbb__291_1029_smbb_charger_driver_init6 = internal global ptr @smbb_charger_driver_init, section ".initcall6.init", align 4
@smbb_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @smbb_charger_probe, ptr @smbb_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @smbb_charger_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_smbb_charger_driver_exit = internal global ptr @smbb_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description292 = internal constant [76 x i8] c"qcom_smbb.description=Qualcomm Switch-Mode Battery Charger and Boost driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [46 x i8] c"qcom_smbb.file=drivers/power/supply/qcom_smbb\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [25 x i8] c"qcom_smbb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-smbb\00", [22 x i8] zeroinitializer }, align 32
@smbb_charger_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8226-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@smbb_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&chg->statlock\00", [17 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to locate regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smbb_charger_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/power/supply/qcom_smbb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr = internal global ptr @smbb_charger_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing or invalid 'reg' property\0A\00", [61 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.10 = internal global ptr @smbb_charger_probe._entry.8, section ".printk_index", align 4
@smbb_charger_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 861, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to read revision\0A\00", [39 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.13 = internal global ptr @smbb_charger_probe._entry.11, section ".printk_index", align 4
@smbb_charger_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 867, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"v%d hardware not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.16 = internal global ptr @smbb_charger_probe._entry.14, section ".printk_index", align 4
@smbb_charger_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 870, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Initializing SMBB rev %u\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.20 = internal global ptr @smbb_charger_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,disable-dc\00", [16 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 877, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse/apply settings\0A\00", [32 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.24 = internal global ptr @smbb_charger_probe._entry.22, section ".printk_index", align 4
@bat_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.83, i32 1, ptr null, i32 0, ptr @smbb_battery_properties, i32 8, ptr @smbb_battery_get_property, ptr @smbb_battery_set_property, ptr @smbb_battery_writable_property, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 888, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register battery\0A\00", [36 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.27 = internal global ptr @smbb_charger_probe._entry.25, section ".printk_index", align 4
@smbb_bif = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.83], [28 x i8] zeroinitializer }, align 32
@usb_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.84, i32 4, ptr null, i32 0, ptr @smbb_charger_properties, i32 3, ptr @smbb_usbin_get_property, ptr @smbb_usbin_set_property, ptr @smbb_charger_writable_property, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register USB power supply\0A\00", [59 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.30 = internal global ptr @smbb_charger_probe._entry.28, section ".printk_index", align 4
@smbb_usb_extcon_cable = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 905, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.33 = internal global ptr @smbb_charger_probe._entry.31, section ".printk_index", align 4
@smbb_charger_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 911, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.36 = internal global ptr @smbb_charger_probe._entry.34, section ".printk_index", align 4
@dc_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.85, i32 3, ptr null, i32 0, ptr @smbb_charger_properties, i32 3, ptr @smbb_dcin_get_property, ptr @smbb_dcin_set_property, ptr @smbb_charger_writable_property, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 923, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register DC power supply\0A\00", [60 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.39 = internal global ptr @smbb_charger_probe._entry.37, section ".printk_index", align 4
@smbb_charger_irqs = internal constant { [8 x %struct.smbb_irq], [32 x i8] } { [8 x %struct.smbb_irq] [%struct.smbb_irq { ptr @.str.86, ptr @smbb_chg_done_handler }, %struct.smbb_irq { ptr @.str.87, ptr @smbb_chg_fast_handler }, %struct.smbb_irq { ptr @.str.88, ptr @smbb_chg_trkl_handler }, %struct.smbb_irq { ptr @.str.89, ptr @smbb_bat_temp_handler }, %struct.smbb_irq { ptr @.str.90, ptr @smbb_bat_present_handler }, %struct.smbb_irq { ptr @.str.91, ptr @smbb_chg_gone_handler }, %struct.smbb_irq { ptr @.str.92, ptr @smbb_usb_valid_handler }, %struct.smbb_irq { ptr @.str.93, ptr @smbb_dc_valid_handler }], [32 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 942, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request irq '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.42 = internal global ptr @smbb_charger_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"otg-vbus\00", [23 x i8] zeroinitializer }, align 32
@smbb_chg_otg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smbb_chg_otg_enable, ptr @smbb_chg_otg_disable, ptr @smbb_chg_otg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb-otg-in\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom,jeita-extended-temp-range\00", [33 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.3, ptr @.str.4, i32 979, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to set %s temperature range\0A\00", [60 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.48 = internal global ptr @smbb_charger_probe._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"JEITA extended\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@smbb_charger_setup = internal constant { [11 x %struct.reg_off_mask_default], [48 x i8] } { [11 x %struct.reg_off_mask_default] [%struct.reg_off_mask_default { i32 1602, i32 128, i32 128, i32 0 }, %struct.reg_off_mask_default { i32 96, i32 128, i32 0, i32 0 }, %struct.reg_off_mask_default { i32 98, i32 255, i32 160, i32 0 }, %struct.reg_off_mask_default { i32 101, i32 128, i32 0, i32 0 }, %struct.reg_off_mask_default { i32 91, i32 128, i32 0, i32 0 }, %struct.reg_off_mask_default { i32 67, i32 255, i32 0, i32 8 }, %struct.reg_off_mask_default { i32 372, i32 1, i32 1, i32 0 }, %struct.reg_off_mask_default { i32 585, i32 128, i32 128, i32 0 }, %struct.reg_off_mask_default { i32 846, i32 1, i32 1, i32 0 }, %struct.reg_off_mask_default { i32 846, i32 1, i32 1, i32 0 }, %struct.reg_off_mask_default { i32 73, i32 128, i32 128, i32 0 }], [48 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.3, ptr @.str.4, i32 993, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to initializing charging, bailing\0A\00", [54 x i8] zeroinitializer }, align 32
@smbb_charger_probe._entry_ptr.53 = internal global ptr @smbb_charger_probe._entry.51, section ".printk_index", align 4
@smbb_charger_attrs = internal constant { [9 x %struct.smbb_charger_attr], [36 x i8] } { [9 x %struct.smbb_charger_attr] [%struct.smbb_charger_attr { ptr @.str.54, i32 69, i32 0, i32 3000000, i32 200000, i32 1, ptr @smbb_bat_imax_fn }, %struct.smbb_charger_attr { ptr @.str.55, i32 68, i32 69, i32 3000000, i32 200000, i32 0, ptr @smbb_bat_imax_fn }, %struct.smbb_charger_attr { ptr @.str.56, i32 836, i32 0, i32 2500000, i32 100000, i32 0, ptr @smbb_imax_fn }, %struct.smbb_charger_attr { ptr @.str.57, i32 1092, i32 0, i32 2500000, i32 100000, i32 0, ptr @smbb_imax_fn }, %struct.smbb_charger_attr { ptr @.str.58, i32 65, i32 0, i32 5000000, i32 3240000, i32 1, ptr @smbb_vmax_fn }, %struct.smbb_charger_attr { ptr @.str.59, i32 64, i32 65, i32 5000000, i32 3240000, i32 0, ptr @smbb_vmax_fn }, %struct.smbb_charger_attr { ptr @.str.60, i32 82, i32 0, i32 3600000, i32 2100000, i32 0, ptr @smbb_vbat_weak_fn }, %struct.smbb_charger_attr { ptr @.str.61, i32 93, i32 0, i32 5000000, i32 3240000, i32 0, ptr @smbb_vbat_det_fn }, %struct.smbb_charger_attr { ptr @.str.62, i32 71, i32 0, i32 9600000, i32 4200000, i32 0, ptr @smbb_vin_fn }], [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom,fast-charge-safe-current\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom,fast-charge-current-limit\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb-charge-current-limit\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,dc-current-limit\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom,fast-charge-safe-voltage\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"qcom,fast-charge-high-threshold-voltage\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qcom,fast-charge-low-threshold-voltage\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qcom,auto-recharge-threshold-voltage\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,minimum-input-voltage\00", [37 x i8] zeroinitializer }, align 32
@smbb_charger_attr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"value out of range for %s [%u:%u]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smbb_charger_attr_write\00", [40 x i8] zeroinitializer }, align 32
@smbb_charger_attr_write._entry_ptr = internal global ptr @smbb_charger_attr_write._entry, section ".printk_index", align 4
@smbb_charger_attr_write._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to read safe value for '%s'\0A\00", [60 x i8] zeroinitializer }, align 32
@smbb_charger_attr_write._entry_ptr.67 = internal global ptr @smbb_charger_attr_write._entry.65, section ".printk_index", align 4
@smbb_charger_attr_write._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.4, i32 287, ptr @.str.70, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s above safe value, clamping at %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@smbb_charger_attr_write._entry_ptr.71 = internal global ptr @smbb_charger_attr_write._entry.68, section ".printk_index", align 4
@smbb_charger_attr_write._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.64, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to update %s\00", [44 x i8] zeroinitializer }, align 32
@smbb_charger_attr_write._entry_ptr.74 = internal global ptr @smbb_charger_attr_write._entry.72, section ".printk_index", align 4
@smbb_charger_attr_write._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.64, ptr @.str.4, i32 303, ptr @.str.70, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s inaccurate, rounded to %u\0A\00", [34 x i8] zeroinitializer }, align 32
@smbb_charger_attr_write._entry_ptr.77 = internal global ptr @smbb_charger_attr_write._entry.75, section ".printk_index", align 4
@smbb_charger_attr_write.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.78, ptr @.str.64, ptr @.str.4, ptr @.str.79, i8 0, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_smbb\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s <= %d\0A\00", [22 x i8] zeroinitializer }, align 32
@smbb_charger_attr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to read %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smbb_charger_attr_read\00", [41 x i8] zeroinitializer }, align 32
@smbb_charger_attr_read._entry_ptr = internal global ptr @smbb_charger_attr_read._entry, section ".printk_index", align 4
@smbb_charger_attr_read.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.78, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s => %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smbb-bif\00", [23 x i8] zeroinitializer }, align 32
@smbb_battery_properties = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 2, i32 3, i32 1, i32 16, i32 8, i32 11, i32 6], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smbb-usbin\00", [21 x i8] zeroinitializer }, align 32
@smbb_charger_properties = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 33, i32 34], [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smbb-dcin\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chg-done\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chg-fast\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chg-trkl\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bat-temp-ok\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bat-present\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chg-gone\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-valid\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dc-valid\00", [23 x i8] zeroinitializer }, align 32
@smbb_set_line_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read irq line\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smbb_set_line_flag\00", [45 x i8] zeroinitializer }, align 32
@smbb_set_line_flag._entry_ptr = internal global ptr @smbb_set_line_flag._entry, section ".printk_index", align 4
@smbb_set_line_flag.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.78, ptr @.str.95, ptr @.str.4, ptr @.str.96, i8 0, i8 92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"status = %03lx\0A\00", [16 x i8] zeroinitializer }, align 32
@smbb_chg_otg_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 796, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to update OTG_CTL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smbb_chg_otg_enable\00", [44 x i8] zeroinitializer }, align 32
@smbb_chg_otg_enable._entry_ptr = internal global ptr @smbb_chg_otg_enable._entry, section ".printk_index", align 4
@smbb_chg_otg_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.99, ptr @.str.4, i32 808, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smbb_chg_otg_disable\00", [43 x i8] zeroinitializer }, align 32
@smbb_chg_otg_disable._entry_ptr = internal global ptr @smbb_chg_otg_disable._entry, section ".printk_index", align 4
@smbb_chg_otg_is_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 820, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to read OTG_CTL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smbb_chg_otg_is_enabled\00", [40 x i8] zeroinitializer }, align 32
@smbb_chg_otg_is_enabled._entry_ptr = internal global ptr @smbb_chg_otg_is_enabled._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 8, i64 11, i64 16]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 33, i64 34]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 33, i64 34]
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"smbb_charger_driver\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1021, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1025, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"smbb_charger_id_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1014, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 845, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 849, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 853, i32 47 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 855, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 861, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 867, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 870, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 872, i32 62 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 877, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [13 x i8] c"bat_psy_desc\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 758, i32 39 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 888, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [9 x i8] c"smbb_bif\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 756, i32 14 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"usb_psy_desc\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 768, i32 39 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 899, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"smbb_usb_extcon_cable\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 128, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 905, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 911, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"dc_psy_desc\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 778, i32 39 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 923, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [18 x i8] c"smbb_charger_irqs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 477, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 941, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 952, i32 24 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"smbb_chg_otg_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 825, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 956, i32 31 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 968, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 977, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"smbb_charger_setup\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 716, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 992, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [19 x i8] c"smbb_charger_attrs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 186, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 188, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 196, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 248, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 204, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 211, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 219, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 227, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 234, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 241, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 267, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 276, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 285, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 296, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 301, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 306, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 324, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 328, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 759, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant [24 x i8] c"smbb_battery_properties\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 700, i32 35 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 769, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant [24 x i8] c"smbb_charger_properties\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 694, i32 35 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 779, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 478, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 479, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 480, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 481, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 482, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 483, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 484, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 485, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 360, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 371, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 796, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 808, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [36 x i8] c"../drivers/power/supply/qcom_smbb.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 820, i32 3 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_smbb_charger_driver_exit, ptr @__initcall__kmod_qcom_smbb__291_1029_smbb_charger_driver_init6, ptr @smbb_charger_attr_read._entry, ptr @smbb_charger_attr_read._entry_ptr, ptr @smbb_charger_attr_write._entry, ptr @smbb_charger_attr_write._entry.65, ptr @smbb_charger_attr_write._entry.68, ptr @smbb_charger_attr_write._entry.72, ptr @smbb_charger_attr_write._entry.75, ptr @smbb_charger_attr_write._entry_ptr, ptr @smbb_charger_attr_write._entry_ptr.67, ptr @smbb_charger_attr_write._entry_ptr.71, ptr @smbb_charger_attr_write._entry_ptr.74, ptr @smbb_charger_attr_write._entry_ptr.77, ptr @smbb_charger_driver_exit, ptr @smbb_charger_probe._entry, ptr @smbb_charger_probe._entry.11, ptr @smbb_charger_probe._entry.14, ptr @smbb_charger_probe._entry.17, ptr @smbb_charger_probe._entry.22, ptr @smbb_charger_probe._entry.25, ptr @smbb_charger_probe._entry.28, ptr @smbb_charger_probe._entry.31, ptr @smbb_charger_probe._entry.34, ptr @smbb_charger_probe._entry.37, ptr @smbb_charger_probe._entry.40, ptr @smbb_charger_probe._entry.46, ptr @smbb_charger_probe._entry.51, ptr @smbb_charger_probe._entry.8, ptr @smbb_charger_probe._entry_ptr, ptr @smbb_charger_probe._entry_ptr.10, ptr @smbb_charger_probe._entry_ptr.13, ptr @smbb_charger_probe._entry_ptr.16, ptr @smbb_charger_probe._entry_ptr.20, ptr @smbb_charger_probe._entry_ptr.24, ptr @smbb_charger_probe._entry_ptr.27, ptr @smbb_charger_probe._entry_ptr.30, ptr @smbb_charger_probe._entry_ptr.33, ptr @smbb_charger_probe._entry_ptr.36, ptr @smbb_charger_probe._entry_ptr.39, ptr @smbb_charger_probe._entry_ptr.42, ptr @smbb_charger_probe._entry_ptr.48, ptr @smbb_charger_probe._entry_ptr.53, ptr @smbb_chg_otg_disable._entry, ptr @smbb_chg_otg_disable._entry_ptr, ptr @smbb_chg_otg_enable._entry, ptr @smbb_chg_otg_enable._entry_ptr, ptr @smbb_chg_otg_is_enabled._entry, ptr @smbb_chg_otg_is_enabled._entry_ptr, ptr @smbb_set_line_flag._entry, ptr @smbb_set_line_flag._entry_ptr, ptr @smbb_charger_driver, ptr @.str, ptr @smbb_charger_id_table, ptr @smbb_charger_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @bat_psy_desc, ptr @.str.26, ptr @smbb_bif, ptr @usb_psy_desc, ptr @.str.29, ptr @smbb_usb_extcon_cable, ptr @.str.32, ptr @.str.35, ptr @dc_psy_desc, ptr @.str.38, ptr @smbb_charger_irqs, ptr @.str.41, ptr @.str.43, ptr @smbb_chg_otg_ops, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @smbb_charger_setup, ptr @.str.52, ptr @smbb_charger_attrs, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @smbb_battery_properties, ptr @.str.84, ptr @smbb_charger_properties, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_bif to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_usb_extcon_cable to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_irqs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_chg_otg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_setup to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_attrs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_attr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_attr_write._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_attr_write._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_attr_write._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_attr_write._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_attr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_battery_properties to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_charger_properties to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_set_line_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_chg_otg_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_chg_otg_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbb_chg_otg_is_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smbb_charger_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smbb_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @smbb_charger_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %bat_cfg = alloca %struct.power_supply_config, align 4
  %usb_cfg = alloca %struct.power_supply_config, align 4
  %dc_cfg = alloca %struct.power_supply_config, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bat_cfg) #6
  %0 = call ptr @memset(ptr %bat_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %usb_cfg) #6
  %1 = call ptr @memset(ptr %usb_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dc_cfg) #6
  %2 = call ptr @memset(ptr %dc_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %3 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 416, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup221_crit_edge, label %if.end

entry.cleanup221_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup221

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev2, align 4
  %statlock = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %statlock, ptr noundef nonnull @.str.1, ptr noundef nonnull @smbb_charger_probe.__key) #6
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call4 = tail call ptr @dev_get_regmap(ptr noundef %6, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %regmap, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup221

if.end12:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %addr, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup221

if.end21:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %add = add i32 %13, 1537
  %call24 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef %add, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup221

if.end31:                                         ; preds = %if.end21
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  %add33 = add i32 %15, 1
  store i32 %add33, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %do.end49, label %do.end43

do.end43:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %add33) #9
  br label %cleanup221

do.end49:                                         ; preds = %if.end31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %add33) #9
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i347 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i347, null
  %dc_disabled = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %19 = ptrtoint ptr %dc_disabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %dc_disabled, align 4
  br label %for.body

for.cond:                                         ; preds = %smbb_charger_attr_parse.exit
  %inc = add nuw nsw i32 %i.0364, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end49
  %i.0364 = phi i32 [ 0, %do.end49 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i, align 4, !annotation !217
  %arrayidx.i = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %i.0364
  %21 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end4.i_crit_edge

for.body.if.end4.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %for.body
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %call1.i = call fastcc i32 @smbb_charger_attr_write(ptr noundef %call.i, i32 noundef %i.0364, i32 noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp ne i32 %call1.i, 0
  %29 = and i32 %i.0364, 1073741819
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %.not.i = icmp eq i32 %29, 0
  %or.cond.i = and i1 %.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.smbb_charger_attr_parse.exit_crit_edge

if.then.i.smbb_charger_attr_parse.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smbb_charger_attr_parse.exit

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %for.body.if.end4.i_crit_edge
  %call5.i = call fastcc i32 @smbb_charger_attr_read(ptr noundef %call.i, i32 noundef %i.0364) #6
  br label %smbb_charger_attr_parse.exit

smbb_charger_attr_parse.exit:                     ; preds = %if.end4.i, %if.then.i.smbb_charger_attr_parse.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end4.i ], [ %call1.i, %if.then.i.smbb_charger_attr_parse.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool57.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool57.not, label %for.cond, label %do.end61

do.end61:                                         ; preds = %smbb_charger_attr_parse.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup221

for.end:                                          ; preds = %for.cond
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %bat_cfg, i32 0, i32 2
  %30 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %drv_data, align 4
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %33 = ptrtoint ptr %bat_cfg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %bat_cfg, align 4
  %call68 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @bat_psy_desc, ptr noundef nonnull %bat_cfg) #6
  %bat_psy = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 11
  %34 = ptrtoint ptr %bat_psy to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call68, ptr %bat_psy, align 4
  %cmp.i348 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i348, label %do.end74, label %if.end78

do.end74:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  %35 = ptrtoint ptr %bat_psy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bat_psy, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup221

if.end78:                                         ; preds = %for.end
  %drv_data79 = getelementptr inbounds %struct.power_supply_config, ptr %usb_cfg, i32 0, i32 2
  %38 = ptrtoint ptr %drv_data79 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %drv_data79, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %usb_cfg, i32 0, i32 4
  %39 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @smbb_bif, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %usb_cfg, i32 0, i32 5
  %40 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %num_supplicants, align 4
  %call81 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @usb_psy_desc, ptr noundef nonnull %usb_cfg) #6
  %usb_psy = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 9
  %41 = ptrtoint ptr %usb_psy to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call81, ptr %usb_psy, align 4
  %cmp.i349 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i349, label %do.end87, label %if.end91

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  %42 = ptrtoint ptr %usb_psy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_psy, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup221

if.end91:                                         ; preds = %if.end78
  %call93 = call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @smbb_usb_extcon_cable) #6
  %edev = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call93, ptr %edev, align 4
  %cmp.i350 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %do.end99, label %if.end101

do.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %cleanup221

if.end101:                                        ; preds = %if.end91
  %call104 = call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end109, label %if.end111

do.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #9
  br label %cleanup221

if.end111:                                        ; preds = %if.end101
  %46 = ptrtoint ptr %dc_disabled to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dc_disabled, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool113.not = icmp eq i8 %47, 0
  br i1 %tobool113.not, label %if.then114, label %if.end111.for.body133.preheader_crit_edge

if.end111.for.body133.preheader_crit_edge:        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body133.preheader

for.body133.preheader:                            ; preds = %if.then114.for.body133.preheader_crit_edge, %if.end111.for.body133.preheader_crit_edge
  br label %for.body133

if.then114:                                       ; preds = %if.end111
  %drv_data115 = getelementptr inbounds %struct.power_supply_config, ptr %dc_cfg, i32 0, i32 2
  %48 = ptrtoint ptr %drv_data115 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %drv_data115, align 4
  %supplied_to116 = getelementptr inbounds %struct.power_supply_config, ptr %dc_cfg, i32 0, i32 4
  %49 = ptrtoint ptr %supplied_to116 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @smbb_bif, ptr %supplied_to116, align 4
  %num_supplicants117 = getelementptr inbounds %struct.power_supply_config, ptr %dc_cfg, i32 0, i32 5
  %50 = ptrtoint ptr %num_supplicants117 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %num_supplicants117, align 4
  %call119 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @dc_psy_desc, ptr noundef nonnull %dc_cfg) #6
  %dc_psy = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 10
  %51 = ptrtoint ptr %dc_psy to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call119, ptr %dc_psy, align 4
  %cmp.i351 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %do.end125, label %if.then114.for.body133.preheader_crit_edge

if.then114.for.body133.preheader_crit_edge:       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body133.preheader

do.end125:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  %52 = ptrtoint ptr %dc_psy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dc_psy, align 4
  %54 = ptrtoint ptr %53 to i32
  br label %cleanup221

for.cond131:                                      ; preds = %if.end137
  %inc156 = add nuw nsw i32 %i.1367, 1
  %exitcond376.not = icmp eq i32 %inc156, 8
  br i1 %exitcond376.not, label %for.end157, label %for.cond131.for.body133_crit_edge

for.cond131.for.body133_crit_edge:                ; preds = %for.cond131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body133

for.body133:                                      ; preds = %for.cond131.for.body133_crit_edge, %for.body133.preheader
  %i.1367 = phi i32 [ %inc156, %for.cond131.for.body133_crit_edge ], [ 0, %for.body133.preheader ]
  %arrayidx = getelementptr [8 x %struct.smbb_irq], ptr @smbb_charger_irqs, i32 0, i32 %i.1367
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %call134 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %for.body133.cleanup221_crit_edge, label %if.end137

for.body133.cleanup221_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup221

if.end137:                                        ; preds = %for.body133
  %handler = getelementptr [8 x %struct.smbb_irq], ptr @smbb_charger_irqs, i32 0, i32 %i.1367, i32 1
  %57 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handler, align 4
  %call139 = call i32 %58(i32 noundef %call134, ptr noundef nonnull %call.i) #6
  %call145 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call134, ptr noundef null, ptr noundef %58, i32 noundef 8192, ptr noundef %56, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %for.cond131, label %do.end150

do.end150:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %56) #9
  br label %cleanup221

for.end157:                                       ; preds = %for.cond131
  %otg_rdesc = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 13
  %id = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 13, i32 6
  %59 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %id, align 4
  %60 = ptrtoint ptr %otg_rdesc to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.43, ptr %otg_rdesc, align 4
  %ops = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 13, i32 10
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @smbb_chg_otg_ops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 13, i32 13
  %62 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %owner, align 4
  %type = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 13, i32 12
  %63 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %type, align 4
  %supply_name = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 13, i32 1
  %64 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.44, ptr %supply_name, align 4
  %of_match = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 13, i32 2
  %65 = ptrtoint ptr %of_match to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.43, ptr %of_match, align 4
  %66 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %67 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %driver_data, align 4
  %call169 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %otg_rdesc, ptr noundef nonnull %config) #6
  %otg_reg = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 14
  %68 = ptrtoint ptr %otg_reg to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call169, ptr %otg_reg, align 4
  %cmp.i352 = icmp ugt ptr %call169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i352, label %if.then172, label %if.end175

if.then172:                                       ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %call169 to i32
  br label %cleanup221

if.end175:                                        ; preds = %for.end157
  %70 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node, align 8
  %call.i353 = call ptr @of_find_property(ptr noundef %71, ptr noundef nonnull @.str.45, ptr noundef null) #6
  %tobool.i354 = icmp ne ptr %call.i353, null
  %jeita_ext_temp = getelementptr inbounds %struct.smbb_charger, ptr %call.i, i32 0, i32 5
  %frombool179 = zext i1 %tobool.i354 to i8
  %72 = ptrtoint ptr %jeita_ext_temp to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %frombool179, ptr %jeita_ext_temp, align 1
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %75 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addr, align 4
  %add182 = add i32 %76, 585
  %cond = select i1 %tobool.i354, i32 2, i32 1
  %call.i355 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef %add182, i32 noundef 3, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i355)
  %tobool186.not = icmp eq i32 %call.i355, 0
  br i1 %tobool186.not, label %if.end175.for.body198_crit_edge, label %do.end190

if.end175.for.body198_crit_edge:                  ; preds = %if.end175
  br label %for.body198

do.end190:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %jeita_ext_temp to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %jeita_ext_temp, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool193.not = icmp eq i8 %78, 0
  %cond194 = select i1 %tobool193.not, ptr @.str.50, ptr @.str.49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond194) #9
  br label %cleanup221

for.body198:                                      ; preds = %for.inc218.for.body198_crit_edge, %if.end175.for.body198_crit_edge
  %i.2368 = phi i32 [ %inc219, %for.inc218.for.body198_crit_edge ], [ 0, %if.end175.for.body198_crit_edge ]
  %rev_mask = getelementptr [11 x %struct.reg_off_mask_default], ptr @smbb_charger_setup, i32 0, i32 %i.2368, i32 3
  %79 = ptrtoint ptr %rev_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rev_mask, align 4
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call.i, align 4
  %shl = shl nuw i32 1, %82
  %and = and i32 %shl, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool201.not = icmp eq i32 %and, 0
  br i1 %tobool201.not, label %if.end203, label %for.body198.for.inc218_crit_edge

for.body198.for.inc218_crit_edge:                 ; preds = %for.body198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc218

if.end203:                                        ; preds = %for.body198
  %arrayidx199 = getelementptr [11 x %struct.reg_off_mask_default], ptr @smbb_charger_setup, i32 0, i32 %i.2368
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %85 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %addr, align 4
  %87 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx199, align 4
  %add206 = add i32 %88, %86
  %mask = getelementptr [11 x %struct.reg_off_mask_default], ptr @smbb_charger_setup, i32 0, i32 %i.2368, i32 1
  %89 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mask, align 4
  %value = getelementptr [11 x %struct.reg_off_mask_default], ptr @smbb_charger_setup, i32 0, i32 %i.2368, i32 2
  %91 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %value, align 4
  %call.i356 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef %add206, i32 noundef %90, i32 noundef %92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool208.not = icmp eq i32 %call.i356, 0
  br i1 %tobool208.not, label %if.end203.for.inc218_crit_edge, label %cleanup215

if.end203.for.inc218_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc218

cleanup215:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #9
  br label %cleanup221

for.inc218:                                       ; preds = %if.end203.for.inc218_crit_edge, %for.body198.for.inc218_crit_edge
  %inc219 = add nuw nsw i32 %i.2368, 1
  %exitcond377.not = icmp eq i32 %inc219, 11
  br i1 %exitcond377.not, label %for.end220, label %for.inc218.for.body198_crit_edge

for.inc218.for.body198_crit_edge:                 ; preds = %for.inc218
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body198

for.end220:                                       ; preds = %for.inc218
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup221

cleanup221:                                       ; preds = %for.end220, %cleanup215, %do.end190, %if.then172, %do.end150, %for.body133.cleanup221_crit_edge, %do.end125, %do.end109, %do.end99, %do.end87, %do.end74, %do.end61, %do.end43, %do.end29, %do.end19, %do.end10, %entry.cleanup221_crit_edge
  %retval.4 = phi i32 [ %call.i.i, %do.end19 ], [ %call24, %do.end29 ], [ -19, %do.end43 ], [ %retval.0.i, %do.end61 ], [ %37, %do.end74 ], [ %44, %do.end87 ], [ -12, %do.end99 ], [ %call104, %do.end109 ], [ %69, %if.then172 ], [ %call.i355, %do.end190 ], [ %call.i356, %cleanup215 ], [ 0, %for.end220 ], [ %54, %do.end125 ], [ -19, %do.end10 ], [ -12, %entry.cleanup221_crit_edge ], [ %call145, %do.end150 ], [ %call134, %for.body133.cleanup221_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dc_cfg) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %usb_cfg) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bat_cfg) #6
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %add = add i32 %5, 73
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smbb_charger_attr_write(ptr nocapture noundef %chg, i32 noundef %which, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %wval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wval) #6
  %0 = ptrtoint ptr %wval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wval, align 4, !annotation !217
  %arrayidx = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which
  %max = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 3
  %1 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val)
  %cmp = icmp ult i32 %2, %val
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %min = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 4
  %3 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1 = icmp ugt i32 %4, %val
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %min2 = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 4
  %9 = ptrtoint ptr %min2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.63, ptr noundef %8, i32 noundef %10, i32 noundef %2) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = and i32 %which, 1073741819
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %.not = icmp eq i32 %11, 1
  br i1 %.not, label %if.then4, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then4:                                         ; preds = %if.end
  %safe_reg = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 2
  %12 = ptrtoint ptr %safe_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %safe_reg, align 4
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 12
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %add = add i32 %17, %13
  %call = call i32 @regmap_read(ptr noundef %15, i32 noundef %add, ptr noundef nonnull %wval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %18 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev11, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.66, ptr noundef %21) #9
  br label %cleanup

if.end13:                                         ; preds = %if.then4
  %hw_fn = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 6
  %22 = ptrtoint ptr %hw_fn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_fn, align 4
  %24 = ptrtoint ptr %wval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wval, align 4
  %call14 = call i32 %23(i32 noundef %25) #6
  %26 = ptrtoint ptr %wval to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call14, ptr %wval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %val)
  %cmp15 = icmp ult i32 %call14, %val
  br i1 %cmp15, label %do.end19, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %27 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev20, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.69, ptr noundef %30, i32 noundef %call14) #9
  %31 = ptrtoint ptr %wval to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wval, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %if.end13.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %val.addr.0 = phi i32 [ %32, %do.end19 ], [ %val, %if.end13.if.end23_crit_edge ], [ %val, %if.end.if.end23_crit_edge ]
  %hw_fn24 = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 6
  %33 = ptrtoint ptr %hw_fn24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_fn24, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end23
  %widx.0.i = phi i32 [ 0, %if.end23 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %sel.0.i = phi i32 [ 0, %if.end23 ], [ %widx.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %call.i = call i32 %34(i32 noundef %widx.0.i) #6
  %cmp.not.i = icmp ugt i32 %call.i, %val.addr.0
  %inc.i = add i32 %widx.0.i, 1
  br i1 %cmp.not.i, label %smbb_hw_lookup.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

smbb_hw_lookup.exit:                              ; preds = %for.cond.i
  %35 = ptrtoint ptr %wval to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sel.0.i, ptr %wval, align 4
  %regmap26 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 12
  %36 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap26, align 4
  %addr27 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 1
  %38 = ptrtoint ptr %addr27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr27, align 4
  %reg = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 1
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg, align 4
  %add28 = add i32 %41, %39
  %call29 = call i32 @regmap_write(ptr noundef %37, i32 noundef %add28, i32 noundef %sel.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %smbb_hw_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %42 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev35, align 4
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.73, ptr noundef %45) #9
  br label %cleanup

if.end37:                                         ; preds = %smbb_hw_lookup.exit
  %46 = ptrtoint ptr %wval to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wval, align 4
  %call39 = call i32 %34(i32 noundef %47) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call39, i32 %val.addr.0)
  %cmp40.not = icmp eq i32 %call39, %val.addr.0
  br i1 %cmp40.not, label %if.end37.do.body48_crit_edge, label %do.end44

if.end37.do.body48_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %dev45 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %48 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev45, align 4
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.76, ptr noundef %51, i32 noundef %call39) #9
  br label %do.body48

do.body48:                                        ; preds = %do.end44, %if.end37.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smbb_charger_attr_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smbb_charger_attr_write, %do.end59)) #6
          to label %if.then54 [label %do.end59], !srcloc !219

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %dev55 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %52 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev55, align 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smbb_charger_attr_write.__UNIQUE_ID_ddebug288, ptr noundef %53, ptr noundef nonnull @.str.79, ptr noundef %55, i32 noundef %call39) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body48
  %arrayidx60 = getelementptr %struct.smbb_charger, ptr %chg, i32 0, i32 8, i32 %which
  %56 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call39, ptr %arrayidx60, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.end34, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end10 ], [ %call29, %do.end34 ], [ 0, %do.end59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smbb_charger_attr_read(ptr nocapture noundef %chg, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !217
  %arrayidx = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 12
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %reg = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %add = add i32 %6, %4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.80, ptr noundef %10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_fn = getelementptr [9 x %struct.smbb_charger_attr], ptr @smbb_charger_attrs, i32 0, i32 %which, i32 6
  %11 = ptrtoint ptr %hw_fn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_fn, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %call1 = call i32 %12(i32 noundef %14) #6
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call1, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smbb_charger_attr_read.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smbb_charger_attr_read, %do.end13)) #6
          to label %if.then8 [label %do.end13], !srcloc !219

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smbb_charger_attr_read.__UNIQUE_ID_ddebug289, ptr noundef %17, ptr noundef nonnull @.str.82, ptr noundef %19, i32 noundef %21) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %if.end
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %arrayidx14 = getelementptr %struct.smbb_charger, ptr %chg, i32 0, i32 8, i32 %which
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_bat_imax_fn(i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %index, 50000
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_imax_fn(i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp = icmp ult i32 %index, 2
  %mul = mul i32 %index, 50000
  %add = add i32 %mul, 100000
  %mul1 = mul i32 %index, 100000
  %retval.0 = select i1 %cmp, i32 %add, i32 %mul1
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_vmax_fn(i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %index, 10000
  %add = add i32 %mul, 3240000
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_vbat_weak_fn(i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %index, 100000
  %add = add i32 %mul, 2100000
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_vbat_det_fn(i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %index, 20000
  %add = add i32 %mul, 3240000
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_vin_fn(i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %index)
  %cmp = icmp ugt i32 %index, 42
  %0 = mul i32 %index, 200000
  %add = add i32 %0, -3000000
  %mul1 = mul i32 %index, 50000
  %add2 = add i32 %mul1, 3400000
  %retval.0 = select i1 %cmp, i32 %add, i32 %add2
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %statlock = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %statlock, i32 noundef 0) #6
  %status1 = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  tail call void @mutex_unlock(ptr noundef %statlock) #6
  %2 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb23
    i32 1, label %sw.bb34
    i32 3, label %sw.bb45
    i32 16, label %sw.bb49
    i32 8, label %sw.bb50
    i32 6, label %entry.sw.epilog.sink.split_crit_edge
    i32 11, label %sw.bb54
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.else6

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.else6:                                         ; preds = %sw.bb
  %and7 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.else6.sw.epilog.sink.split_crit_edge

if.else6.sw.epilog.sink.split_crit_edge:          ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.else10:                                        ; preds = %if.else6
  %and11 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else10.sw.epilog.sink.split_crit_edge, label %if.else14

if.else10.sw.epilog.sink.split_crit_edge:         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  %and15 = and i32 %1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool16.not, i32 2, i32 1
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %entry
  %and24 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else27, label %sw.bb23.sw.epilog.sink.split_crit_edge

sw.bb23.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.else27:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %and28 = and i32 %1, 4
  %3 = xor i32 %and28, 6
  br label %sw.epilog.sink.split

sw.bb34:                                          ; preds = %entry
  %and35 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else38, label %sw.bb34.sw.epilog.sink.split_crit_edge

sw.bb34.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.else38:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  %and39 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %.85 = select i1 %tobool40.not, i32 1, i32 2
  br label %sw.epilog.sink.split

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and46 = lshr i32 %1, 4
  %and46.lobit = and i32 %and46, 1
  br label %sw.epilog.sink.split

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.smbb_charger, ptr %call, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  br label %sw.epilog.sink.split

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx52 = getelementptr %struct.smbb_charger, ptr %call, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx52, align 4
  br label %sw.epilog.sink.split

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb54, %sw.bb50, %sw.bb49, %sw.bb45, %if.else38, %sw.bb34.sw.epilog.sink.split_crit_edge, %if.else27, %sw.bb23.sw.epilog.sink.split_crit_edge, %if.else14, %if.else10.sw.epilog.sink.split_crit_edge, %if.else6.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 3000000, %sw.bb54 ], [ %7, %sw.bb50 ], [ %5, %sw.bb49 ], [ %and46.lobit, %sw.bb45 ], [ 2, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 4, %if.else6.sw.epilog.sink.split_crit_edge ], [ 2, %if.else10.sw.epilog.sink.split_crit_edge ], [ %., %if.else14 ], [ 1, %sw.bb23.sw.epilog.sink.split_crit_edge ], [ %3, %if.else27 ], [ 3, %sw.bb34.sw.epilog.sink.split_crit_edge ], [ %.85, %if.else38 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_battery_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 16, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 5, %sw.bb2 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call3 = tail call fastcc i32 @smbb_charger_attr_write(ptr noundef %call, i32 noundef %.sink, i32 noundef %2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call3, %sw.epilog.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_battery_writable_property(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %psp, -8
  %switch.and = and i32 %0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %1 = zext i1 %switch.selectcmp to i32
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_usbin_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 33, label %sw.bb5
    i32 34, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %statlock = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %statlock, i32 noundef 0) #6
  %status = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %2, 1
  %spec.select = select i1 %tobool.not, i32 %and2, i32 0
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %statlock) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.smbb_charger, ptr %call, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2500000, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_usbin_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %psp)
  %cond = icmp eq i32 %psp, 33
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %call1 = tail call fastcc i32 @smbb_charger_attr_write(ptr noundef %call, i32 noundef 2, i32 noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smbb_charger_writable_property(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %psp)
  %cmp = icmp eq i32 %psp, 33
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_dcin_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 33, label %sw.bb5
    i32 34, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %statlock = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %statlock, i32 noundef 0) #6
  %status = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = lshr i32 %2, 1
  %and2.lobit = and i32 %and2, 1
  %3 = select i1 %tobool.not, i32 %and2.lobit, i32 0
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %statlock) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.smbb_charger, ptr %call, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2500000, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_dcin_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %psp)
  %cond = icmp eq i32 %psp, 33
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %call1 = tail call fastcc i32 @smbb_charger_attr_write(ptr noundef %call, i32 noundef 3, i32 noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_chg_done_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smbb_set_line_flag(ptr noundef %_data, i32 noundef %irq, i32 noundef 32)
  %bat_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 11
  %0 = ptrtoint ptr %bat_psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_psy, align 4
  tail call void @power_supply_changed(ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_chg_fast_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smbb_set_line_flag(ptr noundef %_data, i32 noundef %irq, i32 noundef 128)
  %bat_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 11
  %0 = ptrtoint ptr %bat_psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_psy, align 4
  tail call void @power_supply_changed(ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_chg_trkl_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smbb_set_line_flag(ptr noundef %_data, i32 noundef %irq, i32 noundef 64)
  %bat_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 11
  %0 = ptrtoint ptr %bat_psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_psy, align 4
  tail call void @power_supply_changed(ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_bat_temp_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !217
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 12
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %add = add i32 %4, 521
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %statlock = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %statlock, i32 noundef 0) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %status3 = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 6
  %7 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status3, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %8, 8
  br label %if.end11.sink.split

if.else:                                          ; preds = %if.end
  %and4 = and i32 %8, -9
  %9 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and4, ptr %status3, align 4
  %and5 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.end11_crit_edge, label %if.then7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or9 = or i32 %and4, 4
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then7, %if.then2
  %or9.sink = phi i32 [ %or9, %if.then7 ], [ %or, %if.then2 ]
  %10 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or9.sink, ptr %status3, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %statlock) #6
  %bat_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 11
  %11 = ptrtoint ptr %bat_psy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bat_psy, align 4
  call void @power_supply_changed(ptr noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_bat_present_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smbb_set_line_flag(ptr noundef %_data, i32 noundef %irq, i32 noundef 16)
  %bat_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 11
  %0 = ptrtoint ptr %bat_psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_psy, align 4
  tail call void @power_supply_changed(ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_chg_gone_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smbb_set_line_flag(ptr noundef %_data, i32 noundef %irq, i32 noundef 256)
  %bat_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 11
  %0 = ptrtoint ptr %bat_psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_psy, align 4
  tail call void @power_supply_changed(ptr noundef %1) #6
  %usb_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 9
  %2 = ptrtoint ptr %usb_psy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_psy, align 4
  tail call void @power_supply_changed(ptr noundef %3) #6
  %dc_disabled = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 4
  %4 = ptrtoint ptr %dc_disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dc_disabled, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dc_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 10
  %6 = ptrtoint ptr %dc_psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_psy, align 4
  tail call void @power_supply_changed(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_usb_valid_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smbb_set_line_flag(ptr noundef %_data, i32 noundef %irq, i32 noundef 1)
  %edev = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 3
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %status = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call = tail call i32 @extcon_set_state_sync(ptr noundef %1, i32 noundef 1, i1 noundef zeroext %tobool) #6
  %usb_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 9
  %4 = ptrtoint ptr %usb_psy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_psy, align 4
  tail call void @power_supply_changed(ptr noundef %5) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_dc_valid_handler(i32 noundef %irq, ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smbb_set_line_flag(ptr noundef %_data, i32 noundef %irq, i32 noundef 2)
  %dc_disabled = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 4
  %0 = ptrtoint ptr %dc_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dc_disabled, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dc_psy = getelementptr inbounds %struct.smbb_charger, ptr %_data, i32 0, i32 10
  %2 = ptrtoint ptr %dc_psy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_psy, align 4
  tail call void @power_supply_changed(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smbb_set_line_flag(ptr noundef %chg, i32 noundef %irq, i32 noundef %flag) unnamed_addr #2 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %state, align 1, !annotation !217
  %call = call i32 @irq_get_irqchip_state(i32 noundef %irq, i32 noundef 3, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.94) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %statlock = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %statlock, i32 noundef 0) #6
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 6
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %or = or i32 %6, %flag
  store i32 %or, ptr %status, align 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %flag, -1
  %status2 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 6
  %7 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status2, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %status2, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  call void @mutex_unlock(ptr noundef %statlock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smbb_set_line_flag.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smbb_set_line_flag, %cleanup)) #6
          to label %if.then11 [label %cleanup], !srcloc !219

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 2
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  %status13 = getelementptr inbounds %struct.smbb_charger, ptr %chg, i32 0, i32 6
  %11 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status13, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smbb_set_line_flag.__UNIQUE_ID_ddebug290, ptr noundef %10, ptr noundef nonnull @.str.96, i32 noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end3, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_irqchip_state(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_chg_otg_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %add = add i32 %3, 840
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.97) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_chg_otg_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %add = add i32 %3, 840
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.97) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbb_chg_otg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %regmap = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %add = add i32 %4, 840
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.smbb_charger, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.100) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %and = and i32 %8, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__initcall__kmod_qcom_smbb__291_1029_smbb_charger_driver_init6, !1, !"__initcall__kmod_qcom_smbb__291_1029_smbb_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/qcom_smbb.c", i32 1029, i32 1}
!2 = !{ptr @__exitcall_smbb_charger_driver_exit, !1, !"__exitcall_smbb_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description292, !4, !"__UNIQUE_ID_description292", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/qcom_smbb.c", i32 1031, i32 1}
!5 = !{ptr @__UNIQUE_ID_file293, !6, !"__UNIQUE_ID_file293", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/qcom_smbb.c", i32 1032, i32 1}
!7 = !{ptr @__UNIQUE_ID_license294, !6, !"__UNIQUE_ID_license294", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/qcom_smbb.c", i32 1025, i32 13}
!10 = !{ptr @smbb_charger_driver, !11, !"smbb_charger_driver", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/qcom_smbb.c", i32 1021, i32 31}
!12 = !{ptr @smbb_charger_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/qcom_smbb.c", i32 845, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/qcom_smbb.c", i32 849, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @smbb_charger_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @smbb_charger_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/qcom_smbb.c", i32 853, i32 47}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/qcom_smbb.c", i32 855, i32 3}
!27 = !{ptr @smbb_charger_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @smbb_charger_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/qcom_smbb.c", i32 861, i32 3}
!31 = !{ptr @smbb_charger_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @smbb_charger_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/qcom_smbb.c", i32 867, i32 3}
!35 = !{ptr @smbb_charger_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @smbb_charger_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/qcom_smbb.c", i32 870, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @smbb_charger_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @smbb_charger_probe._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/qcom_smbb.c", i32 872, i32 62}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/qcom_smbb.c", i32 877, i32 4}
!46 = !{ptr @smbb_charger_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @smbb_charger_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/qcom_smbb.c", i32 888, i32 3}
!50 = !{ptr @smbb_charger_probe._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @smbb_charger_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/qcom_smbb.c", i32 899, i32 3}
!54 = !{ptr @smbb_charger_probe._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @smbb_charger_probe._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/qcom_smbb.c", i32 905, i32 3}
!58 = !{ptr @smbb_charger_probe._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @smbb_charger_probe._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/qcom_smbb.c", i32 911, i32 3}
!62 = !{ptr @smbb_charger_probe._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @smbb_charger_probe._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/qcom_smbb.c", i32 923, i32 4}
!66 = !{ptr @smbb_charger_probe._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @smbb_charger_probe._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/qcom_smbb.c", i32 941, i32 4}
!70 = !{ptr @smbb_charger_probe._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @smbb_charger_probe._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/qcom_smbb.c", i32 952, i32 24}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/qcom_smbb.c", i32 956, i32 31}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/qcom_smbb.c", i32 968, i32 4}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/qcom_smbb.c", i32 977, i32 3}
!80 = !{ptr @smbb_charger_probe._entry.46, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @smbb_charger_probe._entry_ptr.48, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.49, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/qcom_smbb.c", i32 992, i32 4}
!86 = !{ptr @smbb_charger_probe._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @smbb_charger_probe._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/qcom_smbb.c", i32 188, i32 11}
!90 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/qcom_smbb.c", i32 196, i32 11}
!92 = !{ptr @.str.56, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/qcom_smbb.c", i32 248, i32 11}
!94 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/qcom_smbb.c", i32 204, i32 11}
!96 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/qcom_smbb.c", i32 211, i32 11}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/qcom_smbb.c", i32 219, i32 11}
!100 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/qcom_smbb.c", i32 227, i32 11}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/qcom_smbb.c", i32 234, i32 11}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/qcom_smbb.c", i32 241, i32 11}
!106 = !{ptr @smbb_charger_attrs, !107, !"smbb_charger_attrs", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/qcom_smbb.c", i32 186, i32 3}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/qcom_smbb.c", i32 267, i32 3}
!110 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @smbb_charger_attr_write._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @smbb_charger_attr_write._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/qcom_smbb.c", i32 276, i32 4}
!115 = !{ptr @smbb_charger_attr_write._entry.65, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @smbb_charger_attr_write._entry_ptr.67, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/qcom_smbb.c", i32 285, i32 4}
!119 = !{ptr @.str.70, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @smbb_charger_attr_write._entry.68, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @smbb_charger_attr_write._entry_ptr.71, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.73, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/qcom_smbb.c", i32 296, i32 3}
!124 = !{ptr @smbb_charger_attr_write._entry.72, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @smbb_charger_attr_write._entry_ptr.74, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.76, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/qcom_smbb.c", i32 301, i32 3}
!128 = !{ptr @smbb_charger_attr_write._entry.75, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @smbb_charger_attr_write._entry_ptr.77, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.78, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/qcom_smbb.c", i32 306, i32 2}
!132 = !{ptr @.str.79, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @smbb_charger_attr_write.__UNIQUE_ID_ddebug288, !131, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!134 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/qcom_smbb.c", i32 324, i32 3}
!136 = !{ptr @.str.81, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @smbb_charger_attr_read._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @smbb_charger_attr_read._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.82, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/qcom_smbb.c", i32 328, i32 2}
!141 = !{ptr @smbb_charger_attr_read.__UNIQUE_ID_ddebug289, !140, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/qcom_smbb.c", i32 759, i32 10}
!144 = !{ptr @bat_psy_desc, !145, !"bat_psy_desc", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/qcom_smbb.c", i32 758, i32 39}
!146 = !{ptr @smbb_battery_properties, !147, !"smbb_battery_properties", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/qcom_smbb.c", i32 700, i32 35}
!148 = !{ptr @smbb_bif, !149, !"smbb_bif", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/qcom_smbb.c", i32 756, i32 14}
!150 = !{ptr @.str.84, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/qcom_smbb.c", i32 769, i32 10}
!152 = !{ptr @usb_psy_desc, !153, !"usb_psy_desc", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/qcom_smbb.c", i32 768, i32 39}
!154 = !{ptr @smbb_charger_properties, !155, !"smbb_charger_properties", i1 false, i1 false}
!155 = !{!"../drivers/power/supply/qcom_smbb.c", i32 694, i32 35}
!156 = !{ptr @smbb_usb_extcon_cable, !157, !"smbb_usb_extcon_cable", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/qcom_smbb.c", i32 128, i32 27}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/power/supply/qcom_smbb.c", i32 779, i32 10}
!160 = !{ptr @dc_psy_desc, !161, !"dc_psy_desc", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/qcom_smbb.c", i32 778, i32 39}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/qcom_smbb.c", i32 478, i32 4}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/qcom_smbb.c", i32 479, i32 4}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/power/supply/qcom_smbb.c", i32 480, i32 4}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/power/supply/qcom_smbb.c", i32 481, i32 4}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/qcom_smbb.c", i32 482, i32 4}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/power/supply/qcom_smbb.c", i32 483, i32 4}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/power/supply/qcom_smbb.c", i32 484, i32 4}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/qcom_smbb.c", i32 485, i32 4}
!178 = !{ptr @smbb_charger_irqs, !179, !"smbb_charger_irqs", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/qcom_smbb.c", i32 477, i32 3}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/qcom_smbb.c", i32 360, i32 3}
!182 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @smbb_set_line_flag._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @smbb_set_line_flag._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/power/supply/qcom_smbb.c", i32 371, i32 2}
!187 = !{ptr @smbb_set_line_flag.__UNIQUE_ID_ddebug290, !186, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!188 = !{ptr @smbb_chg_otg_ops, !189, !"smbb_chg_otg_ops", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/qcom_smbb.c", i32 825, i32 35}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/power/supply/qcom_smbb.c", i32 796, i32 3}
!192 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @smbb_chg_otg_enable._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @smbb_chg_otg_enable._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/power/supply/qcom_smbb.c", i32 808, i32 3}
!197 = !{ptr @smbb_chg_otg_disable._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @smbb_chg_otg_disable._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.100, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/power/supply/qcom_smbb.c", i32 820, i32 3}
!201 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @smbb_chg_otg_is_enabled._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @smbb_chg_otg_is_enabled._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @smbb_charger_setup, !205, !"smbb_charger_setup", i1 false, i1 false}
!205 = !{!"../drivers/power/supply/qcom_smbb.c", i32 716, i32 3}
!206 = !{ptr @smbb_charger_id_table, !207, !"smbb_charger_id_table", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/qcom_smbb.c", i32 1014, i32 34}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{!"auto-init"}
!218 = !{i8 0, i8 2}
!219 = !{i64 2148742592, i64 2148742597, i64 2148742610, i64 2148742654, i64 2148742688, i64 2148742709}
