; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max77693_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max77693_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.max77693_charger = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_max77693_charger__293_758_max77693_charger_driver_init6 = internal global ptr @max77693_charger_driver_init, section ".initcall6.init", align 4
@max77693_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77693_charger_probe, ptr @max77693_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77693_charger_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77693_charger_driver_exit = internal global ptr @max77693_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [62 x i8] c"max77693_charger.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [56 x i8] c"max77693_charger.description=Maxim 77693 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [60 x i8] c"max77693_charger.file=drivers/power/supply/max77693_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [29 x i8] c"max77693_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77693-charger\00", [47 x i8] zeroinitializer }, align 32
@max77693_charger_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77693-charger\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dev_attr_fast_charge_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fast_charge_timer_show, ptr @fast_charge_timer_store }, [36 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed: create fast charge timer sysfs entry\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77693_charger_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/max77693_charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry_ptr = internal global ptr @max77693_charger_probe._entry, section ".printk_index", align 4
@dev_attr_top_off_threshold_current = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @top_off_threshold_current_show, ptr @top_off_threshold_current_store }, [36 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed: create top off current sysfs entry\0A\00", [52 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry_ptr.8 = internal global ptr @max77693_charger_probe._entry.6, section ".printk_index", align 4
@dev_attr_top_off_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @top_off_timer_show, ptr @top_off_timer_store }, [36 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed: create top off timer sysfs entry\0A\00", [54 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry_ptr.11 = internal global ptr @max77693_charger_probe._entry.9, section ".printk_index", align 4
@max77693_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 1, ptr null, i32 0, ptr @max77693_charger_props, i32 7, ptr @max77693_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 716, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: power supply register\0A\00", [33 x i8] zeroinitializer }, align 32
@max77693_charger_probe._entry_ptr.14 = internal global ptr @max77693_charger_probe._entry.12, section ".printk_index", align 4
@max77693_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no charger OF node\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77693_dt_init\00", [47 x i8] zeroinitializer }, align 32
@max77693_dt_init._entry_ptr = internal global ptr @max77693_dt_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxim,constant-microvolt\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"maxim,min-system-microvolt\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"maxim,thermal-regulation-celsius\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"maxim,battery-overcurrent-microamp\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"maxim,charge-input-threshold-microvolt\00", [57 x i8] zeroinitializer }, align 32
@max77693_reg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error unlocking registers: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max77693_reg_init\00", [46 x i8] zeroinitializer }, align 32
@max77693_reg_init._entry_ptr = internal global ptr @max77693_reg_init._entry, section ".printk_index", align 4
@max77693_set_constant_volt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Wrong value for charging constant voltage\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max77693_set_constant_volt\00", [37 x i8] zeroinitializer }, align 32
@max77693_set_constant_volt._entry_ptr = internal global ptr @max77693_set_constant_volt._entry, section ".printk_index", align 4
@max77693_set_constant_volt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77693_charger\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Charging constant voltage: %u (0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@max77693_set_min_system_volt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Wrong value for minimum system regulation voltage\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max77693_set_min_system_volt\00", [35 x i8] zeroinitializer }, align 32
@max77693_set_min_system_volt._entry_ptr = internal global ptr @max77693_set_min_system_volt._entry, section ".printk_index", align 4
@max77693_set_min_system_volt.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Minimum system regulation voltage: %u (0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@max77693_set_thermal_regulation_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Wrong value for thermal regulation loop temperature\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"max77693_set_thermal_regulation_temp\00", [59 x i8] zeroinitializer }, align 32
@max77693_set_thermal_regulation_temp._entry_ptr = internal global ptr @max77693_set_thermal_regulation_temp._entry, section ".printk_index", align 4
@max77693_set_thermal_regulation_temp.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 -127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Thermal regulation loop temperature: %u (0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@max77693_set_batttery_overcurrent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 529, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Wrong value for battery overcurrent\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max77693_set_batttery_overcurrent\00", [62 x i8] zeroinitializer }, align 32
@max77693_set_batttery_overcurrent._entry_ptr = internal global ptr @max77693_set_batttery_overcurrent._entry, section ".printk_index", align 4
@max77693_set_batttery_overcurrent.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 -121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Battery overcurrent: %u (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@max77693_set_charge_input_threshold_volt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Wrong value for charge input voltage regulation threshold\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"max77693_set_charge_input_threshold_volt\00", [55 x i8] zeroinitializer }, align 32
@max77693_set_charge_input_threshold_volt._entry_ptr = internal global ptr @max77693_set_charge_input_threshold_volt._entry, section ".printk_index", align 4
@max77693_set_charge_input_threshold_volt.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Charge input voltage regulation threshold: %u (0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fast_charge_timer\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"top_off_threshold_current\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_off_timer\00", [18 x i8] zeroinitializer }, align 32
@max77693_charger_props = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 73, i32 74], [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAX77693\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Maxim Integrated\00", [47 x i8] zeroinitializer }, align 32
@switch.table.fast_charge_timer_store = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7], [60 x i8] zeroinitializer }, align 32
@switch.table.max77693_charger_get_property = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 1, i32 1, i32 1, i32 4, i32 1, i32 3, i32 3, i32 2, i32 0, i32 2, i32 2], [48 x i8] zeroinitializer }, align 32
@switch.table.max77693_charger_get_property.46 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 3, i32 3, i32 2, i32 1, i32 3, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1], [48 x i8] zeroinitializer }, align 32
@switch.table.max77693_charger_get_property.47 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 1, i32 8, i32 1, i32 1, i32 4, i32 5], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 70, i64 85, i64 100, i64 115]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 4300000, i64 4700000, i64 4800000, i64 4900000]
@__sancov_gen_cov_switch_values.49 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 73, i64 74]
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"max77693_charger_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 750, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 752, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"max77693_charger_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 744, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"dev_attr_fast_charge_timer\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 695, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [35 x i8] c"dev_attr_top_off_threshold_current\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 702, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"dev_attr_top_off_timer\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 708, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"max77693_charger_desc\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 247, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 716, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 634, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 638, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 642, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 646, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 650, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 654, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 590, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 460, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 466, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 480, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 488, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 509, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 515, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 529, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 540, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 562, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 568, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 434, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 299, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 435, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 436, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant [23 x i8] c"max77693_charger_props\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 200, i32 35 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 17, i32 46 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [43 x i8] c"../drivers/power/supply/max77693_charger.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 18, i32 52 }
@___asan_gen_.224 = private unnamed_addr constant [37 x i8] c"switch.table.fast_charge_timer_store\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [43 x i8] c"switch.table.max77693_charger_get_property\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [46 x i8] c"switch.table.max77693_charger_get_property.46\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [46 x i8] c"switch.table.max77693_charger_get_property.47\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_max77693_charger_driver_exit, ptr @__initcall__kmod_max77693_charger__293_758_max77693_charger_driver_init6, ptr @max77693_charger_driver_exit, ptr @max77693_charger_probe._entry, ptr @max77693_charger_probe._entry.12, ptr @max77693_charger_probe._entry.6, ptr @max77693_charger_probe._entry.9, ptr @max77693_charger_probe._entry_ptr, ptr @max77693_charger_probe._entry_ptr.11, ptr @max77693_charger_probe._entry_ptr.14, ptr @max77693_charger_probe._entry_ptr.8, ptr @max77693_dt_init._entry, ptr @max77693_dt_init._entry_ptr, ptr @max77693_reg_init._entry, ptr @max77693_reg_init._entry_ptr, ptr @max77693_set_batttery_overcurrent._entry, ptr @max77693_set_batttery_overcurrent._entry_ptr, ptr @max77693_set_charge_input_threshold_volt._entry, ptr @max77693_set_charge_input_threshold_volt._entry_ptr, ptr @max77693_set_constant_volt._entry, ptr @max77693_set_constant_volt._entry_ptr, ptr @max77693_set_min_system_volt._entry, ptr @max77693_set_min_system_volt._entry_ptr, ptr @max77693_set_thermal_regulation_temp._entry, ptr @max77693_set_thermal_regulation_temp._entry_ptr, ptr @max77693_charger_driver, ptr @.str, ptr @max77693_charger_id, ptr @dev_attr_fast_charge_timer, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dev_attr_top_off_threshold_current, ptr @.str.7, ptr @dev_attr_top_off_timer, ptr @.str.10, ptr @max77693_charger_desc, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @max77693_charger_props, ptr @.str.44, ptr @.str.45, ptr @switch.table.fast_charge_timer_store, ptr @switch.table.max77693_charger_get_property, ptr @switch.table.max77693_charger_get_property.46, ptr @switch.table.max77693_charger_get_property.47], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fast_charge_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_top_off_threshold_current to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_top_off_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_reg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_set_constant_volt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_set_min_system_volt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_set_thermal_regulation_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_set_batttery_overcurrent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_set_charge_input_threshold_volt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_props to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fast_charge_timer_store to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77693_charger_get_property to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77693_charger_get_property.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77693_charger_get_property.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_charger_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77693_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_charger_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %max776935 = getelementptr inbounds %struct.max77693_charger, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %max776935 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %max776935, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %max77693_dt_init.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %constant_volt.i = getelementptr inbounds %struct.max77693_charger, ptr %call.i, i32 0, i32 3
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.17, ptr noundef %constant_volt.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool1.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %constant_volt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4200000, ptr %constant_volt.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %min_system_volt.i = getelementptr inbounds %struct.max77693_charger, ptr %call.i, i32 0, i32 4
  %call.i.i40.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.18, ptr noundef %min_system_volt.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i40.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i40.i, -1
  br i1 %tobool6.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then7.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %min_system_volt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3600000, ptr %min_system_volt.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end9.i_crit_edge
  %thermal_regulation_temp.i = getelementptr inbounds %struct.max77693_charger, ptr %call.i, i32 0, i32 5
  %call.i.i41.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.19, ptr noundef %thermal_regulation_temp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i41.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i41.i, -1
  br i1 %tobool11.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then12.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %thermal_regulation_temp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %thermal_regulation_temp.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end14.i_crit_edge
  %batttery_overcurrent.i = getelementptr inbounds %struct.max77693_charger, ptr %call.i, i32 0, i32 6
  %call.i.i42.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.20, ptr noundef %batttery_overcurrent.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i42.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i42.i, -1
  br i1 %tobool16.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then17.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %batttery_overcurrent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3500000, ptr %batttery_overcurrent.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end19.i_crit_edge
  %charge_input_threshold_volt.i = getelementptr inbounds %struct.max77693_charger, ptr %call.i, i32 0, i32 7
  %call.i.i43.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.21, ptr noundef %charge_input_threshold_volt.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i43.i)
  %tobool21.not.i = icmp sgt i32 %call.i.i43.i, -1
  br i1 %tobool21.not.i, label %if.end19.i.if.end10_crit_edge, label %if.then22.i

if.end19.i.if.end10_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %charge_input_threshold_volt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4300000, ptr %charge_input_threshold_volt.i, align 4
  br label %if.end10

max77693_dt_init.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then22.i, %if.end19.i.if.end10_crit_edge
  %15 = ptrtoint ptr %max776935 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %max776935, align 4
  %regmap.i = getelementptr inbounds %struct.max77693_dev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 189, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i88 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i88, label %if.end.i91, label %do.end.i89

do.end.i89:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.22, i32 noundef %call.i.i) #8
  br label %cleanup

if.end.i91:                                       ; preds = %if.end10
  %21 = ptrtoint ptr %max776935 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %max776935, align 4
  %regmap.i.i = getelementptr inbounds %struct.max77693_dev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 184, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i90)
  %tobool2.not.i = icmp eq i32 %call.i.i.i90, 0
  br i1 %tobool2.not.i, label %if.end4.i93, label %if.end.i91.cleanup_crit_edge

if.end.i91.cleanup_crit_edge:                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i93:                                      ; preds = %if.end.i91
  %25 = ptrtoint ptr %max776935 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %max776935, align 4
  %regmap.i62.i = getelementptr inbounds %struct.max77693_dev, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %regmap.i62.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i62.i, align 4
  %call.i.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 186, i32 noundef 7, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i)
  %tobool6.not.i92 = icmp eq i32 %call.i.i63.i, 0
  br i1 %tobool6.not.i92, label %if.end8.i, label %if.end4.i93.cleanup_crit_edge

if.end4.i93.cleanup_crit_edge:                    ; preds = %if.end4.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i93
  %29 = ptrtoint ptr %max776935 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %max776935, align 4
  %regmap.i65.i = getelementptr inbounds %struct.max77693_dev, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %regmap.i65.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i65.i, align 4
  %call.i.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 186, i32 noundef 56, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66.i)
  %tobool10.not.i = icmp eq i32 %call.i.i66.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  %33 = ptrtoint ptr %constant_volt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %constant_volt.i, align 4
  %call13.i = tail call fastcc i32 @max77693_set_constant_volt(ptr noundef nonnull %call.i, i32 noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i
  %35 = ptrtoint ptr %min_system_volt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min_system_volt.i, align 4
  %call17.i = tail call fastcc i32 @max77693_set_min_system_volt(ptr noundef nonnull %call.i, i32 noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  %37 = ptrtoint ptr %thermal_regulation_temp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %thermal_regulation_temp.i, align 4
  %call21.i = tail call fastcc i32 @max77693_set_thermal_regulation_temp(ptr noundef nonnull %call.i, i32 noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.cleanup_crit_edge

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.i:                                       ; preds = %if.end20.i
  %39 = ptrtoint ptr %batttery_overcurrent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %batttery_overcurrent.i, align 4
  %call25.i = tail call fastcc i32 @max77693_set_batttery_overcurrent(ptr noundef nonnull %call.i, i32 noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %max77693_reg_init.exit, label %if.end24.i.cleanup_crit_edge

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

max77693_reg_init.exit:                           ; preds = %if.end24.i
  %41 = ptrtoint ptr %charge_input_threshold_volt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %charge_input_threshold_volt.i, align 4
  %call29.i = tail call fastcc i32 @max77693_set_charge_input_threshold_volt(ptr noundef nonnull %call.i, i32 noundef %42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool12.not = icmp eq i32 %call29.i, 0
  br i1 %tobool12.not, label %if.end14, label %max77693_reg_init.exit.cleanup_crit_edge

max77693_reg_init.exit.cleanup_crit_edge:         ; preds = %max77693_reg_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %max77693_reg_init.exit
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %43 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %drv_data, align 4
  %call16 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_fast_charge_timer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %err

if.end20:                                         ; preds = %if.end14
  %call22 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_top_off_threshold_current) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %err

if.end29:                                         ; preds = %if.end20
  %call31 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_top_off_timer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %err

if.end38:                                         ; preds = %if.end29
  %call40 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @max77693_charger_desc, ptr noundef nonnull %psy_cfg) #5
  %charger = getelementptr inbounds %struct.max77693_charger, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call40, ptr %charger, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end46, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %45 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %charger, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %err

err:                                              ; preds = %do.end46, %do.end36, %do.end27, %do.end
  %ret.0 = phi i32 [ %call16, %do.end ], [ %call22, %do.end27 ], [ %call31, %do.end36 ], [ %47, %do.end46 ]
  call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_top_off_timer) #5
  call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_top_off_threshold_current) #5
  call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_fast_charge_timer) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end38.cleanup_crit_edge, %max77693_reg_init.exit.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end4.i93.cleanup_crit_edge, %if.end.i91.cleanup_crit_edge, %do.end.i89, %max77693_dt_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ -22, %max77693_dt_init.exit ], [ %call29.i, %max77693_reg_init.exit.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %call25.i, %if.end24.i.cleanup_crit_edge ], [ %call21.i, %if.end20.i.cleanup_crit_edge ], [ %call17.i, %if.end16.i.cleanup_crit_edge ], [ %call13.i, %if.end12.i.cleanup_crit_edge ], [ %call.i.i66.i, %if.end8.i.cleanup_crit_edge ], [ %call.i.i63.i, %if.end4.i93.cleanup_crit_edge ], [ %call.i.i.i90, %if.end.i91.cleanup_crit_edge ], [ %call.i.i, %do.end.i89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_charger_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_top_off_timer) #5
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_top_off_threshold_current) #5
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_fast_charge_timer) #5
  %charger = getelementptr inbounds %struct.max77693_charger, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_constant_volt(ptr nocapture noundef readonly %chg, i32 noundef %uvolt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %uvolt, -3650000
  call void @__sanitizer_cov_trace_const_cmp4(i32 690000, i32 %0)
  %1 = icmp ult i32 %0, 690000
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %0, 25000
  br label %if.end15

if.else:                                          ; preds = %entry
  %2 = add i32 %uvolt, -4340000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %2)
  %3 = icmp ult i32 %2, 10000
  br i1 %3, label %if.else.if.end15_crit_edge, label %if.else6

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.else6:                                         ; preds = %if.else
  %4 = add i32 %uvolt, -4350000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50001, i32 %4)
  %5 = icmp ult i32 %4, 50001
  br i1 %5, label %if.then10, label %do.end

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  %6 = trunc i32 %uvolt to i16
  %div12.lhs.trunc = add i16 %6, -24624
  %div1241 = udiv i16 %div12.lhs.trunc, 25000
  %narrow = add nuw nsw i16 %div1241, 29
  %add = zext i16 %narrow to i32
  br label %if.end15

do.end:                                           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then10, %if.else.if.end15_crit_edge, %if.then
  %data.0 = phi i32 [ %div, %if.then ], [ %add, %if.then10 ], [ 28, %if.else.if.end15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_set_constant_volt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77693_set_constant_volt, %do.end24)) #5
          to label %if.then20 [label %do.end24], !srcloc !129

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_set_constant_volt.__UNIQUE_ID_ddebug288, ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %uvolt, i32 noundef %data.0) #5
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %if.end15
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %chg, i32 0, i32 1
  %11 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 187, i32 noundef 31, i32 noundef %data.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end24 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_min_system_volt(ptr nocapture noundef readonly %chg, i32 noundef %uvolt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %uvolt, -3700001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -700001, i32 %0)
  %1 = icmp ult i32 %0, -700001
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %uvolt, -3000000
  %div = udiv i32 %sub, 100000
  %shl = shl nuw nsw i32 %div, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_set_min_system_volt.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77693_set_min_system_volt, %do.end10)) #5
          to label %if.then6 [label %do.end10], !srcloc !129

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_set_min_system_volt.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef %uvolt, i32 noundef %shl) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %if.end
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %chg, i32 0, i32 1
  %6 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 187, i32 noundef 224, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_thermal_regulation_temp(ptr nocapture noundef readonly %chg, i32 noundef %cels) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cels to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cels, label %do.end [
    i32 70, label %entry.sw.bb_crit_edge
    i32 85, label %entry.sw.bb_crit_edge17
    i32 100, label %entry.sw.bb_crit_edge18
    i32 115, label %entry.sw.bb_crit_edge19
  ]

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19
  %1 = trunc i32 %cels to i8
  %div.lhs.trunc = add nsw i8 %1, -70
  %div16 = udiv i8 %div.lhs.trunc, 15
  %div.zext = zext i8 %div16 to i32
  %shl = shl nuw nsw i32 %div.zext, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_set_thermal_regulation_temp.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77693_set_thermal_regulation_temp, %do.end7)) #5
          to label %if.then [label %do.end7], !srcloc !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_set_thermal_regulation_temp.__UNIQUE_ID_ddebug290, ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef %cels, i32 noundef %shl) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %sw.bb
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %chg, i32 0, i32 1
  %6 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 190, i32 noundef 96, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_batttery_overcurrent(ptr nocapture noundef readonly %chg, i32 noundef %uamp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uamp)
  %tobool.not = icmp eq i32 %uamp, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %0 = add i32 %uamp, -3500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1500001, i32 %0)
  %1 = icmp ult i32 %0, -1500001
  br i1 %1, label %do.end, label %if.then3.critedge

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34) #8
  br label %cleanup

if.then3.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %uamp, -2000000
  %div = udiv i32 %sub, 250000
  %add = add nuw nsw i32 %div, 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3.critedge, %entry.if.end4_crit_edge
  %data.0 = phi i32 [ %add, %if.then3.critedge ], [ 0, %entry.if.end4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_set_batttery_overcurrent.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77693_set_batttery_overcurrent, %do.end14)) #5
          to label %if.then10 [label %do.end14], !srcloc !129

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_set_batttery_overcurrent.__UNIQUE_ID_ddebug291, ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef %uamp, i32 noundef %data.0) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %if.end4
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %chg, i32 0, i32 1
  %6 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 195, i32 noundef 7, i32 noundef %data.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_charge_input_threshold_volt(ptr nocapture noundef readonly %chg, i32 noundef %uvolt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %uvolt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %uvolt, label %do.end [
    i32 4300000, label %entry.sw.epilog_crit_edge
    i32 4700000, label %entry.sw.bb1_crit_edge
    i32 4800000, label %entry.sw.bb1_crit_edge17
    i32 4900000, label %entry.sw.bb1_crit_edge18
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18
  %sub = add nsw i32 %uvolt, -4700000
  %div = udiv i32 %sub, 100000
  %phi.bo = shl nuw nsw i32 %div, 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.37) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %data.0 = phi i32 [ %phi.bo, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_set_charge_input_threshold_volt.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77693_set_charge_input_threshold_volt, %do.end8)) #5
          to label %if.then [label %do.end8], !srcloc !129

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_set_charge_input_threshold_volt.__UNIQUE_ID_ddebug292, ptr noundef %4, ptr noundef nonnull @.str.39, i32 noundef %uvolt, i32 noundef %data.0) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then, %sw.epilog
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %chg, i32 0, i32 1
  %5 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 195, i32 noundef 24, i32 noundef %data.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fast_charge_timer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !130
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 184, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %and = and i32 %8, 7
  store i32 %and, ptr %data, align 4
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.off)
  %switch = icmp ult i32 %and.off, 7
  %sub = shl nuw nsw i32 %and, 1
  %add = add nuw nsw i32 %sub, 2
  %val.0 = select i1 %switch, i32 %add, i32 0
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.41, i32 noundef %val.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fast_charge_timer_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !130
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.device_attr_store.exit_crit_edge

entry.device_attr_store.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_attr_store.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %4)
  %5 = icmp ult i32 %4, 17
  br i1 %5, label %switch.hole_check, label %if.end.i.device_attr_store.exit_crit_edge

if.end.i.device_attr_store.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_attr_store.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.shifted = lshr i32 131057, %4
  %6 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch.lobit.not = icmp eq i32 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.device_attr_store.exit_crit_edge, label %switch.lookup

switch.hole_check.device_attr_store.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_attr_store.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.fast_charge_timer_store, i32 0, i32 %4
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %max77693.i = getelementptr inbounds %struct.max77693_charger, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %max77693.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %max77693.i, align 4
  %regmap.i = getelementptr inbounds %struct.max77693_dev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i1 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 184, i32 noundef 7, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1)
  %tobool3.not.i = icmp eq i32 %call.i.i1, 0
  %spec.select = select i1 %tobool3.not.i, i32 %count, i32 %call.i.i1
  br label %device_attr_store.exit

device_attr_store.exit:                           ; preds = %switch.lookup, %switch.hole_check.device_attr_store.exit_crit_edge, %if.end.i.device_attr_store.exit_crit_edge, %entry.device_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.device_attr_store.exit_crit_edge ], [ -22, %if.end.i.device_attr_store.exit_crit_edge ], [ %spec.select, %switch.lookup ], [ -22, %switch.hole_check.device_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @top_off_threshold_current_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !130
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 186, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %and = and i32 %8, 7
  store i32 %and, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp2 = icmp ult i32 %and, 5
  %mul = mul nuw nsw i32 %and, 25000
  %add = add nuw nsw i32 %mul, 100000
  %mul4 = mul nuw nsw i32 %and, 50000
  %val.0 = select i1 %cmp2, i32 %add, i32 %mul4
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.41, i32 noundef %val.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @top_off_threshold_current_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !130
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.device_attr_store.exit_crit_edge

entry.device_attr_store.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_attr_store.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %5 = add i32 %4, -350001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -250001, i32 %5)
  %6 = icmp ult i32 %5, -250001
  br i1 %6, label %if.end.i.device_attr_store.exit_crit_edge, label %max77693_set_top_off_threshold_current.exit

if.end.i.device_attr_store.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_attr_store.exit

max77693_set_top_off_threshold_current.exit:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 200001, i32 %4)
  %cmp2.i = icmp ult i32 %4, 200001
  %sub.i = add nsw i32 %4, -100000
  %div.i = udiv i32 %sub.i, 25000
  %div4.i = udiv i32 %4, 50000
  %data.0.i = select i1 %cmp2.i, i32 %div.i, i32 %div4.i
  %max77693.i = getelementptr inbounds %struct.max77693_charger, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %max77693.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %max77693.i, align 4
  %regmap.i = getelementptr inbounds %struct.max77693_dev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i1 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 186, i32 noundef 7, i32 noundef %data.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1)
  %tobool3.not.i = icmp eq i32 %call.i.i1, 0
  %spec.select = select i1 %tobool3.not.i, i32 %count, i32 %call.i.i1
  br label %device_attr_store.exit

device_attr_store.exit:                           ; preds = %max77693_set_top_off_threshold_current.exit, %if.end.i.device_attr_store.exit_crit_edge, %entry.device_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.device_attr_store.exit_crit_edge ], [ -22, %if.end.i.device_attr_store.exit_crit_edge ], [ %spec.select, %max77693_set_top_off_threshold_current.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @top_off_timer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !130
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %max77693, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 186, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %and = lshr i32 %8, 3
  %shr = and i32 %and, 7
  store i32 %shr, ptr %data, align 4
  %mul = mul nuw nsw i32 %shr, 10
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.41, i32 noundef %mul) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @top_off_timer_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !130
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.device_attr_store.exit_crit_edge

entry.device_attr_store.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_attr_store.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %4)
  %cmp.i = icmp ugt i32 %4, 70
  br i1 %cmp.i, label %if.end.i.device_attr_store.exit_crit_edge, label %max77693_set_top_off_timer.exit

if.end.i.device_attr_store.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_attr_store.exit

max77693_set_top_off_timer.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %div.lhs.trunc.i = trunc i32 %4 to i8
  %div3.i = udiv i8 %div.lhs.trunc.i, 10
  %5 = shl nuw nsw i8 %div3.i, 3
  %shl.i = zext i8 %5 to i32
  %max77693.i = getelementptr inbounds %struct.max77693_charger, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %max77693.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %max77693.i, align 4
  %regmap.i = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i1 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 186, i32 noundef 56, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1)
  %tobool3.not.i = icmp eq i32 %call.i.i1, 0
  %spec.select = select i1 %tobool3.not.i, i32 %count, i32 %call.i.i1
  br label %device_attr_store.exit

device_attr_store.exit:                           ; preds = %max77693_set_top_off_timer.exit, %if.end.i.device_attr_store.exit_crit_edge, %entry.device_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.device_attr_store.exit_crit_edge ], [ -22, %if.end.i.device_attr_store.exit_crit_edge ], [ %spec.select, %max77693_set_top_off_timer.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %data.i54 = alloca i32, align 4
  %data.i48 = alloca i32, align 4
  %data.i36 = alloca i32, align 4
  %data.i25 = alloca i32, align 4
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %max77693 = getelementptr inbounds %struct.max77693_charger, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max77693, align 4
  %regmap1 = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 73, label %sw.bb11
    i32 74, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %data.i, align 4, !annotation !130
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 180, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.max77693_get_charger_state.exit_crit_edge, label %if.end.i

sw.bb.max77693_get_charger_state.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77693_get_charger_state.exit

if.end.i:                                         ; preds = %sw.bb
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.i, align 4
  %and.i = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.i)
  %8 = icmp ult i32 %and.i, 12
  br i1 %8, label %switch.lookup, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.max77693_charger_get_property, i32 0, i32 %and.i
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %val, align 4
  br label %max77693_get_charger_state.exit

max77693_get_charger_state.exit:                  ; preds = %cleanup.sink.split.i, %sw.bb.max77693_get_charger_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.max77693_get_charger_state.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i25) #5
  %11 = ptrtoint ptr %data.i25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %data.i25, align 4, !annotation !130
  %call.i26 = call i32 @regmap_read(ptr noundef %3, i32 noundef 180, ptr noundef nonnull %data.i25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %sw.bb3.max77693_get_charge_type.exit_crit_edge, label %if.end.i29

sw.bb3.max77693_get_charge_type.exit_crit_edge:   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77693_get_charge_type.exit

if.end.i29:                                       ; preds = %sw.bb3
  %12 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i25, align 4
  %and.i28 = and i32 %13, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.i28)
  %14 = icmp ult i32 %and.i28, 12
  br i1 %14, label %switch.lookup61, label %if.end.i29.cleanup.sink.split.i34_crit_edge

if.end.i29.cleanup.sink.split.i34_crit_edge:      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i34

switch.lookup61:                                  ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep62 = getelementptr inbounds [12 x i32], ptr @switch.table.max77693_charger_get_property.46, i32 0, i32 %and.i28
  %15 = ptrtoint ptr %switch.gep62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load63 = load i32, ptr %switch.gep62, align 4
  br label %cleanup.sink.split.i34

cleanup.sink.split.i34:                           ; preds = %switch.lookup61, %if.end.i29.cleanup.sink.split.i34_crit_edge
  %.sink.i33 = phi i32 [ %switch.load63, %switch.lookup61 ], [ 0, %if.end.i29.cleanup.sink.split.i34_crit_edge ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i33, ptr %val, align 4
  br label %max77693_get_charge_type.exit

max77693_get_charge_type.exit:                    ; preds = %cleanup.sink.split.i34, %sw.bb3.max77693_get_charge_type.exit_crit_edge
  %retval.0.i35 = phi i32 [ %call.i26, %sw.bb3.max77693_get_charge_type.exit_crit_edge ], [ 0, %cleanup.sink.split.i34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i25) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i36) #5
  %17 = ptrtoint ptr %data.i36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %data.i36, align 4, !annotation !130
  %call.i37 = call i32 @regmap_read(ptr noundef %3, i32 noundef 180, ptr noundef nonnull %data.i36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp.i38 = icmp slt i32 %call.i37, 0
  br i1 %cmp.i38, label %sw.bb5.max77693_get_battery_health.exit_crit_edge, label %if.end.i40

sw.bb5.max77693_get_battery_health.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77693_get_battery_health.exit

if.end.i40:                                       ; preds = %sw.bb5
  %18 = ptrtoint ptr %data.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data.i36, align 4
  %and.i39 = lshr i32 %19, 4
  %shr.i = and i32 %and.i39, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %.not = icmp eq i32 %shr.i, 7
  br i1 %.not, label %if.end.i40.cleanup.sink.split.i46_crit_edge, label %switch.lookup64

if.end.i40.cleanup.sink.split.i46_crit_edge:      ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i46

switch.lookup64:                                  ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep65 = getelementptr inbounds [7 x i32], ptr @switch.table.max77693_charger_get_property.47, i32 0, i32 %shr.i
  %20 = ptrtoint ptr %switch.gep65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load66 = load i32, ptr %switch.gep65, align 4
  br label %cleanup.sink.split.i46

cleanup.sink.split.i46:                           ; preds = %switch.lookup64, %if.end.i40.cleanup.sink.split.i46_crit_edge
  %.sink.i45 = phi i32 [ %switch.load66, %switch.lookup64 ], [ 0, %if.end.i40.cleanup.sink.split.i46_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.i45, ptr %val, align 4
  br label %max77693_get_battery_health.exit

max77693_get_battery_health.exit:                 ; preds = %cleanup.sink.split.i46, %sw.bb5.max77693_get_battery_health.exit_crit_edge
  %retval.0.i47 = phi i32 [ %call.i37, %sw.bb5.max77693_get_battery_health.exit_crit_edge ], [ 0, %cleanup.sink.split.i46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i36) #5
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i48) #5
  %22 = ptrtoint ptr %data.i48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %data.i48, align 4, !annotation !130
  %call.i49 = call i32 @regmap_read(ptr noundef %3, i32 noundef 178, ptr noundef nonnull %data.i48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp.i50 = icmp slt i32 %call.i49, 0
  br i1 %cmp.i50, label %sw.bb7.max77693_get_present.exit_crit_edge, label %if.end.i52

sw.bb7.max77693_get_present.exit_crit_edge:       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77693_get_present.exit

if.end.i52:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data.i48, align 4
  %and.i51 = lshr i32 %24, 7
  %and.lobit.i = and i32 %and.i51, 1
  %25 = xor i32 %and.lobit.i, 1
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  br label %max77693_get_present.exit

max77693_get_present.exit:                        ; preds = %if.end.i52, %sw.bb7.max77693_get_present.exit_crit_edge
  %retval.0.i53 = phi i32 [ 0, %if.end.i52 ], [ %call.i49, %sw.bb7.max77693_get_present.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i48) #5
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i54) #5
  %27 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %data.i54, align 4, !annotation !130
  %call.i55 = call i32 @regmap_read(ptr noundef %3, i32 noundef 178, ptr noundef nonnull %data.i54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %sw.bb9.max77693_get_online.exit_crit_edge, label %if.end.i59

sw.bb9.max77693_get_online.exit_crit_edge:        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77693_get_online.exit

if.end.i59:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %data.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data.i54, align 4
  %and.i57 = lshr i32 %29, 6
  %and.lobit.i58 = and i32 %and.i57, 1
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.lobit.i58, ptr %val, align 4
  br label %max77693_get_online.exit

max77693_get_online.exit:                         ; preds = %if.end.i59, %sw.bb9.max77693_get_online.exit_crit_edge
  %retval.0.i60 = phi i32 [ 0, %if.end.i59 ], [ %call.i55, %sw.bb9.max77693_get_online.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i54) #5
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.44, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.45, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb11, %max77693_get_online.exit, %max77693_get_present.exit, %max77693_get_battery_health.exit, %max77693_get_charge_type.exit, %max77693_get_charger_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ %retval.0.i60, %max77693_get_online.exit ], [ %retval.0.i53, %max77693_get_present.exit ], [ %retval.0.i47, %max77693_get_battery_health.exit ], [ %retval.0.i35, %max77693_get_charge_type.exit ], [ %retval.0.i, %max77693_get_charger_state.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_max77693_charger__293_758_max77693_charger_driver_init6, !1, !"__initcall__kmod_max77693_charger__293_758_max77693_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max77693_charger.c", i32 758, i32 1}
!2 = !{ptr @__exitcall_max77693_charger_driver_exit, !1, !"__exitcall_max77693_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max77693_charger.c", i32 760, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/max77693_charger.c", i32 761, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/max77693_charger.c", i32 762, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max77693_charger.c", i32 752, i32 11}
!12 = !{ptr @max77693_charger_driver, !13, !"max77693_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max77693_charger.c", i32 750, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max77693_charger.c", i32 695, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max77693_charger_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max77693_charger_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/max77693_charger.c", i32 702, i32 3}
!24 = !{ptr @max77693_charger_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max77693_charger_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/max77693_charger.c", i32 708, i32 3}
!28 = !{ptr @max77693_charger_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @max77693_charger_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/max77693_charger.c", i32 716, i32 3}
!32 = !{ptr @max77693_charger_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max77693_charger_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/max77693_charger.c", i32 634, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @max77693_dt_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @max77693_dt_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/max77693_charger.c", i32 638, i32 31}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/max77693_charger.c", i32 642, i32 31}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/max77693_charger.c", i32 646, i32 31}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/max77693_charger.c", i32 650, i32 31}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/max77693_charger.c", i32 654, i32 31}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/max77693_charger.c", i32 590, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @max77693_reg_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @max77693_reg_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/max77693_charger.c", i32 460, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @max77693_set_constant_volt._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @max77693_set_constant_volt._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/max77693_charger.c", i32 466, i32 2}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @max77693_set_constant_volt.__UNIQUE_ID_ddebug288, !60, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/max77693_charger.c", i32 480, i32 3}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @max77693_set_min_system_volt._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @max77693_set_min_system_volt._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/max77693_charger.c", i32 488, i32 2}
!70 = !{ptr @max77693_set_min_system_volt.__UNIQUE_ID_ddebug289, !69, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/max77693_charger.c", i32 509, i32 3}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @max77693_set_thermal_regulation_temp._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @max77693_set_thermal_regulation_temp._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/max77693_charger.c", i32 515, i32 2}
!78 = !{ptr @max77693_set_thermal_regulation_temp.__UNIQUE_ID_ddebug290, !77, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/max77693_charger.c", i32 529, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @max77693_set_batttery_overcurrent._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @max77693_set_batttery_overcurrent._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/max77693_charger.c", i32 540, i32 2}
!86 = !{ptr @max77693_set_batttery_overcurrent.__UNIQUE_ID_ddebug291, !85, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/max77693_charger.c", i32 562, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @max77693_set_charge_input_threshold_volt._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @max77693_set_charge_input_threshold_volt._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/max77693_charger.c", i32 568, i32 2}
!94 = !{ptr @max77693_set_charge_input_threshold_volt.__UNIQUE_ID_ddebug292, !93, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/max77693_charger.c", i32 434, i32 8}
!97 = !{ptr @dev_attr_fast_charge_timer, !96, !"dev_attr_fast_charge_timer", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/max77693_charger.c", i32 299, i32 35}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/max77693_charger.c", i32 435, i32 8}
!102 = !{ptr @dev_attr_top_off_threshold_current, !101, !"dev_attr_top_off_threshold_current", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/max77693_charger.c", i32 436, i32 8}
!105 = !{ptr @dev_attr_top_off_timer, !104, !"dev_attr_top_off_timer", i1 false, i1 false}
!106 = !{ptr @max77693_charger_desc, !107, !"max77693_charger_desc", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/max77693_charger.c", i32 247, i32 39}
!108 = !{ptr @max77693_charger_props, !109, !"max77693_charger_props", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/max77693_charger.c", i32 200, i32 35}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/max77693_charger.c", i32 17, i32 46}
!112 = distinct !{null, !113, !"max77693_charger_model", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/max77693_charger.c", i32 17, i32 20}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/max77693_charger.c", i32 18, i32 52}
!116 = distinct !{null, !117, !"max77693_charger_manufacturer", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/max77693_charger.c", i32 18, i32 20}
!118 = !{ptr @max77693_charger_id, !119, !"max77693_charger_id", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/max77693_charger.c", i32 744, i32 40}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148970053, i64 2148970058, i64 2148970071, i64 2148970115, i64 2148970149, i64 2148970170}
!130 = !{!"auto-init"}
