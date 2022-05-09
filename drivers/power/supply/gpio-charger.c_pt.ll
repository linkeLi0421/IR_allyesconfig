; ModuleID = '/llk/IR_all_yes/drivers/power/supply/gpio-charger.c_pt.bc'
source_filename = "../drivers/power/supply/gpio-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.gpio_charger = type { ptr, i32, i32, i8, ptr, %struct.power_supply_desc, ptr, ptr, ptr, ptr, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.gpio_charger_platform_data = type { ptr, i32, ptr, i32 }
%struct.gpio_mapping = type { i32, i32 }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }

@__initcall__kmod_gpio_charger__188_395_gpio_charger_driver_init6 = internal global ptr @gpio_charger_driver_init, section ".initcall6.init", align 4
@gpio_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_charger_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_charger_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_charger_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_charger_driver_exit = internal global ptr @gpio_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [57 x i8] c"gpio_charger.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [76 x i8] c"gpio_charger.description=Driver for chargers only communicating via GPIO(s)\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [52 x i8] c"gpio_charger.file=drivers/power/supply/gpio-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [25 x i8] c"gpio_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [41 x i8] c"gpio_charger.alias=platform:gpio-charger\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-charger\00", [19 x i8] zeroinitializer }, align 32
@gpio_charger_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_charger_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_charger_suspend, ptr @gpio_charger_resume, ptr @gpio_charger_suspend, ptr @gpio_charger_resume, ptr @gpio_charger_suspend, ptr @gpio_charger_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpio_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio_charger_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/power/supply/gpio-charger.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_charger_probe._entry_ptr = internal global ptr @gpio_charger_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error getting GPIO descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@gpio_charger_properties = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 0, i32 30], [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charge-status\00", [18 x i8] zeroinitializer }, align 32
@gpio_charger_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register power supply: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@gpio_charger_probe._entry_ptr.10 = internal global ptr @gpio_charger_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"charge-current-limit\00", [43 x i8] zeroinitializer }, align 32
@init_charge_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error getting current-limit GPIOs\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"init_charge_current_limit\00", [38 x i8] zeroinitializer }, align 32
@init_charge_current_limit._entry_ptr = internal global ptr @init_charge_current_limit._entry, section ".printk_index", align 4
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"charge-current-limit-mapping\00", [35 x i8] zeroinitializer }, align 32
@init_charge_current_limit._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid charge-current-limit-mapping length\0A\00", [51 x i8] zeroinitializer }, align 32
@init_charge_current_limit._entry_ptr.17 = internal global ptr @init_charge_current_limit._entry.15, section ".printk_index", align 4
@init_charge_current_limit._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"charge-current-limit-mapping not sorted by current in descending order\0A\00", [56 x i8] zeroinitializer }, align 32
@init_charge_current_limit._entry_ptr.20 = internal global ptr @init_charge_current_limit._entry.18, section ".printk_index", align 4
@set_charge_current_limit.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_charger\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_charge_current_limit\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"set charge current limit to %d (requested: %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"charger-type\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ups\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mains\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-sdp\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-dcp\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-cdp\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-aca\00", [24 x i8] zeroinitializer }, align 32
@gpio_charger_get_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 160, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown charger type %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpio_charger_get_type\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gpio_charger_get_type._entry_ptr = internal global ptr @gpio_charger_get_type._entry, section ".printk_index", align 4
@gpio_charger_get_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 177, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio_charger_get_irq\00", [43 x i8] zeroinitializer }, align 32
@gpio_charger_get_irq._entry_ptr = internal global ptr @gpio_charger_get_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 30]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"gpio_charger_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 386, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 389, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"gpio_charger_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 380, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"gpio_charger_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 377, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 264, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 281, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"gpio_charger_properties\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 245, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 289, i32 47 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 335, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 192, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 194, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 201, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 207, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 225, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 79, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 142, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 143, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 145, i32 15 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 147, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 149, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 151, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 153, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 155, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 157, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 160, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [39 x i8] c"../drivers/power/supply/gpio-charger.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 177, i32 4 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_gpio_charger_driver_exit, ptr @__initcall__kmod_gpio_charger__188_395_gpio_charger_driver_init6, ptr @gpio_charger_driver_exit, ptr @gpio_charger_get_irq._entry, ptr @gpio_charger_get_irq._entry_ptr, ptr @gpio_charger_get_type._entry, ptr @gpio_charger_get_type._entry_ptr, ptr @gpio_charger_probe._entry, ptr @gpio_charger_probe._entry.8, ptr @gpio_charger_probe._entry_ptr, ptr @gpio_charger_probe._entry_ptr.10, ptr @init_charge_current_limit._entry, ptr @init_charge_current_limit._entry.15, ptr @init_charge_current_limit._entry.18, ptr @init_charge_current_limit._entry_ptr, ptr @init_charge_current_limit._entry_ptr.17, ptr @init_charge_current_limit._entry_ptr.20, ptr @gpio_charger_driver, ptr @.str, ptr @gpio_charger_match, ptr @gpio_charger_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @gpio_charger_properties, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_properties to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_charge_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_charge_current_limit._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_charge_current_limit._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_get_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_charger_get_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_charger_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_charger_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %chargetype.i = alloca ptr, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %2 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 96, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %call7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef null, i32 noundef 1) #8
  %gpiod = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %gpiod to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %gpiod, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %tobool16.not = icmp eq ptr %call7, null
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  store i32 4, ptr @gpio_charger_properties, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %num_props.0 = phi i32 [ 1, %if.then17 ], [ 0, %if.end14.if.end18_crit_edge ]
  %call19 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  %cmp.i151 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %tobool24.not = icmp eq ptr %call19, null
  br i1 %tobool24.not, label %if.end23.if.end29_crit_edge, label %if.then25

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %charge_status26 = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %charge_status26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %charge_status26, align 4
  %arrayidx27 = getelementptr [3 x i32], ptr @gpio_charger_properties, i32 0, i32 %num_props.0
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx27, align 4
  %inc28 = add nuw nsw i32 %num_props.0, 1
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23.if.end29_crit_edge
  %num_props.1 = phi i32 [ %inc28, %if.then25 ], [ %num_props.0, %if.end23.if.end29_crit_edge ]
  %call30 = tail call fastcc i32 @init_charge_current_limit(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %current_limit_map = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %current_limit_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_limit_map, align 4
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.end32.if.end37_crit_edge, label %if.then34

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35 = getelementptr [3 x i32], ptr @gpio_charger_properties, i32 0, i32 %num_props.1
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 30, ptr %arrayidx35, align 4
  %inc36 = add nuw nsw i32 %num_props.1, 1
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  %num_props.2 = phi i32 [ %inc36, %if.then34 ], [ %num_props.1, %if.end32.if.end37_crit_edge ]
  %charger_desc38 = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5
  %properties = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gpio_charger_properties, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %num_props.2, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gpio_charger_get_property, ptr %get_property, align 4
  %set_property = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %set_property to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gpio_charger_set_property, ptr %set_property, align 4
  %property_is_writeable = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %property_is_writeable to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @gpio_charger_property_is_writeable, ptr %property_is_writeable, align 4
  %of_node39 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node39, align 8
  %22 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %23 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %drv_data, align 4
  br i1 %tobool.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %charger_desc38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %charger_desc38, align 4
  %type = getelementptr inbounds %struct.gpio_charger_platform_data, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %type44 = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %type44, align 4
  %supplied_to = getelementptr inbounds %struct.gpio_charger_platform_data, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %supplied_to, align 4
  %supplied_to45 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %32 = ptrtoint ptr %supplied_to45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %supplied_to45, align 4
  %num_supplicants = getelementptr inbounds %struct.gpio_charger_platform_data, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_supplicants, align 4
  %num_supplicants46 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %35 = ptrtoint ptr %num_supplicants46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %num_supplicants46, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end37
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %21, align 4
  %38 = ptrtoint ptr %charger_desc38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %charger_desc38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chargetype.i) #8
  %39 = ptrtoint ptr %chargetype.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %chargetype.i, align 4, !annotation !98
  %call.i152 = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull %chargetype.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.do.end.i_crit_edge

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %if.else
  %40 = ptrtoint ptr %chargetype.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chargetype.i, align 4
  %call1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.25, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.gpio_charger_get_type.exit_crit_edge, label %if.end.i

if.then.i.gpio_charger_get_type.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

if.end.i:                                         ; preds = %if.then.i
  %call4.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.26, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.gpio_charger_get_type.exit_crit_edge, label %if.end7.i

if.end.i.gpio_charger_get_type.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.27, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.gpio_charger_get_type.exit_crit_edge, label %if.end11.i

if.end7.i.gpio_charger_get_type.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.28, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.gpio_charger_get_type.exit_crit_edge, label %if.end15.i

if.end11.i.gpio_charger_get_type.exit_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.29, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.gpio_charger_get_type.exit_crit_edge, label %if.end19.i

if.end15.i.gpio_charger_get_type.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.30, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.gpio_charger_get_type.exit_crit_edge, label %if.end23.i

if.end19.i.gpio_charger_get_type.exit_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

if.end23.i:                                       ; preds = %if.end19.i
  %call24.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.31, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.gpio_charger_get_type.exit_crit_edge, label %if.end27.i

if.end23.i.gpio_charger_get_type.exit_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

if.end27.i:                                       ; preds = %if.end23.i
  %call28.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.32, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.gpio_charger_get_type.exit_crit_edge, label %if.end27.i.do.end.i_crit_edge

if.end27.i.do.end.i_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end27.i.gpio_charger_get_type.exit_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_type.exit

do.end.i:                                         ; preds = %if.end27.i.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  %42 = ptrtoint ptr %chargetype.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chargetype.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef %43) #11
  br label %gpio_charger_get_type.exit

gpio_charger_get_type.exit:                       ; preds = %do.end.i, %if.end27.i.gpio_charger_get_type.exit_crit_edge, %if.end23.i.gpio_charger_get_type.exit_crit_edge, %if.end19.i.gpio_charger_get_type.exit_crit_edge, %if.end15.i.gpio_charger_get_type.exit_crit_edge, %if.end11.i.gpio_charger_get_type.exit_crit_edge, %if.end7.i.gpio_charger_get_type.exit_crit_edge, %if.end.i.gpio_charger_get_type.exit_crit_edge, %if.then.i.gpio_charger_get_type.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %if.then.i.gpio_charger_get_type.exit_crit_edge ], [ 1, %if.end.i.gpio_charger_get_type.exit_crit_edge ], [ 2, %if.end7.i.gpio_charger_get_type.exit_crit_edge ], [ 3, %if.end11.i.gpio_charger_get_type.exit_crit_edge ], [ 4, %if.end15.i.gpio_charger_get_type.exit_crit_edge ], [ 4, %if.end19.i.gpio_charger_get_type.exit_crit_edge ], [ 4, %if.end23.i.gpio_charger_get_type.exit_crit_edge ], [ 4, %if.end27.i.gpio_charger_get_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chargetype.i) #8
  %type51 = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %type51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i, ptr %type51, align 4
  br label %if.end52

if.end52:                                         ; preds = %gpio_charger_get_type.exit, %if.then42
  %45 = ptrtoint ptr %charger_desc38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %charger_desc38, align 4
  %tobool54.not = icmp eq ptr %46, null
  br i1 %tobool54.not, label %if.then55, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 8
  %49 = ptrtoint ptr %charger_desc38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %charger_desc38, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52.if.end58_crit_edge
  %call59 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef %charger_desc38, ptr noundef nonnull %psy_cfg) #8
  %charger = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call59, ptr %charger, align 4
  %cmp.i153 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %51) #11
  br label %cleanup

if.end68:                                         ; preds = %if.end58
  %52 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gpiod, align 4
  %call.i154 = call i32 @gpiod_to_irq(ptr noundef %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp.i155 = icmp sgt i32 %call.i154, 0
  br i1 %cmp.i155, label %if.then.i156, label %if.end68.gpio_charger_get_irq.exit_crit_edge

if.end68.gpio_charger_get_irq.exit_crit_edge:     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_irq.exit

if.then.i156:                                     ; preds = %if.end68
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i156.dev_name.exit.i_crit_edge

if.then.i156.dev_name.exit.i_crit_edge:           ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i156.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %57, %if.end.i.i ], [ %55, %if.then.i156.dev_name.exit.i_crit_edge ]
  %call2.i = call i32 @devm_request_any_context_irq(ptr noundef %dev1, i32 noundef %call.i154, ptr noundef nonnull @gpio_charger_irq, i32 noundef 3, ptr noundef %retval.0.i.i, ptr noundef %call59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i157, label %dev_name.exit.i.gpio_charger_get_irq.exit_crit_edge

dev_name.exit.i.gpio_charger_get_irq.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_irq.exit

do.end.i157:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call2.i) #11
  br label %gpio_charger_get_irq.exit

gpio_charger_get_irq.exit:                        ; preds = %do.end.i157, %dev_name.exit.i.gpio_charger_get_irq.exit_crit_edge, %if.end68.gpio_charger_get_irq.exit_crit_edge
  %irq.0.i = phi i32 [ 0, %do.end.i157 ], [ %call.i154, %dev_name.exit.i.gpio_charger_get_irq.exit_crit_edge ], [ %call.i154, %if.end68.gpio_charger_get_irq.exit_crit_edge ]
  %irq = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 1
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %irq.0.i, ptr %irq, align 4
  %59 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %charger, align 4
  %charge_status73 = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %charge_status73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %charge_status73, align 4
  %call.i158 = call i32 @gpiod_to_irq(ptr noundef %62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp.i159 = icmp sgt i32 %call.i158, 0
  br i1 %cmp.i159, label %if.then.i162, label %gpio_charger_get_irq.exit.gpio_charger_get_irq.exit170_crit_edge

gpio_charger_get_irq.exit.gpio_charger_get_irq.exit170_crit_edge: ; preds = %gpio_charger_get_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_irq.exit170

if.then.i162:                                     ; preds = %gpio_charger_get_irq.exit
  %init_name.i.i160 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %init_name.i.i160 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i160, align 8
  %tobool.not.i.i161 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i161, label %if.end.i.i163, label %if.then.i162.dev_name.exit.i167_crit_edge

if.then.i162.dev_name.exit.i167_crit_edge:        ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i167

if.end.i.i163:                                    ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i167

dev_name.exit.i167:                               ; preds = %if.end.i.i163, %if.then.i162.dev_name.exit.i167_crit_edge
  %retval.0.i.i164 = phi ptr [ %66, %if.end.i.i163 ], [ %64, %if.then.i162.dev_name.exit.i167_crit_edge ]
  %call2.i165 = call i32 @devm_request_any_context_irq(ptr noundef %dev1, i32 noundef %call.i158, ptr noundef nonnull @gpio_charger_irq, i32 noundef 3, ptr noundef %retval.0.i.i164, ptr noundef %60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i165)
  %cmp3.i166 = icmp slt i32 %call2.i165, 0
  br i1 %cmp3.i166, label %do.end.i168, label %dev_name.exit.i167.gpio_charger_get_irq.exit170_crit_edge

dev_name.exit.i167.gpio_charger_get_irq.exit170_crit_edge: ; preds = %dev_name.exit.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_charger_get_irq.exit170

do.end.i168:                                      ; preds = %dev_name.exit.i167
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call2.i165) #11
  br label %gpio_charger_get_irq.exit170

gpio_charger_get_irq.exit170:                     ; preds = %do.end.i168, %dev_name.exit.i167.gpio_charger_get_irq.exit170_crit_edge, %gpio_charger_get_irq.exit.gpio_charger_get_irq.exit170_crit_edge
  %irq.0.i169 = phi i32 [ 0, %do.end.i168 ], [ %call.i158, %dev_name.exit.i167.gpio_charger_get_irq.exit170_crit_edge ], [ %call.i158, %gpio_charger_get_irq.exit.gpio_charger_get_irq.exit170_crit_edge ]
  %charge_status_irq75 = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 2
  %67 = ptrtoint ptr %charge_status_irq75 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %irq.0.i169, ptr %charge_status_irq75, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call76 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %gpio_charger_get_irq.exit170, %if.then62, %if.end29.cleanup_crit_edge, %if.then21, %if.then10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ %9, %if.then21 ], [ %51, %if.then62 ], [ 0, %gpio_charger_get_irq.exit170 ], [ -2, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_charge_current_limit(ptr noundef %dev, ptr nocapture noundef %gpio_charger) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 3) #8
  %current_limit_gpios = getelementptr inbounds %struct.gpio_charger, ptr %gpio_charger, i32 0, i32 8
  %0 = ptrtoint ptr %current_limit_gpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %current_limit_gpios, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  %1 = ptrtoint ptr %current_limit_gpios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_limit_gpios, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp11 = icmp ne i32 %call8, 0
  %4 = and i32 %call8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  %or.cond = and i1 %cmp11, %tobool12.not
  br i1 %or.cond, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %div8485 = lshr i32 %call8, 1
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div8485, i32 8) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !99

devm_kmalloc_array.exit.thread:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %current_limit_map82 = getelementptr inbounds %struct.gpio_charger, ptr %gpio_charger, i32 0, i32 9
  %7 = ptrtoint ptr %current_limit_map82 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %current_limit_map82, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end17
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3264) #8
  %current_limit_map = getelementptr inbounds %struct.gpio_charger, ptr %gpio_charger, i32 0, i32 9
  %9 = ptrtoint ptr %current_limit_map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i, ptr %current_limit_map, align 4
  %tobool20.not = icmp eq ptr %call5.i, null
  br i1 %tobool20.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %if.end22

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %devm_kmalloc_array.exit
  %current_limit_map_size = getelementptr inbounds %struct.gpio_charger, ptr %gpio_charger, i32 0, i32 10
  %10 = ptrtoint ptr %current_limit_map_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div8485, ptr %current_limit_map_size, align 4
  %call25 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %call5.i, i32 noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %for.cond.preheader

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end22
  %11 = ptrtoint ptr %current_limit_map_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_limit_map_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3087.not = icmp eq i32 %12, 0
  br i1 %cmp3087.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %13 = ptrtoint ptr %current_limit_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %current_limit_map, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %cur_limit.089 = phi i32 [ -1, %for.body.lr.ph ], [ %16, %for.cond.for.body_crit_edge ]
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpio_mapping, ptr %14, i32 %i.088
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cur_limit.089)
  %cmp32 = icmp ugt i32 %16, %cur_limit.089
  br i1 %cmp32, label %do.end36, label %for.cond

do.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub = add i32 %12, -1
  %17 = ptrtoint ptr %current_limit_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %current_limit_map, align 4
  %arrayidx43 = getelementptr %struct.gpio_mapping, ptr %18, i32 %sub
  %19 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx43, align 1
  %21 = ptrtoint ptr %current_limit_gpios to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_limit_gpios, align 4
  %ndescs1.i = getelementptr inbounds %struct.gpio_descs, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ndescs1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndescs1.i, align 4
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %22, i32 0, i32 2
  br i1 %cmp3087.not, label %for.end.cleanup_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.051.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_mapping, ptr %18, i32 %i.051.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %20)
  %cmp4.not.i = icmp ugt i32 %26, %20
  br i1 %cmp4.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.ph.i = phi i32 [ %12, %for.inc.i.for.end.i_crit_edge ], [ %i.051.i, %for.body.i.for.end.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.gpio_mapping, ptr %18, i32 %i.0.lcssa.ph.i
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %mapping.sroa.0.0.copyload.i = load i32, ptr %arrayidx8.i, align 1
  %mapping.sroa.5.0.arrayidx8.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx8.i, i32 4
  %28 = ptrtoint ptr %mapping.sroa.5.0.arrayidx8.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %mapping.sroa.5.0.copyload.i = load i32, ptr %mapping.sroa.5.0.arrayidx8.sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1053.i = icmp sgt i32 %24, 0
  br i1 %cmp1053.i, label %for.end.i.for.body11.i_crit_edge, label %for.end.i.for.end19.i_crit_edge

for.end.i.for.end19.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19.i

for.end.i.for.body11.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.end.i.for.body11.i_crit_edge
  %i.154.i = phi i32 [ %inc18.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.end.i.for.body11.i_crit_edge ]
  %29 = xor i32 %i.154.i, -1
  %sub14.i = add i32 %24, %29
  %arrayidx15.i = getelementptr ptr, ptr %desc.i, i32 %sub14.i
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx15.i, align 4
  %32 = lshr i32 %mapping.sroa.5.0.copyload.i, %i.154.i
  %33 = and i32 %32, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %31, i32 noundef %33) #8
  %inc18.i = add nuw nsw i32 %i.154.i, 1
  %exitcond55.not.i = icmp eq i32 %inc18.i, %24
  br i1 %exitcond55.not.i, label %for.body11.i.for.end19.i_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

for.body11.i.for.end19.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19.i

for.end19.i:                                      ; preds = %for.body11.i.for.end19.i_crit_edge, %for.end.i.for.end19.i_crit_edge
  %charge_current_limit.i = getelementptr inbounds %struct.gpio_charger, ptr %gpio_charger, i32 0, i32 11
  %34 = ptrtoint ptr %charge_current_limit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mapping.sroa.0.0.copyload.i, ptr %charge_current_limit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_charge_current_limit.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_charge_current_limit, %cleanup)) #8
          to label %if.then26.i [label %cleanup], !srcloc !100

if.then26.i:                                      ; preds = %for.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %gpio_charger to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_charger, align 4
  %37 = ptrtoint ptr %charge_current_limit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %charge_current_limit.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_charge_current_limit.__UNIQUE_ID_ddebug187, ptr noundef %36, ptr noundef nonnull @.str.23, i32 noundef %38, i32 noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26.i, %for.end19.i, %for.end.cleanup_crit_edge, %do.end36, %if.end22.cleanup_crit_edge, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %do.end16, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ -22, %do.end16 ], [ -22, %do.end36 ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ %call25, %if.end22.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end19.i ], [ 0, %if.then26.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb2
    i32 30, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpiod = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gpiod, align 4
  %call1 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %2) #8
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %charge_status = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %charge_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %charge_status, align 4
  %call3 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 3, i32 1
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %charge_current_limit = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %charge_current_limit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %charge_current_limit, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %sw.bb2, %sw.bb
  %call1.sink = phi i32 [ %call1, %sw.bb ], [ %6, %sw.bb4 ], [ %., %sw.bb2 ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_charger_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %psp)
  %cond = icmp eq i32 %psp, 30
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %current_limit_gpios.i = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %current_limit_gpios.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_limit_gpios.i, align 4
  %ndescs1.i = getelementptr inbounds %struct.gpio_descs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ndescs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndescs1.i, align 4
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %3, i32 0, i32 2
  %current_limit_map_size.i = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %current_limit_map_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_limit_map_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %for.body.lr.ph.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %current_limit_map.i = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %current_limit_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_limit_map.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_mapping, ptr %9, i32 %i.051.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp4.not.i = icmp ugt i32 %11, %1
  br i1 %cmp4.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.ph.i = phi i32 [ %7, %for.inc.i.for.end.i_crit_edge ], [ %i.051.i, %for.body.i.for.end.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.gpio_mapping, ptr %9, i32 %i.0.lcssa.ph.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %mapping.sroa.0.0.copyload.i = load i32, ptr %arrayidx8.i, align 1
  %mapping.sroa.5.0.arrayidx8.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx8.i, i32 4
  %13 = ptrtoint ptr %mapping.sroa.5.0.arrayidx8.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %mapping.sroa.5.0.copyload.i = load i32, ptr %mapping.sroa.5.0.arrayidx8.sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1053.i = icmp sgt i32 %5, 0
  br i1 %cmp1053.i, label %for.end.i.for.body11.i_crit_edge, label %for.end.i.for.end19.i_crit_edge

for.end.i.for.end19.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19.i

for.end.i.for.body11.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.end.i.for.body11.i_crit_edge
  %i.154.i = phi i32 [ %inc18.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.end.i.for.body11.i_crit_edge ]
  %14 = xor i32 %i.154.i, -1
  %sub14.i = add i32 %5, %14
  %arrayidx15.i = getelementptr ptr, ptr %desc.i, i32 %sub14.i
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15.i, align 4
  %17 = lshr i32 %mapping.sroa.5.0.copyload.i, %i.154.i
  %18 = and i32 %17, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef %18) #8
  %inc18.i = add nuw nsw i32 %i.154.i, 1
  %exitcond55.not.i = icmp eq i32 %inc18.i, %5
  br i1 %exitcond55.not.i, label %for.body11.i.for.end19.i_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

for.body11.i.for.end19.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19.i

for.end19.i:                                      ; preds = %for.body11.i.for.end19.i_crit_edge, %for.end.i.for.end19.i_crit_edge
  %charge_current_limit.i = getelementptr inbounds %struct.gpio_charger, ptr %call.i, i32 0, i32 11
  %19 = ptrtoint ptr %charge_current_limit.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mapping.sroa.0.0.copyload.i, ptr %charge_current_limit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_charge_current_limit.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_charger_set_property, %cleanup)) #8
          to label %if.then26.i [label %cleanup], !srcloc !100

if.then26.i:                                      ; preds = %for.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = ptrtoint ptr %charge_current_limit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %charge_current_limit.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_charge_current_limit.__UNIQUE_ID_ddebug187, ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef %23, i32 noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26.i, %for.end19.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %if.then26.i ], [ 0, %for.end19.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_charger_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %psp)
  %cond = icmp eq i32 %psp, 30
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_charger_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @power_supply_changed(ptr noundef %devid) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_charger_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
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
  %irq = getelementptr inbounds %struct.gpio_charger, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %wakeup_enabled = getelementptr inbounds %struct.gpio_charger, ptr %1, i32 0, i32 3
  %frombool = zext i1 %tobool.not to i8
  %7 = ptrtoint ptr %wakeup_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %wakeup_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_charger_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
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
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wakeup_enabled = getelementptr inbounds %struct.gpio_charger, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %wakeup_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wakeup_enabled, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.gpio_charger, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %charger = getelementptr inbounds %struct.gpio_charger, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_gpio_charger__188_395_gpio_charger_driver_init6, !1, !"__initcall__kmod_gpio_charger__188_395_gpio_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/gpio-charger.c", i32 395, i32 1}
!2 = !{ptr @__exitcall_gpio_charger_driver_exit, !1, !"__exitcall_gpio_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author189, !4, !"__UNIQUE_ID_author189", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/gpio-charger.c", i32 397, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/gpio-charger.c", i32 398, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/gpio-charger.c", i32 399, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias193, !11, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/gpio-charger.c", i32 400, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/gpio-charger.c", i32 389, i32 11}
!14 = !{ptr @gpio_charger_driver, !15, !"gpio_charger_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/gpio-charger.c", i32 386, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/gpio-charger.c", i32 264, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gpio_charger_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @gpio_charger_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/gpio-charger.c", i32 281, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/gpio-charger.c", i32 289, i32 47}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/gpio-charger.c", i32 335, i32 3}
!30 = !{ptr @gpio_charger_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gpio_charger_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @gpio_charger_properties, !33, !"gpio_charger_properties", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/gpio-charger.c", i32 245, i32 35}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/gpio-charger.c", i32 192, i32 3}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/gpio-charger.c", i32 194, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @init_charge_current_limit._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @init_charge_current_limit._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/gpio-charger.c", i32 201, i32 44}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/gpio-charger.c", i32 207, i32 3}
!45 = !{ptr @init_charge_current_limit._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @init_charge_current_limit._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/gpio-charger.c", i32 225, i32 4}
!49 = !{ptr @init_charge_current_limit._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @init_charge_current_limit._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/gpio-charger.c", i32 79, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @set_charge_current_limit.__UNIQUE_ID_ddebug187, !52, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/gpio-charger.c", i32 142, i32 40}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/gpio-charger.c", i32 143, i32 15}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/gpio-charger.c", i32 145, i32 15}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/gpio-charger.c", i32 147, i32 15}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/gpio-charger.c", i32 149, i32 15}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/gpio-charger.c", i32 151, i32 15}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/gpio-charger.c", i32 153, i32 15}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/gpio-charger.c", i32 155, i32 15}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/gpio-charger.c", i32 157, i32 15}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/gpio-charger.c", i32 160, i32 2}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @gpio_charger_get_type._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @gpio_charger_get_type._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/gpio-charger.c", i32 177, i32 4}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gpio_charger_get_irq._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @gpio_charger_get_irq._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @gpio_charger_match, !86, !"gpio_charger_match", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/gpio-charger.c", i32 380, i32 34}
!87 = !{ptr @gpio_charger_pm_ops, !88, !"gpio_charger_pm_ops", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/gpio-charger.c", i32 377, i32 8}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2148286317, i64 2148286322, i64 2148286335, i64 2148286379, i64 2148286413, i64 2148286434}
!101 = !{i8 0, i8 2}
