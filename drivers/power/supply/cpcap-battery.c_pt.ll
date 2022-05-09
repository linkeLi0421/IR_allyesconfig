; ModuleID = '/llk/IR_all_yes/drivers/power/supply/cpcap-battery.c_pt.bc'
source_filename = "../drivers/power/supply/cpcap-battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpcap_battery_config = type { i32, %struct.power_supply_info, %struct.power_supply_battery_info }
%struct.power_supply_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
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
%struct.cpcap_battery_ddata = type { ptr, ptr, %struct.list_head, [4 x ptr], ptr, %struct.cpcap_battery_config, [4 x %struct.cpcap_battery_state_data], i32, %struct.atomic_t, i32, i32, i16, i8 }
%struct.cpcap_battery_state_data = type { i32, i32, i32, i32, i64, %struct.cpcap_coulomb_counter_data }
%struct.cpcap_coulomb_counter_data = type { i32, i32, i16, i16 }
%struct.cpcap_interrupt_desc = type { ptr, %struct.list_head, i32, i32 }
%union.power_supply_propval = type { i32 }

@__param_str_ignore_temperature_probe = internal constant [39 x i8] c"cpcap_battery.ignore_temperature_probe\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_temperature_probe = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ignore_temperature_probe = internal constant %struct.kernel_param { ptr @__param_str_ignore_temperature_probe, ptr null, ptr @param_ops_bool, i16 432, i8 -1, i8 0, %union.anon.41 { ptr @ignore_temperature_probe } }, section "__param", align 4
@__UNIQUE_ID_ignore_temperature_probetype187 = internal constant [53 x i8] c"cpcap_battery.parmtype=ignore_temperature_probe:bool\00", section ".modinfo", align 1
@__initcall__kmod_cpcap_battery__194_1118_cpcap_battery_driver_init6 = internal global ptr @cpcap_battery_driver_init, section ".initcall6.init", align 4
@cpcap_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpcap_battery_probe, ptr @cpcap_battery_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_battery_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpcap_battery_driver_exit = internal global ptr @cpcap_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file195 = internal constant [54 x i8] c"cpcap_battery.file=drivers/power/supply/cpcap-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [29 x i8] c"cpcap_battery.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author197 = internal constant [54 x i8] c"cpcap_battery.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description198 = internal constant [52 x i8] c"cpcap_battery.description=CPCAP PMIC Battery Driver\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpcap_battery\00", [18 x i8] zeroinitializer }, align 32
@cpcap_battery_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpcap_battery_default_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cpcap_charger_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.32, i32 1, ptr null, i32 0, ptr @cpcap_battery_props, i32 19, ptr @cpcap_battery_get_property, ptr @cpcap_battery_set_property, ptr @cpcap_battery_property_is_writeable, ptr @cpcap_battery_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@cpcap_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1083, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpcap_battery_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/power/supply/cpcap-battery.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpcap_battery_probe._entry_ptr = internal global ptr @cpcap_battery_probe._entry, section ".printk_index", align 4
@cpcap_get_vendor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not read vendor\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpcap_get_vendor\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"include/linux/mfd/motorola-cpcap.h\00", [61 x i8] zeroinitializer }, align 32
@cpcap_get_vendor._entry_ptr = internal global ptr @cpcap_get_vendor._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eol\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lowbph\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lowbpl\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chrgcurr1\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"battdetb\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cccal\00", [26 x i8] zeroinitializer }, align 32
@cpcap_battery_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 850, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get irq %s: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpcap_battery_init_irq\00", [41 x i8] zeroinitializer }, align 32
@cpcap_battery_init_irq._entry_ptr = internal global ptr @cpcap_battery_init_irq._entry, section ".printk_index", align 4
@cpcap_battery_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 809, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Coulomb counter calibration done\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpcap_battery_irq_thread\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpcap_battery_irq_thread._entry_ptr = internal global ptr @cpcap_battery_irq_thread._entry, section ".printk_index", align 4
@cpcap_battery_irq_thread._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 814, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Battery low at %imV!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cpcap_battery_irq_thread._entry_ptr.23 = internal global ptr @cpcap_battery_irq_thread._entry.20, section ".printk_index", align 4
@cpcap_battery_irq_thread._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 820, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Battery empty at %imV, powering off\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@cpcap_battery_irq_thread._entry_ptr.27 = internal global ptr @cpcap_battery_irq_thread._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"battp\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chg_isense\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"batti\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not initialize VBUS or ID IIO\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@cpcap_battery_props = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 3, i32 6, i32 12, i32 10, i32 11, i32 31, i32 18, i32 17, i32 24, i32 26, i32 22, i32 28, i32 20, i32 21, i32 47, i32 51, i32 66, i32 52], [52 x i8] zeroinitializer }, align 32
@cpcap_battery_get_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 228, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %i\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpcap_battery_get_current\00", [38 x i8] zeroinitializer }, align 32
@cpcap_battery_get_current._entry_ptr = internal global ptr @cpcap_battery_get_current._entry, section ".printk_index", align 4
@cpcap_charger_battery_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.3, i32 193, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpcap_charger_battery_temperature\00", [62 x i8] zeroinitializer }, align 32
@cpcap_charger_battery_temperature._entry_ptr = internal global ptr @cpcap_charger_battery_temperature._entry, section ".printk_index", align 4
@cpcap_battery_low.is_low = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cpcap_battery_full.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpcap_battery_full\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"charger disconnected\0A\00", [42 x i8] zeroinitializer }, align 32
@cpcap_battery_full.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 0, i8 106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"charger full status\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@cpcap_battery_get_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.40, ptr @.str.3, i32 212, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpcap_battery_get_voltage\00", [38 x i8] zeroinitializer }, align 32
@cpcap_battery_get_voltage._entry_ptr = internal global ptr @cpcap_battery_get_voltage._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpcap_battery_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 970, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"calibration done: 0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpcap_battery_calibrate\00", [40 x i8] zeroinitializer }, align 32
@cpcap_battery_calibrate._entry_ptr = internal global ptr @cpcap_battery_calibrate._entry, section ".printk_index", align 4
@cpcap_battery_calibrate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: error %i\0A\00", [18 x i8] zeroinitializer }, align 32
@cpcap_battery_calibrate._entry_ptr.45 = internal global ptr @cpcap_battery_calibrate._entry.43, section ".printk_index", align 4
@cpcap_battery_calibrate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 980, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: restore error %i\0A\00", [42 x i8] zeroinitializer }, align 32
@cpcap_battery_calibrate._entry_ptr.48 = internal global ptr @cpcap_battery_calibrate._entry.46, section ".printk_index", align 4
@cpcap_battery_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not disable: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpcap_battery_remove\00", [43 x i8] zeroinitializer }, align 32
@cpcap_battery_remove._entry_ptr = internal global ptr @cpcap_battery_remove._entry, section ".printk_index", align 4
@cpcap_battery_default_data = internal constant { %struct.cpcap_battery_config, [80 x i8] } { %struct.cpcap_battery_config { i32 972, %struct.power_supply_info { ptr null, i32 2, i32 4351000, i32 3100000, i32 1740000, i32 0, i32 0, i32 0, i32 0 }, %struct.power_supply_battery_info { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4200000, i32 0, [20 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [20 x ptr] zeroinitializer, [20 x i32] zeroinitializer, ptr null, i32 0 } }, [80 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.53 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 3, i64 6, i64 10, i64 11, i64 12, i64 17, i64 18, i64 20, i64 21, i64 22, i64 24, i64 26, i64 28, i64 31, i64 47, i64 51, i64 52, i64 66]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 31]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"ignore_temperature_probe\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 146, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"cpcap_battery_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1110, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1112, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"cpcap_battery_id_table\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1005, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"cpcap_charger_battery_desc\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1015, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1083, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [38 x i8] c"../include/linux/mfd/motorola-cpcap.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 284, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 878, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 878, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 878, i32 20 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 879, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 879, i32 16 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 891, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 849, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 809, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 813, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 818, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 906, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 906, i32 24 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 906, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 928, i32 9 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1016, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c"cpcap_battery_props\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 534, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 228, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 193, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [25 x i8] c"cpcap_battery_low.is_low\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 423, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 427, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 397, i32 37 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 212, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 970, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 974, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 979, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1105, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [27 x i8] c"cpcap_battery_default_data\00", align 1
@___asan_gen_.241 = private constant [40 x i8] c"../drivers/power/supply/cpcap-battery.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 995, i32 42 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_description198, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_ignore_temperature_probetype187, ptr @__UNIQUE_ID_license196, ptr @__exitcall_cpcap_battery_driver_exit, ptr @__initcall__kmod_cpcap_battery__194_1118_cpcap_battery_driver_init6, ptr @__param_ignore_temperature_probe, ptr @cpcap_battery_calibrate._entry, ptr @cpcap_battery_calibrate._entry.43, ptr @cpcap_battery_calibrate._entry.46, ptr @cpcap_battery_calibrate._entry_ptr, ptr @cpcap_battery_calibrate._entry_ptr.45, ptr @cpcap_battery_calibrate._entry_ptr.48, ptr @cpcap_battery_driver_exit, ptr @cpcap_battery_get_current._entry, ptr @cpcap_battery_get_current._entry_ptr, ptr @cpcap_battery_get_voltage._entry, ptr @cpcap_battery_get_voltage._entry_ptr, ptr @cpcap_battery_init_irq._entry, ptr @cpcap_battery_init_irq._entry_ptr, ptr @cpcap_battery_irq_thread._entry, ptr @cpcap_battery_irq_thread._entry.20, ptr @cpcap_battery_irq_thread._entry.24, ptr @cpcap_battery_irq_thread._entry_ptr, ptr @cpcap_battery_irq_thread._entry_ptr.23, ptr @cpcap_battery_irq_thread._entry_ptr.27, ptr @cpcap_battery_probe._entry, ptr @cpcap_battery_probe._entry_ptr, ptr @cpcap_battery_remove._entry, ptr @cpcap_battery_remove._entry_ptr, ptr @cpcap_charger_battery_temperature._entry, ptr @cpcap_charger_battery_temperature._entry_ptr, ptr @cpcap_get_vendor._entry, ptr @cpcap_get_vendor._entry_ptr, ptr @ignore_temperature_probe, ptr @cpcap_battery_driver, ptr @.str, ptr @cpcap_battery_id_table, ptr @cpcap_charger_battery_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cpcap_battery_props, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @cpcap_battery_low.is_low, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @cpcap_battery_default_data], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_temperature_probe to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_get_vendor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_irq_thread._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_irq_thread._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_props to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_get_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_battery_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_low.is_low to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_get_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_calibrate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_calibrate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_battery_default_data to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_battery_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_battery_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 592, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %irq_list = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %irq_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %irq_list, ptr %irq_list, align 4
  %prev.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %irq_list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 8
  %config = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 5
  %4 = call ptr @memcpy(ptr %config, ptr %call, i32 368)
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call9 = tail call ptr @dev_get_regmap(ptr noundef %6, ptr noundef null) #8
  %reg = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %reg, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !138
  %call.i91 = call i32 @regmap_read(ptr noundef nonnull %call9, i32 noundef 72, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i, label %if.end19, label %cpcap_get_vendor.exit

cpcap_get_vendor.exit:                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %vendor = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %13 = trunc i32 %12 to i16
  %14 = lshr i16 %13, 6
  %conv.i = and i16 %14, 7
  %15 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %vendor, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %trunc = trunc i16 %14 to i3
  %16 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %if.end19.cleanup_crit_edge [
    i3 0, label %if.end19.sw.epilog_crit_edge
    i3 1, label %sw.bb21
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %if.end19.sw.epilog_crit_edge
  %.sink = phi i32 [ 91501, %sw.bb21 ], [ 95374, %if.end19.sw.epilog_crit_edge ]
  %cc_lsb22 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %cc_lsb22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %cc_lsb22, align 8
  %cc_lsb23 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %config, align 4
  %mul = mul i32 %19, %.sink
  %div = udiv i32 %mul, 1000
  %20 = ptrtoint ptr %cc_lsb23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %cc_lsb23, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i92 = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %for.cond.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %sw.epilog
  %call.1.i = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %cpcap_battery_init_interrupts.exit, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cpcap_battery_init_interrupts.exit:               ; preds = %for.cond.3.i
  %call1.i = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.14) #8
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 4
  %call.i.i94 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 548, i32 noundef 65535, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %tobool27.not = icmp eq i32 %call.i.i94, 0
  br i1 %tobool27.not, label %if.end29, label %cpcap_battery_init_interrupts.exit.cleanup_crit_edge

cpcap_battery_init_interrupts.exit.cleanup_crit_edge: ; preds = %cpcap_battery_init_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %cpcap_battery_init_interrupts.exit
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 8
  %call.i95 = call ptr @devm_iio_channel_get(ptr noundef %25, ptr noundef nonnull @.str.13) #8
  %arrayidx1.i = getelementptr %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 3, i32 0
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i95, ptr %arrayidx1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end29.if.then.i_crit_edge, label %if.end.i106

if.end29.if.then.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.cond.i97:                                     ; preds = %if.end.i106
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  %call.1.i96 = call ptr @devm_iio_channel_get(ptr noundef %28, ptr noundef nonnull @.str.28) #8
  %arrayidx1.1.i = getelementptr %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.1.i96, ptr %arrayidx1.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i97.if.then.i_crit_edge, label %if.end.1.i

for.cond.i97.if.then.i_crit_edge:                 ; preds = %for.cond.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.1.i:                                       ; preds = %for.cond.i97
  %30 = ptrtoint ptr %call.1.i96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.1.i96, align 4
  %tobool.not.1.i98 = icmp eq ptr %31, null
  br i1 %tobool.not.1.i98, label %if.end.1.i.cpcap_battery_init_iio.exit_crit_edge, label %for.cond.1.i100

if.end.1.i.cpcap_battery_init_iio.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_init_iio.exit

for.cond.1.i100:                                  ; preds = %if.end.1.i
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 8
  %call.2.i99 = call ptr @devm_iio_channel_get(ptr noundef %33, ptr noundef nonnull @.str.29) #8
  %arrayidx1.2.i = getelementptr %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.2.i99, ptr %arrayidx1.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.cond.1.i100.if.then.i_crit_edge, label %if.end.2.i

for.cond.1.i100.if.then.i_crit_edge:              ; preds = %for.cond.1.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.2.i:                                       ; preds = %for.cond.1.i100
  %35 = ptrtoint ptr %call.2.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.2.i99, align 4
  %tobool.not.2.i101 = icmp eq ptr %36, null
  br i1 %tobool.not.2.i101, label %if.end.2.i.cpcap_battery_init_iio.exit_crit_edge, label %for.cond.2.i103

if.end.2.i.cpcap_battery_init_iio.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_init_iio.exit

for.cond.2.i103:                                  ; preds = %if.end.2.i
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  %call.3.i102 = call ptr @devm_iio_channel_get(ptr noundef %38, ptr noundef nonnull @.str.30) #8
  %arrayidx1.3.i = getelementptr %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.3.i102, ptr %arrayidx1.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.cond.2.i103.if.then.i_crit_edge, label %if.end.3.i

for.cond.2.i103.if.then.i_crit_edge:              ; preds = %for.cond.2.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.3.i:                                       ; preds = %for.cond.2.i103
  %40 = ptrtoint ptr %call.3.i102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.3.i102, align 4
  %tobool.not.3.i104 = icmp eq ptr %41, null
  br i1 %tobool.not.3.i104, label %if.end.3.i.cpcap_battery_init_iio.exit_crit_edge, label %if.end.3.i.if.end33_crit_edge

if.end.3.i.if.end33_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end.3.i.cpcap_battery_init_iio.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_init_iio.exit

if.then.i:                                        ; preds = %for.cond.2.i103.if.then.i_crit_edge, %for.cond.1.i100.if.then.i_crit_edge, %for.cond.i97.if.then.i_crit_edge, %if.end29.if.then.i_crit_edge
  %call.lcssa.i = phi ptr [ %call.i95, %if.end29.if.then.i_crit_edge ], [ %call.1.i96, %for.cond.i97.if.then.i_crit_edge ], [ %call.2.i99, %for.cond.1.i100.if.then.i_crit_edge ], [ %call.3.i102, %for.cond.2.i103.if.then.i_crit_edge ]
  %42 = ptrtoint ptr %call.lcssa.i to i32
  br label %cpcap_battery_init_iio.exit

if.end.i106:                                      ; preds = %if.end29
  %43 = ptrtoint ptr %call.i95 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i95, align 4
  %tobool.not.i105 = icmp eq ptr %44, null
  br i1 %tobool.not.i105, label %if.end.i106.cpcap_battery_init_iio.exit_crit_edge, label %for.cond.i97

if.end.i106.cpcap_battery_init_iio.exit_crit_edge: ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_init_iio.exit

cpcap_battery_init_iio.exit:                      ; preds = %if.end.i106.cpcap_battery_init_iio.exit_crit_edge, %if.then.i, %if.end.3.i.cpcap_battery_init_iio.exit_crit_edge, %if.end.2.i.cpcap_battery_init_iio.exit_crit_edge, %if.end.1.i.cpcap_battery_init_iio.exit_crit_edge
  %error.0.i = phi i32 [ %42, %if.then.i ], [ -6, %if.end.3.i.cpcap_battery_init_iio.exit_crit_edge ], [ -6, %if.end.2.i.cpcap_battery_init_iio.exit_crit_edge ], [ -6, %if.end.1.i.cpcap_battery_init_iio.exit_crit_edge ], [ -6, %if.end.i106.cpcap_battery_init_iio.exit_crit_edge ]
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 8
  %call13.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %46, i32 noundef %error.0.i, ptr noundef nonnull @.str.31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool31.not = icmp eq i32 %call13.i, 0
  br i1 %tobool31.not, label %cpcap_battery_init_iio.exit.if.end33_crit_edge, label %cpcap_battery_init_iio.exit.cleanup_crit_edge

cpcap_battery_init_iio.exit.cleanup_crit_edge:    ; preds = %cpcap_battery_init_iio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cpcap_battery_init_iio.exit.if.end33_crit_edge:   ; preds = %cpcap_battery_init_iio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %cpcap_battery_init_iio.exit.if.end33_crit_edge, %if.end.3.i.if.end33_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %49 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %50 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %drv_data, align 4
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 8
  %call37 = call ptr @devm_power_supply_register(ptr noundef %52, ptr noundef nonnull @cpcap_charger_battery_desc, ptr noundef nonnull %psy_cfg) #8
  %psy = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 4
  %53 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call37, ptr %psy, align 8
  %cmp.i.i108.not = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i108.not, label %do.end, label %if.end43

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call37 to i32
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %active = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call.i, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #8
  %57 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 1, ptr %active, align 4
  %call44 = call fastcc i32 @cpcap_battery_calibrate(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end, %cpcap_battery_init_iio.exit.cleanup_crit_edge, %cpcap_battery_init_interrupts.exit.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %cpcap_get_vendor.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %54, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ %call.i91, %cpcap_get_vendor.exit ], [ -22, %if.end19.cleanup_crit_edge ], [ %call.i.i94, %cpcap_battery_init_interrupts.exit.cleanup_crit_edge ], [ %call13.i, %cpcap_battery_init_iio.exit.cleanup_crit_edge ], [ %call44, %if.end43 ], [ %call.4.i, %for.cond.3.i.cleanup_crit_edge ], [ %call.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i92, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_battery_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %active = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #8
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %active, align 4
  %reg = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 548, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %call.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_calibrate(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  %ccc1 = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccc1) #8
  %0 = ptrtoint ptr %ccc1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ccc1, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value, align 4, !annotation !138
  %reg = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 2560, ptr noundef nonnull %ccc1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 2560, i32 noundef 65535, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %while.cond.preheader, label %if.end.do.end29_crit_edge

if.end.do.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

while.cond.preheader:                             ; preds = %if.end
  %add.neg = sub i32 -600, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub66 = add i32 %add.neg, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub66)
  %cmp67 = icmp slt i32 %sub66, 0
  br i1 %cmp67, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %call8 = call i32 @regmap_read(ptr noundef %9, i32 noundef 2560, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %while.body.do.end29_crit_edge

while.body.do.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.end11:                                         ; preds = %while.body
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.while.end_crit_edge, label %if.end14

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end14:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %call16 = call i32 @regmap_read(ptr noundef %13, i32 noundef 2588, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.do.end29_crit_edge

if.end14.do.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.end19:                                         ; preds = %if.end14
  call void @msleep(i32 noundef 300) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end19.while.body_crit_edge, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %if.end11.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %call21 = call i32 @regmap_read(ptr noundef %16, i32 noundef 2588, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %restore, label %while.end.do.end29_crit_edge

while.end.do.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

restore:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddata, align 8
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.41, i32 noundef %20) #11
  br label %if.end31

do.end29:                                         ; preds = %while.end.do.end29_crit_edge, %if.end14.do.end29_crit_edge, %while.body.do.end29_crit_edge, %if.end.do.end29_crit_edge
  %error.0.ph = phi i32 [ %call21, %while.end.do.end29_crit_edge ], [ %call.i, %if.end.do.end29_crit_edge ], [ %call8, %while.body.do.end29_crit_edge ], [ %call16, %if.end14.do.end29_crit_edge ]
  %21 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddata, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %error.0.ph) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %restore
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg, align 4
  %25 = ptrtoint ptr %ccc1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ccc1, align 4
  %call.i62 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 2560, i32 noundef 65535, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool34.not = icmp eq i32 %call.i62, 0
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %do.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddata, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.42, i32 noundef %call.i62) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i62, %do.end38 ], [ 0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccc1) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_init_irq(ptr noundef %pdev, ptr noundef %ddata, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 8
  %call1 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call, ptr noundef null, ptr noundef nonnull @cpcap_battery_irq_thread, i32 noundef 8320, ptr noundef %name, ptr noundef %ddata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %2 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddata, align 8
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %call1) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %call.i, align 4
  %irq11 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %irq11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %irq11, align 4
  %call12 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.14, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end9.if.end26.sink.split_crit_edge, label %if.else

if.end9.if.end26.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.else:                                          ; preds = %if.end9
  %call15 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(7) @.str.10, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else.if.end26.sink.split_crit_edge, label %if.else19

if.else.if.end26.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.else19:                                        ; preds = %if.else
  %call20 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(7) @.str.11, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else19.if.end26.sink.split_crit_edge, label %if.else19.if.end26_crit_edge

if.else19.if.end26_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else19.if.end26.sink.split_crit_edge:          ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19.if.end26.sink.split_crit_edge, %if.else.if.end26.sink.split_crit_edge, %if.end9.if.end26.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end9.if.end26.sink.split_crit_edge ], [ 2, %if.else.if.end26.sink.split_crit_edge ], [ 3, %if.else19.if.end26.sink.split_crit_edge ]
  %action18 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %action18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %action18, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.else19.if.end26_crit_edge
  %node = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %call.i, i32 0, i32 1
  %irq_list = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 2
  %7 = ptrtoint ptr %irq_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %irq_list, ptr noundef %8) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %irq_list, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %irq_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node, ptr %irq_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end26.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_battery_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %data, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #8
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_list = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %data, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %irq_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp = icmp eq ptr %.pn, %irq_list
  br i1 %cmp, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %irq2 = getelementptr i8, ptr %.pn, i32 8
  %3 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq2, align 4
  %cmp3 = icmp eq i32 %4, %irq
  br i1 %cmp3, label %if.end15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end15:                                         ; preds = %for.body
  %arrayidx.i.i = getelementptr %struct.cpcap_battery_ddata, ptr %data, i32 0, i32 6, i32 1
  %action = getelementptr i8, ptr %.pn, i32 12
  %5 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %action, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %6, label %if.end15.sw.epilog_crit_edge [
    i32 1, label %do.end
    i32 2, label %sw.bb17
    i32 3, label %sw.bb25
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.17) #11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end15
  %current_ua = getelementptr %struct.cpcap_battery_ddata, ptr %data, i32 0, i32 6, i32 1, i32 1
  %10 = ptrtoint ptr %current_ua to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp18 = icmp sgt i32 %11, -1
  br i1 %cmp18, label %do.end22, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end22:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 8
  %div = sdiv i32 %15, 1000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef %div) #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end15
  %current_ua26 = getelementptr %struct.cpcap_battery_ddata, ptr %data, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %current_ua26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_ua26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp27 = icmp sgt i32 %17, -1
  br i1 %cmp27, label %land.lhs.true, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb25
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3200001, i32 %19)
  %cmp29 = icmp slt i32 %19, 3200001
  br i1 %cmp29, label %do.end33, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end33:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  %div36 = sdiv i32 %19, 1000
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %21, ptr noundef nonnull @.str.25, i32 noundef %div36) #11
  tail call void @orderly_poweroff(i1 noundef zeroext true) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end33, %land.lhs.true.sw.epilog_crit_edge, %sw.bb25.sw.epilog_crit_edge, %do.end22, %sw.bb17.sw.epilog_crit_edge, %do.end, %if.end15.sw.epilog_crit_edge
  %psy = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psy, align 8
  tail call void @power_supply_changed(ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %remainder.i.i.i.i.i = alloca i32, align 4
  %buf.i.i = alloca [7 x i16], align 2
  %value.i95.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %state.i = alloca %struct.cpcap_battery_state_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %state.i) #8
  %0 = call ptr @memset(ptr %state.i, i32 0, i32 40)
  %call.i = tail call i64 @ktime_get() #8
  %arrayidx.i.i.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1
  %tobool.not.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.end4.i_crit_edge, label %if.then.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %time.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 4
  %1 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %time.i, align 8
  %sub.i = sub i64 %call.i, %2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %3 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %3) #12, !srcloc !139
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %3, i64 %4, i32 0) #12, !srcloc !140
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 250, i64 %cond213.i.i.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i, 250
  br i1 %cmp.i, label %cpcap_battery_update_status.exit, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %time5.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 4
  %6 = ptrtoint ptr %time5.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %time5.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %7 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %value.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @iio_read_channel_processed(ptr noundef %9, ptr noundef nonnull %value.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.40, i32 noundef %call.i.i) #11
  br label %cpcap_battery_get_voltage.exit.i

if.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i.i, align 4
  %mul.i.i = mul i32 %13, 1000
  br label %cpcap_battery_get_voltage.exit.i

cpcap_battery_get_voltage.exit.i:                 ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %mul.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %state.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i95.i) #8
  %15 = ptrtoint ptr %value.i95.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %value.i95.i, align 4
  %arrayidx.i96.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i96.i, align 4
  %call.i97.i = call i32 @iio_read_channel_processed(ptr noundef %17, ptr noundef nonnull %value.i95.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %cmp.i98.i = icmp slt i32 %call.i97.i, 0
  br i1 %cmp.i98.i, label %do.end.i99.i, label %if.end.i101.i

do.end.i99.i:                                     ; preds = %cpcap_battery_get_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call.i97.i) #11
  br label %cpcap_battery_get_current.exit.i

if.end.i101.i:                                    ; preds = %cpcap_battery_get_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %value.i95.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value.i95.i, align 4
  %mul.i100.i = mul i32 %21, 1000
  br label %cpcap_battery_get_current.exit.i

cpcap_battery_get_current.exit.i:                 ; preds = %if.end.i101.i, %do.end.i99.i
  %retval.0.i102.i = phi i32 [ 0, %do.end.i99.i ], [ %mul.i100.i, %if.end.i101.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i95.i) #8
  %current_ua.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 1
  %22 = ptrtoint ptr %current_ua.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i102.i, ptr %current_ua.i, align 4
  %cc.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf.i.i) #8
  %23 = getelementptr inbounds [7 x i16], ptr %buf.i.i, i32 0, i32 2
  %24 = getelementptr inbounds [7 x i16], ptr %buf.i.i, i32 0, i32 3
  %25 = getelementptr inbounds [7 x i16], ptr %buf.i.i, i32 0, i32 4
  %26 = getelementptr inbounds [7 x i16], ptr %buf.i.i, i32 0, i32 6
  %27 = call ptr @memset(ptr %buf.i.i, i32 255, i32 14)
  %accumulator.i.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 5, i32 1
  %offset.i.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 5, i32 2
  %integrator.i.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 5, i32 3
  %reg.i.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 1
  %28 = call ptr @memset(ptr %cc.i, i32 0, i32 12)
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 4
  %call.i103.i = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 2572, ptr noundef nonnull %buf.i.i, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool.not.i.i, label %if.end.i105.i, label %cpcap_battery_get_current.exit.i.cpcap_battery_read_accumulated.exit.i_crit_edge

cpcap_battery_get_current.exit.i.cpcap_battery_read_accumulated.exit.i_crit_edge: ; preds = %cpcap_battery_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_read_accumulated.exit.i

if.end.i105.i:                                    ; preds = %cpcap_battery_get_current.exit.i
  %31 = getelementptr inbounds [7 x i16], ptr %buf.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  %34 = and i16 %33, 4095
  %and.i.i = zext i16 %34 to i32
  %shl.i.i = shl nuw nsw i32 %and.i.i, 16
  %35 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %buf.i.i, align 2
  %conv3.i.i = zext i16 %36 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  %37 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i, ptr %cc.i, align 8
  %vendor.i.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 11
  %38 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp.i104.i = icmp eq i16 %39, 1
  br i1 %cmp.i104.i, label %if.then7.i.i, label %if.end.i105.i.if.end11.i.i_crit_edge

if.end.i105.i.if.end11.i.i_crit_edge:             ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.then7.i.i:                                     ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i = sub nsw i32 31, %conv3.i.i
  %conv1.i.i.i = and i32 %conv.i.i.i, 255
  %shl.i.i.i = shl i32 24, %conv1.i.i.i
  %shr.i.i.i = ashr i32 %shl.i.i.i, %conv1.i.i.i
  %40 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr.i.i.i, ptr %cc.i, align 8
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then7.i.i, %if.end.i105.i.if.end11.i.i_crit_edge
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %24, align 2
  %conv1365.i.i = zext i16 %42 to i32
  %shl14.i.i = shl nuw i32 %conv1365.i.i, 16
  %43 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %23, align 2
  %conv17.i.i = zext i16 %44 to i32
  %or19.i.i = or i32 %shl14.i.i, %conv17.i.i
  %45 = ptrtoint ptr %accumulator.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or19.i.i, ptr %accumulator.i.i, align 4
  %46 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %25, align 2
  %conv2370.i.i = zext i16 %47 to i32
  %shl.i66.i.i = shl i32 %conv2370.i.i, 22
  %shr.i67.i.i = ashr exact i32 %shl.i66.i.i, 22
  %conv25.i.i = trunc i32 %shr.i67.i.i to i16
  %48 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv25.i.i, ptr %offset.i.i, align 8
  %49 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %26, align 2
  %conv33.i.i = zext i16 %50 to i32
  %shl.i68.i.i = shl i32 %conv33.i.i, 18
  %shr.i69.i.i = ashr exact i32 %shl.i68.i.i, 18
  %conv35.i.i = trunc i32 %shr.i69.i.i to i16
  %storemerge.i.i = select i1 %cmp.i104.i, i16 %conv35.i.i, i16 %50
  %51 = ptrtoint ptr %integrator.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %storemerge.i.i, ptr %integrator.i.i, align 2
  %52 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cc.i, align 8
  %conv.i.i.i.i = sext i32 %or19.i.i to i64
  %conv1.i.i.i.i = sext i32 %53 to i64
  %conv2.i.i.i.i = sext i32 %shr.i67.i.i to i64
  %mul.i.i.i.i = mul nsw i64 %conv1.i.i.i.i, %conv2.i.i.i.i
  %sub.neg.i.i.i.i = sub nsw i64 %mul.i.i.i.i, %conv.i.i.i.i
  %cc_lsb.i.i.i.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 7
  %54 = ptrtoint ptr %cc_lsb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cc_lsb.i.i.i.i, align 8
  %conv3.i.i.i.i = zext i32 %55 to i64
  %mul4.neg.i.i.i.i = mul i64 %sub.neg.i.i.i.i, %conv3.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i.i) #8
  %56 = ptrtoint ptr %remainder.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %remainder.i.i.i.i.i, align 4, !annotation !138
  %call.i.i.i.i.i = call i64 @div_s64_rem(i64 noundef %mul4.neg.i.i.i.i, i32 noundef 3600000, ptr noundef nonnull %remainder.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i.i) #8
  %conv6.i.i.i.i = trunc i64 %call.i.i.i.i.i to i32
  br label %cpcap_battery_read_accumulated.exit.i

cpcap_battery_read_accumulated.exit.i:            ; preds = %if.end11.i.i, %cpcap_battery_get_current.exit.i.cpcap_battery_read_accumulated.exit.i_crit_edge
  %retval.0.i106.i = phi i32 [ %conv6.i.i.i.i, %if.end11.i.i ], [ 0, %cpcap_battery_get_current.exit.i.cpcap_battery_read_accumulated.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf.i.i) #8
  %counter_uah.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 2
  %57 = ptrtoint ptr %counter_uah.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i106.i, ptr %counter_uah.i, align 8
  %temperature.i = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %state.i, i32 0, i32 3
  %channels.i.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 3
  %58 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channels.i.i, align 8
  %call.i107.i = call i32 @iio_read_channel_processed(ptr noundef %59, ptr noundef %temperature.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %cmp.i108.i = icmp slt i32 %call.i107.i, 0
  br i1 %cmp.i108.i, label %if.then.i.i, label %if.end12.i

if.then.i.i:                                      ; preds = %cpcap_battery_read_accumulated.exit.i
  %60 = load i8, ptr @ignore_temperature_probe, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i109.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i109.i, label %do.end.i110.i, label %if.then.i.i.cpcap_battery_update_status.exit.thread335_crit_edge

if.then.i.i.cpcap_battery_update_status.exit.thread335_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_update_status.exit.thread335

do.end.i110.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, i32 noundef %call.i107.i) #11
  br label %cpcap_battery_update_status.exit.thread335

if.end12.i:                                       ; preds = %cpcap_battery_read_accumulated.exit.i
  %63 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %temperature.i, align 4
  %div.i.i = sdiv i32 %64, 100
  store i32 %div.i.i, ptr %temperature.i, align 4
  %arrayidx.i.i113.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 0
  %65 = call ptr @memcpy(ptr %arrayidx.i.i113.i, ptr %arrayidx.i.i.i, i32 40)
  %66 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %state.i, i32 40)
  %call14.i = call fastcc zeroext i1 @cpcap_battery_full(ptr noundef %call) #8
  br i1 %call14.i, label %if.then15.i, label %if.else37.i

if.then15.i:                                      ; preds = %if.end12.i
  %arrayidx.i.i114.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 3
  %67 = call ptr @memcpy(ptr %arrayidx.i.i114.i, ptr %arrayidx.i.i.i, i32 40)
  %arrayidx.i.i115.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %arrayidx.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i115.i, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %69, label %if.then23.i [
    i32 0, label %if.then15.i.if.else.i_crit_edge
    i32 -1, label %if.then15.i.if.else.i_crit_edge338
  ]

if.then15.i.if.else.i_crit_edge338:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then15.i.if.else.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then23.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %arrayidx.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %arrayidx.i.i115.i, align 8
  %counter_uah25.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2, i32 2
  %72 = ptrtoint ptr %counter_uah25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %counter_uah25.i, align 8
  %counter_uah26.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 3, i32 2
  %74 = ptrtoint ptr %counter_uah26.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %counter_uah26.i, align 8
  %sub27.i = sub i32 %73, %75
  %charge_full.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 9
  %76 = ptrtoint ptr %charge_full.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub27.i, ptr %charge_full.i, align 8
  br label %cpcap_battery_update_status.exit.thread

if.else.i:                                        ; preds = %if.then15.i.if.else.i_crit_edge, %if.then15.i.if.else.i_crit_edge338
  %charge_full28.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 9
  %77 = ptrtoint ptr %charge_full28.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %charge_full28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool29.not.i = icmp eq i32 %78, 0
  br i1 %tobool29.not.i, label %if.else.i.cpcap_battery_update_status.exit.thread_crit_edge, label %if.then30.i

if.else.i.cpcap_battery_update_status.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_update_status.exit.thread

if.then30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %arrayidx.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %arrayidx.i.i115.i, align 8
  %counter_uah32.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 3, i32 2
  %80 = ptrtoint ptr %counter_uah32.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %counter_uah32.i, align 8
  %add.i = add i32 %81, %78
  %counter_uah34.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2, i32 2
  %82 = ptrtoint ptr %counter_uah34.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add.i, ptr %counter_uah34.i, align 8
  br label %cpcap_battery_update_status.exit.thread

if.else37.i:                                      ; preds = %if.end12.i
  %current_ua.i.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 1
  %83 = ptrtoint ptr %current_ua.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %current_ua.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i116.i = icmp sgt i32 %84, 0
  br i1 %cmp.i116.i, label %land.lhs.true.i.i, label %if.else37.i.cpcap_battery_low.exit.i_crit_edge

if.else37.i.cpcap_battery_low.exit.i_crit_edge:   ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_low.exit.i

land.lhs.true.i.i:                                ; preds = %if.else37.i
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3350001, i32 %86)
  %cmp1.i.i = icmp slt i32 %86, 3350001
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.if.then39.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then39.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %.b45.i.i = load i1, ptr @cpcap_battery_low.is_low, align 1
  br i1 %.b45.i.i, label %lor.lhs.false.i.i.if.then39.i_crit_edge, label %lor.lhs.false.i.i.cpcap_battery_low.exit.i_crit_edge

lor.lhs.false.i.i.cpcap_battery_low.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_low.exit.i

lor.lhs.false.i.i.if.then39.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39.i

cpcap_battery_low.exit.i:                         ; preds = %lor.lhs.false.i.i.cpcap_battery_low.exit.i_crit_edge, %if.else37.i.cpcap_battery_low.exit.i_crit_edge
  store i1 false, ptr @cpcap_battery_low.is_low, align 1
  br label %cpcap_battery_update_status.exit.thread

if.then39.i:                                      ; preds = %lor.lhs.false.i.i.if.then39.i_crit_edge, %land.lhs.true.i.i.if.then39.i_crit_edge
  store i1 true, ptr @cpcap_battery_low.is_low, align 1
  %arrayidx.i.i119.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2
  %87 = call ptr @memcpy(ptr %arrayidx.i.i119.i, ptr %arrayidx.i.i.i, i32 40)
  %arrayidx.i.i120.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 3
  %88 = ptrtoint ptr %arrayidx.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i120.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool43.not.i = icmp eq i32 %89, 0
  br i1 %tobool43.not.i, label %if.then39.i.cpcap_battery_update_status.exit.thread_crit_edge, label %if.then44.i

if.then39.i.cpcap_battery_update_status.exit.thread_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_update_status.exit.thread

if.then44.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %arrayidx.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %arrayidx.i.i120.i, align 8
  %counter_uah46.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2, i32 2
  %91 = ptrtoint ptr %counter_uah46.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %counter_uah46.i, align 8
  %counter_uah47.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 3, i32 2
  %93 = ptrtoint ptr %counter_uah47.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %counter_uah47.i, align 8
  %sub48.i = sub i32 %92, %94
  %charge_full49.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 9
  %95 = ptrtoint ptr %charge_full49.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub48.i, ptr %charge_full49.i, align 8
  br label %cpcap_battery_update_status.exit.thread

cpcap_battery_update_status.exit.thread:          ; preds = %if.then44.i, %if.then39.i.cpcap_battery_update_status.exit.thread_crit_edge, %cpcap_battery_low.exit.i, %if.then30.i, %if.else.i.cpcap_battery_update_status.exit.thread_crit_edge, %if.then23.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %state.i) #8
  br label %if.end

cpcap_battery_update_status.exit.thread335:       ; preds = %do.end.i110.i, %if.then.i.i.cpcap_battery_update_status.exit.thread335_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %state.i) #8
  br label %cleanup

cpcap_battery_update_status.exit:                 ; preds = %if.then.i
  %conv.i = trunc i64 %cond213.i.i.i to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp = icmp slt i32 %conv.i, 0
  br i1 %cmp, label %cpcap_battery_update_status.exit.cleanup_crit_edge, label %cpcap_battery_update_status.exit.if.end_crit_edge

cpcap_battery_update_status.exit.if.end_crit_edge: ; preds = %cpcap_battery_update_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cpcap_battery_update_status.exit.cleanup_crit_edge: ; preds = %cpcap_battery_update_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cpcap_battery_update_status.exit.if.end_crit_edge, %cpcap_battery_update_status.exit.thread
  %arrayidx.i.i327 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 0
  %96 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %sw.bb7
    i32 6, label %sw.bb16
    i32 12, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb22
    i32 31, label %sw.bb25
    i32 18, label %sw.bb27
    i32 17, label %sw.bb42
    i32 28, label %sw.bb43
    i32 20, label %sw.bb44
    i32 21, label %sw.bb48
    i32 47, label %sw.bb81
    i32 51, label %sw.bb109
    i32 26, label %sw.bb138
    i32 24, label %sw.bb188
    i32 22, label %sw.bb194
    i32 66, label %sw.bb197
    i32 52, label %sw.bb198
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %temperature = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 3
  %97 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %temperature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400, i32 %98)
  %cmp4 = icmp sgt i32 %98, -400
  br i1 %cmp4, label %sw.bb.if.then5_crit_edge, label %lor.lhs.false

sw.bb.if.then5_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %sw.bb
  %99 = load i8, ptr @ignore_temperature_probe, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not = icmp eq i8 %99, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %sw.bb.if.then5_crit_edge
  %100 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %call8 = call fastcc zeroext i1 @cpcap_battery_full(ptr noundef %call)
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.end10:                                         ; preds = %sw.bb7
  %call11 = call fastcc i32 @cpcap_battery_cc_get_avg_current(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %technology = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 1, i32 1
  %105 = ptrtoint ptr %technology to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %technology, align 4
  %107 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %108 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %value.i, align 4
  %arrayidx.i = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i, align 4
  %call.i328 = call i32 @iio_read_channel_processed(ptr noundef %110, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %cmp.i329 = icmp slt i32 %call.i328, 0
  br i1 %cmp.i329, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.40, i32 noundef %call.i328) #11
  br label %cpcap_battery_get_voltage.exit

if.end.i:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %value.i, align 4
  %mul.i = mul i32 %114, 1000
  br label %cpcap_battery_get_voltage.exit

cpcap_battery_get_voltage.exit:                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %mul.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %115 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %voltage_max_design = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 1, i32 2
  %116 = ptrtoint ptr %voltage_max_design to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %voltage_max_design, align 4
  %118 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %val, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %voltage_min_design = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 1, i32 3
  %119 = ptrtoint ptr %voltage_min_design to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %voltage_min_design, align 4
  %121 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %val, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 2, i32 12
  %122 = ptrtoint ptr %constant_charge_voltage_max_uv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %constant_charge_voltage_max_uv, align 4
  %124 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  %cc = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 5
  %125 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cc, align 8
  %cc29 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 0, i32 5
  %127 = ptrtoint ptr %cc29 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cc29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %tobool31.not = icmp eq i32 %126, %128
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call fastcc i32 @cpcap_battery_cc_get_avg_current(ptr noundef %call)
  %129 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %call33, ptr %val, align 4
  br label %cleanup

if.end34:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %126, %128
  %accumulator36 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 5, i32 1
  %130 = ptrtoint ptr %accumulator36 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %accumulator36, align 4
  %accumulator38 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 0, i32 5, i32 1
  %132 = ptrtoint ptr %accumulator38 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %accumulator38, align 4
  %sub39 = sub i32 %131, %133
  %offset = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 5, i32 2
  %134 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %offset, align 8
  %call41 = call fastcc i32 @cpcap_battery_cc_to_ua(ptr noundef %call, i32 noundef %sub, i32 noundef %sub39, i16 noundef signext %135)
  %136 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call41, ptr %val, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %current_ua = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 1
  %137 = ptrtoint ptr %current_ua to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %current_ua, align 4
  %139 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %val, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %counter_uah = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 2
  %140 = ptrtoint ptr %counter_uah to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %counter_uah, align 8
  %142 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %val, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i.i.i, align 8
  %div = sdiv i32 %144, 10000
  %current_ua45 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 1
  %145 = ptrtoint ptr %current_ua45 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %current_ua45, align 4
  %mul = mul i32 %div, %146
  %conv = sext i32 %mul to i64
  %call46 = call i64 @div64_s64(i64 noundef %conv, i64 noundef 100) #8
  %conv47 = trunc i64 %call46 to i32
  %147 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv47, ptr %val, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  %cc49 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 5
  %148 = ptrtoint ptr %cc49 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cc49, align 8
  %cc51 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 0, i32 5
  %150 = ptrtoint ptr %cc51 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cc51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %tobool54.not = icmp eq i32 %149, %151
  br i1 %tobool54.not, label %if.then55, label %if.end64

if.then55:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = call fastcc i32 @cpcap_battery_cc_get_avg_current(ptr noundef %call)
  %conv57 = sext i32 %call56 to i64
  %152 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i.i.i, align 8
  %div59 = sdiv i32 %153, 10000
  %conv60 = sext i32 %div59 to i64
  %mul61 = mul nsw i64 %conv60, %conv57
  %call62 = call i64 @div64_s64(i64 noundef %mul61, i64 noundef 100) #8
  %conv63 = trunc i64 %call62 to i32
  %154 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv63, ptr %val, align 4
  br label %cleanup

if.end64:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  %sub53 = sub i32 %149, %151
  %accumulator66 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 5, i32 1
  %155 = ptrtoint ptr %accumulator66 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %accumulator66, align 4
  %accumulator68 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 0, i32 5, i32 1
  %157 = ptrtoint ptr %accumulator68 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %accumulator68, align 4
  %sub69 = sub i32 %156, %158
  %offset71 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 5, i32 2
  %159 = ptrtoint ptr %offset71 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %offset71, align 8
  %call72 = call fastcc i32 @cpcap_battery_cc_to_ua(ptr noundef %call, i32 noundef %sub53, i32 noundef %sub69, i16 noundef signext %160)
  %conv73 = sext i32 %call72 to i64
  %161 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i.i.i, align 8
  %163 = ptrtoint ptr %arrayidx.i.i327 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i.i327, align 8
  %add = add i32 %164, %162
  %div76 = sdiv i32 %add, 20000
  %conv77 = sext i32 %div76 to i64
  %mul78 = mul nsw i64 %conv77, %conv73
  %call79 = call i64 @div64_s64(i64 noundef %mul78, i64 noundef 100) #8
  %conv80 = trunc i64 %call79 to i32
  %165 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %conv80, ptr %val, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %if.end
  %arrayidx.i.i330 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2
  %166 = ptrtoint ptr %arrayidx.i.i330 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i.i330, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool84.not = icmp eq i32 %167, 0
  br i1 %tobool84.not, label %sw.bb81.cleanup_crit_edge, label %lor.lhs.false85

sw.bb81.cleanup_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false85:                                  ; preds = %sw.bb81
  %charge_full = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 9
  %168 = ptrtoint ptr %charge_full to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %charge_full, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool86.not = icmp eq i32 %169, 0
  br i1 %tobool86.not, label %lor.lhs.false85.cleanup_crit_edge, label %if.end88

lor.lhs.false85.cleanup_crit_edge:                ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end88:                                         ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #10
  %counter_uah89 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2, i32 2
  %170 = ptrtoint ptr %counter_uah89 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %counter_uah89, align 8
  %counter_uah90 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 2
  %172 = ptrtoint ptr %counter_uah90 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %counter_uah90, align 8
  %sub91 = sub i32 %171, %173
  %div93 = sdiv i32 %169, 200
  %add94 = add i32 %sub91, %div93
  %174 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add94, ptr %val, align 4
  %175 = call i32 @llvm.smax.i32(i32 %add94, i32 0)
  %176 = ptrtoint ptr %charge_full to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %charge_full, align 8
  %178 = call i32 @llvm.smin.i32(i32 %175, i32 %177)
  %179 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %val, align 4
  %mul106 = mul i32 %178, 100
  %180 = ptrtoint ptr %charge_full to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %charge_full, align 8
  %div108 = sdiv i32 %mul106, %181
  store i32 %div108, ptr %val, align 4
  br label %cleanup

sw.bb109:                                         ; preds = %if.end
  %call110 = call fastcc zeroext i1 @cpcap_battery_full(ptr noundef %call)
  br i1 %call110, label %if.then111, label %if.else112

if.then111:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 5, ptr %val, align 4
  br label %cleanup

if.else112:                                       ; preds = %sw.bb109
  %183 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3749999, i32 %184)
  %cmp114 = icmp sgt i32 %184, 3749999
  br i1 %cmp114, label %if.then116, label %if.else117

if.then116:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else117:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3299999, i32 %184)
  %cmp119 = icmp sgt i32 %184, 3299999
  br i1 %cmp119, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.else122:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100000, i32 %184)
  %cmp124 = icmp sgt i32 %184, 3100000
  br i1 %cmp124, label %if.then126, label %if.then131

if.then126:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.then131:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb138:                                         ; preds = %if.end
  %arrayidx.i.i331 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2
  %189 = ptrtoint ptr %arrayidx.i.i331 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i.i331, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool141.not = icmp eq i32 %190, 0
  br i1 %tobool141.not, label %sw.bb138.cleanup_crit_edge, label %if.end143

sw.bb138.cleanup_crit_edge:                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end143:                                        ; preds = %sw.bb138
  %counter_uah144 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 2, i32 2
  %191 = ptrtoint ptr %counter_uah144 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %counter_uah144, align 8
  %counter_uah145 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 2
  %193 = ptrtoint ptr %counter_uah145 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %counter_uah145, align 8
  %sub146 = sub i32 %192, %194
  %195 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %sub146, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub146)
  %cmp147 = icmp slt i32 %sub146, 0
  %charge_full150 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 9
  %196 = ptrtoint ptr %charge_full150 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %charge_full150, align 8
  br i1 %cmp147, label %if.then149, label %if.else168

if.then149:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool151.not = icmp eq i32 %197, 0
  br i1 %tobool151.not, label %if.then149.if.end167_crit_edge, label %cond.end158

if.then149.if.end167_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

cond.end158:                                      ; preds = %if.then149
  %sub156 = sub i32 0, %sub146
  %div161 = sdiv i32 %197, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div161, i32 %sub156)
  %cmp162 = icmp slt i32 %div161, %sub156
  br i1 %cmp162, label %if.then164, label %cond.end158.if.end167_crit_edge

cond.end158.if.end167_crit_edge:                  ; preds = %cond.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then164:                                       ; preds = %cond.end158
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %arrayidx.i.i331 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %arrayidx.i.i331, align 8
  %199 = ptrtoint ptr %charge_full150 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %charge_full150, align 8
  br label %cleanup

if.end167:                                        ; preds = %cond.end158.if.end167_crit_edge, %if.then149.if.end167_crit_edge
  %200 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else168:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool170.not = icmp ne i32 %197, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %sub146)
  %cmp173 = icmp slt i32 %197, %sub146
  %or.cond = select i1 %tobool170.not, i1 %cmp173, i1 false
  br i1 %or.cond, label %if.then175, label %if.else168.cleanup_crit_edge

if.else168.cleanup_crit_edge:                     ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then175:                                       ; preds = %if.else168
  %mul177 = mul i32 %197, 6
  %div178 = sdiv i32 %mul177, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub146, i32 %div178)
  %cmp179 = icmp sgt i32 %sub146, %div178
  br i1 %cmp179, label %if.then181, label %if.end184

if.then181:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %arrayidx.i.i331 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %arrayidx.i.i331, align 8
  %202 = ptrtoint ptr %charge_full150 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %charge_full150, align 8
  br label %cleanup

if.end184:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %197, ptr %val, align 4
  br label %cleanup

sw.bb188:                                         ; preds = %if.end
  %charge_full189 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 9
  %204 = ptrtoint ptr %charge_full189 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %charge_full189, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool190.not = icmp eq i32 %205, 0
  br i1 %tobool190.not, label %sw.bb188.cleanup_crit_edge, label %if.end192

sw.bb188.cleanup_crit_edge:                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end192:                                        ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %val, align 4
  br label %cleanup

sw.bb194:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %charge_full_design = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 1, i32 4
  %207 = ptrtoint ptr %charge_full_design to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %charge_full_design, align 4
  %209 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %val, align 4
  br label %cleanup

sw.bb197:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb198:                                         ; preds = %if.end
  %211 = load i8, ptr @ignore_temperature_probe, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool199.not = icmp eq i8 %211, 0
  br i1 %tobool199.not, label %if.end201, label %sw.bb198.cleanup_crit_edge

sw.bb198.cleanup_crit_edge:                       ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end201:                                        ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #10
  %temperature202 = getelementptr %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 6, i32 1, i32 3
  %212 = ptrtoint ptr %temperature202 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %temperature202, align 4
  %214 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end201, %sw.bb198.cleanup_crit_edge, %sw.bb197, %sw.bb194, %if.end192, %sw.bb188.cleanup_crit_edge, %if.end184, %if.then181, %if.else168.cleanup_crit_edge, %if.end167, %if.then164, %sw.bb138.cleanup_crit_edge, %if.then131, %if.then126, %if.then121, %if.then116, %if.then111, %if.end88, %lor.lhs.false85.cleanup_crit_edge, %sw.bb81.cleanup_crit_edge, %if.end64, %if.then55, %sw.bb44, %sw.bb43, %sw.bb42, %if.end34, %if.then32, %sw.bb25, %sw.bb22, %sw.bb19, %cpcap_battery_get_voltage.exit, %sw.bb16, %if.else14, %if.then13, %if.then9, %if.else, %if.then5, %if.end.cleanup_crit_edge, %cpcap_battery_update_status.exit.cleanup_crit_edge, %cpcap_battery_update_status.exit.thread335
  %retval.0 = phi i32 [ -61, %if.then164 ], [ -61, %if.then181 ], [ %conv.i, %cpcap_battery_update_status.exit.cleanup_crit_edge ], [ -61, %lor.lhs.false85.cleanup_crit_edge ], [ -61, %sw.bb81.cleanup_crit_edge ], [ -61, %sw.bb138.cleanup_crit_edge ], [ -61, %sw.bb188.cleanup_crit_edge ], [ -61, %sw.bb198.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end167 ], [ 0, %if.end184 ], [ 0, %if.else168.cleanup_crit_edge ], [ 0, %if.then111 ], [ 0, %if.then121 ], [ 0, %if.then131 ], [ 0, %if.then126 ], [ 0, %if.then116 ], [ 0, %if.then13 ], [ 0, %if.else14 ], [ 0, %if.then5 ], [ 0, %if.else ], [ 0, %if.end201 ], [ 0, %sw.bb197 ], [ 0, %sw.bb194 ], [ 0, %if.end192 ], [ 0, %if.end88 ], [ 0, %if.end64 ], [ 0, %if.then55 ], [ 0, %sw.bb44 ], [ 0, %sw.bb43 ], [ 0, %sw.bb42 ], [ 0, %if.end34 ], [ 0, %if.then32 ], [ 0, %sw.bb25 ], [ 0, %sw.bb22 ], [ 0, %sw.bb19 ], [ 0, %cpcap_battery_get_voltage.exit ], [ 0, %sw.bb16 ], [ 0, %if.then9 ], [ %call.i107.i, %cpcap_battery_update_status.exit.thread335 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_battery_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %prop.i = alloca %union.power_supply_propval, align 4
  %val.i = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 24, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %voltage_min_design = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 1, i32 3
  %3 = ptrtoint ptr %voltage_min_design to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %voltage_min_design, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %voltage_max_design = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 1, i32 2
  %5 = ptrtoint ptr %voltage_max_design to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %voltage_max_design, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp3 = icmp sgt i32 %2, %6
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 2, i32 12
  %7 = ptrtoint ptr %constant_charge_voltage_max_uv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %2, ptr %constant_charge_voltage_max_uv, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #8
  %10 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %prop.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !138
  %call.i = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.39) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.cpcap_battery_update_charger.exit_crit_edge, label %if.end.i

if.end5.cpcap_battery_update_charger.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_update_charger.exit

if.end.i:                                         ; preds = %if.end5
  %call1.i = call i32 @power_supply_get_property(ptr noundef nonnull %call.i, i32 noundef 31, ptr noundef nonnull %prop.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.out_put.i_crit_edge

if.end.i.out_put.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put.i

if.end4.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i = icmp slt i32 %13, %9
  br i1 %cmp.i, label %if.end4.i.out_put.i_crit_edge, label %if.end6.i

if.end4.i.out_put.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put.i

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %val.i, align 4
  %call7.i = call i32 @power_supply_set_property(ptr noundef nonnull %call.i, i32 noundef 31, ptr noundef nonnull %val.i) #8
  br label %out_put.i

out_put.i:                                        ; preds = %if.end6.i, %if.end4.i.out_put.i_crit_edge, %if.end.i.out_put.i_crit_edge
  %error.0.i = phi i32 [ %call1.i, %if.end.i.out_put.i_crit_edge ], [ 0, %if.end4.i.out_put.i_crit_edge ], [ %call7.i, %if.end6.i ]
  call void @power_supply_put(ptr noundef nonnull %call.i) #8
  br label %cpcap_battery_update_charger.exit

cpcap_battery_update_charger.exit:                ; preds = %out_put.i, %if.end5.cpcap_battery_update_charger.exit_crit_edge
  %retval.0.i = phi i32 [ %error.0.i, %out_put.i ], [ -19, %if.end5.cpcap_battery_update_charger.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9 = icmp slt i32 %16, 0
  br i1 %cmp9, label %sw.bb8.cleanup_crit_edge, label %if.end11

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %sw.bb8
  %charge_full_design = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 5, i32 1, i32 4
  %17 = ptrtoint ptr %charge_full_design to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %charge_full_design, align 4
  %mul = mul i32 %18, 6
  %div = sdiv i32 %mul, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div)
  %cmp14 = icmp sgt i32 %16, %div
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %charge_full = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %call, i32 0, i32 9
  %19 = ptrtoint ptr %charge_full to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %charge_full, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %cpcap_battery_update_charger.exit, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %retval.0.i, %cpcap_battery_update_charger.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpcap_battery_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %psp)
  %switch.selectcmp.case1 = icmp eq i32 %psp, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %psp)
  %switch.selectcmp.case2 = icmp eq i32 %psp, 24
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = zext i1 %switch.selectcmp to i32
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_battery_external_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  %prop = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #8
  %0 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prop, align 4, !annotation !138
  %call = call i32 @power_supply_get_property(ptr noundef %psy, i32 noundef 0, ptr noundef nonnull %prop) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cpcap_battery_full(ptr nocapture noundef %ddata) unnamed_addr #2 align 64 {
entry:
  %prop.i = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #8
  %0 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prop.i, align 4, !annotation !138
  %call.i = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.39) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cpcap_battery_get_charger_status.exit.thread, label %if.end.i

cpcap_battery_get_charger_status.exit.thread:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #8
  br label %if.end32

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @power_supply_get_property(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %prop.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then, label %cpcap_battery_get_charger_status.exit

cpcap_battery_get_charger_status.exit:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @power_supply_put(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #8
  br label %if.end32

if.then:                                          ; preds = %if.end.i
  %1 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prop.i, align 4
  call void @power_supply_put(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %2, label %if.then.if.end32_crit_edge [
    i32 2, label %do.body
    i32 4, label %do.body9
  ]

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_battery_full.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_battery_full, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !142

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_battery_full.__UNIQUE_ID_ddebug188, ptr noundef %5, ptr noundef nonnull @.str.37) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %is_full = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 12
  %6 = ptrtoint ptr %is_full to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_full, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %is_full, align 2
  br label %if.end32

do.body9:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_battery_full.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_battery_full, %do.end27)) #8
          to label %if.then23 [label %do.end27], !srcloc !142

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_battery_full.__UNIQUE_ID_ddebug189, ptr noundef %8, ptr noundef nonnull @.str.38) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body9
  %is_full28 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 12
  %9 = ptrtoint ptr %is_full28 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load29 = load i8, ptr %is_full28, align 2
  %bf.set31 = or i8 %bf.load29, -128
  store i8 %bf.set31, ptr %is_full28, align 2
  br label %if.end32

if.end32:                                         ; preds = %do.end27, %do.end, %if.then.if.end32_crit_edge, %cpcap_battery_get_charger_status.exit, %cpcap_battery_get_charger_status.exit.thread
  %is_full33 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 12
  %10 = ptrtoint ptr %is_full33 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load34 = load i8, ptr %is_full33, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34)
  %tobool35.not = icmp sgt i8 %bf.load34, -1
  br i1 %tobool35.not, label %if.end32.if.end41_crit_edge, label %land.lhs.true

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end32
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 5, i32 2, i32 12
  %11 = ptrtoint ptr %constant_charge_voltage_max_uv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %constant_charge_voltage_max_uv, align 4
  %sub = add i32 %12, -120000
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub)
  %cmp = icmp ult i32 %14, %sub
  br i1 %cmp, label %if.then36, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear39 = and i8 %bf.load34, 127
  %15 = ptrtoint ptr %is_full33 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.clear39, ptr %is_full33, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %land.lhs.true.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %16 = ptrtoint ptr %is_full33 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load43 = load i8, ptr %is_full33, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load43)
  %tobool46 = icmp slt i8 %bf.load43, 0
  ret i1 %tobool46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_cc_get_avg_current(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  %remainder.i.i.i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !138
  %reg = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 2596, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 11
  %3 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vendor, align 8
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %call8 = call i32 @regmap_read(ptr noundef %8, i32 noundef 2588, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp = icmp eq i16 %4, 1
  %. = select i1 %cmp, i32 18, i32 16
  %sext = shl i32 %6, %.
  %conv5 = ashr exact i32 %sext, %.
  %.29 = select i1 %cmp, i32 1, i32 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %shl.i25 = shl i32 %10, 22
  %shr.i26 = ashr exact i32 %shl.i25, 22
  %mul.i = mul nuw nsw i32 %.29, 250
  %conv.i.i = sext i32 %conv5 to i64
  %conv1.i.i27 = zext i32 %.29 to i64
  %conv2.i.i = sext i32 %shr.i26 to i64
  %mul.i.i = mul nsw i64 %conv2.i.i, %conv1.i.i27
  %sub.neg.i.i = sub nsw i64 %mul.i.i, %conv.i.i
  %cc_lsb.i.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 7
  %11 = ptrtoint ptr %cc_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cc_lsb.i.i, align 8
  %conv3.i.i = zext i32 %12 to i64
  %mul4.neg.i.i = mul nsw i64 %sub.neg.i.i, %conv3.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #8
  %13 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !138
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %mul4.neg.i.i, i32 noundef %mul.i, ptr noundef nonnull %remainder.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #8
  %conv6.i.i = trunc i64 %call.i.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %conv6.i.i, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_cc_to_ua(ptr nocapture noundef readonly %ddata, i32 noundef %sample, i32 noundef %accumulator, i16 noundef signext %offset) unnamed_addr #2 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %sample, 250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  br i1 %tobool.not.i, label %entry.cpcap_battery_cc_raw_div.exit_crit_edge, label %if.end.i

entry.cpcap_battery_cc_raw_div.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpcap_battery_cc_raw_div.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i32 %accumulator to i64
  %conv1.i = sext i32 %sample to i64
  %conv2.i = sext i16 %offset to i64
  %mul.i = mul nsw i64 %conv2.i, %conv1.i
  %sub.neg.i = sub nsw i64 %mul.i, %conv.i
  %cc_lsb.i = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %ddata, i32 0, i32 7
  %0 = ptrtoint ptr %cc_lsb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc_lsb.i, align 8
  %conv3.i = zext i32 %1 to i64
  %mul4.neg.i = mul i64 %sub.neg.i, %conv3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %2 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !138
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul4.neg.i, i32 noundef %mul, ptr noundef nonnull %remainder.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %conv6.i = trunc i64 %call.i.i to i32
  br label %cpcap_battery_cc_raw_div.exit

cpcap_battery_cc_raw_div.exit:                    ; preds = %if.end.i, %entry.cpcap_battery_cc_raw_div.exit_crit_edge
  %retval.0.i = phi i32 [ %conv6.i, %if.end.i ], [ 0, %entry.cpcap_battery_cc_raw_div.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__param_ignore_temperature_probe, !1, !"__param_ignore_temperature_probe", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/cpcap-battery.c", i32 147, i32 1}
!2 = !{ptr @__UNIQUE_ID_ignore_temperature_probetype187, !1, !"__UNIQUE_ID_ignore_temperature_probetype187", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_cpcap_battery__194_1118_cpcap_battery_driver_init6, !4, !"__initcall__kmod_cpcap_battery__194_1118_cpcap_battery_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1118, i32 1}
!5 = !{ptr @__exitcall_cpcap_battery_driver_exit, !4, !"__exitcall_cpcap_battery_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_file195, !7, !"__UNIQUE_ID_file195", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1120, i32 1}
!8 = !{ptr @__UNIQUE_ID_license196, !7, !"__UNIQUE_ID_license196", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author197, !10, !"__UNIQUE_ID_author197", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1121, i32 1}
!11 = !{ptr @__UNIQUE_ID_description198, !12, !"__UNIQUE_ID_description198", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1122, i32 1}
!13 = !{ptr @ignore_temperature_probe, !14, !"ignore_temperature_probe", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/cpcap-battery.c", i32 146, i32 13}
!15 = !{ptr @__param_str_ignore_temperature_probe, !1, !"__param_str_ignore_temperature_probe", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1112, i32 12}
!18 = !{ptr @cpcap_battery_driver, !19, !"cpcap_battery_driver", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1110, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1083, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cpcap_battery_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @cpcap_battery_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/mfd/motorola-cpcap.h", i32 284, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cpcap_get_vendor._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @cpcap_get_vendor._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/cpcap-battery.c", i32 878, i32 3}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/cpcap-battery.c", i32 878, i32 10}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/cpcap-battery.c", i32 878, i32 20}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/cpcap-battery.c", i32 879, i32 3}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/cpcap-battery.c", i32 879, i32 16}
!44 = distinct !{null, !45, !"cpcap_battery_irqs", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/cpcap-battery.c", i32 877, i32 28}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/cpcap-battery.c", i32 891, i32 38}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/cpcap-battery.c", i32 849, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cpcap_battery_init_irq._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @cpcap_battery_init_irq._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/cpcap-battery.c", i32 809, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cpcap_battery_irq_thread._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @cpcap_battery_irq_thread._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/cpcap-battery.c", i32 813, i32 4}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cpcap_battery_irq_thread._entry.20, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cpcap_battery_irq_thread._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/cpcap-battery.c", i32 818, i32 4}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cpcap_battery_irq_thread._entry.24, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cpcap_battery_irq_thread._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/cpcap-battery.c", i32 906, i32 15}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/cpcap-battery.c", i32 906, i32 24}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/cpcap-battery.c", i32 906, i32 38}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/cpcap-battery.c", i32 928, i32 9}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1016, i32 11}
!79 = !{ptr @cpcap_charger_battery_desc, !80, !"cpcap_charger_battery_desc", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1015, i32 39}
!81 = !{ptr @cpcap_battery_props, !82, !"cpcap_battery_props", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/cpcap-battery.c", i32 534, i32 35}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/cpcap-battery.c", i32 228, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cpcap_battery_get_current._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @cpcap_battery_get_current._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/cpcap-battery.c", i32 193, i32 4}
!90 = !{ptr @cpcap_charger_battery_temperature._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cpcap_charger_battery_temperature._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"is_low", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/cpcap-battery.c", i32 451, i32 14}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/cpcap-battery.c", i32 423, i32 4}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cpcap_battery_full.__UNIQUE_ID_ddebug188, !95, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/cpcap-battery.c", i32 427, i32 4}
!100 = !{ptr @cpcap_battery_full.__UNIQUE_ID_ddebug189, !99, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/cpcap-battery.c", i32 397, i32 37}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/cpcap-battery.c", i32 212, i32 3}
!105 = !{ptr @cpcap_battery_get_voltage._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cpcap_battery_get_voltage._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/cpcap-battery.c", i32 970, i32 2}
!109 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cpcap_battery_calibrate._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @cpcap_battery_calibrate._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/cpcap-battery.c", i32 974, i32 3}
!114 = !{ptr @cpcap_battery_calibrate._entry.43, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cpcap_battery_calibrate._entry_ptr.45, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/cpcap-battery.c", i32 979, i32 3}
!118 = !{ptr @cpcap_battery_calibrate._entry.46, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cpcap_battery_calibrate._entry_ptr.48, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1105, i32 3}
!122 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cpcap_battery_remove._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @cpcap_battery_remove._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @cpcap_battery_id_table, !126, !"cpcap_battery_id_table", i1 false, i1 false}
!126 = !{!"../drivers/power/supply/cpcap-battery.c", i32 1005, i32 34}
!127 = !{ptr @cpcap_battery_default_data, !128, !"cpcap_battery_default_data", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/cpcap-battery.c", i32 995, i32 42}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i64 502521, i64 502548}
!140 = !{i64 503216, i64 503243, i64 503276, i64 503297, i64 503324, i64 503350}
!141 = !{i8 0, i8 2}
!142 = !{i64 2148784863, i64 2148784868, i64 2148784881, i64 2148784925, i64 2148784959, i64 2148784980}
