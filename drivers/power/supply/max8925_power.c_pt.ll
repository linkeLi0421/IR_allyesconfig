; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max8925_power.c_pt.bc'
source_filename = "../drivers/power/supply/max8925_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.max8925_power_pdata = type { ptr, i8, ptr, i32 }
%struct.max8925_chip = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, i32, i32, i32 }
%struct.max8925_power_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max8925_power__299_590_max8925_power_driver_init6 = internal global ptr @max8925_power_driver_init, section ".initcall6.init", align 4
@max8925_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8925_power_probe, ptr @max8925_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8925_power_driver_exit = internal global ptr @max8925_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file300 = internal constant [54 x i8] c"max8925_power.file=drivers/power/supply/max8925_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [26 x i8] c"max8925_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [58 x i8] c"max8925_power.description=Power supply driver for MAX8925\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [43 x i8] c"max8925_power.alias=platform:max8925-power\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8925-power\00", [18 x i8] zeroinitializer }, align 32
@max8925_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"platform data isn't assigned to power supply\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max8925_power_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/power/supply/max8925_power.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8925_power_probe._entry_ptr = internal global ptr @max8925_power_probe._entry, section ".printk_index", align 4
@ac_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.14, i32 3, ptr null, i32 0, ptr @max8925_ac_props, i32 2, ptr @max8925_ac_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.15, i32 4, ptr null, i32 0, ptr @max8925_usb_props, i32 2, ptr @max8925_usb_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.16, i32 1, ptr null, i32 0, ptr @max8925_battery_props, i32 5, ptr @max8925_bat_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"charger\00", [24 x i8] zeroinitializer }, align 32
@max8925_power_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to find charger node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8925_power_dt_init\00", [42 x i8] zeroinitializer }, align 32
@max8925_power_dt_init._entry_ptr = internal global ptr @max8925_power_dt_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"topoff-threshold\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"batt-detect\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fast-charge\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no-insert-detect\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no-temp-support\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max8925-ac\00", [21 x i8] zeroinitializer }, align 32
@max8925_ac_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 12], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8925-usb\00", [20 x i8] zeroinitializer }, align 32
@max8925_usb_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 12], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8925-battery\00", [16 x i8] zeroinitializer }, align 32
@max8925_battery_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 12, i32 17, i32 1, i32 0], [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ac-ovp\00", [25 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request IRQ #%d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max8925_init_charger\00", [43 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr = internal global ptr @max8925_init_charger._entry, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ac-remove\00", [22 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.22 = internal global ptr @max8925_init_charger._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ac-insert\00", [22 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.25 = internal global ptr @max8925_init_charger._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"batt-temp-in-range\00", [45 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.28 = internal global ptr @max8925_init_charger._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"batt-temp-out-range\00", [44 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.31 = internal global ptr @max8925_init_charger._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vsys-high\00", [22 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.34 = internal global ptr @max8925_init_charger._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vsys-low\00", [23 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.37 = internal global ptr @max8925_init_charger._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charger-reset\00", [18 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.40 = internal global ptr @max8925_init_charger._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"charger-done\00", [19 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.43 = internal global ptr @max8925_init_charger._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"charger-topoff\00", [17 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.46 = internal global ptr @max8925_init_charger._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"charger-timer-expire\00", [43 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8925_init_charger._entry_ptr.49 = internal global ptr @max8925_init_charger._entry.48, section ".printk_index", align 4
@max8925_charger_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8925_power\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8925_charger_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Adapter inserted\0A\00", [46 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Adapter removed\0A\00", [47 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.54, i8 0, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Battery temperature is out of range\0A\00", [59 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.55, i8 0, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Error detection\0A\00", [47 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.56, i8 0, i8 32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Battery temperature is in range\0A\00", [63 x i8] zeroinitializer }, align 32
@max8925_charger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.3, i32 135, ptr @.str.58, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sys power is too low\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max8925_charger_handler._entry_ptr = internal global ptr @max8925_charger_handler._entry, section ".printk_index", align 4
@max8925_charger_handler.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.59, i8 0, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Sys power is above low threshold\0A\00", [62 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.60, i8 0, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Charging is done\0A\00", [46 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.61, i8 0, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Charging in top-off mode\0A\00", [38 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.62, i8 0, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Safe timer is expired\0A\00", [41 x i8] zeroinitializer }, align 32
@max8925_charger_handler.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.63, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Charger is reset\0A\00", [46 x i8] zeroinitializer }, align 32
@__set_charger.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__set_charger\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Enable charger\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Disable charger\00", [16 x i8] zeroinitializer }, align 32
@switch.table.max8925_bat_get_prop = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 3, i32 2, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 12, i64 17]
@__sancov_gen_cov_switch_values.70 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"max8925_power_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 582, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 586, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 514, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [8 x i8] c"ac_desc\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 348, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"usb_desc\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 356, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"battery_desc\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 364, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 468, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 470, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 480, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 481, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 482, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 483, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 484, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 349, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"max8925_ac_props\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 222, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 357, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"max8925_usb_props\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 256, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 365, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"max8925_battery_props\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 340, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 387, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 389, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 390, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 393, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 394, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 396, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 397, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 398, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 399, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 400, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 401, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 114, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 119, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 123, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 126, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 131, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 135, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 138, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 142, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 145, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 149, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 153, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [40 x i8] c"../drivers/power/supply/max8925_power.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 100, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [34 x i8] c"switch.table.max8925_bat_get_prop\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_max8925_power_driver_exit, ptr @__initcall__kmod_max8925_power__299_590_max8925_power_driver_init6, ptr @max8925_charger_handler._entry, ptr @max8925_charger_handler._entry_ptr, ptr @max8925_init_charger._entry, ptr @max8925_init_charger._entry.21, ptr @max8925_init_charger._entry.24, ptr @max8925_init_charger._entry.27, ptr @max8925_init_charger._entry.30, ptr @max8925_init_charger._entry.33, ptr @max8925_init_charger._entry.36, ptr @max8925_init_charger._entry.39, ptr @max8925_init_charger._entry.42, ptr @max8925_init_charger._entry.45, ptr @max8925_init_charger._entry.48, ptr @max8925_init_charger._entry_ptr, ptr @max8925_init_charger._entry_ptr.22, ptr @max8925_init_charger._entry_ptr.25, ptr @max8925_init_charger._entry_ptr.28, ptr @max8925_init_charger._entry_ptr.31, ptr @max8925_init_charger._entry_ptr.34, ptr @max8925_init_charger._entry_ptr.37, ptr @max8925_init_charger._entry_ptr.40, ptr @max8925_init_charger._entry_ptr.43, ptr @max8925_init_charger._entry_ptr.46, ptr @max8925_init_charger._entry_ptr.49, ptr @max8925_power_driver_exit, ptr @max8925_power_dt_init._entry, ptr @max8925_power_dt_init._entry_ptr, ptr @max8925_power_probe._entry, ptr @max8925_power_probe._entry_ptr, ptr @max8925_power_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ac_desc, ptr @usb_desc, ptr @battery_desc, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @max8925_ac_props, ptr @.str.15, ptr @max8925_usb_props, ptr @.str.16, ptr @max8925_battery_props, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @switch.table.max8925_bat_get_prop], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_power_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_ac_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_usb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_battery_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_init_charger._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_charger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8925_bat_get_prop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8925_power_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8925_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8925_power_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 2
  %batt_detect.i = alloca i32, align 4
  %topoff_threshold.i = alloca i32, align 4
  %fast_charge.i = alloca i32, align 4
  %no_temp_support.i = alloca i32, align 4
  %no_insert_detect.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %4 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %batt_detect.i) #6
  %7 = ptrtoint ptr %batt_detect.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %batt_detect.i, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %topoff_threshold.i) #6
  %8 = ptrtoint ptr %topoff_threshold.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %topoff_threshold.i, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fast_charge.i) #6
  %9 = ptrtoint ptr %fast_charge.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %fast_charge.i, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %no_temp_support.i) #6
  %10 = ptrtoint ptr %no_temp_support.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %no_temp_support.i, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %no_insert_detect.i) #6
  %11 = ptrtoint ptr %no_insert_detect.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %no_insert_detect.i, align 4, !annotation !155
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i, align 8
  br label %max8925_power_dt_init.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %6, ptr noundef nonnull @.str.6) #6
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %max8925_power_dt_init.exit.thread, label %if.end5.i

max8925_power_dt_init.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %no_insert_detect.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %no_temp_support.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fast_charge.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %topoff_threshold.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batt_detect.i) #6
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %if.end5.i.ret.i_crit_edge, label %if.end10.i

if.end5.i.ret.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret.i

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %topoff_threshold.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i67.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %batt_detect.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i68.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %fast_charge.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i69.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %no_insert_detect.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i70.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %no_temp_support.i, i32 noundef 1, i32 noundef 0) #6
  %14 = ptrtoint ptr %batt_detect.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %batt_detect.i, align 4
  %batt_detect16.i = getelementptr inbounds %struct.max8925_power_pdata, ptr %call.i.i, i32 0, i32 1
  %16 = trunc i32 %15 to i8
  %bf.shl.i = shl i8 %16, 7
  %17 = ptrtoint ptr %fast_charge.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fast_charge.i, align 4
  %19 = trunc i32 %18 to i8
  %bf.value19.i = shl i8 %19, 2
  %bf.shl20.i = and i8 %bf.value19.i, 28
  %bf.set22.i = or i8 %bf.shl20.i, %bf.shl.i
  %20 = ptrtoint ptr %topoff_threshold.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %topoff_threshold.i, align 4
  %22 = trunc i32 %21 to i8
  %bf.value26.i = shl i8 %22, 5
  %bf.shl27.i = and i8 %bf.value26.i, 96
  %bf.set29.i = or i8 %bf.set22.i, %bf.shl27.i
  %23 = ptrtoint ptr %no_insert_detect.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %no_insert_detect.i, align 4
  %25 = trunc i32 %24 to i8
  %bf.value33.i = and i8 %25, 1
  %bf.set35.i = or i8 %bf.set29.i, %bf.value33.i
  %26 = ptrtoint ptr %no_temp_support.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %no_temp_support.i, align 4
  %28 = trunc i32 %27 to i8
  %bf.value39.i = shl i8 %28, 1
  %bf.shl40.i = and i8 %bf.value39.i, 2
  %bf.set42.i = or i8 %bf.set35.i, %bf.shl40.i
  %29 = ptrtoint ptr %batt_detect16.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.set42.i, ptr %batt_detect16.i, align 4
  br label %ret.i

ret.i:                                            ; preds = %if.end10.i, %if.end5.i.ret.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  br label %max8925_power_dt_init.exit

max8925_power_dt_init.exit:                       ; preds = %ret.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i.i, %ret.i ], [ %13, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %no_insert_detect.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %no_temp_support.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fast_charge.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %topoff_threshold.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batt_detect.i) #6
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %max8925_power_dt_init.exit.do.end_crit_edge, label %if.end

max8925_power_dt_init.exit.do.end_crit_edge:      ; preds = %max8925_power_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %max8925_power_dt_init.exit.do.end_crit_edge, %max8925_power_dt_init.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %max8925_power_dt_init.exit
  %call.i147 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i147, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %30 = ptrtoint ptr %call.i147 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %call.i147, align 4
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c, align 4
  %gpm = getelementptr inbounds %struct.max8925_power_info, ptr %call.i147, i32 0, i32 1
  %33 = ptrtoint ptr %gpm to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %gpm, align 4
  %adc = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adc, align 4
  %adc9 = getelementptr inbounds %struct.max8925_power_info, ptr %call.i147, i32 0, i32 2
  %36 = ptrtoint ptr %adc9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %adc9, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i147, ptr %driver_data.i.i, align 4
  %supplied_to = getelementptr inbounds %struct.max8925_power_pdata, ptr %retval.0.i, i32 0, i32 2
  %38 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %supplied_to, align 4
  %supplied_to10 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %40 = ptrtoint ptr %supplied_to10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %supplied_to10, align 4
  %num_supplicants = getelementptr inbounds %struct.max8925_power_pdata, ptr %retval.0.i, i32 0, i32 3
  %41 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_supplicants, align 4
  %num_supplicants11 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %43 = ptrtoint ptr %num_supplicants11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %num_supplicants11, align 4
  %call13 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @ac_desc, ptr noundef nonnull %psy_cfg) #6
  %ac = getelementptr inbounds %struct.max8925_power_info, ptr %call.i147, i32 0, i32 3
  %44 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call13, ptr %ac, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %parent23 = getelementptr inbounds %struct.power_supply, ptr %call13, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %parent23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %parent23, align 8
  %call25 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @usb_desc, ptr noundef nonnull %psy_cfg) #6
  %usb = getelementptr inbounds %struct.max8925_power_info, ptr %call.i147, i32 0, i32 4
  %47 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call25, ptr %usb, align 4
  %cmp.i148 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.end19.out_unregister_ac_crit_edge, label %if.end31

if.end19.out_unregister_ac_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister_ac

if.end31:                                         ; preds = %if.end19
  %parent35 = getelementptr inbounds %struct.power_supply, ptr %call25, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %parent35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev, ptr %parent35, align 8
  %call37 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @battery_desc, ptr noundef null) #6
  %battery = getelementptr inbounds %struct.max8925_power_info, ptr %call.i147, i32 0, i32 5
  %49 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call37, ptr %battery, align 4
  %cmp.i149 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb, align 4
  call void @power_supply_unregister(ptr noundef %51) #6
  br label %out_unregister_ac

if.end43:                                         ; preds = %if.end31
  %parent47 = getelementptr inbounds %struct.power_supply, ptr %call37, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %parent47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev, ptr %parent47, align 8
  %batt_detect = getelementptr inbounds %struct.max8925_power_pdata, ptr %retval.0.i, i32 0, i32 1
  %53 = ptrtoint ptr %batt_detect to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %batt_detect, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %batt_detect48 = getelementptr inbounds %struct.max8925_power_info, ptr %call.i147, i32 0, i32 7
  %54 = zext i8 %bf.lshr to i16
  %55 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load49 = load i16, ptr %batt_detect48, align 4
  %bf.shl = shl nuw nsw i16 %54, 10
  %bf.clear = and i16 %bf.load49, -1025
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %batt_detect48, align 4
  %bf.load50 = load i8, ptr %batt_detect, align 4
  %bf.lshr51 = lshr i8 %bf.load50, 5
  %56 = and i8 %bf.lshr51, 3
  %bf.value56 = zext i8 %56 to i16
  %bf.shl57 = shl nuw nsw i16 %bf.value56, 8
  %bf.clear58 = and i16 %bf.set, -769
  %bf.set59 = or i16 %bf.shl57, %bf.clear58
  store i16 %bf.set59, ptr %batt_detect48, align 4
  %bf.load61 = load i8, ptr %batt_detect, align 4
  %57 = shl i8 %bf.load61, 3
  %58 = and i8 %57, -32
  %bf.shl68 = zext i8 %58 to i16
  %bf.clear69 = and i16 %bf.set59, -225
  %bf.set70 = or i16 %bf.clear69, %bf.shl68
  store i16 %bf.set70, ptr %batt_detect48, align 4
  %59 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %retval.0.i, align 4
  %set_charger72 = getelementptr inbounds %struct.max8925_power_info, ptr %call.i147, i32 0, i32 8
  %61 = ptrtoint ptr %set_charger72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %set_charger72, align 4
  %bf.load73 = load i8, ptr %batt_detect, align 4
  %62 = shl i8 %bf.load73, 3
  %63 = and i8 %62, 16
  %bf.shl80 = zext i8 %63 to i16
  %bf.clear81 = and i16 %bf.set70, -17
  %bf.set82 = or i16 %bf.clear81, %bf.shl80
  store i16 %bf.set82, ptr %batt_detect48, align 4
  %bf.load84 = load i8, ptr %batt_detect, align 4
  %64 = shl i8 %bf.load84, 3
  %65 = and i8 %64, 8
  %bf.shl90 = zext i8 %65 to i16
  %bf.clear91 = and i16 %bf.set82, -9
  %bf.set92 = or i16 %bf.clear91, %bf.shl90
  store i16 %bf.set92, ptr %batt_detect48, align 4
  %irq_base.i = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 6
  %66 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq_base.i, align 4
  %call.i150 = call i32 @request_threaded_irq(i32 noundef %67, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.end43.do.end3.i_crit_edge, label %do.end.i152

if.end43.do.end3.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i152:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %call.i150) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i152, %if.end43.do.end3.i_crit_edge
  %70 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i = load i16, ptr %batt_detect48, align 4
  %71 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool4.not.i = icmp eq i16 %71, 0
  br i1 %tobool4.not.i, label %do.body6.i, label %do.end3.i.if.end32.i_crit_edge

do.end3.i.if.end32.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

do.body6.i:                                       ; preds = %do.end3.i
  %72 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq_base.i, align 4
  %add8.i = add i32 %73, 1
  %call9.i = call i32 @request_threaded_irq(i32 noundef %add8.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body6.i.do.body19.i_crit_edge, label %do.end14.i

do.body6.i.do.body19.i_crit_edge:                 ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19.i

do.end14.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %call9.i) #9
  br label %do.body19.i

do.body19.i:                                      ; preds = %do.end14.i, %do.body6.i.do.body19.i_crit_edge
  %76 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq_base.i, align 4
  %add21.i = add i32 %77, 2
  %call22.i = call i32 @request_threaded_irq(i32 noundef %add21.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.23, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %do.body19.i.if.end32.i_crit_edge, label %do.end27.i

do.body19.i.if.end32.i_crit_edge:                 ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

do.end27.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef %call22.i) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end27.i, %do.body19.i.if.end32.i_crit_edge, %do.end3.i.if.end32.i_crit_edge
  %80 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load33.i = load i16, ptr %batt_detect48, align 4
  %81 = and i16 %bf.load33.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool37.not.i = icmp eq i16 %81, 0
  br i1 %tobool37.not.i, label %do.body39.i, label %if.end32.i.do.body66.i_crit_edge

if.end32.i.do.body66.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i

do.body39.i:                                      ; preds = %if.end32.i
  %82 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq_base.i, align 4
  %add41.i = add i32 %83, 3
  %call42.i = call i32 @request_threaded_irq(i32 noundef %add41.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.26, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.body39.i.do.body52.i_crit_edge, label %do.end47.i

do.body39.i.do.body52.i_crit_edge:                ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52.i

do.end47.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef %call42.i) #9
  br label %do.body52.i

do.body52.i:                                      ; preds = %do.end47.i, %do.body39.i.do.body52.i_crit_edge
  %86 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq_base.i, align 4
  %add54.i = add i32 %87, 4
  %call55.i = call i32 @request_threaded_irq(i32 noundef %add54.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.29, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %do.body52.i.do.body66.i_crit_edge, label %do.end60.i

do.body52.i.do.body66.i_crit_edge:                ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i

do.end60.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.18, i32 noundef 4, i32 noundef %call55.i) #9
  br label %do.body66.i

do.body66.i:                                      ; preds = %do.end60.i, %do.body52.i.do.body66.i_crit_edge, %if.end32.i.do.body66.i_crit_edge
  %90 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq_base.i, align 4
  %add68.i = add i32 %91, 5
  %call69.i = call i32 @request_threaded_irq(i32 noundef %add68.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.32, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %do.body66.i.do.body79.i_crit_edge, label %do.end74.i

do.body66.i.do.body79.i_crit_edge:                ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79.i

do.end74.i:                                       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.18, i32 noundef 5, i32 noundef %call69.i) #9
  br label %do.body79.i

do.body79.i:                                      ; preds = %do.end74.i, %do.body66.i.do.body79.i_crit_edge
  %94 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq_base.i, align 4
  %add81.i = add i32 %95, 6
  %call82.i = call i32 @request_threaded_irq(i32 noundef %add81.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.35, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %do.body79.i.do.body92.i_crit_edge, label %do.end87.i

do.body79.i.do.body92.i_crit_edge:                ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body92.i

do.end87.i:                                       ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef %call82.i) #9
  br label %do.body92.i

do.body92.i:                                      ; preds = %do.end87.i, %do.body79.i.do.body92.i_crit_edge
  %98 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq_base.i, align 4
  %add94.i = add i32 %99, 7
  %call95.i = call i32 @request_threaded_irq(i32 noundef %add94.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.38, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %do.body92.i.do.body105.i_crit_edge, label %do.end100.i

do.body92.i.do.body105.i_crit_edge:               ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body105.i

do.end100.i:                                      ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef %call95.i) #9
  br label %do.body105.i

do.body105.i:                                     ; preds = %do.end100.i, %do.body92.i.do.body105.i_crit_edge
  %102 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq_base.i, align 4
  %add107.i = add i32 %103, 8
  %call108.i = call i32 @request_threaded_irq(i32 noundef %add107.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.41, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %do.body105.i.do.body118.i_crit_edge, label %do.end113.i

do.body105.i.do.body118.i_crit_edge:              ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body118.i

do.end113.i:                                      ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.18, i32 noundef 8, i32 noundef %call108.i) #9
  br label %do.body118.i

do.body118.i:                                     ; preds = %do.end113.i, %do.body105.i.do.body118.i_crit_edge
  %106 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq_base.i, align 4
  %add120.i = add i32 %107, 9
  %call121.i = call i32 @request_threaded_irq(i32 noundef %add120.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.44, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool122.not.i = icmp eq i32 %call121.i, 0
  br i1 %tobool122.not.i, label %do.body118.i.do.body131.i_crit_edge, label %do.end126.i

do.body118.i.do.body131.i_crit_edge:              ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body131.i

do.end126.i:                                      ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.18, i32 noundef 9, i32 noundef %call121.i) #9
  br label %do.body131.i

do.body131.i:                                     ; preds = %do.end126.i, %do.body118.i.do.body131.i_crit_edge
  %110 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq_base.i, align 4
  %add133.i = add i32 %111, 10
  %call134.i = call i32 @request_threaded_irq(i32 noundef %add133.i, ptr noundef null, ptr noundef nonnull @max8925_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.47, ptr noundef nonnull %call.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %do.body131.i.do.end143.i_crit_edge, label %do.end139.i

do.body131.i.do.end143.i_crit_edge:               ; preds = %do.body131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end143.i

do.end139.i:                                      ; preds = %do.body131.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.18, i32 noundef 10, i32 noundef %call134.i) #9
  br label %do.end143.i

do.end143.i:                                      ; preds = %do.end139.i, %do.body131.i.do.end143.i_crit_edge
  %114 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load144.i = load i16, ptr %batt_detect48, align 4
  %bf.clear147.i = and i16 %bf.load144.i, -24577
  store i16 %bf.clear147.i, ptr %batt_detect48, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %115 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %buf.i.i, align 2
  %116 = ptrtoint ptr %adc9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adc9, align 4
  %call.i.i154 = call i32 @max8925_reg_write(ptr noundef %117, i32 noundef 208, i8 noundef zeroext 0) #6
  %118 = ptrtoint ptr %adc9 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %adc9, align 4
  %call5.i.i = call i32 @max8925_bulk_read(ptr noundef %119, i32 noundef 100, i32 noundef 2, ptr noundef nonnull %buf.i.i) #6
  %120 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %buf.i.i, align 2
  %conv.i.i = zext i8 %121 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %arrayidx6.i.i = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %123 to i32
  %or.i.i = or i32 %shl.i.i, %conv7.i.i
  %124 = lshr i32 %or.i.i, 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %mul.i = mul nuw nsw i32 %124, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %mul.i)
  %cmp.i155 = icmp ugt i32 %mul.i, 500000
  %125 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load151.i = load i16, ptr %batt_detect48, align 4
  %bf.clear156.i = and i16 %bf.load151.i, 32767
  %masksel.i = select i1 %cmp.i155, i16 -32768, i16 0
  %storemerge.i = or i16 %masksel.i, %bf.clear156.i
  store i16 %storemerge.i, ptr %batt_detect48, align 4
  %126 = ptrtoint ptr %gpm to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %gpm, align 4
  %call159.i = call i32 @max8925_reg_read(ptr noundef %127, i32 noundef 130) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call159.i)
  %cmp160.i = icmp sgt i32 %call159.i, -1
  br i1 %cmp160.i, label %if.then161.i, label %do.end143.i.max8925_init_charger.exit_crit_edge

do.end143.i.max8925_init_charger.exit_crit_edge:  ; preds = %do.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8925_init_charger.exit

if.then161.i:                                     ; preds = %do.end143.i
  %128 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load162.i = load i16, ptr %batt_detect48, align 4
  %129 = and i16 %bf.load162.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool166.not.i = icmp eq i16 %129, 0
  br i1 %tobool166.not.i, label %if.else173.i, label %if.then167.i

if.then167.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = trunc i32 %call159.i to i16
  %131 = shl i16 %130, 12
  %132 = and i16 %131, 8192
  %bf.clear171.i = and i16 %bf.load162.i, -8193
  %133 = or i16 %bf.clear171.i, %132
  %bf.set172.i = xor i16 %133, 8192
  br label %if.end178.i

if.else173.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set177.i = or i16 %bf.load162.i, 8192
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.else173.i, %if.then167.i
  %storemerge1.i = phi i16 [ %bf.set177.i, %if.else173.i ], [ %bf.set172.i, %if.then167.i ]
  %and179.i = and i32 %call159.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  %bf.clear189.i = and i16 %storemerge1.i, 32767
  %masksel2.i = select i1 %tobool180.not.i, i16 0, i16 -32768
  %bf.set185.sink.i = or i16 %bf.clear189.i, %masksel2.i
  %134 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %bf.set185.sink.i, ptr %batt_detect48, align 4
  br label %max8925_init_charger.exit

max8925_init_charger.exit:                        ; preds = %if.end178.i, %do.end143.i.max8925_init_charger.exit_crit_edge
  %135 = ptrtoint ptr %gpm to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %gpm, align 4
  %call194.i = call i32 @max8925_set_bits(ptr noundef %136, i32 noundef 124, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %137 = ptrtoint ptr %gpm to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %gpm, align 4
  %139 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load196.i = load i16, ptr %batt_detect48, align 4
  %140 = lshr i16 %bf.load196.i, 3
  %141 = trunc i16 %140 to i8
  %conv.i = and i8 %141, 96
  %call200.i = call i32 @max8925_set_bits(ptr noundef %138, i32 noundef 124, i8 noundef zeroext 96, i8 noundef zeroext %conv.i) #6
  %142 = ptrtoint ptr %gpm to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %gpm, align 4
  %144 = ptrtoint ptr %batt_detect48 to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load202.i = load i16, ptr %batt_detect48, align 4
  %145 = trunc i16 %bf.load202.i to i8
  %146 = lshr i8 %145, 5
  %call207.i = call i32 @max8925_set_bits(ptr noundef %143, i32 noundef 124, i8 noundef zeroext 7, i8 noundef zeroext %146) #6
  br label %cleanup

out_unregister_ac:                                ; preds = %if.then40, %if.end19.out_unregister_ac_crit_edge
  %ret.0.in = phi ptr [ %call37, %if.then40 ], [ %call25, %if.end19.out_unregister_ac_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %147 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ac, align 4
  call void @power_supply_unregister(ptr noundef %148) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unregister_ac, %max8925_init_charger.exit, %if.then16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %max8925_init_charger.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %45, %if.then16 ], [ %ret.0, %out_unregister_ac ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_power_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ac = getelementptr inbounds %struct.max8925_power_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #6
  %usb = getelementptr inbounds %struct.max8925_power_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #6
  %battery = getelementptr inbounds %struct.max8925_power_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %battery, align 4
  tail call void @power_supply_unregister(ptr noundef %7) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %irq_base.i = getelementptr inbounds %struct.max8925_chip, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483637, i32 %11)
  %cmp.not2.i = icmp sgt i32 %11, 2147483637
  br i1 %cmp.not2.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %irq.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %11, %if.then.for.body.i_crit_edge ]
  %call.i = tail call ptr @free_irq(i32 noundef %irq.03.i, ptr noundef nonnull %1) #6
  %inc.i = add i32 %irq.03.i, 1
  %12 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_base.i, align 4
  %add3.i = add i32 %13, 10
  %cmp.not.i = icmp sgt i32 %inc.i, %add3.i
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_ac_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.out_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb1
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ac_online = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %ac_online to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %ac_online, align 4
  %bf.lshr = lshr i16 %bf.load, 15
  %bf.cast = zext i16 %bf.lshr to i32
  br label %out.sink.split

sw.bb1:                                           ; preds = %entry
  %ac_online2 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %ac_online2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load3 = load i16, ptr %ac_online2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load3)
  %tobool.not = icmp sgt i16 %bf.load3, -1
  br i1 %tobool.not, label %sw.bb1.out_crit_edge, label %if.then7

sw.bb1.out_crit_edge:                             ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then7:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %buf.i, align 2
  %adc.i = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adc.i, align 4
  %call.i = tail call i32 @max8925_reg_write(ptr noundef %9, i32 noundef 208, i8 noundef zeroext 0) #6
  %10 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adc.i, align 4
  %call5.i = call i32 @max8925_bulk_read(ptr noundef %11, i32 noundef 100, i32 noundef 2, ptr noundef nonnull %buf.i) #6
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf.i, align 2
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx6.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %15 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %16 = lshr i32 %or.i, 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %mul = mul nuw nsw i32 %16, 2000
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then7, %sw.bb
  %bf.cast.sink = phi i32 [ %bf.cast, %sw.bb ], [ %mul, %if.then7 ]
  %ret.0.ph = phi i32 [ 0, %sw.bb ], [ %16, %if.then7 ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.cast.sink, ptr %val, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %sw.bb1.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -61, %sw.bb1.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_usb_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %psp, label %entry.out_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb1
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %usb_online = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %usb_online to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %usb_online, align 4
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  br label %out.sink.split

sw.bb1:                                           ; preds = %entry
  %usb_online2 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %usb_online2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load3 = load i16, ptr %usb_online2, align 4
  %7 = and i16 %bf.load3, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %sw.bb1.out_crit_edge, label %if.then8

sw.bb1.out_crit_edge:                             ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then8:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %buf.i, align 2
  %adc.i = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc.i, align 4
  %call.i = tail call i32 @max8925_reg_write(ptr noundef %10, i32 noundef 208, i8 noundef zeroext 0) #6
  %11 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adc.i, align 4
  %call5.i = call i32 @max8925_bulk_read(ptr noundef %12, i32 noundef 100, i32 noundef 2, ptr noundef nonnull %buf.i) #6
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf.i, align 2
  %conv.i = zext i8 %14 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx6.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %16 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %17 = lshr i32 %or.i, 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %mul = mul nuw nsw i32 %17, 2000
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then8, %sw.bb
  %bf.cast.sink = phi i32 [ %bf.cast, %sw.bb ], [ %mul, %if.then8 ]
  %ret.0.ph = phi i32 [ 0, %sw.bb ], [ %17, %if.then8 ]
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.cast.sink, ptr %val, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %sw.bb1.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -61, %sw.bb1.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_bat_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf.i95 = alloca [2 x i8], align 2
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %psp, label %entry.sw.epilog66_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb1
    i32 17, label %sw.bb10
    i32 1, label %sw.bb27
    i32 0, label %sw.bb40
  ]

entry.sw.epilog66_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog66

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_online = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %bat_online to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %bat_online, align 4
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  br label %sw.epilog66.sink.split

sw.bb1:                                           ; preds = %entry
  %bat_online2 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %bat_online2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load3 = load i16, ptr %bat_online2, align 4
  %7 = and i16 %bf.load3, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %sw.bb1.sw.epilog66_crit_edge, label %if.then8

sw.bb1.sw.epilog66_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog66

if.then8:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %buf.i, align 2
  %adc.i = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc.i, align 4
  %call.i = tail call i32 @max8925_reg_write(ptr noundef %10, i32 noundef 224, i8 noundef zeroext 0) #6
  %11 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adc.i, align 4
  %call5.i = call i32 @max8925_bulk_read(ptr noundef %12, i32 noundef 104, i32 noundef 2, ptr noundef nonnull %buf.i) #6
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf.i, align 2
  %conv.i = zext i8 %14 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx6.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %16 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %17 = lshr i32 %or.i, 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %mul = mul nuw nsw i32 %17, 2000
  br label %sw.epilog66.sink.split

sw.bb10:                                          ; preds = %entry
  %bat_online11 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %bat_online11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load12 = load i16, ptr %bat_online11, align 4
  %19 = and i16 %bf.load12, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool16.not = icmp eq i16 %19, 0
  br i1 %tobool16.not, label %sw.bb10.sw.epilog66_crit_edge, label %if.then20

sw.bb10.sw.epilog66_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog66

if.then20:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i95) #6
  %20 = ptrtoint ptr %buf.i95 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %buf.i95, align 2
  %adc.i96 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %adc.i96 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adc.i96, align 4
  %call.i97 = tail call i32 @max8925_reg_write(ptr noundef %22, i32 noundef 232, i8 noundef zeroext 0) #6
  %23 = ptrtoint ptr %adc.i96 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adc.i96, align 4
  %call5.i98 = call i32 @max8925_bulk_read(ptr noundef %24, i32 noundef 106, i32 noundef 2, ptr noundef nonnull %buf.i95) #6
  %25 = ptrtoint ptr %buf.i95 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.i95, align 2
  %conv.i99 = zext i8 %26 to i32
  %shl.i100 = shl nuw nsw i32 %conv.i99, 8
  %arrayidx6.i101 = getelementptr inbounds [2 x i8], ptr %buf.i95, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx6.i101 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx6.i101, align 1
  %conv7.i102 = zext i8 %28 to i32
  %or.i103 = or i32 %shl.i100, %conv7.i102
  %29 = lshr i32 %or.i103, 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i95) #6
  %mul21 = mul nuw nsw i32 %29, 6250
  %30 = call i32 @llvm.smax.i32(i32 %mul21, i32 3125)
  %31 = add nsw i32 %30, -3125
  br label %sw.epilog66.sink.split

sw.bb27:                                          ; preds = %entry
  %bat_online28 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %bat_online28 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load29 = load i16, ptr %bat_online28, align 4
  %33 = and i16 %bf.load29, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool33.not = icmp eq i16 %33, 0
  br i1 %tobool33.not, label %sw.bb27.sw.epilog66_crit_edge, label %if.end35

sw.bb27.sw.epilog66_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog66

if.end35:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %gpm = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %gpm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpm, align 4
  %call36 = tail call i32 @max8925_reg_read(ptr noundef %35, i32 noundef 130) #6
  %and = lshr i32 %call36, 2
  %36 = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.max8925_bat_get_prop, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog66.sink.split

sw.bb40:                                          ; preds = %entry
  %bat_online41 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %bat_online41 to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load42 = load i16, ptr %bat_online41, align 4
  %39 = and i16 %bf.load42, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool46.not = icmp eq i16 %39, 0
  br i1 %tobool46.not, label %sw.bb40.sw.epilog66_crit_edge, label %if.end48

sw.bb40.sw.epilog66_crit_edge:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog66

if.end48:                                         ; preds = %sw.bb40
  %gpm49 = getelementptr inbounds %struct.max8925_power_info, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %gpm49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpm49, align 4
  %call50 = tail call i32 @max8925_reg_read(ptr noundef %41, i32 noundef 130) #6
  %42 = ptrtoint ptr %bat_online41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load51 = load i16, ptr %bat_online41, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load51)
  %43 = icmp ult i16 %bf.load51, 16384
  br i1 %43, label %if.end48.sw.epilog66.sink.split_crit_edge, label %if.then60

if.end48.sw.epilog66.sink.split_crit_edge:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog66.sink.split

if.then60:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %and61 = and i32 %call50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %spec.store.select = select i1 %tobool62.not, i32 3, i32 1
  br label %sw.epilog66.sink.split

sw.epilog66.sink.split:                           ; preds = %if.then60, %if.end48.sw.epilog66.sink.split_crit_edge, %if.end35, %if.then20, %if.then8, %sw.bb
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.then60 ], [ %31, %if.then20 ], [ %mul, %if.then8 ], [ %bf.cast, %sw.bb ], [ 2, %if.end48.sw.epilog66.sink.split_crit_edge ], [ %switch.load, %if.end35 ]
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.store.select.sink, ptr %val, align 4
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %sw.epilog66.sink.split, %sw.bb40.sw.epilog66_crit_edge, %sw.bb27.sw.epilog66_crit_edge, %sw.bb10.sw.epilog66_crit_edge, %sw.bb1.sw.epilog66_crit_edge, %entry.sw.epilog66_crit_edge
  %ret.0 = phi i32 [ -61, %sw.bb1.sw.epilog66_crit_edge ], [ -61, %sw.bb10.sw.epilog66_crit_edge ], [ -61, %sw.bb27.sw.epilog66_crit_edge ], [ -61, %sw.bb40.sw.epilog66_crit_edge ], [ -19, %entry.sw.epilog66_crit_edge ], [ 0, %sw.epilog66.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_charger_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq_base = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %irq, %3
  %4 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %sub, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 4, label %do.body32
    i32 0, label %entry.do.body52_crit_edge
    i32 3, label %do.body73
    i32 6, label %do.end95
    i32 5, label %do.body98
    i32 8, label %sw.bb117
    i32 9, label %do.body139
    i32 10, label %sw.bb158
    i32 7, label %sw.bb179
  ]

entry.do.body52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ac_online = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %ac_online to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %ac_online, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %ac_online, align 4
  %set_charger.i = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %set_charger.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_charger.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then3.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then3.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %7(i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %sw.bb.if.end.i_crit_edge
  %gpm.i = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %gpm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpm.i, align 4
  %call5.i = tail call i32 @max8925_set_bits(ptr noundef %9, i32 noundef 124, i8 noundef zeroext -128, i8 noundef zeroext 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_charger.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %__set_charger.exit)) #6
          to label %if.then20.i [label %__set_charger.exit], !srcloc !156

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_charger.__UNIQUE_ID_ddebug288, ptr noundef %11, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #6
  br label %__set_charger.exit

__set_charger.exit:                               ; preds = %if.then20.i, %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then [label %sw.epilog], !srcloc !156

if.then:                                          ; preds = %__set_charger.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug289, ptr noundef %13, ptr noundef nonnull @.str.52) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %ac_online7 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 7
  %14 = ptrtoint ptr %ac_online7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load8 = load i16, ptr %ac_online7, align 4
  %bf.clear9 = and i16 %bf.load8, 32767
  store i16 %bf.clear9, ptr %ac_online7, align 4
  %gpm6.i = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %gpm6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpm6.i, align 4
  %call7.i = tail call i32 @max8925_set_bits(ptr noundef %16, i32 noundef 124, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %set_charger8.i = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 8
  %17 = ptrtoint ptr %set_charger8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_charger8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %sw.bb6.do.body.i_crit_edge, label %if.then10.i

sw.bb6.do.body.i_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then10.i:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 %18(i32 noundef 0) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.then10.i, %sw.bb6.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_charger.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %__set_charger.exit247)) #6
          to label %if.then20.i246 [label %__set_charger.exit247], !srcloc !156

if.then20.i246:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_charger.__UNIQUE_ID_ddebug288, ptr noundef %20, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #6
  br label %__set_charger.exit247

__set_charger.exit247:                            ; preds = %if.then20.i246, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then26 [label %sw.epilog], !srcloc !156

if.then26:                                        ; preds = %__set_charger.exit247
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug290, ptr noundef %22, ptr noundef nonnull @.str.53) #6
  br label %sw.epilog

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %do.body52)) #6
          to label %if.then46 [label %do.body52], !srcloc !156

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug291, ptr noundef %24, ptr noundef nonnull @.str.54) #6
  br label %do.body52

do.body52:                                        ; preds = %if.then46, %do.body32, %entry.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %do.end70)) #6
          to label %if.then66 [label %do.end70], !srcloc !156

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug292, ptr noundef %26, ptr noundef nonnull @.str.55) #6
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body52
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %gpm6.i248 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %gpm6.i248 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpm6.i248, align 4
  %call7.i249 = tail call i32 @max8925_set_bits(ptr noundef %30, i32 noundef 124, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %set_charger8.i250 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 8
  %31 = ptrtoint ptr %set_charger8.i250 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_charger8.i250, align 4
  %tobool9.not.i251 = icmp eq ptr %32, null
  br i1 %tobool9.not.i251, label %do.end70.do.body.i254_crit_edge, label %if.then10.i253

do.end70.do.body.i254_crit_edge:                  ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i254

if.then10.i253:                                   ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i252 = tail call i32 %32(i32 noundef 0) #6
  br label %do.body.i254

do.body.i254:                                     ; preds = %if.then10.i253, %do.end70.do.body.i254_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_charger.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then20.i255 [label %sw.epilog], !srcloc !156

if.then20.i255:                                   ; preds = %do.body.i254
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_charger.__UNIQUE_ID_ddebug288, ptr noundef %34, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #6
  br label %sw.epilog

do.body73:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then87 [label %sw.epilog], !srcloc !156

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug293, ptr noundef %36, ptr noundef nonnull @.str.56) #6
  br label %sw.epilog

do.end95:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.57) #9
  br label %sw.epilog

do.body98:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then112 [label %sw.epilog], !srcloc !156

if.then112:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug294, ptr noundef %40, ptr noundef nonnull @.str.59) #6
  br label %sw.epilog

sw.bb117:                                         ; preds = %entry
  %gpm6.i257 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 1
  %41 = ptrtoint ptr %gpm6.i257 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpm6.i257, align 4
  %call7.i258 = tail call i32 @max8925_set_bits(ptr noundef %42, i32 noundef 124, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %set_charger8.i259 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 8
  %43 = ptrtoint ptr %set_charger8.i259 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_charger8.i259, align 4
  %tobool9.not.i260 = icmp eq ptr %44, null
  br i1 %tobool9.not.i260, label %sw.bb117.do.body.i263_crit_edge, label %if.then10.i262

sw.bb117.do.body.i263_crit_edge:                  ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i263

if.then10.i262:                                   ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i261 = tail call i32 %44(i32 noundef 0) #6
  br label %do.body.i263

do.body.i263:                                     ; preds = %if.then10.i262, %sw.bb117.do.body.i263_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_charger.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %__set_charger.exit265)) #6
          to label %if.then20.i264 [label %__set_charger.exit265], !srcloc !156

if.then20.i264:                                   ; preds = %do.body.i263
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_charger.__UNIQUE_ID_ddebug288, ptr noundef %46, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #6
  br label %__set_charger.exit265

__set_charger.exit265:                            ; preds = %if.then20.i264, %do.body.i263
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then133 [label %sw.epilog], !srcloc !156

if.then133:                                       ; preds = %__set_charger.exit265
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug295, ptr noundef %48, ptr noundef nonnull @.str.60) #6
  br label %sw.epilog

do.body139:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then153 [label %sw.epilog], !srcloc !156

if.then153:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug296, ptr noundef %50, ptr noundef nonnull @.str.61) #6
  br label %sw.epilog

sw.bb158:                                         ; preds = %entry
  %gpm6.i266 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 1
  %51 = ptrtoint ptr %gpm6.i266 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gpm6.i266, align 4
  %call7.i267 = tail call i32 @max8925_set_bits(ptr noundef %52, i32 noundef 124, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %set_charger8.i268 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 8
  %53 = ptrtoint ptr %set_charger8.i268 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_charger8.i268, align 4
  %tobool9.not.i269 = icmp eq ptr %54, null
  br i1 %tobool9.not.i269, label %sw.bb158.do.body.i272_crit_edge, label %if.then10.i271

sw.bb158.do.body.i272_crit_edge:                  ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i272

if.then10.i271:                                   ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i270 = tail call i32 %54(i32 noundef 0) #6
  br label %do.body.i272

do.body.i272:                                     ; preds = %if.then10.i271, %sw.bb158.do.body.i272_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_charger.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %__set_charger.exit274)) #6
          to label %if.then20.i273 [label %__set_charger.exit274], !srcloc !156

if.then20.i273:                                   ; preds = %do.body.i272
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_charger.__UNIQUE_ID_ddebug288, ptr noundef %56, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #6
  br label %__set_charger.exit274

__set_charger.exit274:                            ; preds = %if.then20.i273, %do.body.i272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then174 [label %sw.epilog], !srcloc !156

if.then174:                                       ; preds = %__set_charger.exit274
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug297, ptr noundef %58, ptr noundef nonnull @.str.62) #6
  br label %sw.epilog

sw.bb179:                                         ; preds = %entry
  %gpm6.i275 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 1
  %59 = ptrtoint ptr %gpm6.i275 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gpm6.i275, align 4
  %call7.i276 = tail call i32 @max8925_set_bits(ptr noundef %60, i32 noundef 124, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %set_charger8.i277 = getelementptr inbounds %struct.max8925_power_info, ptr %data, i32 0, i32 8
  %61 = ptrtoint ptr %set_charger8.i277 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_charger8.i277, align 4
  %tobool9.not.i278 = icmp eq ptr %62, null
  br i1 %tobool9.not.i278, label %sw.bb179.do.body.i281_crit_edge, label %if.then10.i280

sw.bb179.do.body.i281_crit_edge:                  ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i281

if.then10.i280:                                   ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i279 = tail call i32 %62(i32 noundef 0) #6
  br label %do.body.i281

do.body.i281:                                     ; preds = %if.then10.i280, %sw.bb179.do.body.i281_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_charger.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %__set_charger.exit283)) #6
          to label %if.then20.i282 [label %__set_charger.exit283], !srcloc !156

if.then20.i282:                                   ; preds = %do.body.i281
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_charger.__UNIQUE_ID_ddebug288, ptr noundef %64, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #6
  br label %__set_charger.exit283

__set_charger.exit283:                            ; preds = %if.then20.i282, %do.body.i281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_charger_handler.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8925_charger_handler, %sw.epilog)) #6
          to label %if.then195 [label %sw.epilog], !srcloc !156

if.then195:                                       ; preds = %__set_charger.exit283
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_charger_handler.__UNIQUE_ID_ddebug298, ptr noundef %66, ptr noundef nonnull @.str.63) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then195, %__set_charger.exit283, %if.then174, %__set_charger.exit274, %if.then153, %do.body139, %if.then133, %__set_charger.exit265, %if.then112, %do.body98, %do.end95, %if.then87, %do.body73, %if.then20.i255, %do.body.i254, %if.then26, %__set_charger.exit247, %if.then, %__set_charger.exit, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !144, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_max8925_power__299_590_max8925_power_driver_init6, !1, !"__initcall__kmod_max8925_power__299_590_max8925_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max8925_power.c", i32 590, i32 1}
!2 = !{ptr @__exitcall_max8925_power_driver_exit, !1, !"__exitcall_max8925_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file300, !4, !"__UNIQUE_ID_file300", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max8925_power.c", i32 592, i32 1}
!5 = !{ptr @__UNIQUE_ID_license301, !4, !"__UNIQUE_ID_license301", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description302, !7, !"__UNIQUE_ID_description302", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/max8925_power.c", i32 593, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias303, !9, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/max8925_power.c", i32 594, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max8925_power.c", i32 586, i32 11}
!12 = !{ptr @max8925_power_driver, !13, !"max8925_power_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max8925_power.c", i32 582, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max8925_power.c", i32 514, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max8925_power_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max8925_power_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/max8925_power.c", i32 468, i32 36}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/max8925_power.c", i32 470, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max8925_power_dt_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @max8925_power_dt_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/max8925_power.c", i32 480, i32 27}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/max8925_power.c", i32 481, i32 27}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/max8925_power.c", i32 482, i32 27}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/max8925_power.c", i32 483, i32 27}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/max8925_power.c", i32 484, i32 27}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/max8925_power.c", i32 349, i32 11}
!41 = !{ptr @ac_desc, !42, !"ac_desc", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/max8925_power.c", i32 348, i32 39}
!43 = !{ptr @max8925_ac_props, !44, !"max8925_ac_props", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/max8925_power.c", i32 222, i32 35}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/max8925_power.c", i32 357, i32 11}
!47 = !{ptr @usb_desc, !48, !"usb_desc", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/max8925_power.c", i32 356, i32 39}
!49 = !{ptr @max8925_usb_props, !50, !"max8925_usb_props", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/max8925_power.c", i32 256, i32 35}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/max8925_power.c", i32 365, i32 11}
!53 = !{ptr @battery_desc, !54, !"battery_desc", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/max8925_power.c", i32 364, i32 39}
!55 = !{ptr @max8925_battery_props, !56, !"max8925_battery_props", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/max8925_power.c", i32 340, i32 35}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/max8925_power.c", i32 387, i32 2}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @max8925_init_charger._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @max8925_init_charger._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/max8925_power.c", i32 389, i32 3}
!65 = !{ptr @max8925_init_charger._entry.21, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @max8925_init_charger._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/max8925_power.c", i32 390, i32 3}
!69 = !{ptr @max8925_init_charger._entry.24, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @max8925_init_charger._entry_ptr.25, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/max8925_power.c", i32 393, i32 3}
!73 = !{ptr @max8925_init_charger._entry.27, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @max8925_init_charger._entry_ptr.28, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/max8925_power.c", i32 394, i32 3}
!77 = !{ptr @max8925_init_charger._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @max8925_init_charger._entry_ptr.31, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/max8925_power.c", i32 396, i32 2}
!81 = !{ptr @max8925_init_charger._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @max8925_init_charger._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/max8925_power.c", i32 397, i32 2}
!85 = !{ptr @max8925_init_charger._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @max8925_init_charger._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/max8925_power.c", i32 398, i32 2}
!89 = !{ptr @max8925_init_charger._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @max8925_init_charger._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/max8925_power.c", i32 399, i32 2}
!93 = !{ptr @max8925_init_charger._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @max8925_init_charger._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/max8925_power.c", i32 400, i32 2}
!97 = !{ptr @max8925_init_charger._entry.45, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @max8925_init_charger._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/max8925_power.c", i32 401, i32 2}
!101 = !{ptr @max8925_init_charger._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @max8925_init_charger._entry_ptr.49, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/max8925_power.c", i32 114, i32 3}
!105 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug289, !104, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/max8925_power.c", i32 119, i32 3}
!110 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug290, !109, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/max8925_power.c", i32 123, i32 3}
!113 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug291, !112, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/max8925_power.c", i32 126, i32 3}
!116 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug292, !115, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/max8925_power.c", i32 131, i32 3}
!119 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug293, !118, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/max8925_power.c", i32 135, i32 3}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @max8925_charger_handler._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @max8925_charger_handler._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/power/supply/max8925_power.c", i32 138, i32 3}
!127 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug294, !126, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/max8925_power.c", i32 142, i32 3}
!130 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug295, !129, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/max8925_power.c", i32 145, i32 3}
!133 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug296, !132, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/max8925_power.c", i32 149, i32 3}
!136 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug297, !135, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/max8925_power.c", i32 153, i32 3}
!139 = !{ptr @max8925_charger_handler.__UNIQUE_ID_ddebug298, !138, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/max8925_power.c", i32 100, i32 2}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @__set_charger.__UNIQUE_ID_ddebug288, !141, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!144 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
!156 = !{i64 2148966737, i64 2148966742, i64 2148966755, i64 2148966799, i64 2148966833, i64 2148966854}
