; ModuleID = '/llk/IR_all_yes/drivers/power/supply/sc27xx_fuel_gauge.c_pt.bc'
source_filename = "../drivers/power/supply/sc27xx_fuel_gauge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sc27xx_fgu_data = type { ptr, ptr, ptr, i32, %struct.mutex, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply_battery_ocv_table = type { i32, i32 }

@__initcall__kmod_sc27xx_fuel_gauge__189_1354_sc27xx_fgu_driver_init6 = internal global ptr @sc27xx_fgu_driver_init, section ".initcall6.init", align 4
@sc27xx_fgu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc27xx_fgu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc27xx_fgu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sc27xx_fgu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc27xx_fgu_driver_exit = internal global ptr @sc27xx_fgu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description190 = internal constant [77 x i8] c"sc27xx_fuel_gauge.description=Spreadtrum SC27XX PMICs Fual Gauge Unit Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [62 x i8] c"sc27xx_fuel_gauge.file=drivers/power/supply/sc27xx_fuel_gauge\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [33 x i8] c"sc27xx_fuel_gauge.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sc27xx-fgu\00", [21 x i8] zeroinitializer }, align 32
@sc27xx_fgu_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731-fgu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sc27xx_fgu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sc27xx_fgu_suspend, ptr @sc27xx_fgu_resume, ptr @sc27xx_fgu_suspend, ptr @sc27xx_fgu_resume, ptr @sc27xx_fgu_suspend, ptr @sc27xx_fgu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get regmap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc27xx_fgu_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/power/supply/sc27xx_fuel_gauge.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr = internal global ptr @sc27xx_fgu_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get fgu address\0A\00", [37 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.9 = internal global ptr @sc27xx_fgu_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sprd,calib-resistance-micro-ohms\00", [63 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to get fgu calibration resistance\0A\00", [54 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.13 = internal global ptr @sc27xx_fgu_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bat-temp\00", [23 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get IIO channel\0A\00", [37 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.17 = internal global ptr @sc27xx_fgu_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"charge-vol\00", [21 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get charge IIO channel\0A\00", [62 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.21 = internal global ptr @sc27xx_fgu_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bat-detect\00", [21 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get battery detection GPIO\0A\00", [58 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.25 = internal global ptr @sc27xx_fgu_probe._entry.23, section ".printk_index", align 4
@sc27xx_fgu_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get gpio state\0A\00", [38 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.28 = internal global ptr @sc27xx_fgu_probe._entry.26, section ".printk_index", align 4
@sc27xx_fgu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@sc27xx_fgu_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 1, ptr null, i32 0, ptr @sc27xx_fgu_props, i32 16, ptr @sc27xx_fgu_get_property, ptr @sc27xx_fgu_set_property, ptr @sc27xx_fgu_property_is_writeable, ptr @sc27xx_fgu_external_power_changed, ptr null, i8 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.32 = internal global ptr @sc27xx_fgu_probe._entry.30, section ".printk_index", align 4
@sc27xx_fgu_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize fgu hardware\0A\00", [61 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.35 = internal global ptr @sc27xx_fgu_probe._entry.33, section ".printk_index", align 4
@sc27xx_fgu_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add fgu disable action\0A\00", [62 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.38 = internal global ptr @sc27xx_fgu_probe._entry.36, section ".printk_index", align 4
@sc27xx_fgu_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 1240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request fgu IRQ\0A\00", [37 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.41 = internal global ptr @sc27xx_fgu_probe._entry.39, section ".printk_index", align 4
@sc27xx_fgu_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 1246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to translate GPIO to IRQ\0A\00", [63 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.44 = internal global ptr @sc27xx_fgu_probe._entry.42, section ".printk_index", align 4
@sc27xx_fgu_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 1256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@sc27xx_fgu_probe._entry_ptr.47 = internal global ptr @sc27xx_fgu_probe._entry.45, section ".printk_index", align 4
@sc27xx_fgu_props = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 2, i32 3, i32 52, i32 6, i32 47, i32 12, i32 14, i32 13, i32 15, i32 17, i32 18, i32 31, i32 41, i32 69, i32 26], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc2731_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc2720_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc2721_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc2723_charger\00", [17 x i8] zeroinitializer }, align 32
@sc27xx_fgu_capacity_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get battery ocv error.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sc27xx_fgu_capacity_calibration\00", [32 x i8] zeroinitializer }, align 32
@sc27xx_fgu_capacity_calibration._entry_ptr = internal global ptr @sc27xx_fgu_capacity_calibration._entry, section ".printk_index", align 4
@sc27xx_fgu_capacity_calibration._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get charger status error.\0A\00", [37 x i8] zeroinitializer }, align 32
@sc27xx_fgu_capacity_calibration._entry_ptr.56 = internal global ptr @sc27xx_fgu_capacity_calibration._entry.54, section ".printk_index", align 4
@sc27xx_fgu_adjust_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 789, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get init coulomb counter\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sc27xx_fgu_adjust_cap\00", [42 x i8] zeroinitializer }, align 32
@sc27xx_fgu_adjust_cap._entry_ptr = internal global ptr @sc27xx_fgu_adjust_cap._entry, section ".printk_index", align 4
@sc27xx_fgu_set_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to save battery capacity\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sc27xx_fgu_set_property\00", [40 x i8] zeroinitializer }, align 32
@sc27xx_fgu_set_property._entry_ptr = internal global ptr @sc27xx_fgu_set_property._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sc27xx_fgu_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1007, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get battery information\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc27xx_fgu_hw_init\00", [45 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr = internal global ptr @sc27xx_fgu_hw_init._entry, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 1060, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable fgu\0A\00", [42 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.65 = internal global ptr @sc27xx_fgu_hw_init._entry.63, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 1068, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable fgu RTC clock\0A\00", [32 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.68 = internal global ptr @sc27xx_fgu_hw_init._entry.66, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.3, i32 1075, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to clear interrupt status\0A\00", [62 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.71 = internal global ptr @sc27xx_fgu_hw_init._entry.69, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.3, i32 1088, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set fgu low overload\0A\00", [32 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.74 = internal global ptr @sc27xx_fgu_hw_init._entry.72, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.3, i32 1104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set low delta coulomb counter\0A\00", [55 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.77 = internal global ptr @sc27xx_fgu_hw_init._entry.75, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.3, i32 1112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to set high delta coulomb counter\0A\00", [54 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.80 = internal global ptr @sc27xx_fgu_hw_init._entry.78, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.62, ptr @.str.3, i32 1123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get boot capacity\0A\00", [35 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.83 = internal global ptr @sc27xx_fgu_hw_init._entry.81, section ".printk_index", align 4
@sc27xx_fgu_hw_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.62, ptr @.str.3, i32 1134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to initialize coulomb counter\0A\00", [58 x i8] zeroinitializer }, align 32
@sc27xx_fgu_hw_init._entry_ptr.86 = internal global ptr @sc27xx_fgu_hw_init._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fgu_calib\00", [22 x i8] zeroinitializer }, align 32
@sc27xx_fgu_bat_detection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.88, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sc27xx_fgu_bat_detection\00", [39 x i8] zeroinitializer }, align 32
@sc27xx_fgu_bat_detection._entry_ptr = internal global ptr @sc27xx_fgu_bat_detection._entry, section ".printk_index", align 4
@sc27xx_fgu_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 1301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to enable low voltage interrupt\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc27xx_fgu_suspend\00", [45 x i8] zeroinitializer }, align 32
@sc27xx_fgu_suspend._entry_ptr = internal global ptr @sc27xx_fgu_suspend._entry, section ".printk_index", align 4
@sc27xx_fgu_suspend._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 1321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to enable coulomb threshold int\0A\00", [56 x i8] zeroinitializer }, align 32
@sc27xx_fgu_suspend._entry_ptr.93 = internal global ptr @sc27xx_fgu_suspend._entry.91, section ".printk_index", align 4
@sc27xx_fgu_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to disable fgu interrupts\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sc27xx_fgu_resume\00", [46 x i8] zeroinitializer }, align 32
@sc27xx_fgu_resume._entry_ptr = internal global ptr @sc27xx_fgu_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 2, i64 3, i64 6, i64 12, i64 13, i64 14, i64 15, i64 17, i64 18, i64 26, i64 31, i64 41, i64 47, i64 52]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 41, i64 47, i64 69]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 47, i64 69]
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"sc27xx_fgu_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1345, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1348, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"sc27xx_fgu_of_match\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1339, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"sc27xx_fgu_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1335, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1162, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1166, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1168, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1173, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1176, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1181, i32 44 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1183, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1187, i32 48 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1189, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1193, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1195, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1201, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1206, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"sc27xx_fgu_desc\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 770, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1215, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1221, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1227, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1240, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1246, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1256, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"sc27xx_fgu_props\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 751, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 131, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 132, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 133, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 134, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 799, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 805, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 789, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 714, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1007, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1060, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1068, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1075, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1088, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1104, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1112, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1123, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1134, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 972, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 929, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1301, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1320, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private constant [44 x i8] c"../drivers/power/supply/sc27xx_fuel_gauge.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1273, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_sc27xx_fgu_driver_exit, ptr @__initcall__kmod_sc27xx_fuel_gauge__189_1354_sc27xx_fgu_driver_init6, ptr @sc27xx_fgu_adjust_cap._entry, ptr @sc27xx_fgu_adjust_cap._entry_ptr, ptr @sc27xx_fgu_bat_detection._entry, ptr @sc27xx_fgu_bat_detection._entry_ptr, ptr @sc27xx_fgu_capacity_calibration._entry, ptr @sc27xx_fgu_capacity_calibration._entry.54, ptr @sc27xx_fgu_capacity_calibration._entry_ptr, ptr @sc27xx_fgu_capacity_calibration._entry_ptr.56, ptr @sc27xx_fgu_driver_exit, ptr @sc27xx_fgu_hw_init._entry, ptr @sc27xx_fgu_hw_init._entry.63, ptr @sc27xx_fgu_hw_init._entry.66, ptr @sc27xx_fgu_hw_init._entry.69, ptr @sc27xx_fgu_hw_init._entry.72, ptr @sc27xx_fgu_hw_init._entry.75, ptr @sc27xx_fgu_hw_init._entry.78, ptr @sc27xx_fgu_hw_init._entry.81, ptr @sc27xx_fgu_hw_init._entry.84, ptr @sc27xx_fgu_hw_init._entry_ptr, ptr @sc27xx_fgu_hw_init._entry_ptr.65, ptr @sc27xx_fgu_hw_init._entry_ptr.68, ptr @sc27xx_fgu_hw_init._entry_ptr.71, ptr @sc27xx_fgu_hw_init._entry_ptr.74, ptr @sc27xx_fgu_hw_init._entry_ptr.77, ptr @sc27xx_fgu_hw_init._entry_ptr.80, ptr @sc27xx_fgu_hw_init._entry_ptr.83, ptr @sc27xx_fgu_hw_init._entry_ptr.86, ptr @sc27xx_fgu_probe._entry, ptr @sc27xx_fgu_probe._entry.11, ptr @sc27xx_fgu_probe._entry.15, ptr @sc27xx_fgu_probe._entry.19, ptr @sc27xx_fgu_probe._entry.23, ptr @sc27xx_fgu_probe._entry.26, ptr @sc27xx_fgu_probe._entry.30, ptr @sc27xx_fgu_probe._entry.33, ptr @sc27xx_fgu_probe._entry.36, ptr @sc27xx_fgu_probe._entry.39, ptr @sc27xx_fgu_probe._entry.42, ptr @sc27xx_fgu_probe._entry.45, ptr @sc27xx_fgu_probe._entry.7, ptr @sc27xx_fgu_probe._entry_ptr, ptr @sc27xx_fgu_probe._entry_ptr.13, ptr @sc27xx_fgu_probe._entry_ptr.17, ptr @sc27xx_fgu_probe._entry_ptr.21, ptr @sc27xx_fgu_probe._entry_ptr.25, ptr @sc27xx_fgu_probe._entry_ptr.28, ptr @sc27xx_fgu_probe._entry_ptr.32, ptr @sc27xx_fgu_probe._entry_ptr.35, ptr @sc27xx_fgu_probe._entry_ptr.38, ptr @sc27xx_fgu_probe._entry_ptr.41, ptr @sc27xx_fgu_probe._entry_ptr.44, ptr @sc27xx_fgu_probe._entry_ptr.47, ptr @sc27xx_fgu_probe._entry_ptr.9, ptr @sc27xx_fgu_resume._entry, ptr @sc27xx_fgu_resume._entry_ptr, ptr @sc27xx_fgu_set_property._entry, ptr @sc27xx_fgu_set_property._entry_ptr, ptr @sc27xx_fgu_suspend._entry, ptr @sc27xx_fgu_suspend._entry.91, ptr @sc27xx_fgu_suspend._entry_ptr, ptr @sc27xx_fgu_suspend._entry_ptr.93, ptr @sc27xx_fgu_driver, ptr @.str, ptr @sc27xx_fgu_of_match, ptr @sc27xx_fgu_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @sc27xx_fgu_probe.__key, ptr @.str.29, ptr @sc27xx_fgu_desc, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @sc27xx_fgu_props, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_props to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_capacity_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_capacity_calibration._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_adjust_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_set_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_hw_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_bat_detection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_suspend._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_fgu_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc27xx_fgu_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_fgu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc27xx_fgu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %remainder.i17.i64.i.i = alloca i32, align 4
  %remainder.i.i65.i.i = alloca i32, align 4
  %remainder.i17.i.i.i = alloca i32, align 4
  %remainder.i.i.i.i = alloca i32, align 4
  %value.i.i.i = alloca i32, align 4
  %status.i.i.i = alloca i32, align 4
  %volt.i.i = alloca i32, align 4
  %cur.i.i = alloca i32, align 4
  %calib_data.i.i = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %info.i = alloca ptr, align 4
  %fgu_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fgu_cfg) #7
  %2 = getelementptr inbounds i8, ptr %fgu_cfg, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 184, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call2 = tail call ptr @dev_get_regmap(ptr noundef %5, ptr noundef null) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 3
  %call.i200 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %base, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool8.not = icmp eq i32 %call.i200, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %calib_resist = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 21
  %call.i201 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %calib_resist, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool16.not = icmp eq i32 %call.i201, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %call23 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  %channel = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %channel, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call33 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.18) #7
  %charge_chan = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %charge_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call33, ptr %charge_chan, align 4
  %cmp.i202 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  %12 = ptrtoint ptr %charge_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %charge_chan, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %call43 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef 1) #7
  %gpiod = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %gpiod to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call43, ptr %gpiod, align 4
  %cmp.i203 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  %16 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpiod, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %call54 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %call43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp slt i32 %call54, 0
  br i1 %cmp, label %do.end58, label %if.end59

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool60 = icmp ne i32 %call54, 0
  %bat_present = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 8
  %frombool = zext i1 %tobool60 to i8
  %19 = ptrtoint ptr %bat_present to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %bat_present, align 4
  %lock = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @sc27xx_fgu_probe.__key) #7
  %dev65 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %dev65 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %dev65, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %fgu_cfg, i32 0, i32 2
  %22 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %drv_data, align 4
  %23 = ptrtoint ptr %fgu_cfg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %fgu_cfg, align 4
  %call67 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @sc27xx_fgu_desc, ptr noundef nonnull %fgu_cfg) #7
  %battery = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call67, ptr %battery, align 4
  %cmp.i204 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  %25 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %battery, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end76:                                         ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #7
  %28 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %info.i, align 4, !annotation !184
  %call.i205 = call i32 @power_supply_get_battery_info(ptr noundef %call67, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.61) #10
  br label %sc27xx_fgu_hw_init.exit.thread

if.end.i:                                         ; preds = %if.end76
  %31 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info.i, align 4
  %charge_full_design_uah.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %charge_full_design_uah.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %charge_full_design_uah.i, align 4
  %div.i = sdiv i32 %34, 1000
  %total_cap.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 10
  %35 = ptrtoint ptr %total_cap.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div.i, ptr %total_cap.i, align 4
  %constant_charge_voltage_max_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %32, i32 0, i32 12
  %36 = ptrtoint ptr %constant_charge_voltage_max_uv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %constant_charge_voltage_max_uv.i, align 4
  %div1.i = sdiv i32 %37, 1000
  %max_volt.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 14
  %38 = ptrtoint ptr %max_volt.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div1.i, ptr %max_volt.i, align 4
  %factory_internal_resistance_uohm.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %32, i32 0, i32 13
  %39 = ptrtoint ptr %factory_internal_resistance_uohm.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %factory_internal_resistance_uohm.i, align 4
  %div2.i = sdiv i32 %40, 1000
  %internal_resist.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 9
  %41 = ptrtoint ptr %internal_resist.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div2.i, ptr %internal_resist.i, align 4
  %voltage_min_design_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %32, i32 0, i32 3
  %42 = ptrtoint ptr %voltage_min_design_uv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %voltage_min_design_uv.i, align 4
  %min_volt.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 15
  %44 = ptrtoint ptr %min_volt.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %min_volt.i, align 4
  %table_len.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 17
  %call3.i = call ptr @power_supply_find_ocv2cap_table(ptr noundef %32, i32 noundef 20, ptr noundef %table_len.i) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.sc27xx_fgu_hw_init.exit.thread_crit_edge, label %if.end6.i

if.end.i.sc27xx_fgu_hw_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_hw_init.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %45 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev65, align 4
  %47 = ptrtoint ptr %table_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %table_len.i, align 4
  %mul.i = shl i32 %48, 3
  %call9.i = call ptr @devm_kmemdup(ptr noundef %46, ptr noundef nonnull %call3.i, i32 noundef %mul.i, i32 noundef 3264) #7
  %cap_table.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 22
  %49 = ptrtoint ptr %cap_table.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i, ptr %cap_table.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %battery, align 4
  %52 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info.i, align 4
  call void @power_supply_put_battery_info(ptr noundef %51, ptr noundef %53) #7
  br label %sc27xx_fgu_hw_init.exit.thread

if.end14.i:                                       ; preds = %if.end6.i
  %54 = ptrtoint ptr %table_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %table_len.i, align 4
  %56 = ptrtoint ptr %min_volt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %min_volt.i, align 4
  %call18.i = call i32 @power_supply_ocv2cap_simple(ptr noundef nonnull %call9.i, i32 noundef %55, i32 noundef %57) #7
  %alarm_cap.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool20.not.i = icmp eq i32 %call18.i, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 1, i32 %call18.i
  %58 = ptrtoint ptr %alarm_cap.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.i, ptr %alarm_cap.i, align 4
  %59 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %info.i, align 4
  %resist_table_size.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %60, i32 0, i32 24
  %61 = ptrtoint ptr %resist_table_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %resist_table_size.i, align 4
  %resist_table_len.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 18
  %63 = ptrtoint ptr %resist_table_len.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %resist_table_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i206 = icmp sgt i32 %62, 0
  br i1 %cmp.i206, label %if.then25.i, label %if.end14.i.if.end36.i_crit_edge

if.end14.i.if.end36.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then25.i:                                      ; preds = %if.end14.i
  %64 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev65, align 4
  %resist_table.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %60, i32 0, i32 23
  %66 = ptrtoint ptr %resist_table.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resist_table.i, align 4
  %mul28.i = shl i32 %62, 3
  %call29.i = call ptr @devm_kmemdup(ptr noundef %65, ptr noundef %67, i32 noundef %mul28.i, i32 noundef 3264) #7
  %resist_table30.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 23
  %68 = ptrtoint ptr %resist_table30.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call29.i, ptr %resist_table30.i, align 4
  %tobool32.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool32.not.i, label %if.then33.i, label %if.then25.i.if.end36.i_crit_edge

if.then25.i.if.end36.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %battery, align 4
  %71 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info.i, align 4
  call void @power_supply_put_battery_info(ptr noundef %70, ptr noundef %72) #7
  br label %sc27xx_fgu_hw_init.exit.thread

if.end36.i:                                       ; preds = %if.then25.i.if.end36.i_crit_edge, %if.end14.i.if.end36.i_crit_edge
  %73 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %battery, align 4
  %75 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %info.i, align 4
  call void @power_supply_put_battery_info(ptr noundef %74, ptr noundef %76) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calib_data.i.i)
  %77 = ptrtoint ptr %calib_data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %calib_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #7
  %78 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %len.i.i, align 4, !annotation !184
  %79 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev65, align 4
  %call.i.i = call ptr @nvmem_cell_get(ptr noundef %80, ptr noundef nonnull @.str.87) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end36.i.sc27xx_fgu_hw_init.exit_crit_edge, label %if.end.i.i

if.end36.i.sc27xx_fgu_hw_init.exit_crit_edge:     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_hw_init.exit

if.end.i.i:                                       ; preds = %if.end36.i
  %call3.i.i = call ptr @nvmem_cell_read(ptr noundef %call.i.i, ptr noundef nonnull %len.i.i) #7
  call void @nvmem_cell_put(ptr noundef %call.i.i) #7
  %cmp.i74.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i.i, label %if.end.i.i.sc27xx_fgu_hw_init.exit_crit_edge, label %sc27xx_fgu_calibration.exit.thread.i

if.end.i.i.sc27xx_fgu_hw_init.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_hw_init.exit

sc27xx_fgu_calibration.exit.thread.i:             ; preds = %if.end.i.i
  %81 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i.i, align 4
  %83 = call i32 @llvm.umin.i32(i32 %82, i32 4) #7
  %84 = call ptr @memcpy(ptr %calib_data.i.i, ptr %call3.i.i, i32 %83)
  %85 = ptrtoint ptr %calib_data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %calib_data.i.i.0.calib_data.i.i.0.calib_data.i.0.calib_data.i.0.calib_data.0.calib_data.0.calib_data.0..i.i = load i32, ptr %calib_data.i.i, align 4
  %86 = trunc i32 %calib_data.i.i.0.calib_data.i.i.0.calib_data.i.0.calib_data.i.0.calib_data.0.calib_data.0.calib_data.0..i.i to i16
  %87 = and i16 %86, 511
  %88 = mul nuw nsw i16 %87, 10
  %div17.lhs.trunc.i.i = add nuw nsw i16 %88, 26131
  %div1775.i.i = udiv i16 %div17.lhs.trunc.i.i, 42
  %div17.zext.i.i = zext i16 %div1775.i.i to i32
  %vol_1000mv_adc.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 20
  %89 = ptrtoint ptr %vol_1000mv_adc.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div17.zext.i.i, ptr %vol_1000mv_adc.i.i, align 4
  %mul26.i.i = shl nuw nsw i32 %div17.zext.i.i, 2
  %90 = ptrtoint ptr %calib_resist to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %calib_resist, align 4
  %mul27.i.i = mul i32 %mul26.i.i, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul27.i.i)
  %cmp30.i.i = icmp sgt i32 %mul27.i.i, 0
  %cond45.in.v.i.i = select i1 %cmp30.i.i, i32 10000, i32 -10000
  %cond45.in.i.i = add i32 %cond45.in.v.i.i, %mul27.i.i
  %cond45.i.i = sdiv i32 %cond45.in.i.i, 20000
  %cur_1000ma_adc.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 19
  %92 = ptrtoint ptr %cur_1000ma_adc.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond45.i.i, ptr %cur_1000ma_adc.i.i, align 4
  call void @kfree(ptr noundef %call3.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calib_data.i.i)
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 4
  %call.i204.i = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 3080, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204.i)
  %tobool43.not.i = icmp eq i32 %call.i204.i, 0
  br i1 %tobool43.not.i, label %if.end49.i, label %do.end47.i

do.end47.i:                                       ; preds = %sc27xx_fgu_calibration.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.64) #10
  br label %sc27xx_fgu_hw_init.exit.thread

if.end49.i:                                       ; preds = %sc27xx_fgu_calibration.exit.thread.i
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  %call.i205.i = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 3096, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205.i)
  %tobool52.not.i = icmp eq i32 %call.i205.i, 0
  br i1 %tobool52.not.i, label %if.end58.i, label %do.end56.i

do.end56.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.67) #10
  br label %disable_fgu.i

if.end58.i:                                       ; preds = %if.end49.i
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  %103 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %base, align 4
  %add60.i = add i32 %104, 20
  %call.i206.i = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef %add60.i, i32 noundef 1023, i32 noundef 1023, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206.i)
  %tobool62.not.i = icmp eq i32 %call.i206.i, 0
  br i1 %tobool62.not.i, label %if.end68.i, label %if.end58.i.disable_clk.i_crit_edge

if.end58.i.disable_clk.i_crit_edge:               ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

if.end68.i:                                       ; preds = %if.end58.i
  %105 = ptrtoint ptr %min_volt.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %min_volt.i, align 4
  %div70.i = sdiv i32 %106, 1000
  %107 = ptrtoint ptr %vol_1000mv_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vol_1000mv_adc.i.i, align 4
  %mul.i.i = mul i32 %108, %div70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp.i.i = icmp sgt i32 %mul.i.i, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 500, i32 -500
  %cond.in.i.i = add i32 %cond.in.v.i.i, %mul.i.i
  %cond.i.i = sdiv i32 %cond.in.i.i, 1000
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 4
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base, align 4
  %add74.i = add i32 %112, 52
  %call.i208.i = call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef %add74.i, i32 noundef 8191, i32 noundef %cond.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i)
  %tobool76.not.i = icmp eq i32 %call.i208.i, 0
  br i1 %tobool76.not.i, label %if.end82.i, label %if.end68.i.disable_clk.i_crit_edge

if.end68.i.disable_clk.i_crit_edge:               ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

if.end82.i:                                       ; preds = %if.end68.i
  %113 = ptrtoint ptr %total_cap.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %total_cap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i209.i = icmp sgt i32 %114, 0
  %cond.in.v.i210.i = select i1 %cmp.i209.i, i32 50, i32 -50
  %cond.in.i211.i = add i32 %cond.in.v.i210.i, %114
  %cond.i212.i = sdiv i32 %cond.in.i211.i, 100
  %115 = ptrtoint ptr %cur_1000ma_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cur_1000ma_adc.i.i, align 4
  %mul10.i.i = mul i32 %116, 72
  %mul11.i.i = mul i32 %mul10.i.i, %cond.i212.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul11.i.i)
  %cmp14.i.i = icmp sgt i32 %mul11.i.i, 0
  %add22.i.i = or i32 %mul11.i.i, 5
  %sub26.i.i = add i32 %mul11.i.i, -5
  %cond29.in.i.i = select i1 %cmp14.i.i, i32 %add22.i.i, i32 %sub26.i.i
  %cond29.i.i = sdiv i32 %cond29.in.i.i, 10
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call.i, align 4
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %base, align 4
  %add86.i = add i32 %120, 92
  %call.i214.i = call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef %add86.i, i32 noundef 65535, i32 noundef %cond29.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214.i)
  %tobool88.not.i = icmp eq i32 %call.i214.i, 0
  br i1 %tobool88.not.i, label %if.end94.i, label %if.end82.i.disable_clk.i_crit_edge

if.end82.i.disable_clk.i_crit_edge:               ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

if.end94.i:                                       ; preds = %if.end82.i
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %base, align 4
  %add97.i = add i32 %124, 88
  %shr.i = ashr i32 %cond29.i.i, 16
  %call.i215.i = call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef %add97.i, i32 noundef 65535, i32 noundef %shr.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215.i)
  %tobool99.not.i = icmp eq i32 %call.i215.i, 0
  br i1 %tobool99.not.i, label %if.end105.i, label %if.end94.i.disable_clk.i_crit_edge

if.end94.i.disable_clk.i_crit_edge:               ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

if.end105.i:                                      ; preds = %if.end94.i
  %init_cap.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %volt.i.i) #7
  %125 = ptrtoint ptr %volt.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %volt.i.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur.i.i) #7
  %126 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %cur.i.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i.i) #7
  %127 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %status.i.i.i, align 4, !annotation !184
  %128 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call.i, align 4
  %130 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %base, align 4
  %add.i.i.i = add i32 %131, 168
  %call.i.i.i = call i32 @regmap_read(ptr noundef %129, i32 noundef %add.i.i.i, ptr noundef nonnull %status.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sc27xx_fgu_is_first_poweron.exit.i.i, label %sc27xx_fgu_is_first_poweron.exit.thread.i.i

sc27xx_fgu_is_first_poweron.exit.thread.i.i:      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #7
  br label %if.then.i217.i

sc27xx_fgu_is_first_poweron.exit.i.i:             ; preds = %if.end105.i
  %132 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %status.i.i.i, align 4
  %134 = and i32 %133, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %134)
  %cmp.i.i216.i = icmp eq i32 %134, 61440
  %and1.i.i.i = and i32 %133, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and1.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %and1.i.i.i, 4095
  %or.cond.i.i.i = or i1 %cmp.i.i216.i, %cmp2.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #7
  br i1 %or.cond.i.i.i, label %if.end5.i.i, label %sc27xx_fgu_is_first_poweron.exit.i.i.if.then.i217.i_crit_edge

sc27xx_fgu_is_first_poweron.exit.i.i.if.then.i217.i_crit_edge: ; preds = %sc27xx_fgu_is_first_poweron.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i217.i

if.then.i217.i:                                   ; preds = %sc27xx_fgu_is_first_poweron.exit.i.i.if.then.i217.i_crit_edge, %sc27xx_fgu_is_first_poweron.exit.thread.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i) #7
  %135 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %value.i.i.i, align 4, !annotation !184
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  %138 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %base, align 4
  %add.i58.i.i = add i32 %139, 168
  %call.i59.i.i = call i32 @regmap_read(ptr noundef %137, i32 noundef %add.i58.i.i, ptr noundef nonnull %value.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i.i)
  %tobool.not.i60.i.i = icmp eq i32 %call.i59.i.i, 0
  br i1 %tobool.not.i60.i.i, label %if.end.i218.i, label %sc27xx_fgu_read_last_cap.exit.i.i

sc27xx_fgu_read_last_cap.exit.i.i:                ; preds = %if.then.i217.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i) #7
  br label %sc27xx_fgu_get_boot_capacity.exit.thread.i

if.end.i218.i:                                    ; preds = %if.then.i217.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %value.i.i.i, align 4
  %and.i.i.i = and i32 %141, 4095
  %142 = ptrtoint ptr %init_cap.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and.i.i.i, ptr %init_cap.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i) #7
  br label %sc27xx_fgu_get_boot_capacity.exit.i

if.end5.i.i:                                      ; preds = %sc27xx_fgu_is_first_poweron.exit.i.i
  %143 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call.i, align 4
  %145 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %base, align 4
  %add.i.i = add i32 %146, 116
  %call6.i.i = call i32 @regmap_read(ptr noundef %144, i32 noundef %add.i.i, ptr noundef nonnull %cur.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end5.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge

if.end5.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_boot_capacity.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %147 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cur.i.i, align 4
  %shl.i.i = shl i32 %148, 1
  store i32 %shl.i.i, ptr %cur.i.i, align 4
  %sub.i.i = add i32 %shl.i.i, -8192
  %conv.i.i = sext i32 %sub.i.i to i64
  %mul.i.i.i = mul nsw i64 %conv.i.i, 1000
  %149 = ptrtoint ptr %cur_1000ma_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cur_1000ma_adc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i62.i.i = icmp slt i32 %sub.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp1.i.i.i = icmp sgt i32 %150, 0
  %cmp3.i.i.i = xor i1 %cmp.i62.i.i, %cmp1.i.i.i
  %div.i.i.i = sdiv i32 %150, 2
  %conv5.i.i.i = sext i32 %div.i.i.i to i64
  br i1 %cmp3.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i63.i.i = add nsw i64 %mul.i.i.i, %conv5.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %151 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !184
  %call.i.i.i.i = call i64 @div_s64_rem(i64 noundef %add.i63.i.i, i32 noundef %150, ptr noundef nonnull %remainder.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %extract.t221 = trunc i64 %call.i.i.i.i to i32
  br label %sc27xx_fgu_adc_to_current.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = sub nsw i64 %mul.i.i.i, %conv5.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i.i) #7
  %152 = ptrtoint ptr %remainder.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %remainder.i17.i.i.i, align 4, !annotation !184
  %call.i18.i.i.i = call i64 @div_s64_rem(i64 noundef %sub.i.i.i, i32 noundef %150, ptr noundef nonnull %remainder.i17.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i.i) #7
  %extract.t220 = trunc i64 %call.i18.i.i.i to i32
  br label %sc27xx_fgu_adc_to_current.exit.i.i

sc27xx_fgu_adc_to_current.exit.i.i:               ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %call.i18.i.i.i.sink.off0 = phi i32 [ %extract.t220, %cond.false.i.i.i ], [ %extract.t221, %cond.true.i.i.i ]
  %153 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %call.i, align 4
  %155 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %base, align 4
  %add13.i.i = add i32 %156, 40
  %call14.i.i = call i32 @regmap_read(ptr noundef %154, i32 noundef %add13.i.i, ptr noundef nonnull %volt.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %sc27xx_fgu_adc_to_current.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge

sc27xx_fgu_adc_to_current.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge: ; preds = %sc27xx_fgu_adc_to_current.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_boot_capacity.exit.thread.i

if.end17.i.i:                                     ; preds = %sc27xx_fgu_adc_to_current.exit.i.i
  %157 = ptrtoint ptr %volt.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %volt.i.i, align 4
  %conv18.i.i = sext i32 %158 to i64
  %mul.i66.i.i = mul nsw i64 %conv18.i.i, 1000
  %159 = ptrtoint ptr %vol_1000mv_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %vol_1000mv_adc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp.i67.i.i = icmp slt i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp1.i68.i.i = icmp sgt i32 %160, 0
  %cmp3.i69.i.i = xor i1 %cmp.i67.i.i, %cmp1.i68.i.i
  %div.i70.i.i = sdiv i32 %160, 2
  %conv5.i71.i.i = sext i32 %div.i70.i.i to i64
  br i1 %cmp3.i69.i.i, label %cond.true.i75.i.i, label %cond.false.i79.i.i

cond.true.i75.i.i:                                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i72.i.i = add nsw i64 %mul.i66.i.i, %conv5.i71.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i65.i.i) #7
  %161 = ptrtoint ptr %remainder.i.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %remainder.i.i65.i.i, align 4, !annotation !184
  %call.i.i73.i.i = call i64 @div_s64_rem(i64 noundef %add.i72.i.i, i32 noundef %160, ptr noundef nonnull %remainder.i.i65.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i65.i.i) #7
  %extract.t222 = trunc i64 %call.i.i73.i.i to i32
  br label %sc27xx_fgu_adc_to_voltage.exit.i.i

cond.false.i79.i.i:                               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i76.i.i = sub nsw i64 %mul.i66.i.i, %conv5.i71.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i64.i.i) #7
  %162 = ptrtoint ptr %remainder.i17.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %remainder.i17.i64.i.i, align 4, !annotation !184
  %call.i18.i77.i.i = call i64 @div_s64_rem(i64 noundef %sub.i76.i.i, i32 noundef %160, ptr noundef nonnull %remainder.i17.i64.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i64.i.i) #7
  %extract.t = trunc i64 %call.i18.i77.i.i to i32
  br label %sc27xx_fgu_adc_to_voltage.exit.i.i

sc27xx_fgu_adc_to_voltage.exit.i.i:               ; preds = %cond.false.i79.i.i, %cond.true.i75.i.i
  %call.i18.i77.i.i.sink.off0 = phi i32 [ %extract.t, %cond.false.i79.i.i ], [ %extract.t222, %cond.true.i75.i.i ]
  %163 = ptrtoint ptr %volt.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call.i18.i77.i.i.sink.off0, ptr %volt.i.i, align 4
  %mul.i219.i = mul i32 %call.i18.i77.i.i.sink.off0, 1000
  %164 = ptrtoint ptr %internal_resist.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %internal_resist.i, align 4
  %mul20.i.i = mul i32 %165, %call.i18.i.i.i.sink.off0
  %sub21.i.i = sub i32 %mul.i219.i, %mul20.i.i
  %boot_volt.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 16
  %166 = ptrtoint ptr %boot_volt.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %sub21.i.i, ptr %boot_volt.i.i, align 4
  %167 = ptrtoint ptr %cap_table.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cap_table.i, align 4
  %169 = ptrtoint ptr %table_len.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %table_len.i, align 4
  %call22.i.i = call i32 @power_supply_ocv2cap_simple(ptr noundef %168, i32 noundef %170, i32 noundef %sub21.i.i) #7
  %171 = ptrtoint ptr %init_cap.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call22.i.i, ptr %init_cap.i, align 4
  %call23.i.i = call fastcc i32 @sc27xx_fgu_save_last_cap(ptr noundef nonnull %call.i, i32 noundef %call22.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %sc27xx_fgu_adc_to_voltage.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.i_crit_edge, label %sc27xx_fgu_adc_to_voltage.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge

sc27xx_fgu_adc_to_voltage.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge: ; preds = %sc27xx_fgu_adc_to_voltage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_boot_capacity.exit.thread.i

sc27xx_fgu_adc_to_voltage.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.i_crit_edge: ; preds = %sc27xx_fgu_adc_to_voltage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_boot_capacity.exit.i

sc27xx_fgu_get_boot_capacity.exit.thread.i:       ; preds = %sc27xx_fgu_adc_to_voltage.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge, %sc27xx_fgu_adc_to_current.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge, %if.end5.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge, %sc27xx_fgu_read_last_cap.exit.i.i
  %retval.0.i220.ph.i = phi i32 [ %call23.i.i, %sc27xx_fgu_adc_to_voltage.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge ], [ %call14.i.i, %sc27xx_fgu_adc_to_current.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge ], [ %call6.i.i, %if.end5.i.i.sc27xx_fgu_get_boot_capacity.exit.thread.i_crit_edge ], [ %call.i59.i.i, %sc27xx_fgu_read_last_cap.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %volt.i.i) #7
  br label %disable_clk.i

sc27xx_fgu_get_boot_capacity.exit.i:              ; preds = %sc27xx_fgu_adc_to_voltage.exit.i.i.sc27xx_fgu_get_boot_capacity.exit.i_crit_edge, %if.end.i218.i
  %call4.i.i = call fastcc i32 @sc27xx_fgu_save_boot_mode(ptr noundef nonnull %call.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %volt.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool107.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool107.not.i, label %if.end113.i, label %sc27xx_fgu_get_boot_capacity.exit.i.disable_clk.i_crit_edge

sc27xx_fgu_get_boot_capacity.exit.i.disable_clk.i_crit_edge: ; preds = %sc27xx_fgu_get_boot_capacity.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

if.end113.i:                                      ; preds = %sc27xx_fgu_get_boot_capacity.exit.i
  %172 = ptrtoint ptr %init_cap.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %init_cap.i, align 4
  %174 = ptrtoint ptr %total_cap.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %total_cap.i, align 4
  %mul.i222.i = mul i32 %175, %173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i222.i)
  %cmp.i223.i = icmp sgt i32 %mul.i222.i, 0
  %cond.in.v.i224.i = select i1 %cmp.i223.i, i32 50, i32 -50
  %cond.in.i225.i = add i32 %cond.in.v.i224.i, %mul.i222.i
  %cond.i226.i = sdiv i32 %cond.in.i225.i, 100
  %176 = ptrtoint ptr %cur_1000ma_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cur_1000ma_adc.i.i, align 4
  %mul10.i228.i = mul i32 %177, 72
  %mul11.i229.i = mul i32 %mul10.i228.i, %cond.i226.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul11.i229.i)
  %cmp14.i230.i = icmp sgt i32 %mul11.i229.i, 0
  %add22.i231.i = or i32 %mul11.i229.i, 5
  %sub26.i232.i = add i32 %mul11.i229.i, -5
  %cond29.in.i233.i = select i1 %cmp14.i230.i, i32 %add22.i231.i, i32 %sub26.i232.i
  %cond29.i234.i = sdiv i32 %cond29.in.i233.i, 10
  %init_clbcnt.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call.i, i32 0, i32 13
  %178 = ptrtoint ptr %init_clbcnt.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %cond29.i234.i, ptr %init_clbcnt.i, align 4
  %179 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %call.i, align 4
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %base, align 4
  %add.i235.i = add i32 %182, 84
  %call.i.i236.i = call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef %add.i235.i, i32 noundef 65535, i32 noundef %cond29.i234.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i236.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i236.i, 0
  br i1 %tobool.not.i.i, label %if.end.i237.i, label %if.end113.i.disable_clk.i_crit_edge

if.end113.i.disable_clk.i_crit_edge:              ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

if.end.i237.i:                                    ; preds = %if.end113.i
  %183 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %call.i, align 4
  %185 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %base, align 4
  %add3.i.i = add i32 %186, 80
  %shr.i.i = ashr i32 %cond29.i234.i, 16
  %call.i21.i.i = call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef %add3.i.i, i32 noundef 65535, i32 noundef %shr.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool5.not.i.i, label %sc27xx_fgu_set_clbcnt.exit.i, label %if.end.i237.i.disable_clk.i_crit_edge

if.end.i237.i.disable_clk.i_crit_edge:            ; preds = %if.end.i237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

sc27xx_fgu_set_clbcnt.exit.i:                     ; preds = %if.end.i237.i
  %187 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call.i, align 4
  %189 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %base, align 4
  %call.i22.i.i = call i32 @regmap_update_bits_base(ptr noundef %188, i32 noundef %190, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i.i)
  %tobool118.not.i = icmp eq i32 %call.i22.i.i, 0
  br i1 %tobool118.not.i, label %sc27xx_fgu_hw_init.exit.thread214, label %sc27xx_fgu_set_clbcnt.exit.i.disable_clk.i_crit_edge

sc27xx_fgu_set_clbcnt.exit.i.disable_clk.i_crit_edge: ; preds = %sc27xx_fgu_set_clbcnt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk.i

sc27xx_fgu_hw_init.exit.thread214:                ; preds = %sc27xx_fgu_set_clbcnt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #7
  br label %if.end83

disable_clk.i:                                    ; preds = %sc27xx_fgu_set_clbcnt.exit.i.disable_clk.i_crit_edge, %if.end.i237.i.disable_clk.i_crit_edge, %if.end113.i.disable_clk.i_crit_edge, %sc27xx_fgu_get_boot_capacity.exit.i.disable_clk.i_crit_edge, %sc27xx_fgu_get_boot_capacity.exit.thread.i, %if.end94.i.disable_clk.i_crit_edge, %if.end82.i.disable_clk.i_crit_edge, %if.end68.i.disable_clk.i_crit_edge, %if.end58.i.disable_clk.i_crit_edge
  %.str.85.sink.i = phi ptr [ @.str.70, %if.end58.i.disable_clk.i_crit_edge ], [ @.str.73, %if.end68.i.disable_clk.i_crit_edge ], [ @.str.76, %if.end82.i.disable_clk.i_crit_edge ], [ @.str.79, %if.end94.i.disable_clk.i_crit_edge ], [ @.str.82, %sc27xx_fgu_get_boot_capacity.exit.thread.i ], [ @.str.82, %sc27xx_fgu_get_boot_capacity.exit.i.disable_clk.i_crit_edge ], [ @.str.85, %if.end.i237.i.disable_clk.i_crit_edge ], [ @.str.85, %if.end113.i.disable_clk.i_crit_edge ], [ @.str.85, %sc27xx_fgu_set_clbcnt.exit.i.disable_clk.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i206.i, %if.end58.i.disable_clk.i_crit_edge ], [ %call.i208.i, %if.end68.i.disable_clk.i_crit_edge ], [ %call.i214.i, %if.end82.i.disable_clk.i_crit_edge ], [ %call.i215.i, %if.end94.i.disable_clk.i_crit_edge ], [ %retval.0.i220.ph.i, %sc27xx_fgu_get_boot_capacity.exit.thread.i ], [ %call4.i.i, %sc27xx_fgu_get_boot_capacity.exit.i.disable_clk.i_crit_edge ], [ %call.i21.i.i, %if.end.i237.i.disable_clk.i_crit_edge ], [ %call.i.i236.i, %if.end113.i.disable_clk.i_crit_edge ], [ %call.i22.i.i, %sc27xx_fgu_set_clbcnt.exit.i.disable_clk.i_crit_edge ]
  %191 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull %.str.85.sink.i) #10
  %193 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %call.i, align 4
  %call.i240.i = call i32 @regmap_update_bits_base(ptr noundef %194, i32 noundef 3096, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %disable_fgu.i

disable_fgu.i:                                    ; preds = %disable_clk.i, %do.end56.i
  %ret.1.i = phi i32 [ %call.i205.i, %do.end56.i ], [ %ret.0.i, %disable_clk.i ]
  %195 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %call.i, align 4
  %call.i241.i = call i32 @regmap_update_bits_base(ptr noundef %196, i32 noundef 3080, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sc27xx_fgu_hw_init.exit.thread

sc27xx_fgu_hw_init.exit.thread:                   ; preds = %disable_fgu.i, %do.end47.i, %if.then33.i, %if.then12.i, %if.end.i.sc27xx_fgu_hw_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.sc27xx_fgu_hw_init.exit.thread_crit_edge ], [ -12, %if.then12.i ], [ -12, %if.then33.i ], [ %ret.1.i, %disable_fgu.i ], [ %call.i204.i, %do.end47.i ], [ %call.i205, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #7
  br label %do.end82

sc27xx_fgu_hw_init.exit:                          ; preds = %if.end.i.i.sc27xx_fgu_hw_init.exit_crit_edge, %if.end36.i.sc27xx_fgu_hw_init.exit_crit_edge
  %retval.0.i.in.i = phi ptr [ %call.i.i, %if.end36.i.sc27xx_fgu_hw_init.exit_crit_edge ], [ %call3.i.i, %if.end.i.i.sc27xx_fgu_hw_init.exit_crit_edge ]
  %retval.0.i.i = ptrtoint ptr %retval.0.i.in.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calib_data.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #7
  %tobool78.not = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool78.not, label %sc27xx_fgu_hw_init.exit.if.end83_crit_edge, label %sc27xx_fgu_hw_init.exit.do.end82_crit_edge

sc27xx_fgu_hw_init.exit.do.end82_crit_edge:       ; preds = %sc27xx_fgu_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

sc27xx_fgu_hw_init.exit.if.end83_crit_edge:       ; preds = %sc27xx_fgu_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

do.end82:                                         ; preds = %sc27xx_fgu_hw_init.exit.do.end82_crit_edge, %sc27xx_fgu_hw_init.exit.thread
  %retval.0.i213 = phi i32 [ %retval.0.i.ph, %sc27xx_fgu_hw_init.exit.thread ], [ %retval.0.i.i, %sc27xx_fgu_hw_init.exit.do.end82_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end83:                                         ; preds = %sc27xx_fgu_hw_init.exit.if.end83_crit_edge, %sc27xx_fgu_hw_init.exit.thread214
  %call.i207 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @sc27xx_fgu_disable, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool.not.i208 = icmp eq i32 %call.i207, 0
  br i1 %tobool.not.i208, label %if.end90, label %do.end89

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %197 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %call.i, align 4
  %call.i.i.i209 = call i32 @regmap_update_bits_base(ptr noundef %198, i32 noundef 3096, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %199 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %call.i, align 4
  %call.i4.i.i = call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef 3080, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end90:                                         ; preds = %if.end83
  %call91 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end90.cleanup_crit_edge, label %if.end94

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  %201 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev65, align 4
  %203 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev, align 8
  %call96 = call i32 @devm_request_threaded_irq(ptr noundef %202, i32 noundef %call91, ptr noundef null, ptr noundef nonnull @sc27xx_fgu_interrupt, i32 noundef 24576, ptr noundef %204, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end103:                                        ; preds = %if.end94
  %207 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %gpiod, align 4
  %call105 = call i32 @gpiod_to_irq(ptr noundef %208) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end110, label %if.end111

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end111:                                        ; preds = %if.end103
  %209 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pdev, align 8
  %call113 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call105, ptr noundef null, ptr noundef nonnull @sc27xx_fgu_bat_detection, i32 noundef 8195, ptr noundef %210, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end111.cleanup_crit_edge, label %do.end118

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end118, %if.end111.cleanup_crit_edge, %do.end110, %do.end101, %if.end90.cleanup_crit_edge, %do.end89, %do.end82, %do.end73, %do.end58, %do.end49, %do.end39, %do.end29, %do.end20, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i200, %do.end12 ], [ %call.i201, %do.end20 ], [ %10, %do.end29 ], [ %14, %do.end39 ], [ %18, %do.end49 ], [ %call54, %do.end58 ], [ %27, %do.end73 ], [ %retval.0.i213, %do.end82 ], [ %call.i207, %do.end89 ], [ %call96, %do.end101 ], [ %call105, %do.end110 ], [ %call113, %do.end118 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call91, %if.end90.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fgu_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_fgu_disable(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3096, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_data, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3080, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %cap = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #7
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cap, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %status, align 4, !annotation !184
  %lock = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %base = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %add = add i32 %5, 28
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %add3 = add i32 %9, 20
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add3, i32 noundef %11, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.out_crit_edge, label %if.end10

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end7
  %call11 = call fastcc i32 @sc27xx_fgu_get_capacity(ptr noundef %dev_id, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cap, align 4
  call fastcc void @sc27xx_fgu_capacity_calibration(ptr noundef %dev_id, i32 noundef %15, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.end14, %if.end10.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  %battery = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 2
  %16 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %battery, align 4
  call void @power_supply_changed(ptr noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_bat_detection(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %gpiod = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27) #10
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2 = icmp ne i32 %call, 0
  %bat_present = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 8
  %frombool = zext i1 %tobool2 to i8
  %4 = ptrtoint ptr %bat_present to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %bat_present, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %battery = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %dev_id, i32 0, i32 2
  %5 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %remainder.i17.i.i189 = alloca i32, align 4
  %remainder.i.i.i190 = alloca i32, align 4
  %cur.i191 = alloca i32, align 4
  %remainder.i17.i.i163 = alloca i32, align 4
  %remainder.i.i.i164 = alloca i32, align 4
  %vol.i165 = alloca i32, align 4
  %remainder.i17.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %ccl.i = alloca i32, align 4
  %cch.i = alloca i32, align 4
  %remainder.i17.i.i128 = alloca i32, align 4
  %remainder.i.i.i129 = alloca i32, align 4
  %cur.i = alloca i32, align 4
  %vol.i124 = alloca i32, align 4
  %remainder.i17.i.i = alloca i32, align 4
  %remainder.i.i.i = alloca i32, align 4
  %vol.i = alloca i32, align 4
  %remainder.i17.i.i.i = alloca i32, align 4
  %remainder.i.i.i.i = alloca i32, align 4
  %vol.i.i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !184
  %lock = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %1 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.error_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb7
    i32 52, label %sw.bb9
    i32 6, label %sw.bb14
    i32 47, label %sw.bb15
    i32 13, label %sw.bb20
    i32 14, label %sw.bb25
    i32 31, label %sw.bb30
    i32 18, label %sw.bb35
    i32 41, label %sw.bb41
    i32 26, label %sw.bb43
    i32 12, label %sw.bb59
    i32 17, label %sw.bb65
    i32 15, label %sw.bb71
  ]

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sw.bb:                                            ; preds = %entry
  %call1 = call fastcc i32 @sc27xx_fgu_get_status(ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  br label %error

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol.i.i) #7
  %5 = ptrtoint ptr %vol.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %vol.i.i, align 4, !annotation !184
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %base.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 4
  %add.i.i = add i32 %9, 32
  %call.i.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %add.i.i, ptr noundef nonnull %vol.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sc27xx_fgu_get_health.exit

if.end.i.i:                                       ; preds = %sw.bb2
  %10 = ptrtoint ptr %vol.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vol.i.i, align 4
  %conv.i.i = sext i32 %11 to i64
  %mul.i.i.i = mul nsw i64 %conv.i.i, 1000
  %vol_1000mv_adc.i.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 20
  %12 = ptrtoint ptr %vol_1000mv_adc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vol_1000mv_adc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i.i = icmp slt i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.i.i.i = icmp sgt i32 %13, 0
  %cmp3.i.i.i = xor i1 %cmp.i.i.i, %cmp1.i.i.i
  %div.i.i.i = sdiv i32 %13, 2
  %conv5.i.i.i = sext i32 %div.i.i.i to i64
  br i1 %cmp3.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i.i = add nsw i64 %mul.i.i.i, %conv5.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %14 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !184
  %call.i.i.i.i = call i64 @div_s64_rem(i64 noundef %add.i.i.i, i32 noundef %13, ptr noundef nonnull %remainder.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %extract.t240 = trunc i64 %call.i.i.i.i to i32
  br label %if.end6

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = sub nsw i64 %mul.i.i.i, %conv5.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i.i) #7
  %15 = ptrtoint ptr %remainder.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %remainder.i17.i.i.i, align 4, !annotation !184
  %call.i18.i.i.i = call i64 @div_s64_rem(i64 noundef %sub.i.i.i, i32 noundef %13, ptr noundef nonnull %remainder.i17.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i.i) #7
  %extract.t241 = trunc i64 %call.i18.i.i.i to i32
  br label %if.end6

sc27xx_fgu_get_health.exit:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i.i) #7
  br label %error

if.end6:                                          ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %call.i.i.i.i.sink.off0 = phi i32 [ %extract.t240, %cond.true.i.i.i ], [ %extract.t241, %cond.false.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i.i) #7
  %max_volt.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 14
  %16 = ptrtoint ptr %max_volt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_volt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i.sink.off0, i32 %17)
  %cmp.i = icmp sgt i32 %call.i.i.i.i.sink.off0, %17
  %..i = select i1 %cmp.i, i32 4, i32 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %..i, ptr %value, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %..i, ptr %val, align 4
  br label %error

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bat_present = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 8
  %20 = ptrtoint ptr %bat_present to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bat_present, align 4, !range !185
  %22 = zext i8 %21 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %error

sw.bb9:                                           ; preds = %entry
  %channel.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 6
  %24 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %25, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb9.error_crit_edge

sw.bb9.error_crit_edge:                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %error

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %val, align 4
  br label %error

sw.bb15:                                          ; preds = %entry
  %call16 = call fastcc i32 @sc27xx_fgu_get_capacity(ptr noundef %call, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %sw.bb15.error_crit_edge

sw.bb15.error_crit_edge:                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val, align 4
  br label %error

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol.i) #7
  %33 = ptrtoint ptr %vol.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %vol.i, align 4, !annotation !184
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %base.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 3
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base.i, align 4
  %add.i = add i32 %37, 32
  %call.i120 = call i32 @regmap_read(ptr noundef %35, i32 noundef %add.i, ptr noundef nonnull %vol.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i, label %if.end.i121, label %sc27xx_fgu_get_vbat_vol.exit

if.end.i121:                                      ; preds = %sw.bb20
  %38 = ptrtoint ptr %vol.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vol.i, align 4
  %conv.i = sext i32 %39 to i64
  %mul.i.i = mul nsw i64 %conv.i, 1000
  %vol_1000mv_adc.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 20
  %40 = ptrtoint ptr %vol_1000mv_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vol_1000mv_adc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i = icmp slt i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp1.i.i = icmp sgt i32 %41, 0
  %cmp3.i.i = xor i1 %cmp.i.i, %cmp1.i.i
  %div.i.i = sdiv i32 %41, 2
  %conv5.i.i = sext i32 %div.i.i to i64
  br i1 %cmp3.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i122 = add nsw i64 %mul.i.i, %conv5.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %42 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !184
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %add.i.i122, i32 noundef %41, ptr noundef nonnull %remainder.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %extract.t238 = trunc i64 %call.i.i.i to i32
  br label %if.end24

cond.false.i.i:                                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub nsw i64 %mul.i.i, %conv5.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i) #7
  %43 = ptrtoint ptr %remainder.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %remainder.i17.i.i, align 4, !annotation !184
  %call.i18.i.i = call i64 @div_s64_rem(i64 noundef %sub.i.i, i32 noundef %41, ptr noundef nonnull %remainder.i17.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i) #7
  %extract.t239 = trunc i64 %call.i18.i.i to i32
  br label %if.end24

sc27xx_fgu_get_vbat_vol.exit:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i) #7
  br label %error

if.end24:                                         ; preds = %cond.false.i.i, %cond.true.i.i
  %call.i.i.i.sink.off0 = phi i32 [ %extract.t238, %cond.true.i.i ], [ %extract.t239, %cond.false.i.i ]
  %44 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i.i.i.sink.off0, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i) #7
  %mul = mul i32 %call.i.i.i.sink.off0, 1000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %val, align 4
  br label %error

sw.bb25:                                          ; preds = %entry
  %call26 = call fastcc i32 @sc27xx_fgu_get_vbat_ocv(ptr noundef %call, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %sw.bb25.error_crit_edge

sw.bb25.error_crit_edge:                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value, align 4
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %val, align 4
  br label %error

sw.bb30:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol.i124) #7
  %49 = ptrtoint ptr %vol.i124 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %vol.i124, align 4, !annotation !184
  %charge_chan.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 7
  %50 = ptrtoint ptr %charge_chan.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %charge_chan.i, align 4
  %call.i125 = call i32 @iio_read_channel_processed(ptr noundef %51, ptr noundef nonnull %vol.i124) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp.i126 = icmp slt i32 %call.i125, 0
  br i1 %cmp.i126, label %sc27xx_fgu_get_charge_vol.exit, label %if.end34

sc27xx_fgu_get_charge_vol.exit:                   ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i124) #7
  br label %error

if.end34:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %vol.i124 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vol.i124, align 4
  %mul.i = mul i32 %53, 1000
  %54 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul.i, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i124) #7
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul.i, ptr %val, align 4
  br label %error

sw.bb35:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur.i) #7
  %56 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %cur.i, align 4, !annotation !184
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call, align 4
  %base.i130 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 3
  %59 = ptrtoint ptr %base.i130 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base.i130, align 4
  %add.i131 = add i32 %60, 44
  %call.i132 = call i32 @regmap_read(ptr noundef %58, i32 noundef %add.i131, ptr noundef nonnull %cur.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.end.i141, label %sc27xx_fgu_get_current.exit

if.end.i141:                                      ; preds = %sw.bb35
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur.i, align 4
  %sub.i = add i32 %62, -8192
  %conv.i134 = sext i32 %sub.i to i64
  %mul.i.i135 = mul nsw i64 %conv.i134, 1000
  %cur_1000ma_adc.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 19
  %63 = ptrtoint ptr %cur_1000ma_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cur_1000ma_adc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i.i136 = icmp slt i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1.i.i137 = icmp sgt i32 %64, 0
  %cmp3.i.i138 = xor i1 %cmp.i.i136, %cmp1.i.i137
  %div.i.i139 = sdiv i32 %64, 2
  %conv5.i.i140 = sext i32 %div.i.i139 to i64
  br i1 %cmp3.i.i138, label %cond.true.i.i145, label %cond.false.i.i149

cond.true.i.i145:                                 ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i142 = add nsw i64 %mul.i.i135, %conv5.i.i140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i129) #7
  %65 = ptrtoint ptr %remainder.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %remainder.i.i.i129, align 4, !annotation !184
  %call.i.i.i143 = call i64 @div_s64_rem(i64 noundef %add.i.i142, i32 noundef %64, ptr noundef nonnull %remainder.i.i.i129) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i129) #7
  %extract.t236 = trunc i64 %call.i.i.i143 to i32
  br label %if.end39

cond.false.i.i149:                                ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i146 = sub nsw i64 %mul.i.i135, %conv5.i.i140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i128) #7
  %66 = ptrtoint ptr %remainder.i17.i.i128 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %remainder.i17.i.i128, align 4, !annotation !184
  %call.i18.i.i147 = call i64 @div_s64_rem(i64 noundef %sub.i.i146, i32 noundef %64, ptr noundef nonnull %remainder.i17.i.i128) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i128) #7
  %extract.t237 = trunc i64 %call.i18.i.i147 to i32
  br label %if.end39

sc27xx_fgu_get_current.exit:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i) #7
  br label %error

if.end39:                                         ; preds = %cond.false.i.i149, %cond.true.i.i145
  %call.i.i.i143.sink.off0 = phi i32 [ %extract.t236, %cond.true.i.i145 ], [ %extract.t237, %cond.false.i.i149 ]
  %67 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.i.i.i143.sink.off0, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i) #7
  %mul40 = mul i32 %call.i.i.i143.sink.off0, 1000
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul40, ptr %val, align 4
  br label %error

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %total_cap = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 10
  %69 = ptrtoint ptr %total_cap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %total_cap, align 4
  %mul42 = mul i32 %70, 1000
  %71 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul42, ptr %val, align 4
  br label %error

sw.bb43:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccl.i) #7
  %72 = ptrtoint ptr %ccl.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %ccl.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cch.i) #7
  %73 = ptrtoint ptr %cch.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %cch.i, align 4, !annotation !184
  %74 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call, align 4
  %base.i151 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 3
  %76 = ptrtoint ptr %base.i151 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base.i151, align 4
  %add.i152 = add i32 %77, 108
  %call.i153 = call i32 @regmap_read(ptr noundef %75, i32 noundef %add.i152, ptr noundef nonnull %ccl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool.not.i154 = icmp eq i32 %call.i153, 0
  br i1 %tobool.not.i154, label %if.end.i155, label %sw.bb43.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge

sw.bb43.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge: ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_clbcnt.exit.thread

if.end.i155:                                      ; preds = %sw.bb43
  %78 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call, align 4
  %80 = ptrtoint ptr %base.i151 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %base.i151, align 4
  %add3.i = add i32 %81, 104
  %call4.i = call i32 @regmap_read(ptr noundef %79, i32 noundef %add3.i, ptr noundef nonnull %cch.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end47, label %if.end.i155.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge

if.end.i155.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge: ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_clbcnt.exit.thread

sc27xx_fgu_get_clbcnt.exit.thread:                ; preds = %if.end.i155.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge, %sw.bb43.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge
  %retval.0.i156.ph = phi i32 [ %call4.i, %if.end.i155.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge ], [ %call.i153, %sw.bb43.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i) #7
  br label %error

if.end47:                                         ; preds = %if.end.i155
  %82 = ptrtoint ptr %ccl.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ccl.i, align 4
  %and.i = and i32 %83, 65535
  %84 = ptrtoint ptr %cch.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cch.i, align 4
  %shl.i = shl i32 %85, 16
  %or.i = or i32 %shl.i, %and.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i) #7
  %mul48 = mul i32 %or.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul48)
  %cmp = icmp sgt i32 %mul48, 0
  %cond.in.v = select i1 %cmp, i32 36, i32 -36
  %cond.in = add i32 %cond.in.v, %mul48
  %cond = sdiv i32 %cond.in, 72
  %86 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond, ptr %value, align 4
  %conv57 = sext i32 %cond to i64
  %mul.i157 = mul nsw i64 %conv57, 1000
  %cur_1000ma_adc.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 19
  %87 = ptrtoint ptr %cur_1000ma_adc.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cur_1000ma_adc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %cond.in)
  %cmp.i158 = icmp slt i32 %cond.in, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp1.i = icmp sgt i32 %88, 0
  %cmp3.i = xor i1 %cmp1.i, %cmp.i158
  %div.i = sdiv i32 %88, 2
  %conv5.i = sext i32 %div.i to i64
  br i1 %cmp3.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %add.i159 = add nsw i64 %mul.i157, %conv5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %89 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !184
  %call.i.i160 = call i64 @div_s64_rem(i64 noundef %add.i159, i32 noundef %88, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %extract.t234 = trunc i64 %call.i.i160 to i32
  br label %sc27xx_fgu_adc_to_current.exit

cond.false.i:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i161 = sub nsw i64 %mul.i157, %conv5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i) #7
  %90 = ptrtoint ptr %remainder.i17.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %remainder.i17.i, align 4, !annotation !184
  %call.i18.i = call i64 @div_s64_rem(i64 noundef %sub.i161, i32 noundef %88, ptr noundef nonnull %remainder.i17.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i) #7
  %extract.t235 = trunc i64 %call.i18.i to i32
  br label %sc27xx_fgu_adc_to_current.exit

sc27xx_fgu_adc_to_current.exit:                   ; preds = %cond.false.i, %cond.true.i
  %call.i.i160.sink.off0 = phi i32 [ %extract.t234, %cond.true.i ], [ %extract.t235, %cond.false.i ]
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.i.i160.sink.off0, ptr %val, align 4
  br label %error

sw.bb59:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol.i165) #7
  %92 = ptrtoint ptr %vol.i165 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %vol.i165, align 4, !annotation !184
  %93 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call, align 4
  %base.i166 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 3
  %95 = ptrtoint ptr %base.i166 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %base.i166, align 4
  %add.i167 = add i32 %96, 208
  %call.i168 = call i32 @regmap_read(ptr noundef %94, i32 noundef %add.i167, ptr noundef nonnull %vol.i165) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end.i178, label %sc27xx_fgu_get_vol_now.exit

if.end.i178:                                      ; preds = %sw.bb59
  %97 = ptrtoint ptr %vol.i165 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vol.i165, align 4
  %conv.i170 = zext i32 %98 to i64
  %mul.i.i171 = mul nuw nsw i64 %conv.i170, 1000
  %vol_1000mv_adc.i.i172 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 20
  %99 = ptrtoint ptr %vol_1000mv_adc.i.i172 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vol_1000mv_adc.i.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i.i173 = icmp eq i32 %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp1.i.i174 = icmp sgt i32 %100, 0
  %cmp3.i.i175 = xor i1 %cmp.i.i173, %cmp1.i.i174
  %div.i.i176 = sdiv i32 %100, 2
  %conv5.i.i177 = sext i32 %div.i.i176 to i64
  br i1 %cmp3.i.i175, label %cond.true.i.i182, label %cond.false.i.i186

cond.true.i.i182:                                 ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i179 = add nsw i64 %mul.i.i171, %conv5.i.i177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i164) #7
  %101 = ptrtoint ptr %remainder.i.i.i164 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %remainder.i.i.i164, align 4, !annotation !184
  %call.i.i.i180 = call i64 @div_s64_rem(i64 noundef %add.i.i179, i32 noundef %100, ptr noundef nonnull %remainder.i.i.i164) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i164) #7
  %extract.t = trunc i64 %call.i.i.i180 to i32
  br label %if.end63

cond.false.i.i186:                                ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i183 = sub nsw i64 %mul.i.i171, %conv5.i.i177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i163) #7
  %102 = ptrtoint ptr %remainder.i17.i.i163 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %remainder.i17.i.i163, align 4, !annotation !184
  %call.i18.i.i184 = call i64 @div_s64_rem(i64 noundef %sub.i.i183, i32 noundef %100, ptr noundef nonnull %remainder.i17.i.i163) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i163) #7
  %extract.t233 = trunc i64 %call.i18.i.i184 to i32
  br label %if.end63

sc27xx_fgu_get_vol_now.exit:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i165) #7
  br label %error

if.end63:                                         ; preds = %cond.false.i.i186, %cond.true.i.i182
  %call.i.i.i180.sink.off0 = phi i32 [ %extract.t, %cond.true.i.i182 ], [ %extract.t233, %cond.false.i.i186 ]
  %103 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call.i.i.i180.sink.off0, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i165) #7
  %mul64 = mul i32 %call.i.i.i180.sink.off0, 1000
  %104 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul64, ptr %val, align 4
  br label %error

sw.bb65:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur.i191) #7
  %105 = ptrtoint ptr %cur.i191 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %cur.i191, align 4, !annotation !184
  %106 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call, align 4
  %base.i192 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 3
  %108 = ptrtoint ptr %base.i192 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %base.i192, align 4
  %add.i193 = add i32 %109, 240
  %call.i194 = call i32 @regmap_read(ptr noundef %107, i32 noundef %add.i193, ptr noundef nonnull %cur.i191) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %if.end.i205, label %sc27xx_fgu_get_cur_now.exit

if.end.i205:                                      ; preds = %sw.bb65
  %110 = ptrtoint ptr %cur.i191 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cur.i191, align 4
  %sub.i196 = add i32 %111, -8192
  %conv.i197 = zext i32 %sub.i196 to i64
  %mul.i.i198 = mul nuw nsw i64 %conv.i197, 1000
  %cur_1000ma_adc.i.i199 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 19
  %112 = ptrtoint ptr %cur_1000ma_adc.i.i199 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cur_1000ma_adc.i.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i196)
  %cmp.i.i200 = icmp eq i32 %sub.i196, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp1.i.i201 = icmp sgt i32 %113, 0
  %cmp3.i.i202 = xor i1 %cmp.i.i200, %cmp1.i.i201
  %div.i.i203 = sdiv i32 %113, 2
  %conv5.i.i204 = sext i32 %div.i.i203 to i64
  br i1 %cmp3.i.i202, label %cond.true.i.i209, label %cond.false.i.i213

cond.true.i.i209:                                 ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i206 = add nsw i64 %mul.i.i198, %conv5.i.i204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i190) #7
  %114 = ptrtoint ptr %remainder.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %remainder.i.i.i190, align 4, !annotation !184
  %call.i.i.i207 = call i64 @div_s64_rem(i64 noundef %add.i.i206, i32 noundef %113, ptr noundef nonnull %remainder.i.i.i190) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i190) #7
  %extract.t231 = trunc i64 %call.i.i.i207 to i32
  br label %if.end69

cond.false.i.i213:                                ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i210 = sub nsw i64 %mul.i.i198, %conv5.i.i204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i189) #7
  %115 = ptrtoint ptr %remainder.i17.i.i189 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %remainder.i17.i.i189, align 4, !annotation !184
  %call.i18.i.i211 = call i64 @div_s64_rem(i64 noundef %sub.i.i210, i32 noundef %113, ptr noundef nonnull %remainder.i17.i.i189) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i189) #7
  %extract.t232 = trunc i64 %call.i18.i.i211 to i32
  br label %if.end69

sc27xx_fgu_get_cur_now.exit:                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i191) #7
  br label %error

if.end69:                                         ; preds = %cond.false.i.i213, %cond.true.i.i209
  %call.i.i.i207.sink.off0 = phi i32 [ %extract.t231, %cond.true.i.i209 ], [ %extract.t232, %cond.false.i.i213 ]
  %116 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call.i.i.i207.sink.off0, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i191) #7
  %mul70 = mul i32 %call.i.i.i207.sink.off0, 1000
  %117 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul70, ptr %val, align 4
  br label %error

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %boot_volt = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 16
  %118 = ptrtoint ptr %boot_volt to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %boot_volt, align 4
  %120 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %val, align 4
  br label %error

error:                                            ; preds = %sw.bb71, %if.end69, %sc27xx_fgu_get_cur_now.exit, %if.end63, %sc27xx_fgu_get_vol_now.exit, %sc27xx_fgu_adc_to_current.exit, %sc27xx_fgu_get_clbcnt.exit.thread, %sw.bb41, %if.end39, %sc27xx_fgu_get_current.exit, %if.end34, %sc27xx_fgu_get_charge_vol.exit, %if.end29, %sw.bb25.error_crit_edge, %if.end24, %sc27xx_fgu_get_vbat_vol.exit, %if.end19, %sw.bb15.error_crit_edge, %sw.bb14, %if.end13, %sw.bb9.error_crit_edge, %sw.bb7, %if.end6, %sc27xx_fgu_get_health.exit, %if.end, %sw.bb.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb71 ], [ %call.i194, %sc27xx_fgu_get_cur_now.exit ], [ 0, %if.end69 ], [ %call.i168, %sc27xx_fgu_get_vol_now.exit ], [ 0, %if.end63 ], [ 0, %sc27xx_fgu_adc_to_current.exit ], [ 0, %sw.bb41 ], [ %call.i132, %sc27xx_fgu_get_current.exit ], [ 0, %if.end39 ], [ %call.i125, %sc27xx_fgu_get_charge_vol.exit ], [ 0, %if.end34 ], [ %call26, %sw.bb25.error_crit_edge ], [ 0, %if.end29 ], [ %call.i120, %sc27xx_fgu_get_vbat_vol.exit ], [ 0, %if.end24 ], [ %call16, %sw.bb15.error_crit_edge ], [ 0, %if.end19 ], [ 0, %sw.bb14 ], [ %call.i, %sw.bb9.error_crit_edge ], [ 0, %if.end13 ], [ 0, %sw.bb7 ], [ %call.i.i, %sc27xx_fgu_get_health.exit ], [ 0, %if.end6 ], [ %call1, %sw.bb.error_crit_edge ], [ 0, %if.end ], [ -22, %entry.error_crit_edge ], [ %retval.0.i156.ph, %sc27xx_fgu_get_clbcnt.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %ccl.i.i = alloca i32, align 4
  %cch.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %lock = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 47, label %sw.bb
    i32 69, label %sw.bb2
    i32 41, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call1 = tail call fastcc i32 @sc27xx_fgu_save_last_cap(ptr noundef %call, i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.59) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %init_cap.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %init_cap.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %init_cap.i, align 4
  %init_clbcnt.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccl.i.i) #7
  %8 = ptrtoint ptr %ccl.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ccl.i.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cch.i.i) #7
  %9 = ptrtoint ptr %cch.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %cch.i.i, align 4, !annotation !184
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %base.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i, align 4
  %add.i.i = add i32 %13, 108
  %call.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %add.i.i, ptr noundef nonnull %ccl.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb2.do.end.i_crit_edge

sw.bb2.do.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %sw.bb2
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i.i, align 4
  %add3.i.i = add i32 %17, 104
  %call4.i.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %add3.i.i, ptr noundef nonnull %cch.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %sc27xx_fgu_get_clbcnt.exit.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sc27xx_fgu_get_clbcnt.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ccl.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ccl.i.i, align 4
  %and.i.i = and i32 %19, 65535
  %20 = ptrtoint ptr %cch.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cch.i.i, align 4
  %shl.i.i = shl i32 %21, 16
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %22 = ptrtoint ptr %init_clbcnt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i, ptr %init_clbcnt.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i) #7
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %sw.bb2.do.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i) #7
  %dev.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.57) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %div = sdiv i32 %26, 1000
  %total_cap = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 10
  %27 = ptrtoint ptr %total_cap to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div, ptr %total_cap, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %do.end.i, %sc27xx_fgu_get_clbcnt.exit.i, %do.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb3 ], [ %call1, %do.end ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sc27xx_fgu_get_clbcnt.exit.i ], [ 0, %do.end.i ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc27xx_fgu_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %psp, label %lor.rhs [
    i32 47, label %entry.lor.end_crit_edge
    i32 69, label %entry.lor.end_crit_edge5
  ]

entry.lor.end_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %psp)
  %cmp2 = icmp eq i32 %psp, 41
  %phi.cast = zext i1 %cmp2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge, %entry.lor.end_crit_edge5
  %1 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %entry.lor.end_crit_edge5 ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_fgu_external_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %battery = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_fgu_get_status(ptr nocapture noundef writeonly %status) unnamed_addr #2 align 64 {
entry:
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !184
  %call = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.48) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %call1 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @power_supply_put(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %status, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %entry.for.inc_crit_edge
  %ret.1 = phi i32 [ 0, %if.end4 ], [ -22, %entry.for.inc_crit_edge ]
  %call.1 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.49) #7
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %call1.1 = call i32 @power_supply_get_property(ptr noundef nonnull %call.1, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @power_supply_put(ptr noundef nonnull %call.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %if.end4.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %status, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end4.1, %for.inc.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ 0, %if.end4.1 ], [ %ret.1, %for.inc.for.inc.1_crit_edge ]
  %call.2 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.50) #7
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %call1.2 = call i32 @power_supply_get_property(ptr noundef nonnull %call.2, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @power_supply_put(ptr noundef nonnull %call.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %if.end4.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end4.2, %for.inc.1.for.inc.2_crit_edge
  %ret.1.2 = phi i32 [ 0, %if.end4.2 ], [ %ret.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %call.3 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.51) #7
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %if.end.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %for.inc.2
  %call1.3 = call i32 @power_supply_get_property(ptr noundef nonnull %call.3, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @power_supply_put(ptr noundef nonnull %call.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool2.not.3, label %if.end4.3, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.3, %if.end.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %call1.1, %if.end.1.cleanup_crit_edge ], [ %call1.2, %if.end.2.cleanup_crit_edge ], [ %call1.3, %if.end.3.cleanup_crit_edge ], [ 0, %if.end4.3 ], [ %ret.1.2, %for.inc.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_fgu_get_capacity(ptr noundef %data, ptr nocapture noundef writeonly %cap) unnamed_addr #2 align 64 {
entry:
  %remainder.i17.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %ccl.i = alloca i32, align 4
  %cch.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccl.i) #7
  %0 = ptrtoint ptr %ccl.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ccl.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cch.i) #7
  %1 = ptrtoint ptr %cch.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cch.i, align 4, !annotation !184
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %add.i = add i32 %5, 108
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %ccl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge

entry.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_clbcnt.exit.thread

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %add3.i = add i32 %9, 104
  %call4.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %add3.i, ptr noundef nonnull %cch.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end, label %if.end.i.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge

if.end.i.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_fgu_get_clbcnt.exit.thread

sc27xx_fgu_get_clbcnt.exit.thread:                ; preds = %if.end.i.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge, %entry.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end.i.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge ], [ %call.i, %entry.sc27xx_fgu_get_clbcnt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %ccl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ccl.i, align 4
  %and.i = and i32 %11, 65535
  %12 = ptrtoint ptr %cch.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cch.i, align 4
  %shl.i = shl i32 %13, 16
  %or.i = or i32 %shl.i, %and.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i) #7
  %init_clbcnt = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 13
  %14 = ptrtoint ptr %init_clbcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_clbcnt, align 4
  %sub = sub i32 %or.i, %15
  %mul = mul i32 %sub, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp, i32 36, i32 -36
  %cond.in = add i32 %cond.in.v, %mul
  %div9 = sdiv i32 %cond.in, 72000
  %narrow = mul nsw i32 %div9, 1000
  %mul.i = sext i32 %narrow to i64
  %cur_1000ma_adc.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 19
  %16 = ptrtoint ptr %cur_1000ma_adc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_1000ma_adc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72000, i32 %cond.in)
  %cmp.i = icmp slt i32 %cond.in, 72000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.i = icmp sgt i32 %17, 0
  %cmp3.i = xor i1 %cmp1.i, %cmp.i
  %div.i = sdiv i32 %17, 2
  %conv5.i = sext i32 %div.i to i64
  br i1 %cmp3.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i57 = add nsw i64 %mul.i, %conv5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %18 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !184
  %call.i.i = call i64 @div_s64_rem(i64 noundef %add.i57, i32 noundef %17, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %extract.t62 = trunc i64 %call.i.i to i32
  br label %sc27xx_fgu_adc_to_current.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i64 %mul.i, %conv5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i) #7
  %19 = ptrtoint ptr %remainder.i17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %remainder.i17.i, align 4, !annotation !184
  %call.i18.i = call i64 @div_s64_rem(i64 noundef %sub.i, i32 noundef %17, ptr noundef nonnull %remainder.i17.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i) #7
  %extract.t63 = trunc i64 %call.i18.i to i32
  br label %sc27xx_fgu_adc_to_current.exit

sc27xx_fgu_adc_to_current.exit:                   ; preds = %cond.false.i, %cond.true.i
  %call.i.i.sink.off0 = phi i32 [ %extract.t62, %cond.true.i ], [ %extract.t63, %cond.false.i ]
  %mul13 = mul i32 %call.i.i.sink.off0, 100
  %total_cap = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 10
  %20 = ptrtoint ptr %total_cap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul13)
  %cmp16 = icmp slt i32 %mul13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp18 = icmp sgt i32 %21, 0
  %cmp20 = xor i1 %cmp16, %cmp18
  %add24.pn.v.v = select i1 %cmp20, i32 2, i32 -2
  %add24.pn.v = sdiv i32 %21, %add24.pn.v.v
  %add24.pn = add i32 %add24.pn.v, %mul13
  %cond31 = sdiv i32 %add24.pn, %21
  %init_cap = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 11
  %22 = ptrtoint ptr %init_cap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %init_cap, align 4
  %add32 = add i32 %23, %cond31
  %24 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add32, ptr %cap, align 4
  call fastcc void @sc27xx_fgu_capacity_calibration(ptr noundef %data, i32 noundef %add32, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %sc27xx_fgu_adc_to_current.exit, %sc27xx_fgu_get_clbcnt.exit.thread
  %retval.0 = phi i32 [ 0, %sc27xx_fgu_adc_to_current.exit ], [ %retval.0.i.ph, %sc27xx_fgu_get_clbcnt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_fgu_get_vbat_ocv(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %remainder.i17.i.i33 = alloca i32, align 4
  %remainder.i.i.i34 = alloca i32, align 4
  %cur.i = alloca i32, align 4
  %remainder.i17.i.i = alloca i32, align 4
  %remainder.i.i.i = alloca i32, align 4
  %vol.i = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol.i) #7
  %1 = ptrtoint ptr %vol.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vol.i, align 4, !annotation !184
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %add.i = add i32 %5, 32
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %vol.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sc27xx_fgu_get_vbat_vol.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %vol.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol.i, align 4
  %conv.i = sext i32 %7 to i64
  %mul.i.i = mul nsw i64 %conv.i, 1000
  %vol_1000mv_adc.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 20
  %8 = ptrtoint ptr %vol_1000mv_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_1000mv_adc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i = icmp slt i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i.i = icmp sgt i32 %9, 0
  %cmp3.i.i = xor i1 %cmp.i.i, %cmp1.i.i
  %div.i.i = sdiv i32 %9, 2
  %conv5.i.i = sext i32 %div.i.i to i64
  br i1 %cmp3.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add nsw i64 %mul.i.i, %conv5.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %10 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !184
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %add.i.i, i32 noundef %9, ptr noundef nonnull %remainder.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %extract.t64 = trunc i64 %call.i.i.i to i32
  br label %if.end

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub nsw i64 %mul.i.i, %conv5.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i) #7
  %11 = ptrtoint ptr %remainder.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %remainder.i17.i.i, align 4, !annotation !184
  %call.i18.i.i = call i64 @div_s64_rem(i64 noundef %sub.i.i, i32 noundef %9, ptr noundef nonnull %remainder.i17.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i) #7
  %extract.t65 = trunc i64 %call.i18.i.i to i32
  br label %if.end

sc27xx_fgu_get_vbat_vol.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i) #7
  br label %cleanup

if.end:                                           ; preds = %cond.false.i.i, %cond.true.i.i
  %call.i.i.i.sink.off0 = phi i32 [ %extract.t64, %cond.true.i.i ], [ %extract.t65, %cond.false.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur.i) #7
  %12 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %cur.i, align 4, !annotation !184
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i, align 4
  %add.i36 = add i32 %16, 44
  %call.i37 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add.i36, ptr noundef nonnull %cur.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i46, label %sc27xx_fgu_get_current.exit

if.end.i46:                                       ; preds = %if.end
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur.i, align 4
  %sub.i = add i32 %18, -8192
  %conv.i39 = sext i32 %sub.i to i64
  %mul.i.i40 = mul nsw i64 %conv.i39, 1000
  %cur_1000ma_adc.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 19
  %19 = ptrtoint ptr %cur_1000ma_adc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_1000ma_adc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i.i41 = icmp slt i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.i.i42 = icmp sgt i32 %20, 0
  %cmp3.i.i43 = xor i1 %cmp.i.i41, %cmp1.i.i42
  %div.i.i44 = sdiv i32 %20, 2
  %conv5.i.i45 = sext i32 %div.i.i44 to i64
  br i1 %cmp3.i.i43, label %cond.true.i.i50, label %cond.false.i.i54

cond.true.i.i50:                                  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i47 = add nsw i64 %mul.i.i40, %conv5.i.i45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i34) #7
  %21 = ptrtoint ptr %remainder.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %remainder.i.i.i34, align 4, !annotation !184
  %call.i.i.i48 = call i64 @div_s64_rem(i64 noundef %add.i.i47, i32 noundef %20, ptr noundef nonnull %remainder.i.i.i34) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i34) #7
  %extract.t = trunc i64 %call.i.i.i48 to i32
  br label %if.end4

cond.false.i.i54:                                 ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i51 = sub nsw i64 %mul.i.i40, %conv5.i.i45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i33) #7
  %22 = ptrtoint ptr %remainder.i17.i.i33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %remainder.i17.i.i33, align 4, !annotation !184
  %call.i18.i.i52 = call i64 @div_s64_rem(i64 noundef %sub.i.i51, i32 noundef %20, ptr noundef nonnull %remainder.i17.i.i33) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i33) #7
  %extract.t66 = trunc i64 %call.i18.i.i52 to i32
  br label %if.end4

sc27xx_fgu_get_current.exit:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i) #7
  br label %cleanup

if.end4:                                          ; preds = %cond.false.i.i54, %cond.true.i.i50
  %call.i.i.i48.sink.off0 = phi i32 [ %extract.t, %cond.true.i.i50 ], [ %extract.t66, %cond.false.i.i54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i) #7
  %internal_resist = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 9
  %23 = ptrtoint ptr %internal_resist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %internal_resist, align 4
  %resist_table_len = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 18
  %25 = ptrtoint ptr %resist_table_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resist_table_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp sgt i32 %26, 0
  br i1 %cmp, label %if.then5, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %if.end4
  %channel.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 6
  %27 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channel.i, align 4
  %call.i56 = call i32 @iio_read_channel_processed(ptr noundef %28, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool7.not = icmp eq i32 %call.i56, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %resist_table = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 23
  %29 = ptrtoint ptr %resist_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resist_table, align 4
  %31 = ptrtoint ptr %resist_table_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resist_table_len, align 4
  %33 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %temp, align 4
  %call11 = call i32 @power_supply_temp2resist_simple(ptr noundef %30, i32 noundef %32, i32 noundef %34) #7
  %35 = ptrtoint ptr %internal_resist to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %internal_resist, align 4
  %mul = mul i32 %36, %call11
  %div = sdiv i32 %mul, 100
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.end4.if.end13_crit_edge
  %resistance.0 = phi i32 [ %div, %if.end9 ], [ %24, %if.end4.if.end13_crit_edge ]
  %mul14 = mul i32 %call.i.i.i.sink.off0, 1000
  %mul15 = mul i32 %resistance.0, %call.i.i.i48.sink.off0
  %sub = sub i32 %mul14, %mul15
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then5.cleanup_crit_edge, %sc27xx_fgu_get_current.exit, %sc27xx_fgu_get_vbat_vol.exit
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call.i, %sc27xx_fgu_get_vbat_vol.exit ], [ %call.i37, %sc27xx_fgu_get_current.exit ], [ %call.i56, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc27xx_fgu_capacity_calibration(ptr noundef %data, i32 noundef %cap, i1 noundef zeroext %int_mode) unnamed_addr #2 align 64 {
entry:
  %ccl.i.i137 = alloca i32, align 4
  %cch.i.i138 = alloca i32, align 4
  %ccl.i.i118 = alloca i32, align 4
  %cch.i.i119 = alloca i32, align 4
  %ccl.i.i = alloca i32, align 4
  %cch.i.i = alloca i32, align 4
  %ocv = alloca i32, align 4
  %chg_sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocv) #7
  %0 = ptrtoint ptr %ocv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ocv, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chg_sts) #7
  %1 = ptrtoint ptr %chg_sts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %chg_sts, align 4, !annotation !184
  %call = call fastcc i32 @sc27xx_fgu_get_vbat_ocv(ptr noundef %data, ptr noundef nonnull %ocv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.52) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @sc27xx_fgu_get_status(ptr noundef nonnull %chg_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %chg_sts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chg_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %ocv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocv, align 4
  %cap_table = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 22
  %10 = ptrtoint ptr %cap_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cap_table, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp12 = icmp sgt i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %cap)
  %cmp13 = icmp slt i32 %cap, 100
  %or.cond = and i1 %cmp13, %cmp12
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %cap)
  %cmp14 = icmp sgt i32 %cap, 100
  %or.cond117 = or i1 %cmp14, %or.cond
  br i1 %or.cond117, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  %init_cap.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 11
  %14 = ptrtoint ptr %init_cap.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100, ptr %init_cap.i, align 4
  %init_clbcnt.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccl.i.i) #7
  %15 = ptrtoint ptr %ccl.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %ccl.i.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cch.i.i) #7
  %16 = ptrtoint ptr %cch.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %cch.i.i, align 4, !annotation !184
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %base.i.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base.i.i, align 4
  %add.i.i = add i32 %20, 108
  %call.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %add.i.i, ptr noundef nonnull %ccl.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then15.do.end.i_crit_edge

if.then15.do.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then15
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base.i.i, align 4
  %add3.i.i = add i32 %24, 104
  %call4.i.i = call i32 @regmap_read(ptr noundef %22, i32 noundef %add3.i.i, ptr noundef nonnull %cch.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %sc27xx_fgu_get_clbcnt.exit.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sc27xx_fgu_get_clbcnt.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ccl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ccl.i.i, align 4
  %and.i.i = and i32 %26, 65535
  %27 = ptrtoint ptr %cch.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cch.i.i, align 4
  %shl.i.i = shl i32 %28, 16
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %29 = ptrtoint ptr %init_clbcnt.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i.i, ptr %init_clbcnt.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i) #7
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %if.then15.do.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i) #7
  %dev.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %table_len = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 17
  %32 = ptrtoint ptr %table_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %table_len, align 4
  %sub = add i32 %33, -1
  %arrayidx17 = getelementptr %struct.power_supply_battery_ocv_table, ptr %11, i32 %sub
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %35)
  %cmp19.not = icmp sgt i32 %9, %35
  br i1 %cmp19.not, label %land.lhs.true28, label %if.then20

if.then20:                                        ; preds = %if.else
  %init_cap.i120 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 11
  %36 = ptrtoint ptr %init_cap.i120 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %init_cap.i120, align 4
  %init_clbcnt.i121 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccl.i.i118) #7
  %37 = ptrtoint ptr %ccl.i.i118 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %ccl.i.i118, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cch.i.i119) #7
  %38 = ptrtoint ptr %cch.i.i119 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %cch.i.i119, align 4, !annotation !184
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %base.i.i122 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %41 = ptrtoint ptr %base.i.i122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base.i.i122, align 4
  %add.i.i123 = add i32 %42, 108
  %call.i.i124 = call i32 @regmap_read(ptr noundef %40, i32 noundef %add.i.i123, ptr noundef nonnull %ccl.i.i118) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %call.i.i124, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i129, label %if.then20.do.end.i135_crit_edge

if.then20.do.end.i135_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i135

if.end.i.i129:                                    ; preds = %if.then20
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %45 = ptrtoint ptr %base.i.i122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base.i.i122, align 4
  %add3.i.i126 = add i32 %46, 104
  %call4.i.i127 = call i32 @regmap_read(ptr noundef %44, i32 noundef %add3.i.i126, ptr noundef nonnull %cch.i.i119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i127)
  %tobool5.not.i.i128 = icmp eq i32 %call4.i.i127, 0
  br i1 %tobool5.not.i.i128, label %sc27xx_fgu_get_clbcnt.exit.i133, label %if.end.i.i129.do.end.i135_crit_edge

if.end.i.i129.do.end.i135_crit_edge:              ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i135

sc27xx_fgu_get_clbcnt.exit.i133:                  ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %ccl.i.i118 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ccl.i.i118, align 4
  %and.i.i130 = and i32 %48, 65535
  %49 = ptrtoint ptr %cch.i.i119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cch.i.i119, align 4
  %shl.i.i131 = shl i32 %50, 16
  %or.i.i132 = or i32 %shl.i.i131, %and.i.i130
  %51 = ptrtoint ptr %init_clbcnt.i121 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i.i132, ptr %init_clbcnt.i121, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i119) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i118) #7
  br label %cleanup

do.end.i135:                                      ; preds = %if.end.i.i129.do.end.i135_crit_edge, %if.then20.do.end.i135_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i119) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i118) #7
  %dev.i134 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i134, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.57) #10
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cap)
  %cmp29 = icmp slt i32 %cap, 1
  br i1 %cmp29, label %land.lhs.true28.if.then34_crit_edge, label %lor.lhs.false30

land.lhs.true28.if.then34_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false30:                                  ; preds = %land.lhs.true28
  %min_volt = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 15
  %54 = ptrtoint ptr %min_volt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %min_volt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %55)
  %cmp31 = icmp sgt i32 %9, %55
  %alarm_cap = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 12
  %56 = ptrtoint ptr %alarm_cap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %alarm_cap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %cap)
  %cmp33.not = icmp slt i32 %57, %cap
  br i1 %cmp31, label %land.lhs.true32, label %if.then41

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  br i1 %cmp33.not, label %land.lhs.true32.cleanup_crit_edge, label %land.lhs.true32.if.then34_crit_edge

land.lhs.true32.if.then34_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true32.if.then34_crit_edge, %land.lhs.true28.if.then34_crit_edge
  %call37 = tail call i32 @power_supply_ocv2cap_simple(ptr noundef %11, i32 noundef %33, i32 noundef %9) #7
  %init_cap.i139 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 11
  %58 = ptrtoint ptr %init_cap.i139 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call37, ptr %init_cap.i139, align 4
  %init_clbcnt.i140 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccl.i.i137) #7
  %59 = ptrtoint ptr %ccl.i.i137 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %ccl.i.i137, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cch.i.i138) #7
  %60 = ptrtoint ptr %cch.i.i138 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %cch.i.i138, align 4, !annotation !184
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %base.i.i141 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %63 = ptrtoint ptr %base.i.i141 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base.i.i141, align 4
  %add.i.i142 = add i32 %64, 108
  %call.i.i143 = call i32 @regmap_read(ptr noundef %62, i32 noundef %add.i.i142, ptr noundef nonnull %ccl.i.i137) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143)
  %tobool.not.i.i144 = icmp eq i32 %call.i.i143, 0
  br i1 %tobool.not.i.i144, label %if.end.i.i148, label %if.then34.do.end.i154_crit_edge

if.then34.do.end.i154_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i154

if.end.i.i148:                                    ; preds = %if.then34
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %67 = ptrtoint ptr %base.i.i141 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base.i.i141, align 4
  %add3.i.i145 = add i32 %68, 104
  %call4.i.i146 = call i32 @regmap_read(ptr noundef %66, i32 noundef %add3.i.i145, ptr noundef nonnull %cch.i.i138) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i146)
  %tobool5.not.i.i147 = icmp eq i32 %call4.i.i146, 0
  br i1 %tobool5.not.i.i147, label %sc27xx_fgu_get_clbcnt.exit.i152, label %if.end.i.i148.do.end.i154_crit_edge

if.end.i.i148.do.end.i154_crit_edge:              ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i154

sc27xx_fgu_get_clbcnt.exit.i152:                  ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %ccl.i.i137 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ccl.i.i137, align 4
  %and.i.i149 = and i32 %70, 65535
  %71 = ptrtoint ptr %cch.i.i138 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cch.i.i138, align 4
  %shl.i.i150 = shl i32 %72, 16
  %or.i.i151 = or i32 %shl.i.i150, %and.i.i149
  %73 = ptrtoint ptr %init_clbcnt.i140 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or.i.i151, ptr %init_clbcnt.i140, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i138) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i137) #7
  br label %cleanup

do.end.i154:                                      ; preds = %if.end.i.i148.do.end.i154_crit_edge, %if.then34.do.end.i154_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i.i138) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i.i137) #7
  %dev.i153 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 1
  %74 = ptrtoint ptr %dev.i153 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i153, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.then41:                                        ; preds = %lor.lhs.false30
  br i1 %cmp33.not, label %if.then41.if.end51_crit_edge, label %if.else46

if.then41.if.end51_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.else46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 @power_supply_ocv2cap_simple(ptr noundef %11, i32 noundef %33, i32 noundef %9) #7
  br label %if.end51

if.end51:                                         ; preds = %if.else46, %if.then41.if.end51_crit_edge
  %call50.sink = phi i32 [ %call50, %if.else46 ], [ %57, %if.then41.if.end51_crit_edge ]
  tail call fastcc void @sc27xx_fgu_adjust_cap(ptr noundef %data, i32 noundef %call50.sink)
  br i1 %int_mode, label %if.end54, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %cap_table to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cap_table, align 4
  %78 = ptrtoint ptr %table_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %table_len, align 4
  %sub57 = add i32 %79, -1
  %arrayidx58 = getelementptr %struct.power_supply_battery_ocv_table, ptr %77, i32 %sub57
  %80 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx58, align 4
  %82 = ptrtoint ptr %min_volt to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %min_volt, align 4
  %call64 = tail call i32 @power_supply_ocv2cap_simple(ptr noundef %77, i32 noundef %79, i32 noundef %81) #7
  %83 = ptrtoint ptr %alarm_cap to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call64, ptr %alarm_cap, align 4
  %84 = ptrtoint ptr %min_volt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %min_volt, align 4
  %div = sdiv i32 %85, 1000
  %vol_1000mv_adc.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 20
  %86 = ptrtoint ptr %vol_1000mv_adc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vol_1000mv_adc.i, align 4
  %mul.i = mul i32 %87, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 1000
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %base, align 4
  %add = add i32 %91, 52
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef %add, i32 noundef 8191, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end51.cleanup_crit_edge, %do.end.i154, %sc27xx_fgu_get_clbcnt.exit.i152, %land.lhs.true32.cleanup_crit_edge, %do.end.i135, %sc27xx_fgu_get_clbcnt.exit.i133, %do.end.i, %sc27xx_fgu_get_clbcnt.exit.i, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chg_sts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc27xx_fgu_adjust_cap(ptr nocapture noundef %data, i32 noundef %cap) unnamed_addr #2 align 64 {
entry:
  %ccl.i = alloca i32, align 4
  %cch.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_cap = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %init_cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cap, ptr %init_cap, align 4
  %init_clbcnt = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccl.i) #7
  %1 = ptrtoint ptr %ccl.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ccl.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cch.i) #7
  %2 = ptrtoint ptr %cch.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cch.i, align 4, !annotation !184
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i, align 4
  %add.i = add i32 %6, 108
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %ccl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i, align 4
  %add3.i = add i32 %10, 104
  %call4.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add3.i, ptr noundef nonnull %cch.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %sc27xx_fgu_get_clbcnt.exit, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sc27xx_fgu_get_clbcnt.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ccl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ccl.i, align 4
  %and.i = and i32 %12, 65535
  %13 = ptrtoint ptr %cch.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cch.i, align 4
  %shl.i = shl i32 %14, 16
  %or.i = or i32 %shl.i, %and.i
  %15 = ptrtoint ptr %init_clbcnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %init_clbcnt, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i) #7
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cch.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccl.i) #7
  %dev = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.57) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sc27xx_fgu_get_clbcnt.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_ocv2cap_simple(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_temp2resist_simple(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_fgu_save_last_cap(ptr nocapture noundef readonly %data, i32 noundef %cap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, 164
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 4095, i32 noundef 4095, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 42949600) #7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %add3 = add i32 %8, 160
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add3, i32 noundef 4095, i32 noundef %cap, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool5.not = icmp eq i32 %call.i20, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 42949600) #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %add10 = add i32 %13, 164
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add10, i32 noundef 4095, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i21, %if.end7 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i20, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_find_ocv2cap_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_fgu_save_boot_mode(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, 164
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 61440, i32 noundef 61440, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 42949600) #7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %add3 = add i32 %8, 160
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add3, i32 noundef 61440, i32 noundef 20480, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool5.not = icmp eq i32 %call.i1, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 42949600) #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %add10 = add i32 %13, 164
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add10, i32 noundef 61440, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i2, %if.end7 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %ocv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocv) #7
  %3 = ptrtoint ptr %ocv to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ocv, align 4, !annotation !184
  %call1 = call fastcc i32 @sc27xx_fgu_get_status(ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp eq i32 %6, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %base = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %add = add i32 %10, 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.89) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = call fastcc i32 @sc27xx_fgu_get_vbat_ocv(ptr noundef %1, ptr noundef nonnull %ocv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.disable_int_crit_edge

if.end9.disable_int_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_int

if.end13:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %ocv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ocv, align 4
  %min_volt = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %min_volt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_volt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then15, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 4
  %add18 = add i32 %20, 16
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add18, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool20.not = icmp eq i32 %call.i51, 0
  br i1 %tobool20.not, label %if.then15.cleanup_crit_edge, label %do.end24

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end24:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.92) #10
  br label %disable_int

disable_int:                                      ; preds = %do.end24, %if.end9.disable_int_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.disable_int_crit_edge ], [ %call.i51, %do.end24 ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %add30 = add i32 %26, 16
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add30, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_int, %if.then15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %disable_int ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_fgu_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %base = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %add = add i32 %5, 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.sc27xx_fgu_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.94) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !159, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_sc27xx_fuel_gauge__189_1354_sc27xx_fgu_driver_init6, !1, !"__initcall__kmod_sc27xx_fuel_gauge__189_1354_sc27xx_fgu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1354, i32 1}
!2 = !{ptr @__exitcall_sc27xx_fgu_driver_exit, !1, !"__exitcall_sc27xx_fgu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description190, !4, !"__UNIQUE_ID_description190", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1356, i32 1}
!5 = !{ptr @__UNIQUE_ID_file191, !6, !"__UNIQUE_ID_file191", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1357, i32 1}
!7 = !{ptr @__UNIQUE_ID_license192, !6, !"__UNIQUE_ID_license192", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1348, i32 11}
!10 = !{ptr @sc27xx_fgu_driver, !11, !"sc27xx_fgu_driver", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1345, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1162, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sc27xx_fgu_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @sc27xx_fgu_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1166, i32 38}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1168, i32 3}
!24 = !{ptr @sc27xx_fgu_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sc27xx_fgu_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1173, i32 12}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1176, i32 3}
!30 = !{ptr @sc27xx_fgu_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sc27xx_fgu_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1181, i32 44}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1183, i32 3}
!36 = !{ptr @sc27xx_fgu_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sc27xx_fgu_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1187, i32 48}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1189, i32 3}
!42 = !{ptr @sc27xx_fgu_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sc27xx_fgu_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1193, i32 36}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1195, i32 3}
!48 = !{ptr @sc27xx_fgu_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sc27xx_fgu_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1201, i32 3}
!52 = !{ptr @sc27xx_fgu_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sc27xx_fgu_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @sc27xx_fgu_probe.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1206, i32 2}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1215, i32 3}
!59 = !{ptr @sc27xx_fgu_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sc27xx_fgu_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1221, i32 3}
!63 = !{ptr @sc27xx_fgu_probe._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sc27xx_fgu_probe._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1227, i32 3}
!67 = !{ptr @sc27xx_fgu_probe._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sc27xx_fgu_probe._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1240, i32 3}
!71 = !{ptr @sc27xx_fgu_probe._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sc27xx_fgu_probe._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1246, i32 3}
!75 = !{ptr @sc27xx_fgu_probe._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sc27xx_fgu_probe._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1256, i32 3}
!79 = !{ptr @sc27xx_fgu_probe._entry.45, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sc27xx_fgu_probe._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @sc27xx_fgu_desc, !82, !"sc27xx_fgu_desc", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 770, i32 39}
!83 = !{ptr @sc27xx_fgu_props, !84, !"sc27xx_fgu_props", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 751, i32 35}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 131, i32 2}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 132, i32 2}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 133, i32 2}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 134, i32 2}
!93 = distinct !{null, !94, !"sc27xx_charger_supply_name", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 130, i32 27}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 799, i32 3}
!97 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @sc27xx_fgu_capacity_calibration._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @sc27xx_fgu_capacity_calibration._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 805, i32 3}
!102 = !{ptr @sc27xx_fgu_capacity_calibration._entry.54, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @sc27xx_fgu_capacity_calibration._entry_ptr.56, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 789, i32 3}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @sc27xx_fgu_adjust_cap._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @sc27xx_fgu_adjust_cap._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 714, i32 4}
!111 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @sc27xx_fgu_set_property._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @sc27xx_fgu_set_property._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1007, i32 3}
!116 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sc27xx_fgu_hw_init._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @sc27xx_fgu_hw_init._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1060, i32 3}
!121 = !{ptr @sc27xx_fgu_hw_init._entry.63, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1068, i32 3}
!125 = !{ptr @sc27xx_fgu_hw_init._entry.66, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1075, i32 3}
!129 = !{ptr @sc27xx_fgu_hw_init._entry.69, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.71, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1088, i32 3}
!133 = !{ptr @sc27xx_fgu_hw_init._entry.72, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.74, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1104, i32 3}
!137 = !{ptr @sc27xx_fgu_hw_init._entry.75, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.77, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1112, i32 3}
!141 = !{ptr @sc27xx_fgu_hw_init._entry.78, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.80, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.82, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1123, i32 3}
!145 = !{ptr @sc27xx_fgu_hw_init._entry.81, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.83, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1134, i32 3}
!149 = !{ptr @sc27xx_fgu_hw_init._entry.84, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @sc27xx_fgu_hw_init._entry_ptr.86, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 972, i32 35}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 929, i32 3}
!155 = !{ptr @sc27xx_fgu_bat_detection._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @sc27xx_fgu_bat_detection._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @sc27xx_fgu_of_match, !158, !"sc27xx_fgu_of_match", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1339, i32 34}
!159 = !{ptr @sc27xx_fgu_pm_ops, !160, !"sc27xx_fgu_pm_ops", i1 false, i1 false}
!160 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1335, i32 32}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1301, i32 3}
!163 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @sc27xx_fgu_suspend._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @sc27xx_fgu_suspend._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1320, i32 4}
!168 = !{ptr @sc27xx_fgu_suspend._entry.91, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sc27xx_fgu_suspend._entry_ptr.93, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/sc27xx_fuel_gauge.c", i32 1273, i32 3}
!172 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @sc27xx_fgu_resume._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @sc27xx_fgu_resume._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"auto-init"}
!185 = !{i8 0, i8 2}
