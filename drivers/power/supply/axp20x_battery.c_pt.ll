; ModuleID = '/llk/IR_all_yes/drivers/power/supply/axp20x_battery.c_pt.bc'
source_filename = "../drivers/power/supply/axp20x_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.axp_data = type { i32, i32, i8, ptr, ptr }
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
%struct.axp20x_batt_ps = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__initcall__kmod_axp20x_battery__187_657_axp20x_batt_driver_init6 = internal global ptr @axp20x_batt_driver_init, section ".initcall6.init", align 4
@axp20x_batt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp20x_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axp20x_battery_ps_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp20x_batt_driver_exit = internal global ptr @axp20x_batt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [83 x i8] c"axp20x_battery.description=Battery power supply driver for AXP20X and AXP22X PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [73 x i8] c"axp20x_battery.author=Quentin Schulz <quentin.schulz@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [56 x i8] c"axp20x_battery.file=drivers/power/supply/axp20x_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [27 x i8] c"axp20x_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"axp20x-battery-power-supply\00", [36 x i8] zeroinitializer }, align 32
@axp20x_battery_ps_id = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp209-battery-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp209_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp221-battery-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp221_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp813-battery-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp813_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"batt_v\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"batt_chrg_i\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"batt_dischrg_i\00", [17 x i8] zeroinitializer }, align 32
@axp20x_batt_ps_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.15, i32 1, ptr null, i32 0, ptr @axp20x_battery_props, i32 11, ptr @axp20x_battery_get_prop, ptr @axp20x_battery_set_prop, ptr @axp20x_battery_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@axp20x_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 613, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register power supply: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axp20x_power_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/axp20x_battery.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_power_probe._entry_ptr = internal global ptr @axp20x_power_probe._entry, section ".printk_index", align 4
@axp20x_power_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 624, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"couldn't set voltage_min_design\0A\00", [63 x i8] zeroinitializer }, align 32
@axp20x_power_probe._entry_ptr.11 = internal global ptr @axp20x_power_probe._entry.9, section ".printk_index", align 4
@axp20x_power_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 632, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"couldn't set constant charge current from DT: fallback to minimum value\0A\00", [55 x i8] zeroinitializer }, align 32
@axp20x_power_probe._entry_ptr.14 = internal global ptr @axp20x_power_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axp20x-battery\00", [17 x i8] zeroinitializer }, align 32
@axp20x_battery_props = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 3, i32 4, i32 0, i32 12, i32 17, i32 29, i32 30, i32 2, i32 10, i32 11, i32 47], [52 x i8] zeroinitializer }, align 32
@axp20x_set_max_constant_charge_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 425, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [143 x i8], [49 x i8] } { [143 x i8] c"Setting max constant charge current higher than previously defined. Note that increasing the constant charge current may damage your battery.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"axp20x_set_max_constant_charge_current\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@axp20x_set_max_constant_charge_current._entry_ptr = internal global ptr @axp20x_set_max_constant_charge_current._entry, section ".printk_index", align 4
@axp209_data = internal constant { %struct.axp_data, [44 x i8] } { %struct.axp_data { i32 100000, i32 300000, i8 0, ptr @axp20x_battery_get_max_voltage, ptr @axp20x_battery_set_max_voltage }, [44 x i8] zeroinitializer }, align 32
@axp221_data = internal constant { %struct.axp_data, [44 x i8] } { %struct.axp_data { i32 150000, i32 300000, i8 1, ptr @axp22x_battery_get_max_voltage, ptr @axp22x_battery_set_max_voltage }, [44 x i8] zeroinitializer }, align 32
@axp813_data = internal constant { %struct.axp_data, [44 x i8] } { %struct.axp_data { i32 200000, i32 200000, i8 1, ptr @axp813_battery_get_max_voltage, ptr @axp20x_battery_set_max_voltage }, [44 x i8] zeroinitializer }, align 32
@switch.table.axp20x_battery_get_max_voltage = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4100000, i32 4150000, i32 4200000, i32 4360000], [16 x i8] zeroinitializer }, align 32
@switch.table.axp22x_battery_get_max_voltage = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4100000, i32 4220000, i32 4200000, i32 4240000], [16 x i8] zeroinitializer }, align 32
@switch.table.axp813_battery_get_max_voltage = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4100000, i32 4150000, i32 4200000, i32 4350000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 2, i64 3, i64 4, i64 10, i64 11, i64 12, i64 17, i64 29, i64 30, i64 47]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 10, i64 11, i64 29, i64 30]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 10, i64 11, i64 29]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 4100000, i64 4150000, i64 4200000]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4100000, i64 4200000]
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"axp20x_batt_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 649, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 652, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"axp20x_battery_ps_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 546, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 577, i32 57 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 585, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 593, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"axp20x_batt_ps_desc\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 513, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 612, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 623, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 631, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 514, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"axp20x_battery_props\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 489, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 424, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"axp209_data\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 523, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"axp221_data\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 530, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"axp813_data\00", align 1
@___asan_gen_.100 = private constant [41 x i8] c"../drivers/power/supply/axp20x_battery.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 538, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant [44 x i8] c"switch.table.axp20x_battery_get_max_voltage\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [44 x i8] c"switch.table.axp22x_battery_get_max_voltage\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [44 x i8] c"switch.table.axp813_battery_get_max_voltage\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_axp20x_batt_driver_exit, ptr @__initcall__kmod_axp20x_battery__187_657_axp20x_batt_driver_init6, ptr @axp20x_batt_driver_exit, ptr @axp20x_power_probe._entry, ptr @axp20x_power_probe._entry.12, ptr @axp20x_power_probe._entry.9, ptr @axp20x_power_probe._entry_ptr, ptr @axp20x_power_probe._entry_ptr.11, ptr @axp20x_power_probe._entry_ptr.14, ptr @axp20x_set_max_constant_charge_current._entry, ptr @axp20x_set_max_constant_charge_current._entry_ptr, ptr @axp20x_batt_driver, ptr @.str, ptr @axp20x_battery_ps_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @axp20x_batt_ps_desc, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @axp20x_battery_props, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @axp209_data, ptr @axp221_data, ptr @axp813_data, ptr @switch.table.axp20x_battery_get_max_voltage, ptr @switch.table.axp22x_battery_get_max_voltage, ptr @switch.table.axp813_battery_get_max_voltage], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_batt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_battery_ps_id to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_batt_ps_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_power_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_power_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_battery_props to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_set_max_constant_charge_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp209_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp221_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_battery_get_max_voltage to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp22x_battery_get_max_voltage to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp813_battery_get_max_voltage to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_batt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_batt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_batt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_batt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %0 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #6
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %info, align 4, !annotation !65
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call zeroext i1 @of_device_is_available(ptr noundef %4) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev8, align 4
  %call10 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %batt_v = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %batt_v to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %batt_v, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call10 to i32
  %cmp = icmp eq ptr %call10, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %7
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  %call22 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %batt_chrg_i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %batt_chrg_i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %batt_chrg_i, align 4
  %cmp.i142 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call22 to i32
  %cmp28 = icmp eq ptr %call22, inttoptr (i32 -19 to ptr)
  %spec.select146 = select i1 %cmp28, i32 -517, i32 %9
  br label %cleanup

if.end33:                                         ; preds = %if.end20
  %call35 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #6
  %batt_dischrg_i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %batt_dischrg_i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35, ptr %batt_dischrg_i, align 4
  %cmp.i143 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then38, label %if.end46

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call35 to i32
  %cmp41 = icmp eq ptr %call35, inttoptr (i32 -19 to ptr)
  %spec.select147 = select i1 %cmp41, i32 -517, i32 %11
  br label %cleanup

if.end46:                                         ; preds = %if.end33
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %call48 = tail call ptr @dev_get_regmap(ptr noundef %13, ptr noundef null) #6
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call48, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %16 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %drv_data, align 4
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %19 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %psy_cfg, align 4
  %call52 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %data = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call52, ptr %data, align 4
  %call54 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @axp20x_batt_ps_desc, ptr noundef nonnull %psy_cfg) #6
  %batt = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %batt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call54, ptr %batt, align 4
  %cmp.i144 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.end, label %if.end63

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %22) #9
  %23 = ptrtoint ptr %batt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %batt, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end46
  %call65 = call i32 @power_supply_get_battery_info(ptr noundef %call54, ptr noundef nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end63.if.end88_crit_edge

if.end63.if.end88_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then67:                                        ; preds = %if.end63
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %voltage_min_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %voltage_min_design_uv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %voltage_min_design_uv, align 4
  %constant_charge_current_max_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %27, i32 0, i32 11
  %30 = ptrtoint ptr %constant_charge_current_max_ua to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %constant_charge_current_max_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp68 = icmp sgt i32 %29, 0
  br i1 %cmp68, label %land.lhs.true, label %if.then67.if.end76_crit_edge

if.then67.if.end76_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true:                                    ; preds = %if.then67
  %call69 = call fastcc i32 @axp20x_set_voltage_min_design(ptr noundef nonnull %call.i, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true.if.end76_crit_edge, label %do.end74

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.end74:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %land.lhs.true.if.end76_crit_edge, %if.then67.if.end76_crit_edge
  %max_ccc = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %max_ccc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_ccc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp77 = icmp slt i32 %31, 1
  br i1 %cmp77, label %if.end76.do.end83_crit_edge, label %lor.lhs.false

if.end76.do.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

lor.lhs.false:                                    ; preds = %if.end76
  %call78 = call fastcc i32 @axp20x_set_constant_charge_current(ptr noundef nonnull %call.i, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %lor.lhs.false.if.end88_crit_edge, label %lor.lhs.false.do.end83_crit_edge

lor.lhs.false.do.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

lor.lhs.false.if.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

do.end83:                                         ; preds = %lor.lhs.false.do.end83_crit_edge, %if.end76.do.end83_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %33 = ptrtoint ptr %max_ccc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 300000, ptr %max_ccc, align 4
  %call86 = call fastcc i32 @axp20x_set_constant_charge_current(ptr noundef nonnull %call.i, i32 noundef 300000)
  br label %if.end88

if.end88:                                         ; preds = %do.end83, %lor.lhs.false.if.end88_crit_edge, %if.end63.if.end88_crit_edge
  %max_ccc89 = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call.i145 = call i32 @regmap_read(ptr noundef %35, i32 noundef 51, ptr noundef %max_ccc89) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %max_ccc89 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_ccc89, align 4
  %and.i = and i32 %37, 15
  store i32 %and.i, ptr %max_ccc89, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %mul.i = mul i32 %41, %and.i
  %ccc_offset.i = getelementptr inbounds %struct.axp_data, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %ccc_offset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ccc_offset.i, align 4
  %add.i = add i32 %mul.i, %43
  store i32 %add.i, ptr %max_ccc89, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end88.cleanup_crit_edge, %do.end, %if.then38, %if.then25, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ], [ 0, %if.end.i ], [ %spec.select, %if.then13 ], [ %spec.select146, %if.then25 ], [ %spec.select147, %if.then38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axp20x_set_voltage_min_design(ptr nocapture noundef readonly %axp_batt, i32 noundef %min_voltage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %min_voltage, -2600000
  %div = sdiv i32 %sub, 100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99999, i32 %sub)
  %cmp = icmp slt i32 %sub, -99999
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div)
  %cmp1 = icmp ugt i32 %div, 7
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %axp_batt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %axp_batt, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 49, i32 noundef 7, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axp20x_set_constant_charge_current(ptr nocapture noundef readonly %axp_batt, i32 noundef %charge_current) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_ccc = getelementptr inbounds %struct.axp20x_batt_ps, ptr %axp_batt, i32 0, i32 6
  %0 = ptrtoint ptr %max_ccc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_ccc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %charge_current)
  %cmp = icmp ult i32 %1, %charge_current
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.axp20x_batt_ps, ptr %axp_batt, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ccc_offset = getelementptr inbounds %struct.axp_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ccc_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ccc_offset, align 4
  %sub = sub i32 %charge_current, %5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %div = sdiv i32 %sub, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div)
  %cmp2 = icmp ugt i32 %div, 15
  br i1 %cmp2, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %axp_batt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %axp_batt, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 51, i32 noundef 15, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end5 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_battery_get_prop(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %val1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1) #6
  %1 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val1, align 4, !annotation !65
  %2 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge158
    i32 0, label %sw.bb4
    i32 2, label %sw.bb29
    i32 29, label %sw.bb39
    i32 30, label %sw.bb44
    i32 17, label %sw.bb45
    i32 47, label %sw.bb61
    i32 10, label %sw.bb82
    i32 11, label %sw.bb85
    i32 12, label %sw.bb93
  ]

entry.sw.bb_crit_edge158:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge158
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = lshr i32 %6, 5
  %and.lobit = and i32 %and, 1
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.lobit, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %call6 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sw.bb4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %and10 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %batt_dischrg_i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 4
  %13 = ptrtoint ptr %batt_dischrg_i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %batt_dischrg_i, align 4
  %call14 = call i32 @iio_read_channel_processed(ptr noundef %14, ptr noundef nonnull %val1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %15 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %call22 = call i32 @regmap_read(ptr noundef %19, i32 noundef 185, ptr noundef nonnull %val1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val1, align 4
  %and26 = and i32 %21, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %and26)
  %cmp = icmp eq i32 %and26, 100
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %call31 = call i32 @regmap_read(ptr noundef %25, i32 noundef 1, ptr noundef nonnull %val1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %sw.bb29
  %26 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val1, align 4
  %and35 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @regmap_read(ptr noundef %31, i32 noundef 51, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %axp20x_get_constant_charge_current.exit.thread, label %sw.bb39.cleanup_crit_edge

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

axp20x_get_constant_charge_current.exit.thread:   ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %and.i = and i32 %33, 15
  store i32 %and.i, ptr %val, align 4
  %data.i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 7
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %mul.i = mul i32 %37, %and.i
  %ccc_offset.i = getelementptr inbounds %struct.axp_data, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %ccc_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ccc_offset.i, align 4
  %add.i = add i32 %mul.i, %39
  store i32 %add.i, ptr %val, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %max_ccc = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 6
  %40 = ptrtoint ptr %max_ccc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_ccc, align 4
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call, align 4
  %call47 = call i32 @regmap_read(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %sw.bb45.cleanup_crit_edge

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %sw.bb45
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg, align 4
  %and51 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %batt_chrg_i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 3
  %batt_dischrg_i55 = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 4
  %chan.0.in = select i1 %tobool52.not, ptr %batt_dischrg_i55, ptr %batt_chrg_i
  %47 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  %call57 = call i32 @iio_read_channel_processed(ptr noundef %chan.0, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %mul = mul i32 %49, 1000
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  %call63 = call i32 @regmap_read(ptr noundef %51, i32 noundef 1, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %sw.bb61.cleanup_crit_edge

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %sw.bb61
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg, align 4
  %and67 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 100, ptr %val, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %55 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call, align 4
  %call72 = call i32 @regmap_read(ptr noundef %56, i32 noundef 185, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  %data = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 7
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %has_fg_valid = getelementptr inbounds %struct.axp_data, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %has_fg_valid to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %has_fg_valid, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool76.not = icmp eq i8 %60, 0
  br i1 %tobool76.not, label %if.end75.if.end80_crit_edge, label %land.lhs.true

if.end75.if.end80_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end75
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg, align 4
  %and77 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end80_crit_edge

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %land.lhs.true.if.end80_crit_edge, %if.end75.if.end80_crit_edge
  %63 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg, align 4
  %and81 = and i32 %64, 127
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and81, ptr %val, align 4
  br label %cleanup

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data83 = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 7
  %66 = ptrtoint ptr %data83 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data83, align 4
  %get_max_voltage = getelementptr inbounds %struct.axp_data, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %get_max_voltage to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_max_voltage, align 4
  %call84 = tail call i32 %69(ptr noundef %call, ptr noundef %val) #6
  br label %cleanup

sw.bb85:                                          ; preds = %entry
  %70 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call, align 4
  %call87 = call i32 @regmap_read(ptr noundef %71, i32 noundef 49, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %sw.bb85.cleanup_crit_edge

sw.bb85.cleanup_crit_edge:                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end90:                                         ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg, align 4
  %and91 = and i32 %73, 7
  %mul92 = mul nuw nsw i32 %and91, 100000
  %add = add nuw nsw i32 %mul92, 2600000
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add, ptr %val, align 4
  br label %cleanup

sw.bb93:                                          ; preds = %entry
  %batt_v = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 5
  %75 = ptrtoint ptr %batt_v to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %batt_v, align 4
  %call94 = tail call i32 @iio_read_channel_processed(ptr noundef %76, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %sw.bb93.cleanup_crit_edge

sw.bb93.cleanup_crit_edge:                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end97:                                         ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val, align 4
  %mul98 = mul i32 %78, 1000
  store i32 %mul98, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %sw.bb93.cleanup_crit_edge, %if.end90, %sw.bb85.cleanup_crit_edge, %sw.bb82, %if.end80, %land.lhs.true.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.then69, %sw.bb61.cleanup_crit_edge, %if.end60, %if.end50.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %sw.bb44, %axp20x_get_constant_charge_current.exit.thread, %sw.bb39.cleanup_crit_edge, %if.end38, %if.then37, %sw.bb29.cleanup_crit_edge, %if.else, %if.then27, %if.end20.cleanup_crit_edge, %if.then19, %if.end13.cleanup_crit_edge, %if.then12, %sw.bb4.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call84, %sw.bb82 ], [ 0, %if.then69 ], [ 0, %if.then37 ], [ 0, %if.then12 ], [ 0, %if.then19 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb4.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call31, %sw.bb29.cleanup_crit_edge ], [ %call47, %sw.bb45.cleanup_crit_edge ], [ %call57, %if.end50.cleanup_crit_edge ], [ %call63, %sw.bb61.cleanup_crit_edge ], [ %call72, %if.end70.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call87, %sw.bb85.cleanup_crit_edge ], [ %call94, %sw.bb93.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb39.cleanup_crit_edge ], [ 0, %axp20x_get_constant_charge_current.exit.thread ], [ 0, %if.then27 ], [ 0, %if.else ], [ 0, %if.end97 ], [ 0, %if.end90 ], [ 0, %if.end80 ], [ 0, %if.end60 ], [ 0, %sw.bb44 ], [ 0, %if.end38 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_battery_set_prop(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %current_cc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 11, label %sw.bb
    i32 10, label %sw.bb2
    i32 29, label %sw.bb4
    i32 30, label %sw.bb6
    i32 0, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %sub.i = add i32 %2, -2600000
  %div.i = sdiv i32 %sub.i, 100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99999, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, -99999
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div.i)
  %cmp1.i = icmp ugt i32 %div.i, 7
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 49, i32 noundef 7, i32 noundef %div.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %set_max_voltage = getelementptr inbounds %struct.axp_data, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %set_max_voltage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_max_voltage, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %call3 = tail call i32 %8(ptr noundef %call, i32 noundef %10) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %max_ccc.i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %max_ccc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_ccc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.i24 = icmp ult i32 %14, %12
  br i1 %cmp.i24, label %sw.bb4.cleanup_crit_edge, label %if.end.i27

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i27:                                       ; preds = %sw.bb4
  %data.i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %ccc_offset.i = getelementptr inbounds %struct.axp_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ccc_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ccc_offset.i, align 4
  %sub.i25 = sub i32 %12, %18
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %div.i26 = sdiv i32 %sub.i25, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i26)
  %cmp2.i = icmp ugt i32 %div.i26, 15
  br i1 %cmp2.i, label %if.end.i27.cleanup_crit_edge, label %if.end5.i

if.end.i27.cleanup_crit_edge:                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %call.i.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 51, i32 noundef 15, i32 noundef %div.i26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %data.i30 = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 7
  %25 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i30, align 4
  %ccc_offset.i31 = getelementptr inbounds %struct.axp_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ccc_offset.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ccc_offset.i31, align 4
  %sub.i32 = sub i32 %24, %28
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 4
  %div.i33 = sdiv i32 %sub.i32, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i33)
  %cmp.i34 = icmp ugt i32 %div.i33, 15
  br i1 %cmp.i34, label %sw.bb6.cleanup_crit_edge, label %if.end.i36

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i36:                                       ; preds = %sw.bb6
  %mul.i = mul i32 %div.i33, %30
  %add.i = add i32 %mul.i, %28
  %max_ccc.i35 = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 6
  %31 = ptrtoint ptr %max_ccc.i35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_ccc.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %32)
  %cmp7.i = icmp ugt i32 %add.i, %32
  br i1 %cmp7.i, label %do.end.i, label %if.then11.critedge.i

do.end.i:                                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.axp20x_batt_ps, ptr %call, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.16) #9
  %35 = ptrtoint ptr %max_ccc.i35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %max_ccc.i35, align 4
  br label %cleanup

if.then11.critedge.i:                             ; preds = %if.end.i36
  %36 = ptrtoint ptr %max_ccc.i35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %max_ccc.i35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_cc.i) #6
  %37 = ptrtoint ptr %current_cc.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %current_cc.i, align 4, !annotation !65
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  %call.i.i37 = call i32 @regmap_read(ptr noundef %39, i32 noundef 51, ptr noundef nonnull %current_cc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool.not.i.i = icmp eq i32 %call.i.i37, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then11.critedge.i.axp20x_get_constant_charge_current.exit.i_crit_edge

if.then11.critedge.i.axp20x_get_constant_charge_current.exit.i_crit_edge: ; preds = %if.then11.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp20x_get_constant_charge_current.exit.i

if.end.i.i:                                       ; preds = %if.then11.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %current_cc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %current_cc.i, align 4
  %and.i.i = and i32 %41, 15
  store i32 %and.i.i, ptr %current_cc.i, align 4
  %42 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i30, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %mul.i.i = mul i32 %45, %and.i.i
  %ccc_offset.i.i = getelementptr inbounds %struct.axp_data, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %ccc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ccc_offset.i.i, align 4
  %add.i.i = add i32 %mul.i.i, %47
  store i32 %add.i.i, ptr %current_cc.i, align 4
  br label %axp20x_get_constant_charge_current.exit.i

axp20x_get_constant_charge_current.exit.i:        ; preds = %if.end.i.i, %if.then11.critedge.i.axp20x_get_constant_charge_current.exit.i_crit_edge
  %48 = ptrtoint ptr %current_cc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %current_cc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %add.i)
  %cmp12.i = icmp sgt i32 %49, %add.i
  br i1 %cmp12.i, label %if.then13.i, label %axp20x_get_constant_charge_current.exit.i.if.end15.i_crit_edge

axp20x_get_constant_charge_current.exit.i.if.end15.i_crit_edge: ; preds = %axp20x_get_constant_charge_current.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then13.i:                                      ; preds = %axp20x_get_constant_charge_current.exit.i
  %50 = ptrtoint ptr %max_ccc.i35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_ccc.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add.i)
  %cmp.i.i = icmp ult i32 %51, %add.i
  br i1 %cmp.i.i, label %if.then13.i.if.end15.i_crit_edge, label %if.end.i34.i

if.then13.i.if.end15.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.end.i34.i:                                     ; preds = %if.then13.i
  %52 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i30, align 4
  %ccc_offset.i33.i = getelementptr inbounds %struct.axp_data, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ccc_offset.i33.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ccc_offset.i33.i, align 4
  %sub.i.i = sub i32 %add.i, %55
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 4
  %div.i.i = sdiv i32 %sub.i.i, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i.i)
  %cmp2.i.i = icmp ugt i32 %div.i.i, 15
  br i1 %cmp2.i.i, label %if.end.i34.i.if.end15.i_crit_edge, label %if.end5.i.i

if.end.i34.i.if.end15.i_crit_edge:                ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.end5.i.i:                                      ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 51, i32 noundef 15, i32 noundef %div.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end5.i.i, %if.end.i34.i.if.end15.i_crit_edge, %if.then13.i.if.end15.i_crit_edge, %axp20x_get_constant_charge_current.exit.i.if.end15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_cc.i) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %61, label %sw.bb8.cleanup_crit_edge [
    i32 1, label %sw.bb9
    i32 2, label %sw.bb8.sw.bb11_crit_edge
    i32 3, label %sw.bb8.sw.bb11_crit_edge40
  ]

sw.bb8.sw.bb11_crit_edge40:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

sw.bb8.sw.bb11_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 51, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb8.sw.bb11_crit_edge, %sw.bb8.sw.bb11_crit_edge40
  %65 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 51, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb9, %sw.bb8.cleanup_crit_edge, %if.end15.i, %do.end.i, %sw.bb6.cleanup_crit_edge, %if.end5.i, %if.end.i27.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb2, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i39, %sw.bb11 ], [ %call.i, %sw.bb9 ], [ %call3, %sw.bb2 ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i.i28, %if.end5.i ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %if.end.i27.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end15.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axp20x_battery_prop_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %psp, label %lor.rhs [
    i32 0, label %entry.lor.end_crit_edge
    i32 11, label %entry.lor.end_crit_edge11
    i32 10, label %entry.lor.end_crit_edge12
    i32 29, label %entry.lor.end_crit_edge13
  ]

entry.lor.end_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

entry.lor.end_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

entry.lor.end_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %psp)
  %cmp6 = icmp eq i32 %psp, 30
  %phi.cast = zext i1 %cmp6 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge, %entry.lor.end_crit_edge11, %entry.lor.end_crit_edge12, %entry.lor.end_crit_edge13
  %1 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %entry.lor.end_crit_edge11 ], [ 1, %entry.lor.end_crit_edge12 ], [ 1, %entry.lor.end_crit_edge13 ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_battery_get_max_voltage(ptr nocapture noundef readonly %axp20x_batt, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !65
  %1 = ptrtoint ptr %axp20x_batt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %axp20x_batt, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 51, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = lshr i32 %4, 5
  %5 = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.axp20x_battery_get_max_voltage, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_battery_set_max_voltage(ptr nocapture noundef readonly %axp20x_batt, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %val, label %entry.return_crit_edge [
    i32 4100000, label %entry.sw.epilog_crit_edge
    i32 4150000, label %sw.bb1
    i32 4200000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.addr.0 = phi i32 [ 64, %sw.bb2 ], [ 32, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %axp20x_batt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %axp20x_batt, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 51, i32 noundef 96, i32 noundef %val.addr.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp22x_battery_get_max_voltage(ptr nocapture noundef readonly %axp20x_batt, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !65
  %1 = ptrtoint ptr %axp20x_batt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %axp20x_batt, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 51, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = lshr i32 %4, 5
  %5 = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.axp22x_battery_get_max_voltage, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp22x_battery_set_max_voltage(ptr nocapture noundef readonly %axp20x_batt, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %val, label %entry.return_crit_edge [
    i32 4100000, label %entry.sw.epilog_crit_edge
    i32 4200000, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.addr.0 = phi i32 [ 64, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %axp20x_batt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %axp20x_batt, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 51, i32 noundef 96, i32 noundef %val.addr.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp813_battery_get_max_voltage(ptr nocapture noundef readonly %axp20x_batt, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !65
  %1 = ptrtoint ptr %axp20x_batt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %axp20x_batt, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 51, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = lshr i32 %4, 5
  %5 = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.axp813_battery_get_max_voltage, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_axp20x_battery__187_657_axp20x_batt_driver_init6, !1, !"__initcall__kmod_axp20x_battery__187_657_axp20x_batt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/axp20x_battery.c", i32 657, i32 1}
!2 = !{ptr @__exitcall_axp20x_batt_driver_exit, !1, !"__exitcall_axp20x_batt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/axp20x_battery.c", i32 659, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/axp20x_battery.c", i32 660, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/axp20x_battery.c", i32 661, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/axp20x_battery.c", i32 652, i32 12}
!12 = !{ptr @axp20x_batt_driver, !13, !"axp20x_batt_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/axp20x_battery.c", i32 649, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/axp20x_battery.c", i32 577, i32 57}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/axp20x_battery.c", i32 585, i32 8}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/axp20x_battery.c", i32 593, i32 11}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/axp20x_battery.c", i32 612, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @axp20x_power_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @axp20x_power_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/axp20x_battery.c", i32 623, i32 4}
!30 = !{ptr @axp20x_power_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @axp20x_power_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/axp20x_battery.c", i32 631, i32 4}
!34 = !{ptr @axp20x_power_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @axp20x_power_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/axp20x_battery.c", i32 514, i32 10}
!38 = !{ptr @axp20x_batt_ps_desc, !39, !"axp20x_batt_ps_desc", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/axp20x_battery.c", i32 513, i32 39}
!40 = !{ptr @axp20x_battery_props, !41, !"axp20x_battery_props", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/axp20x_battery.c", i32 489, i32 35}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/axp20x_battery.c", i32 424, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @axp20x_set_max_constant_charge_current._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @axp20x_set_max_constant_charge_current._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @axp20x_battery_ps_id, !49, !"axp20x_battery_ps_id", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/axp20x_battery.c", i32 546, i32 34}
!50 = !{ptr @axp209_data, !51, !"axp209_data", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/axp20x_battery.c", i32 523, i32 30}
!52 = !{ptr @axp221_data, !53, !"axp221_data", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/axp20x_battery.c", i32 530, i32 30}
!54 = !{ptr @axp813_data, !55, !"axp813_data", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/axp20x_battery.c", i32 538, i32 30}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i8 0, i8 2}
