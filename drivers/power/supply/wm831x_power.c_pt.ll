; ModuleID = '/llk/IR_all_yes/drivers/power/supply/wm831x_power.c_pt.bc'
source_filename = "../drivers/power/supply/wm831x_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.chg_map = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm831x_power = type { ptr, ptr, ptr, ptr, %struct.power_supply_desc, %struct.power_supply_desc, %struct.power_supply_desc, [20 x i8], [20 x i8], [20 x i8], i8, ptr, %struct.notifier_block }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.wm831x_battery_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_wm831x_power__236_736_wm831x_power_driver_init6 = internal global ptr @wm831x_power_driver_init, section ".initcall6.init", align 4
@wm831x_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_power_probe, ptr @wm831x_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_power_driver_exit = internal global ptr @wm831x_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [62 x i8] c"wm831x_power.description=Power supply driver for WM831x PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [69 x i8] c"wm831x_power.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"wm831x_power.file=drivers/power/supply/wm831x_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [25 x i8] c"wm831x_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [41 x i8] c"wm831x_power.alias=platform:wm831x-power\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm831x-power\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm831x-wall.%d\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm831x-battery.%d\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm831x-usb.%d\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm831x-wall\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm831x-battery\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm831x-usb\00", [21 x i8] zeroinitializer }, align 32
@wm831x_wall_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 12], [24 x i8] zeroinitializer }, align 32
@wm831x_usb_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 12], [24 x i8] zeroinitializer }, align 32
@wm831x_bat_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 12, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SYSLO\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"System power low\00", [47 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 617, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request SYSLO IRQ %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_power_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/power/supply/wm831x_power.c\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry_ptr = internal global ptr @wm831x_power_probe._entry, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PWR SRC\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Power source\00", [19 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.11, i32 627, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request PWR SRC IRQ %d: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry_ptr.18 = internal global ptr @wm831x_power_probe._entry.16, section ".printk_index", align 4
@wm831x_bat_irqs = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [32 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.11, i32 642, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request %s IRQ %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry_ptr.21 = internal global ptr @wm831x_power_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.11, i32 656, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register notifier: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry_ptr.25 = internal global ptr @wm831x_power_probe._entry.23, section ".printk_index", align 4
@wm831x_power_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.11, i32 667, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to find USB phy: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_power_probe._entry_ptr.28 = internal global ptr @wm831x_power_probe._entry.26, section ".printk_index", align 4
@wm831x_config_battery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.11, i32 264, ptr @.str.31, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No battery charger configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm831x_config_battery\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm831x_config_battery._entry_ptr = internal global ptr @wm831x_config_battery._entry, section ".printk_index", align 4
@wm831x_config_battery._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.11, i32 274, ptr @.str.34, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Battery charger disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm831x_config_battery._entry_ptr.35 = internal global ptr @wm831x_config_battery._entry.32, section ".printk_index", align 4
@trickle_ilims = internal constant { [4 x %struct.chg_map], [32 x i8] } { [4 x %struct.chg_map] [%struct.chg_map { i32 50, i32 0 }, %struct.chg_map { i32 100, i32 64 }, %struct.chg_map { i32 150, i32 128 }, %struct.chg_map { i32 200, i32 192 }], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"trickle charge current limit\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mA\00", [29 x i8] zeroinitializer }, align 32
@vsels = internal constant { [4 x %struct.chg_map], [32 x i8] } { [4 x %struct.chg_map] [%struct.chg_map { i32 4050, i32 0 }, %struct.chg_map { i32 4100, i32 16 }, %struct.chg_map { i32 4150, i32 32 }, %struct.chg_map { i32 4200, i32 48 }], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"target voltage\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mV\00", [29 x i8] zeroinitializer }, align 32
@fast_ilims = internal constant { [16 x %struct.chg_map], [32 x i8] } { [16 x %struct.chg_map] [%struct.chg_map zeroinitializer, %struct.chg_map { i32 50, i32 1 }, %struct.chg_map { i32 100, i32 2 }, %struct.chg_map { i32 150, i32 3 }, %struct.chg_map { i32 200, i32 4 }, %struct.chg_map { i32 250, i32 5 }, %struct.chg_map { i32 300, i32 6 }, %struct.chg_map { i32 350, i32 7 }, %struct.chg_map { i32 400, i32 8 }, %struct.chg_map { i32 450, i32 9 }, %struct.chg_map { i32 500, i32 10 }, %struct.chg_map { i32 600, i32 11 }, %struct.chg_map { i32 700, i32 12 }, %struct.chg_map { i32 800, i32 13 }, %struct.chg_map { i32 900, i32 14 }, %struct.chg_map { i32 1000, i32 15 }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fast charge current limit\00", [38 x i8] zeroinitializer }, align 32
@eoc_iterms = internal constant { [8 x %struct.chg_map], [32 x i8] } { [8 x %struct.chg_map] [%struct.chg_map { i32 20, i32 0 }, %struct.chg_map { i32 30, i32 1024 }, %struct.chg_map { i32 40, i32 2048 }, %struct.chg_map { i32 50, i32 3072 }, %struct.chg_map { i32 60, i32 4096 }, %struct.chg_map { i32 70, i32 5120 }, %struct.chg_map { i32 80, i32 6144 }, %struct.chg_map { i32 90, i32 7168 }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"end of charge current threshold\00", [32 x i8] zeroinitializer }, align 32
@chg_times = internal constant { [16 x %struct.chg_map], [32 x i8] } { [16 x %struct.chg_map] [%struct.chg_map { i32 60, i32 0 }, %struct.chg_map { i32 90, i32 256 }, %struct.chg_map { i32 120, i32 512 }, %struct.chg_map { i32 150, i32 768 }, %struct.chg_map { i32 180, i32 1024 }, %struct.chg_map { i32 210, i32 1280 }, %struct.chg_map { i32 240, i32 1536 }, %struct.chg_map { i32 270, i32 1792 }, %struct.chg_map { i32 300, i32 2048 }, %struct.chg_map { i32 330, i32 2304 }, %struct.chg_map { i32 360, i32 2560 }, %struct.chg_map { i32 390, i32 2816 }, %struct.chg_map { i32 420, i32 3072 }, %struct.chg_map { i32 450, i32 3328 }, %struct.chg_map { i32 480, i32 3584 }, %struct.chg_map { i32 510, i32 3840 }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"charger timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@wm831x_config_battery._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.30, ptr @.str.11, i32 307, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to unlock registers: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm831x_config_battery._entry_ptr.46 = internal global ptr @wm831x_config_battery._entry.44, section ".printk_index", align 4
@wm831x_config_battery._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.30, ptr @.str.11, i32 318, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set charger control 1: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wm831x_config_battery._entry_ptr.49 = internal global ptr @wm831x_config_battery._entry.47, section ".printk_index", align 4
@wm831x_config_battery._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.30, ptr @.str.11, i32 329, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set charger control 2: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wm831x_config_battery._entry_ptr.52 = internal global ptr @wm831x_config_battery._entry.50, section ".printk_index", align 4
@wm831x_battery_apply_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.11, i32 249, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid %s %d%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wm831x_battery_apply_config\00", [36 x i8] zeroinitializer }, align 32
@wm831x_battery_apply_config._entry_ptr = internal global ptr @wm831x_battery_apply_config._entry, section ".printk_index", align 4
@wm831x_battery_apply_config.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.54, ptr @.str.11, ptr @.str.56, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm831x_power\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Set %s of %d%s\0A\00", [16 x i8] zeroinitializer }, align 32
@wm831x_syslo_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.11, i32 511, ptr @.str.59, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SYSVDD under voltage\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm831x_syslo_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@wm831x_syslo_irq._entry_ptr = internal global ptr @wm831x_syslo_irq._entry, section ".printk_index", align 4
@wm831x_pwr_src_irq.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.60, ptr @.str.11, ptr @.str.61, i8 0, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_pwr_src_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Power source changed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATT HOT\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BATT COLD\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BATT FAIL\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OV\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"END\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TO\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MODE\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"START\00", [26 x i8] zeroinitializer }, align 32
@wm831x_bat_irq.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.70, ptr @.str.11, ptr @.str.71, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm831x_bat_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Battery status changed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_usb_limits = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 2, i32 100, i32 500, i32 900, i32 1500, i32 1800, i32 550], [32 x i8] zeroinitializer }, align 32
@wm831x_usb_limit_change.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.72, ptr @.str.11, ptr @.str.73, i8 0, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wm831x_usb_limit_change\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Limiting USB current to %umA\00", [35 x i8] zeroinitializer }, align 32
@switch.table.wm831x_bat_get_prop = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 3, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294966779, i64 4294967274, i64 4294967277]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 50, i64 100, i64 150, i64 200]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 4050, i64 4100, i64 4150, i64 4200]
@__sancov_gen_cov_switch_values.76 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 50, i64 100, i64 150, i64 200, i64 250, i64 300, i64 350, i64 400, i64 450, i64 500, i64 600, i64 700, i64 800, i64 900, i64 1000]
@__sancov_gen_cov_switch_values.77 = internal global [10 x i64] [i64 8, i64 32, i64 20, i64 30, i64 40, i64 50, i64 60, i64 70, i64 80, i64 90]
@__sancov_gen_cov_switch_values.78 = internal global [18 x i64] [i64 16, i64 32, i64 60, i64 90, i64 120, i64 150, i64 180, i64 210, i64 240, i64 270, i64 300, i64 330, i64 360, i64 390, i64 420, i64 450, i64 480, i64 510]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.81 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 12]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 12288, i64 16384, i64 20480]
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"wm831x_power_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 728, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 732, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 549, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 551, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 553, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 556, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 558, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 560, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"wm831x_wall_props\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 92, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"wm831x_usb_props\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 123, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"wm831x_bat_props\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 465, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 611, i32 57 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 613, i32 44 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 616, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 621, i32 57 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 623, i32 44 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 626, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"wm831x_bat_irqs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 473, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 640, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 647, i32 59 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 655, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 667, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 263, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 274, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [14 x i8] c"trickle_ilims\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 174, i32 23 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 287, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 287, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant [6 x i8] c"vsels\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 181, i32 23 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 291, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 291, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant [11 x i8] c"fast_ilims\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 188, i32 23 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 295, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant [11 x i8] c"eoc_iterms\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 207, i32 23 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 299, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant [10 x i8] c"chg_times\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 218, i32 23 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 303, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 303, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 307, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 317, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 328, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 248, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 252, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 511, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 521, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 474, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 475, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 476, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 477, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 478, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 479, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 480, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 481, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 489, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"wm831x_usb_limits\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 129, i32 27 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private constant [39 x i8] c"../drivers/power/supply/wm831x_power.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 156, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [33 x i8] c"switch.table.wm831x_bat_get_prop\00", align 1
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_wm831x_power_driver_exit, ptr @__initcall__kmod_wm831x_power__236_736_wm831x_power_driver_init6, ptr @wm831x_battery_apply_config._entry, ptr @wm831x_battery_apply_config._entry_ptr, ptr @wm831x_config_battery._entry, ptr @wm831x_config_battery._entry.32, ptr @wm831x_config_battery._entry.44, ptr @wm831x_config_battery._entry.47, ptr @wm831x_config_battery._entry.50, ptr @wm831x_config_battery._entry_ptr, ptr @wm831x_config_battery._entry_ptr.35, ptr @wm831x_config_battery._entry_ptr.46, ptr @wm831x_config_battery._entry_ptr.49, ptr @wm831x_config_battery._entry_ptr.52, ptr @wm831x_power_driver_exit, ptr @wm831x_power_probe._entry, ptr @wm831x_power_probe._entry.16, ptr @wm831x_power_probe._entry.19, ptr @wm831x_power_probe._entry.23, ptr @wm831x_power_probe._entry.26, ptr @wm831x_power_probe._entry_ptr, ptr @wm831x_power_probe._entry_ptr.18, ptr @wm831x_power_probe._entry_ptr.21, ptr @wm831x_power_probe._entry_ptr.25, ptr @wm831x_power_probe._entry_ptr.28, ptr @wm831x_syslo_irq._entry, ptr @wm831x_syslo_irq._entry_ptr, ptr @wm831x_power_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wm831x_wall_props, ptr @wm831x_usb_props, ptr @wm831x_bat_props, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @wm831x_bat_irqs, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @trickle_ilims, ptr @.str.36, ptr @.str.37, ptr @vsels, ptr @.str.38, ptr @.str.39, ptr @fast_ilims, ptr @.str.40, ptr @eoc_iterms, ptr @.str.41, ptr @chg_times, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @wm831x_usb_limits, ptr @.str.72, ptr @.str.73, ptr @switch.table.wm831x_bat_get_prop], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wall_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_usb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_bat_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_power_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_bat_irqs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_power_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_power_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_power_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_config_battery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_config_battery._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trickle_ilims to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_ilims to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eoc_iterms to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chg_times to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_config_battery._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_config_battery._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_config_battery._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_battery_apply_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_syslo_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_usb_limits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm831x_bat_get_prop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm831x_power_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm831x_power_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 252, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %wall_name = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wall_name, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef %11)
  %battery_name = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %battery_name, i32 noundef 20, ptr noundef nonnull @.str.2, i32 noundef %13)
  %usb_name = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %usb_name, i32 noundef 20, ptr noundef nonnull @.str.3, i32 noundef %15)
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %wall_name15 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %wall_name15, ptr @.str.4, i32 12)
  %battery_name18 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 9
  %17 = call ptr @memcpy(ptr %battery_name18, ptr @.str.5, i32 15)
  %usb_name21 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 8
  %18 = call ptr @memcpy(ptr %usb_name21, ptr @.str.6, i32 11)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then6
  tail call fastcc void @wm831x_config_battery(ptr noundef %3)
  %wall_name25 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 7
  %wall_desc = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %wall_desc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wall_name25, ptr %wall_desc, align 4
  %type = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %type, align 4
  %properties = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wm831x_wall_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 4, i32 5
  %22 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm831x_wall_get_prop, ptr %get_property, align 4
  %call33 = tail call ptr @power_supply_register(ptr noundef %dev, ptr noundef %wall_desc, ptr noundef null) #5
  %wall = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %wall to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call33, ptr %wall, align 4
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end24
  %usb_name40 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 8
  %usb_desc = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %usb_desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %usb_name40, ptr %usb_desc, align 4
  %type44 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %type44, align 4
  %properties46 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %properties46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @wm831x_usb_props, ptr %properties46, align 4
  %num_properties48 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 5, i32 5
  %29 = ptrtoint ptr %num_properties48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %num_properties48, align 4
  %get_property50 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 5, i32 6
  %30 = ptrtoint ptr %get_property50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @wm831x_usb_get_prop, ptr %get_property50, align 4
  %call53 = tail call ptr @power_supply_register(ptr noundef %dev, ptr noundef %usb_desc, ptr noundef null) #5
  %usb = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call53, ptr %usb, align 4
  %cmp.i281 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i281, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %call53 to i32
  br label %err_wall

if.end59:                                         ; preds = %if.end39
  %call60 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16456) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.err_wall_crit_edge, label %if.end63

if.end59.err_wall_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_wall

if.end63:                                         ; preds = %if.end59
  %and = and i32 %call60, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  %have_battery = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 10
  %and.lobit = lshr exact i32 %and, 15
  %33 = trunc i32 %and.lobit to i8
  %34 = ptrtoint ptr %have_battery to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %have_battery, align 4
  br i1 %tobool64.not, label %if.end63.if.end87_crit_edge, label %if.then67

if.end63.if.end87_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then67:                                        ; preds = %if.end63
  %battery_name68 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 9
  %battery_desc = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %battery_desc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %battery_name68, ptr %battery_desc, align 4
  %properties72 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 6, i32 4
  %36 = ptrtoint ptr %properties72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @wm831x_bat_props, ptr %properties72, align 4
  %num_properties74 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 6, i32 5
  %37 = ptrtoint ptr %num_properties74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %num_properties74, align 4
  %get_property76 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 6, i32 6
  %38 = ptrtoint ptr %get_property76 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @wm831x_bat_get_prop, ptr %get_property76, align 4
  %use_for_apm = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 6, i32 12
  %39 = ptrtoint ptr %use_for_apm to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %use_for_apm, align 4
  %call80 = tail call ptr @power_supply_register(ptr noundef %dev, ptr noundef %battery_desc, ptr noundef null) #5
  %battery = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call80, ptr %battery, align 4
  %cmp.i282 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.then83, label %if.then67.if.end87_crit_edge

if.then67.if.end87_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then83:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %call80 to i32
  br label %err_usb

if.end87:                                         ; preds = %if.then67.if.end87_crit_edge, %if.end63.if.end87_crit_edge
  %call88 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #5
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %43, i32 noundef %call88, ptr noundef null) #5
  %call90 = tail call i32 @request_threaded_irq(i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_syslo_irq, i32 noundef 8193, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %if.end94, label %do.end

do.end:                                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i.i, i32 noundef %call90) #8
  br label %err_battery

if.end94:                                         ; preds = %if.end87
  %call95 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #5
  %44 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i284 = tail call i32 @irq_create_mapping_affinity(ptr noundef %45, i32 noundef %call95, ptr noundef null) #5
  %call97 = tail call i32 @request_threaded_irq(i32 noundef %call.i.i284, ptr noundef null, ptr noundef nonnull @wm831x_pwr_src_irq, i32 noundef 8193, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 0
  br i1 %cmp98.not, label %if.end94.for.body_crit_edge, label %do.end102

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  br label %for.body

do.end102:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i.i284, i32 noundef %call97) #8
  br label %err_syslo

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end94.for.body_crit_edge
  %i.0294 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end94.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.0294
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %call106 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %47) #5
  %48 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i286 = tail call i32 @irq_create_mapping_affinity(ptr noundef %49, i32 noundef %call106, ptr noundef null) #5
  %call109 = tail call i32 @request_threaded_irq(i32 noundef %call.i.i286, ptr noundef null, ptr noundef nonnull @wm831x_bat_irq, i32 noundef 8193, ptr noundef %47, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110.not = icmp eq i32 %call109, 0
  br i1 %cmp110.not, label %for.inc, label %err_bat_irq

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0294, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call119 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev, ptr noundef nonnull @.str.22, i8 noundef zeroext 0) #5
  %usb_phy = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 11
  %50 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call119, ptr %usb_phy, align 4
  %cmp.i.i = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  %51 = ptrtoint ptr %call119 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %51, i32 0
  %52 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %do.end136 [
    i32 0, label %sw.bb
    i32 -22, label %for.end.sw.bb132_crit_edge
    i32 -19, label %for.end.sw.bb132_crit_edge324
    i32 -517, label %for.end.for.body141_crit_edge
  ]

for.end.for.body141_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body141

for.end.sw.bb132_crit_edge324:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb132

for.end.sw.bb132_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb132

sw.bb:                                            ; preds = %for.end
  %usb_notify = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 12
  %53 = ptrtoint ptr %usb_notify to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @wm831x_usb_limit_change, ptr %usb_notify, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %call119, i32 0, i32 18
  %call.i287 = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %usb_notify) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool125.not = icmp eq i32 %call.i287, 0
  br i1 %tobool125.not, label %sw.bb.cleanup_crit_edge, label %do.end129

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end129:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call.i287) #8
  br label %for.body141

sw.bb132:                                         ; preds = %for.end.sw.bb132_crit_edge, %for.end.sw.bb132_crit_edge324
  %54 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %usb_phy, align 4
  br label %cleanup

do.end136:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %spec.select.i) #8
  br label %for.body141

err_bat_irq:                                      ; preds = %for.body
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %47, i32 noundef %call.i.i286, i32 noundef %call109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0294)
  %cmp140296.not = icmp eq i32 %i.0294, 0
  br i1 %cmp140296.not, label %err_bat_irq.for.end147_crit_edge, label %err_bat_irq.for.body141_crit_edge

err_bat_irq.for.body141_crit_edge:                ; preds = %err_bat_irq
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body141

err_bat_irq.for.end147_crit_edge:                 ; preds = %err_bat_irq
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141:                                      ; preds = %err_bat_irq.for.body141_crit_edge, %do.end136, %do.end129, %for.end.for.body141_crit_edge
  %ret.1306 = phi i32 [ %call109, %err_bat_irq.for.body141_crit_edge ], [ %call.i287, %do.end129 ], [ %spec.select.i, %for.end.for.body141_crit_edge ], [ %spec.select.i, %do.end136 ]
  %i.0293305 = phi i32 [ %i.0294, %err_bat_irq.for.body141_crit_edge ], [ 8, %do.end129 ], [ 8, %for.end.for.body141_crit_edge ], [ 8, %do.end136 ]
  %i.1297 = add nsw i32 %i.0293305, -1
  %arrayidx142 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297
  %55 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx142, align 4
  %call143 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %56) #5
  %call144 = tail call ptr @free_irq(i32 noundef %call143, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0293305)
  %cmp140 = icmp ugt i32 %i.0293305, 1
  br i1 %cmp140, label %for.body141.1, label %for.body141.for.end147_crit_edge

for.body141.for.end147_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141.1:                                    ; preds = %for.body141
  %i.1297.1 = add nsw i32 %i.0293305, -2
  %arrayidx142.1 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297.1
  %57 = ptrtoint ptr %arrayidx142.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx142.1, align 4
  %call143.1 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %58) #5
  %call144.1 = tail call ptr @free_irq(i32 noundef %call143.1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0293305)
  %cmp140.1.not = icmp eq i32 %i.0293305, 2
  br i1 %cmp140.1.not, label %for.body141.1.for.end147_crit_edge, label %for.body141.2

for.body141.1.for.end147_crit_edge:               ; preds = %for.body141.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141.2:                                    ; preds = %for.body141.1
  %i.1297.2 = add nsw i32 %i.0293305, -3
  %arrayidx142.2 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297.2
  %59 = ptrtoint ptr %arrayidx142.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx142.2, align 4
  %call143.2 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %60) #5
  %call144.2 = tail call ptr @free_irq(i32 noundef %call143.2, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0293305)
  %cmp140.2 = icmp ugt i32 %i.0293305, 3
  br i1 %cmp140.2, label %for.body141.3, label %for.body141.2.for.end147_crit_edge

for.body141.2.for.end147_crit_edge:               ; preds = %for.body141.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141.3:                                    ; preds = %for.body141.2
  %i.1297.3 = add nsw i32 %i.0293305, -4
  %arrayidx142.3 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297.3
  %61 = ptrtoint ptr %arrayidx142.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx142.3, align 4
  %call143.3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %62) #5
  %call144.3 = tail call ptr @free_irq(i32 noundef %call143.3, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0293305)
  %cmp140.3.not = icmp eq i32 %i.0293305, 4
  br i1 %cmp140.3.not, label %for.body141.3.for.end147_crit_edge, label %for.body141.4

for.body141.3.for.end147_crit_edge:               ; preds = %for.body141.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141.4:                                    ; preds = %for.body141.3
  %i.1297.4 = add nsw i32 %i.0293305, -5
  %arrayidx142.4 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297.4
  %63 = ptrtoint ptr %arrayidx142.4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx142.4, align 4
  %call143.4 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %64) #5
  %call144.4 = tail call ptr @free_irq(i32 noundef %call143.4, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0293305)
  %cmp140.4 = icmp ugt i32 %i.0293305, 5
  br i1 %cmp140.4, label %for.body141.5, label %for.body141.4.for.end147_crit_edge

for.body141.4.for.end147_crit_edge:               ; preds = %for.body141.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141.5:                                    ; preds = %for.body141.4
  %i.1297.5 = add nsw i32 %i.0293305, -6
  %arrayidx142.5 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297.5
  %65 = ptrtoint ptr %arrayidx142.5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx142.5, align 4
  %call143.5 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %66) #5
  %call144.5 = tail call ptr @free_irq(i32 noundef %call143.5, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0293305)
  %cmp140.5.not = icmp eq i32 %i.0293305, 6
  br i1 %cmp140.5.not, label %for.body141.5.for.end147_crit_edge, label %for.body141.6

for.body141.5.for.end147_crit_edge:               ; preds = %for.body141.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141.6:                                    ; preds = %for.body141.5
  %i.1297.6 = add nsw i32 %i.0293305, -7
  %arrayidx142.6 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297.6
  %67 = ptrtoint ptr %arrayidx142.6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx142.6, align 4
  %call143.6 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %68) #5
  %call144.6 = tail call ptr @free_irq(i32 noundef %call143.6, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0293305)
  %cmp140.6 = icmp ugt i32 %i.0293305, 7
  br i1 %cmp140.6, label %for.body141.7, label %for.body141.6.for.end147_crit_edge

for.body141.6.for.end147_crit_edge:               ; preds = %for.body141.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body141.7:                                    ; preds = %for.body141.6
  call void @__sanitizer_cov_trace_pc() #7
  %i.1297.7 = add nsw i32 %i.0293305, -8
  %arrayidx142.7 = getelementptr [8 x ptr], ptr @wm831x_bat_irqs, i32 0, i32 %i.1297.7
  %69 = ptrtoint ptr %arrayidx142.7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx142.7, align 4
  %call143.7 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %70) #5
  %call144.7 = tail call ptr @free_irq(i32 noundef %call143.7, ptr noundef nonnull %call.i) #5
  br label %for.end147

for.end147:                                       ; preds = %for.body141.7, %for.body141.6.for.end147_crit_edge, %for.body141.5.for.end147_crit_edge, %for.body141.4.for.end147_crit_edge, %for.body141.3.for.end147_crit_edge, %for.body141.2.for.end147_crit_edge, %for.body141.1.for.end147_crit_edge, %for.body141.for.end147_crit_edge, %err_bat_irq.for.end147_crit_edge
  %ret.1307 = phi i32 [ %call109, %err_bat_irq.for.end147_crit_edge ], [ %ret.1306, %for.body141.7 ], [ %ret.1306, %for.body141.6.for.end147_crit_edge ], [ %ret.1306, %for.body141.5.for.end147_crit_edge ], [ %ret.1306, %for.body141.4.for.end147_crit_edge ], [ %ret.1306, %for.body141.3.for.end147_crit_edge ], [ %ret.1306, %for.body141.2.for.end147_crit_edge ], [ %ret.1306, %for.body141.1.for.end147_crit_edge ], [ %ret.1306, %for.body141.for.end147_crit_edge ]
  %call148 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #5
  %71 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i289 = tail call i32 @irq_create_mapping_affinity(ptr noundef %72, i32 noundef %call148, ptr noundef null) #5
  %call150 = tail call ptr @free_irq(i32 noundef %call.i.i289, ptr noundef nonnull %call.i) #5
  br label %err_syslo

err_syslo:                                        ; preds = %for.end147, %do.end102
  %ret.2 = phi i32 [ %call97, %do.end102 ], [ %ret.1307, %for.end147 ]
  %call151 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #5
  %73 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i291 = tail call i32 @irq_create_mapping_affinity(ptr noundef %74, i32 noundef %call151, ptr noundef null) #5
  %call153 = tail call ptr @free_irq(i32 noundef %call.i.i291, ptr noundef nonnull %call.i) #5
  br label %err_battery

err_battery:                                      ; preds = %err_syslo, %do.end
  %ret.3 = phi i32 [ %call90, %do.end ], [ %ret.2, %err_syslo ]
  %75 = ptrtoint ptr %have_battery to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %have_battery, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool155.not = icmp eq i8 %76, 0
  br i1 %tobool155.not, label %err_battery.err_usb_crit_edge, label %if.then156

err_battery.err_usb_crit_edge:                    ; preds = %err_battery
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_usb

if.then156:                                       ; preds = %err_battery
  call void @__sanitizer_cov_trace_pc() #7
  %battery157 = getelementptr inbounds %struct.wm831x_power, ptr %call.i, i32 0, i32 3
  %77 = ptrtoint ptr %battery157 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %battery157, align 4
  tail call void @power_supply_unregister(ptr noundef %78) #5
  br label %err_usb

err_usb:                                          ; preds = %if.then156, %err_battery.err_usb_crit_edge, %if.then83
  %ret.4 = phi i32 [ %41, %if.then83 ], [ %ret.3, %if.then156 ], [ %ret.3, %err_battery.err_usb_crit_edge ]
  %79 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %80) #5
  br label %err_wall

err_wall:                                         ; preds = %err_usb, %if.end59.err_wall_crit_edge, %if.then56
  %ret.5 = phi i32 [ %32, %if.then56 ], [ %call60, %if.end59.err_wall_crit_edge ], [ %ret.4, %err_usb ]
  %81 = ptrtoint ptr %wall to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wall, align 4
  tail call void @power_supply_unregister(ptr noundef %82) #5
  br label %cleanup

cleanup:                                          ; preds = %err_wall, %sw.bb132, %sw.bb.cleanup_crit_edge, %if.then36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb132 ], [ %25, %if.then36 ], [ %ret.5, %err_wall ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_power_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %usb_phy = getelementptr inbounds %struct.wm831x_power, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_phy, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb_notify = getelementptr inbounds %struct.wm831x_power, ptr %1, i32 0, i32 12
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %usb_notify) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.62) #5
  %6 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %7, i32 noundef %call3, ptr noundef null) #5
  %call5 = tail call ptr @free_irq(i32 noundef %call.i.i, ptr noundef %1) #5
  %call3.1 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.63) #5
  %8 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i.1 = tail call i32 @irq_create_mapping_affinity(ptr noundef %9, i32 noundef %call3.1, ptr noundef null) #5
  %call5.1 = tail call ptr @free_irq(i32 noundef %call.i.i.1, ptr noundef %1) #5
  %call3.2 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.64) #5
  %10 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i.2 = tail call i32 @irq_create_mapping_affinity(ptr noundef %11, i32 noundef %call3.2, ptr noundef null) #5
  %call5.2 = tail call ptr @free_irq(i32 noundef %call.i.i.2, ptr noundef %1) #5
  %call3.3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.65) #5
  %12 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i.3 = tail call i32 @irq_create_mapping_affinity(ptr noundef %13, i32 noundef %call3.3, ptr noundef null) #5
  %call5.3 = tail call ptr @free_irq(i32 noundef %call.i.i.3, ptr noundef %1) #5
  %call3.4 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.66) #5
  %14 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i.4 = tail call i32 @irq_create_mapping_affinity(ptr noundef %15, i32 noundef %call3.4, ptr noundef null) #5
  %call5.4 = tail call ptr @free_irq(i32 noundef %call.i.i.4, ptr noundef %1) #5
  %call3.5 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.67) #5
  %16 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i.5 = tail call i32 @irq_create_mapping_affinity(ptr noundef %17, i32 noundef %call3.5, ptr noundef null) #5
  %call5.5 = tail call ptr @free_irq(i32 noundef %call.i.i.5, ptr noundef %1) #5
  %call3.6 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.68) #5
  %18 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i.6 = tail call i32 @irq_create_mapping_affinity(ptr noundef %19, i32 noundef %call3.6, ptr noundef null) #5
  %call5.6 = tail call ptr @free_irq(i32 noundef %call.i.i.6, ptr noundef %1) #5
  %call3.7 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.69) #5
  %20 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i.7 = tail call i32 @irq_create_mapping_affinity(ptr noundef %21, i32 noundef %call3.7, ptr noundef null) #5
  %call5.7 = tail call ptr @free_irq(i32 noundef %call.i.i.7, ptr noundef %1) #5
  %call6 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #5
  %22 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i35 = tail call i32 @irq_create_mapping_affinity(ptr noundef %23, i32 noundef %call6, ptr noundef null) #5
  %call8 = tail call ptr @free_irq(i32 noundef %call.i.i35, ptr noundef %1) #5
  %call9 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #5
  %24 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i37 = tail call i32 @irq_create_mapping_affinity(ptr noundef %25, i32 noundef %call9, ptr noundef null) #5
  %call11 = tail call ptr @free_irq(i32 noundef %call.i.i37, ptr noundef %1) #5
  %have_battery = getelementptr inbounds %struct.wm831x_power, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %have_battery to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %have_battery, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not = icmp eq i8 %27, 0
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %battery = getelementptr inbounds %struct.wm831x_power, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %battery, align 4
  tail call void @power_supply_unregister(ptr noundef %29) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %wall = getelementptr inbounds %struct.wm831x_power, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %wall to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wall, align 4
  tail call void @power_supply_unregister(ptr noundef %31) #5
  %usb = getelementptr inbounds %struct.wm831x_power, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %33) #5
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm831x_config_battery(ptr noundef %wm831x) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %battery = getelementptr inbounds %struct.wm831x_pdata, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %battery, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.29) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %off_mask = getelementptr inbounds %struct.wm831x_battery_pdata, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %off_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %off_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 16384
  %fast_enable = getelementptr inbounds %struct.wm831x_battery_pdata, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %fast_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fast_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  %reg1.0 = select i1 %tobool15.not, i32 32768, i32 32800
  %trickle_ilim = getelementptr inbounds %struct.wm831x_battery_pdata, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %trickle_ilim to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trickle_ilim, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %13, label %do.end.i [
    i32 50, label %if.end10.if.else.i_crit_edge
    i32 100, label %if.else.i.fold.split
    i32 150, label %if.else.i.fold.split163
    i32 200, label %if.else.i.fold.split164
  ]

if.end10.if.else.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.36, i32 noundef %13, ptr noundef nonnull @.str.37) #8
  br label %wm831x_battery_apply_config.exit

if.else.i.fold.split:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i.fold.split163:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i.fold.split164:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.i.fold.split164, %if.else.i.fold.split163, %if.else.i.fold.split, %if.end10.if.else.i_crit_edge
  %i.029.i.lcssa = phi i32 [ 0, %if.end10.if.else.i_crit_edge ], [ 1, %if.else.i.fold.split ], [ 2, %if.else.i.fold.split163 ], [ 3, %if.else.i.fold.split164 ]
  %reg_val.i = getelementptr %struct.chg_map, ptr @trickle_ilims, i32 %i.029.i.lcssa, i32 1
  %15 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_val.i, align 4
  %or.i = or i32 %16, %spec.select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_config_battery, %wm831x_battery_apply_config.exit)) #5
          to label %if.then10.i [label %wm831x_battery_apply_config.exit], !srcloc !174

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, ptr noundef %18, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.36, i32 noundef %13, ptr noundef nonnull @.str.37) #5
  br label %wm831x_battery_apply_config.exit

wm831x_battery_apply_config.exit:                 ; preds = %if.then10.i, %if.else.i, %do.end.i
  %reg2.1 = phi i32 [ %spec.select, %do.end.i ], [ %or.i, %if.then10.i ], [ %or.i, %if.else.i ]
  %vsel = getelementptr inbounds %struct.wm831x_battery_pdata, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %vsel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vsel, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %20, label %do.end.i87 [
    i32 4050, label %wm831x_battery_apply_config.exit.if.else.i90_crit_edge
    i32 4100, label %if.else.i90.fold.split
    i32 4150, label %if.else.i90.fold.split165
    i32 4200, label %if.else.i90.fold.split166
  ]

wm831x_battery_apply_config.exit.if.else.i90_crit_edge: ; preds = %wm831x_battery_apply_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i90

do.end.i87:                                       ; preds = %wm831x_battery_apply_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.38, i32 noundef %20, ptr noundef nonnull @.str.39) #8
  br label %wm831x_battery_apply_config.exit93

if.else.i90.fold.split:                           ; preds = %wm831x_battery_apply_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i90

if.else.i90.fold.split165:                        ; preds = %wm831x_battery_apply_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i90

if.else.i90.fold.split166:                        ; preds = %wm831x_battery_apply_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i90

if.else.i90:                                      ; preds = %if.else.i90.fold.split166, %if.else.i90.fold.split165, %if.else.i90.fold.split, %wm831x_battery_apply_config.exit.if.else.i90_crit_edge
  %i.029.i77.lcssa = phi i32 [ 0, %wm831x_battery_apply_config.exit.if.else.i90_crit_edge ], [ 1, %if.else.i90.fold.split ], [ 2, %if.else.i90.fold.split165 ], [ 3, %if.else.i90.fold.split166 ]
  %reg_val.i88 = getelementptr %struct.chg_map, ptr @vsels, i32 %i.029.i77.lcssa, i32 1
  %24 = ptrtoint ptr %reg_val.i88 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_val.i88, align 4
  %or.i89 = or i32 %25, %reg2.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_config_battery, %wm831x_battery_apply_config.exit93)) #5
          to label %if.then10.i92 [label %wm831x_battery_apply_config.exit93], !srcloc !174

if.then10.i92:                                    ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, ptr noundef %27, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.38, i32 noundef %20, ptr noundef nonnull @.str.39) #5
  br label %wm831x_battery_apply_config.exit93

wm831x_battery_apply_config.exit93:               ; preds = %if.then10.i92, %if.else.i90, %do.end.i87
  %reg2.2 = phi i32 [ %reg2.1, %do.end.i87 ], [ %or.i89, %if.then10.i92 ], [ %or.i89, %if.else.i90 ]
  %fast_ilim = getelementptr inbounds %struct.wm831x_battery_pdata, ptr %5, i32 0, i32 6
  %28 = ptrtoint ptr %fast_ilim to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fast_ilim, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %29, label %do.end.i104 [
    i32 0, label %wm831x_battery_apply_config.exit93.if.else.i107_crit_edge
    i32 50, label %if.else.i107.fold.split
    i32 100, label %if.else.i107.fold.split167
    i32 150, label %if.else.i107.fold.split168
    i32 200, label %if.else.i107.fold.split169
    i32 250, label %if.else.i107.fold.split170
    i32 300, label %if.else.i107.fold.split171
    i32 350, label %if.else.i107.fold.split172
    i32 400, label %if.else.i107.fold.split173
    i32 450, label %if.else.i107.fold.split174
    i32 500, label %if.else.i107.fold.split175
    i32 600, label %if.else.i107.fold.split176
    i32 700, label %if.else.i107.fold.split177
    i32 800, label %if.else.i107.fold.split178
    i32 900, label %if.else.i107.fold.split179
    i32 1000, label %if.else.i107.fold.split180
  ]

wm831x_battery_apply_config.exit93.if.else.i107_crit_edge: ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

do.end.i104:                                      ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef %29, ptr noundef nonnull @.str.37) #8
  br label %wm831x_battery_apply_config.exit110

if.else.i107.fold.split:                          ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split167:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split168:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split169:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split170:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split171:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split172:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split173:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split174:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split175:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split176:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split177:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split178:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split179:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107.fold.split180:                       ; preds = %wm831x_battery_apply_config.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i107

if.else.i107:                                     ; preds = %if.else.i107.fold.split180, %if.else.i107.fold.split179, %if.else.i107.fold.split178, %if.else.i107.fold.split177, %if.else.i107.fold.split176, %if.else.i107.fold.split175, %if.else.i107.fold.split174, %if.else.i107.fold.split173, %if.else.i107.fold.split172, %if.else.i107.fold.split171, %if.else.i107.fold.split170, %if.else.i107.fold.split169, %if.else.i107.fold.split168, %if.else.i107.fold.split167, %if.else.i107.fold.split, %wm831x_battery_apply_config.exit93.if.else.i107_crit_edge
  %i.029.i94.lcssa = phi i32 [ %29, %wm831x_battery_apply_config.exit93.if.else.i107_crit_edge ], [ 1, %if.else.i107.fold.split ], [ 2, %if.else.i107.fold.split167 ], [ 3, %if.else.i107.fold.split168 ], [ 4, %if.else.i107.fold.split169 ], [ 5, %if.else.i107.fold.split170 ], [ 6, %if.else.i107.fold.split171 ], [ 7, %if.else.i107.fold.split172 ], [ 8, %if.else.i107.fold.split173 ], [ 9, %if.else.i107.fold.split174 ], [ 10, %if.else.i107.fold.split175 ], [ 11, %if.else.i107.fold.split176 ], [ 12, %if.else.i107.fold.split177 ], [ 13, %if.else.i107.fold.split178 ], [ 14, %if.else.i107.fold.split179 ], [ 15, %if.else.i107.fold.split180 ]
  %reg_val.i105 = getelementptr %struct.chg_map, ptr @fast_ilims, i32 %i.029.i94.lcssa, i32 1
  %33 = ptrtoint ptr %reg_val.i105 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_val.i105, align 4
  %or.i106 = or i32 %34, %reg2.2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_config_battery, %wm831x_battery_apply_config.exit110)) #5
          to label %if.then10.i109 [label %wm831x_battery_apply_config.exit110], !srcloc !174

if.then10.i109:                                   ; preds = %if.else.i107
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, ptr noundef %36, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.40, i32 noundef %29, ptr noundef nonnull @.str.37) #5
  br label %wm831x_battery_apply_config.exit110

wm831x_battery_apply_config.exit110:              ; preds = %if.then10.i109, %if.else.i107, %do.end.i104
  %reg2.3 = phi i32 [ %reg2.2, %do.end.i104 ], [ %or.i106, %if.then10.i109 ], [ %or.i106, %if.else.i107 ]
  %eoc_iterm = getelementptr inbounds %struct.wm831x_battery_pdata, ptr %5, i32 0, i32 5
  %37 = ptrtoint ptr %eoc_iterm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eoc_iterm, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %38, label %do.end.i121 [
    i32 20, label %wm831x_battery_apply_config.exit110.if.else.i124_crit_edge
    i32 30, label %if.else.i124.fold.split
    i32 40, label %if.else.i124.fold.split181
    i32 50, label %if.else.i124.fold.split182
    i32 60, label %if.else.i124.fold.split183
    i32 70, label %if.else.i124.fold.split184
    i32 80, label %if.else.i124.fold.split185
    i32 90, label %if.else.i124.fold.split186
  ]

wm831x_battery_apply_config.exit110.if.else.i124_crit_edge: ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

do.end.i121:                                      ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.41, i32 noundef %38, ptr noundef nonnull @.str.37) #8
  br label %wm831x_battery_apply_config.exit127

if.else.i124.fold.split:                          ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

if.else.i124.fold.split181:                       ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

if.else.i124.fold.split182:                       ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

if.else.i124.fold.split183:                       ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

if.else.i124.fold.split184:                       ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

if.else.i124.fold.split185:                       ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

if.else.i124.fold.split186:                       ; preds = %wm831x_battery_apply_config.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i124

if.else.i124:                                     ; preds = %if.else.i124.fold.split186, %if.else.i124.fold.split185, %if.else.i124.fold.split184, %if.else.i124.fold.split183, %if.else.i124.fold.split182, %if.else.i124.fold.split181, %if.else.i124.fold.split, %wm831x_battery_apply_config.exit110.if.else.i124_crit_edge
  %i.029.i111.lcssa = phi i32 [ 0, %wm831x_battery_apply_config.exit110.if.else.i124_crit_edge ], [ 1, %if.else.i124.fold.split ], [ 2, %if.else.i124.fold.split181 ], [ 3, %if.else.i124.fold.split182 ], [ 4, %if.else.i124.fold.split183 ], [ 5, %if.else.i124.fold.split184 ], [ 6, %if.else.i124.fold.split185 ], [ 7, %if.else.i124.fold.split186 ]
  %reg_val.i122 = getelementptr %struct.chg_map, ptr @eoc_iterms, i32 %i.029.i111.lcssa, i32 1
  %42 = ptrtoint ptr %reg_val.i122 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_val.i122, align 4
  %or.i123 = or i32 %43, %reg1.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_config_battery, %wm831x_battery_apply_config.exit127)) #5
          to label %if.then10.i126 [label %wm831x_battery_apply_config.exit127], !srcloc !174

if.then10.i126:                                   ; preds = %if.else.i124
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, ptr noundef %45, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.41, i32 noundef %38, ptr noundef nonnull @.str.37) #5
  br label %wm831x_battery_apply_config.exit127

wm831x_battery_apply_config.exit127:              ; preds = %if.then10.i126, %if.else.i124, %do.end.i121
  %reg1.1 = phi i32 [ %reg1.0, %do.end.i121 ], [ %or.i123, %if.then10.i126 ], [ %or.i123, %if.else.i124 ]
  %timeout = getelementptr inbounds %struct.wm831x_battery_pdata, ptr %5, i32 0, i32 7
  %46 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timeout, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %47, label %do.end.i138 [
    i32 60, label %wm831x_battery_apply_config.exit127.if.else.i141_crit_edge
    i32 90, label %if.else.i141.fold.split
    i32 120, label %if.else.i141.fold.split187
    i32 150, label %if.else.i141.fold.split188
    i32 180, label %if.else.i141.fold.split189
    i32 210, label %if.else.i141.fold.split190
    i32 240, label %if.else.i141.fold.split191
    i32 270, label %if.else.i141.fold.split192
    i32 300, label %if.else.i141.fold.split193
    i32 330, label %if.else.i141.fold.split194
    i32 360, label %if.else.i141.fold.split195
    i32 390, label %if.else.i141.fold.split196
    i32 420, label %if.else.i141.fold.split197
    i32 450, label %if.else.i141.fold.split198
    i32 480, label %if.else.i141.fold.split199
    i32 510, label %if.else.i141.fold.split200
  ]

wm831x_battery_apply_config.exit127.if.else.i141_crit_edge: ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

do.end.i138:                                      ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.42, i32 noundef %47, ptr noundef nonnull @.str.43) #8
  br label %wm831x_battery_apply_config.exit144

if.else.i141.fold.split:                          ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split187:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split188:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split189:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split190:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split191:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split192:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split193:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split194:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split195:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split196:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split197:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split198:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split199:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141.fold.split200:                       ; preds = %wm831x_battery_apply_config.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i141

if.else.i141:                                     ; preds = %if.else.i141.fold.split200, %if.else.i141.fold.split199, %if.else.i141.fold.split198, %if.else.i141.fold.split197, %if.else.i141.fold.split196, %if.else.i141.fold.split195, %if.else.i141.fold.split194, %if.else.i141.fold.split193, %if.else.i141.fold.split192, %if.else.i141.fold.split191, %if.else.i141.fold.split190, %if.else.i141.fold.split189, %if.else.i141.fold.split188, %if.else.i141.fold.split187, %if.else.i141.fold.split, %wm831x_battery_apply_config.exit127.if.else.i141_crit_edge
  %i.029.i128.lcssa = phi i32 [ 0, %wm831x_battery_apply_config.exit127.if.else.i141_crit_edge ], [ 1, %if.else.i141.fold.split ], [ 2, %if.else.i141.fold.split187 ], [ 3, %if.else.i141.fold.split188 ], [ 4, %if.else.i141.fold.split189 ], [ 5, %if.else.i141.fold.split190 ], [ 6, %if.else.i141.fold.split191 ], [ 7, %if.else.i141.fold.split192 ], [ 8, %if.else.i141.fold.split193 ], [ 9, %if.else.i141.fold.split194 ], [ 10, %if.else.i141.fold.split195 ], [ 11, %if.else.i141.fold.split196 ], [ 12, %if.else.i141.fold.split197 ], [ 13, %if.else.i141.fold.split198 ], [ 14, %if.else.i141.fold.split199 ], [ 15, %if.else.i141.fold.split200 ]
  %reg_val.i139 = getelementptr %struct.chg_map, ptr @chg_times, i32 %i.029.i128.lcssa, i32 1
  %51 = ptrtoint ptr %reg_val.i139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_val.i139, align 4
  %or.i140 = or i32 %52, %reg2.3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_config_battery, %wm831x_battery_apply_config.exit144)) #5
          to label %if.then10.i143 [label %wm831x_battery_apply_config.exit144], !srcloc !174

if.then10.i143:                                   ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, ptr noundef %54, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.42, i32 noundef %47, ptr noundef nonnull @.str.43) #5
  br label %wm831x_battery_apply_config.exit144

wm831x_battery_apply_config.exit144:              ; preds = %if.then10.i143, %if.else.i141, %do.end.i138
  %reg2.4 = phi i32 [ %reg2.3, %do.end.i138 ], [ %or.i140, %if.then10.i143 ], [ %or.i140, %if.else.i141 ]
  %call = tail call i32 @wm831x_reg_unlock(ptr noundef %wm831x) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %wm831x_battery_apply_config.exit144
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.45, i32 noundef %call) #8
  br label %cleanup

if.end24:                                         ; preds = %wm831x_battery_apply_config.exit144
  %conv = trunc i32 %reg1.1 to i16
  %call25 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16456, i16 noundef zeroext -25568, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end24.if.end33_crit_edge, label %do.end31

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.48, i32 noundef %call25) #8
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %if.end24.if.end33_crit_edge
  %conv34 = trunc i32 %reg2.4 to i16
  %call35 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16457, i16 noundef zeroext 20479, i16 noundef zeroext %conv34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end33.if.end43_crit_edge, label %do.end41

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.51, i32 noundef %call35) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end33.if.end43_crit_edge
  tail call void @wm831x_reg_lock(ptr noundef %wm831x) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end22, %do.end8, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_wall_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @wm831x_reg_read(ptr noundef %5, i16 noundef zeroext 16397) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = lshr i32 %call.i, 9
  %and.i.lobit = and i32 %and.i, 1
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %call.i7 = tail call i32 @wm831x_auxadc_read_uv(ptr noundef %5, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i7)
  %cmp.i8 = icmp sgt i32 %call.i7, -1
  br i1 %cmp.i8, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3.sw.epilog.sink.split_crit_edge, %if.end.i
  %call.i7.sink = phi i32 [ %and.i.lobit, %if.end.i ], [ %call.i7, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ 0, %if.end.i ], [ %call.i7, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i7.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %call.i7, %sw.bb3.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_usb_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @wm831x_reg_read(ptr noundef %5, i16 noundef zeroext 16397) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = lshr i32 %call.i, 8
  %and.i.lobit = and i32 %and.i, 1
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %call.i7 = tail call i32 @wm831x_auxadc_read_uv(ptr noundef %5, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i7)
  %cmp.i8 = icmp sgt i32 %call.i7, -1
  br i1 %cmp.i8, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3.sw.epilog.sink.split_crit_edge, %if.end.i
  %call.i7.sink = phi i32 [ %and.i.lobit, %if.end.i ], [ %call.i7, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ 0, %if.end.i ], [ %call.i7, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i7.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %call.i7, %sw.bb3.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_bat_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb3
    i32 12, label %sw.bb5
    i32 2, label %sw.bb7
    i32 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @wm831x_reg_read(ptr noundef %5, i16 noundef zeroext 16397) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %and.i = and i32 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @wm831x_reg_read(ptr noundef %5, i16 noundef zeroext 16458) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end2.i.sw.epilog_crit_edge, label %if.end6.i

if.end2.i.sw.epilog_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end2.i
  %and7.i = and i32 %call3.i, 28672
  %7 = zext i32 %and7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and7.i, label %sw.default.i [
    i32 0, label %if.end6.i.sw.epilog.sink.split_crit_edge
    i32 4096, label %if.end6.i.sw.bb8.i_crit_edge
    i32 8192, label %if.end6.i.sw.bb8.i_crit_edge48
  ]

if.end6.i.sw.bb8.i_crit_edge48:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end6.i.sw.bb8.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end6.i.sw.epilog.sink.split_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb8.i:                                         ; preds = %if.end6.i.sw.bb8.i_crit_edge, %if.end6.i.sw.bb8.i_crit_edge48
  br label %sw.epilog.sink.split

sw.default.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %call.i19 = tail call i32 @wm831x_reg_read(ptr noundef %5, i16 noundef zeroext 16397) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i20 = icmp slt i32 %call.i19, 0
  br i1 %cmp.i20, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i23

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i23:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %and.i21 = lshr i32 %call.i19, 10
  %and.i21.lobit = and i32 %and.i21, 1
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  %call.i25 = tail call i32 @wm831x_auxadc_read_uv(ptr noundef %5, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i25)
  %cmp.i26 = icmp sgt i32 %call.i25, -1
  br i1 %cmp.i26, label %sw.bb5.sw.epilog.sink.split_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  %call.i28 = tail call i32 @wm831x_reg_read(ptr noundef %5, i16 noundef zeroext 16458) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp.i29 = icmp slt i32 %call.i28, 0
  br i1 %cmp.i29, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i32

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i32:                                       ; preds = %sw.bb7
  %and.i30 = and i32 %call.i28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %if.end2.i33, label %if.end.i32.sw.epilog.sink.split_crit_edge

if.end.i32.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end2.i33:                                      ; preds = %if.end.i32
  %and3.i = and i32 %call.i28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i35, label %if.end2.i33.sw.epilog.sink.split_crit_edge

if.end2.i33.sw.epilog.sink.split_crit_edge:       ; preds = %if.end2.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end6.i35:                                      ; preds = %if.end2.i33
  %and7.i34 = and i32 %call.i28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i34)
  %tobool8.not.i = icmp eq i32 %and7.i34, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i35.sw.epilog.sink.split_crit_edge

if.end6.i35.sw.epilog.sink.split_crit_edge:       ; preds = %if.end6.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end10.i:                                       ; preds = %if.end6.i35
  %and11.i = and i32 %call.i28, 28672
  %8 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and11.i, label %sw.default.i36 [
    i32 12288, label %if.end10.i.sw.epilog.sink.split_crit_edge
    i32 16384, label %if.end10.i.sw.epilog.sink.split_crit_edge49
    i32 20480, label %sw.bb12.i
  ]

if.end10.i.sw.epilog.sink.split_crit_edge49:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end10.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb12.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.default.i36:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  %call.i40 = tail call i32 @wm831x_reg_read(ptr noundef %5, i16 noundef zeroext 16458) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i41 = icmp slt i32 %call.i40, 0
  br i1 %cmp.i41, label %sw.bb9.sw.epilog_crit_edge, label %if.end.i43

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i43:                                       ; preds = %sw.bb9
  %and.i42 = and i32 %call.i40, 28672
  %9 = add nsw i32 %and.i42, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %9)
  %10 = icmp ult i32 %9, 16384
  br i1 %10, label %switch.lookup, label %if.end.i43.sw.epilog.sink.split_crit_edge

if.end.i43.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

switch.lookup:                                    ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #7
  %11 = lshr exact i32 %9, 12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wm831x_bat_get_prop, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %switch.lookup, %if.end.i43.sw.epilog.sink.split_crit_edge, %sw.default.i36, %sw.bb12.i, %if.end10.i.sw.epilog.sink.split_crit_edge, %if.end10.i.sw.epilog.sink.split_crit_edge49, %if.end6.i35.sw.epilog.sink.split_crit_edge, %if.end2.i33.sw.epilog.sink.split_crit_edge, %if.end.i32.sw.epilog.sink.split_crit_edge, %sw.bb5.sw.epilog.sink.split_crit_edge, %if.end.i23, %sw.default.i, %sw.bb8.i, %if.end6.i.sw.epilog.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split_crit_edge
  %.sink.i45.sink = phi i32 [ %and.i21.lobit, %if.end.i23 ], [ 1, %sw.bb8.i ], [ 0, %sw.default.i ], [ 2, %if.end.i.sw.epilog.sink.split_crit_edge ], [ 3, %if.end6.i.sw.epilog.sink.split_crit_edge ], [ %call.i25, %sw.bb5.sw.epilog.sink.split_crit_edge ], [ 5, %sw.bb12.i ], [ 1, %sw.default.i36 ], [ 2, %if.end.i32.sw.epilog.sink.split_crit_edge ], [ 6, %if.end2.i33.sw.epilog.sink.split_crit_edge ], [ 4, %if.end6.i35.sw.epilog.sink.split_crit_edge ], [ 2, %if.end10.i.sw.epilog.sink.split_crit_edge ], [ 2, %if.end10.i.sw.epilog.sink.split_crit_edge49 ], [ %switch.load, %switch.lookup ], [ 1, %if.end.i43.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ 0, %if.end.i23 ], [ 0, %sw.bb8.i ], [ 0, %sw.default.i ], [ 0, %if.end.i.sw.epilog.sink.split_crit_edge ], [ %and7.i, %if.end6.i.sw.epilog.sink.split_crit_edge ], [ %call.i25, %sw.bb5.sw.epilog.sink.split_crit_edge ], [ 0, %sw.bb12.i ], [ 0, %sw.default.i36 ], [ 0, %if.end.i32.sw.epilog.sink.split_crit_edge ], [ 0, %if.end2.i33.sw.epilog.sink.split_crit_edge ], [ 0, %if.end6.i35.sw.epilog.sink.split_crit_edge ], [ 0, %if.end10.i.sw.epilog.sink.split_crit_edge ], [ 0, %if.end10.i.sw.epilog.sink.split_crit_edge49 ], [ 0, %switch.lookup ], [ 0, %if.end.i43.sw.epilog.sink.split_crit_edge ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i45.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb9.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %if.end2.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %call3.i, %if.end2.i.sw.epilog_crit_edge ], [ %call.i19, %sw.bb3.sw.epilog_crit_edge ], [ %call.i25, %sw.bb5.sw.epilog_crit_edge ], [ %call.i28, %sw.bb7.sw.epilog_crit_edge ], [ %call.i40, %sw.bb9.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_syslo_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %3, ptr noundef nonnull @.str.57) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_pwr_src_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_pwr_src_irq.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_pwr_src_irq, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_pwr_src_irq.__UNIQUE_ID_ddebug235, ptr noundef %3, ptr noundef nonnull @.str.61) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %have_battery = getelementptr inbounds %struct.wm831x_power, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %have_battery to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %have_battery, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %battery = getelementptr inbounds %struct.wm831x_power, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %7) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %usb = getelementptr inbounds %struct.wm831x_power, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %9) #5
  %wall = getelementptr inbounds %struct.wm831x_power, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %wall to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wall, align 4
  tail call void @power_supply_changed(ptr noundef %11) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_bat_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_bat_irq.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_bat_irq, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_bat_irq.__UNIQUE_ID_ddebug234, ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %irq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %have_battery = getelementptr inbounds %struct.wm831x_power, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %have_battery to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %have_battery, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %battery = getelementptr inbounds %struct.wm831x_power, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %7) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_usb_limit_change(ptr nocapture noundef readonly %nb, i32 noundef %limit, ptr nocapture noundef readnone %data) #2 align 64 {
for.inc:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %limit)
  %cmp1.not.1 = icmp ult i32 %limit, 2
  br i1 %cmp1.not.1, label %for.inc.for.inc.7_crit_edge, label %for.inc.1

for.inc.for.inc.7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %limit)
  %cmp1.not.2 = icmp ult i32 %limit, 100
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.7_crit_edge, label %for.inc.2

for.inc.1.for.inc.7_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %limit)
  %cmp1.not.3 = icmp ult i32 %limit, 500
  br i1 %cmp1.not.3, label %for.inc.2.for.inc.7_crit_edge, label %for.inc.3

for.inc.2.for.inc.7_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %limit)
  %cmp1.not.4 = icmp ult i32 %limit, 900
  br i1 %cmp1.not.4, label %for.inc.6, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %limit)
  %cmp1.not.5 = icmp ult i32 %limit, 1500
  br i1 %cmp1.not.5, label %for.inc.4.land.lhs.true.7_crit_edge, label %for.inc.5

for.inc.4.land.lhs.true.7_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.7

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %limit)
  %cmp1.not.6 = icmp ult i32 %limit, 1800
  %spec.select = select i1 %cmp1.not.6, i32 5, i32 6
  br label %land.lhs.true.7

for.inc.6:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %limit)
  %cmp1.not.7 = icmp ult i32 %limit, 550
  br i1 %cmp1.not.7, label %for.inc.6.for.inc.7_crit_edge, label %for.inc.6.land.lhs.true.7_crit_edge

for.inc.6.land.lhs.true.7_crit_edge:              ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6.land.lhs.true.7_crit_edge, %for.inc.5, %for.inc.4.land.lhs.true.7_crit_edge
  %best.1.637 = phi i32 [ 3, %for.inc.6.land.lhs.true.7_crit_edge ], [ 4, %for.inc.4.land.lhs.true.7_crit_edge ], [ %spec.select, %for.inc.5 ]
  %0 = and i32 %best.1.637, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4.7 = icmp eq i32 %0, 0
  %spec.select.7 = select i1 %cmp4.7, i32 7, i32 %best.1.637
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7, %for.inc.6.for.inc.7_crit_edge, %for.inc.2.for.inc.7_crit_edge, %for.inc.1.for.inc.7_crit_edge, %for.inc.for.inc.7_crit_edge
  %best.1.7 = phi i32 [ 3, %for.inc.6.for.inc.7_crit_edge ], [ %spec.select.7, %land.lhs.true.7 ], [ 2, %for.inc.2.for.inc.7_crit_edge ], [ 1, %for.inc.1.for.inc.7_crit_edge ], [ 0, %for.inc.for.inc.7_crit_edge ]
  %add.ptr = getelementptr i8, ptr %nb, i32 -240
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_usb_limit_change.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_usb_limit_change, %do.end)) #5
          to label %if.then9 [label %do.end], !srcloc !174

if.then9:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.wm831x, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %arrayidx10 = getelementptr [8 x i32], ptr @wm831x_usb_limits, i32 0, i32 %best.1.7
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_usb_limit_change.__UNIQUE_ID_ddebug232, ptr noundef %4, ptr noundef nonnull @.str.73, i32 noundef %6) #5
  br label %do.end

do.end:                                           ; preds = %if.then9, %for.inc.7
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %conv = trunc i32 %best.1.7 to i16
  %call13 = tail call i32 @wm831x_set_bits(ptr noundef %8, i16 noundef zeroext 16387, i16 noundef zeroext 7, i16 noundef zeroext %conv) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm831x_reg_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_auxadc_read_uv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !160, !161, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_wm831x_power__236_736_wm831x_power_driver_init6, !1, !"__initcall__kmod_wm831x_power__236_736_wm831x_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/wm831x_power.c", i32 736, i32 1}
!2 = !{ptr @__exitcall_wm831x_power_driver_exit, !1, !"__exitcall_wm831x_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/wm831x_power.c", i32 738, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/wm831x_power.c", i32 739, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/wm831x_power.c", i32 740, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/wm831x_power.c", i32 741, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/wm831x_power.c", i32 732, i32 11}
!14 = !{ptr @wm831x_power_driver, !15, !"wm831x_power_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/wm831x_power.c", i32 728, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/wm831x_power.c", i32 549, i32 5}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/wm831x_power.c", i32 551, i32 5}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/wm831x_power.c", i32 553, i32 5}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/wm831x_power.c", i32 556, i32 5}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/wm831x_power.c", i32 558, i32 5}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/wm831x_power.c", i32 560, i32 5}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/wm831x_power.c", i32 611, i32 57}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/wm831x_power.c", i32 613, i32 44}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/wm831x_power.c", i32 616, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wm831x_power_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm831x_power_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/wm831x_power.c", i32 621, i32 57}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/wm831x_power.c", i32 623, i32 44}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/wm831x_power.c", i32 626, i32 3}
!46 = !{ptr @wm831x_power_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wm831x_power_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/wm831x_power.c", i32 640, i32 4}
!50 = !{ptr @wm831x_power_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wm831x_power_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/wm831x_power.c", i32 647, i32 59}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/wm831x_power.c", i32 655, i32 4}
!56 = !{ptr @wm831x_power_probe._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @wm831x_power_probe._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/wm831x_power.c", i32 667, i32 3}
!60 = !{ptr @wm831x_power_probe._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @wm831x_power_probe._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/wm831x_power.c", i32 263, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wm831x_config_battery._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @wm831x_config_battery._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/wm831x_power.c", i32 274, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @wm831x_config_battery._entry.32, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @wm831x_config_battery._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/wm831x_power.c", i32 287, i32 8}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/wm831x_power.c", i32 287, i32 40}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/wm831x_power.c", i32 291, i32 8}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/wm831x_power.c", i32 291, i32 26}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/wm831x_power.c", i32 295, i32 8}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/wm831x_power.c", i32 299, i32 8}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/wm831x_power.c", i32 303, i32 8}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/wm831x_power.c", i32 303, i32 27}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/wm831x_power.c", i32 307, i32 3}
!91 = !{ptr @wm831x_config_battery._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @wm831x_config_battery._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/wm831x_power.c", i32 317, i32 3}
!95 = !{ptr @wm831x_config_battery._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @wm831x_config_battery._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/wm831x_power.c", i32 328, i32 3}
!99 = !{ptr @wm831x_config_battery._entry.50, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @wm831x_config_battery._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/wm831x_power.c", i32 248, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @wm831x_battery_apply_config._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @wm831x_battery_apply_config._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/wm831x_power.c", i32 252, i32 3}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @wm831x_battery_apply_config.__UNIQUE_ID_ddebug233, !107, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!110 = !{ptr @trickle_ilims, !111, !"trickle_ilims", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/wm831x_power.c", i32 174, i32 23}
!112 = !{ptr @vsels, !113, !"vsels", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/wm831x_power.c", i32 181, i32 23}
!114 = !{ptr @fast_ilims, !115, !"fast_ilims", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/wm831x_power.c", i32 188, i32 23}
!116 = !{ptr @eoc_iterms, !117, !"eoc_iterms", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/wm831x_power.c", i32 207, i32 23}
!118 = !{ptr @chg_times, !119, !"chg_times", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/wm831x_power.c", i32 218, i32 23}
!120 = !{ptr @wm831x_wall_props, !121, !"wm831x_wall_props", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/wm831x_power.c", i32 92, i32 35}
!122 = !{ptr @wm831x_usb_props, !123, !"wm831x_usb_props", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/wm831x_power.c", i32 123, i32 35}
!124 = !{ptr @wm831x_bat_props, !125, !"wm831x_bat_props", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/wm831x_power.c", i32 465, i32 35}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/wm831x_power.c", i32 511, i32 2}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @wm831x_syslo_irq._entry, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @wm831x_syslo_irq._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/wm831x_power.c", i32 521, i32 2}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @wm831x_pwr_src_irq.__UNIQUE_ID_ddebug235, !133, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/wm831x_power.c", i32 474, i32 2}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/wm831x_power.c", i32 475, i32 2}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/wm831x_power.c", i32 476, i32 2}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/wm831x_power.c", i32 477, i32 2}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/wm831x_power.c", i32 478, i32 2}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/wm831x_power.c", i32 479, i32 2}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/wm831x_power.c", i32 480, i32 2}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/wm831x_power.c", i32 481, i32 2}
!152 = !{ptr @wm831x_bat_irqs, !153, !"wm831x_bat_irqs", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/wm831x_power.c", i32 473, i32 20}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/power/supply/wm831x_power.c", i32 489, i32 2}
!156 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @wm831x_bat_irq.__UNIQUE_ID_ddebug234, !155, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/power/supply/wm831x_power.c", i32 156, i32 2}
!160 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @wm831x_usb_limit_change.__UNIQUE_ID_ddebug232, !159, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!162 = !{ptr @wm831x_usb_limits, !163, !"wm831x_usb_limits", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/wm831x_power.c", i32 129, i32 27}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i8 0, i8 2}
!174 = !{i64 2148970919, i64 2148970924, i64 2148970937, i64 2148970981, i64 2148971015, i64 2148971036}
