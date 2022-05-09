; ModuleID = '/llk/IR_all_yes/drivers/power/supply/da9150-charger.c_pt.bc'
source_filename = "../drivers/power/supply/da9150-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.da9150_charger = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_da9150_charger__294_686_da9150_charger_driver_init6 = internal global ptr @da9150_charger_driver_init, section ".initcall6.init", align 4
@da9150_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9150_charger_probe, ptr @da9150_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9150_charger_driver_exit = internal global ptr @da9150_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [53 x i8] c"da9150_charger.description=Charger Driver for DA9150\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [73 x i8] c"da9150_charger.author=Adam Thomson <Adam.Thomson.Opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [56 x i8] c"da9150_charger.file=drivers/power/supply/da9150-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"da9150_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9150-charger\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAN_IBUS\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAN_VBUS\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CHAN_TJUNC\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAN_VBAT\00", [22 x i8] zeroinitializer }, align 32
@usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.15, i32 4, ptr null, i32 0, ptr @da9150_charger_props, i32 4, ptr @da9150_charger_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.16, i32 1, ptr null, i32 0, ptr @da9150_charger_bat_props, i32 9, ptr @da9150_charger_battery_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@da9150_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 580, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown VBUS state - reg = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9150_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/da9150-charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9150_charger_probe._entry_ptr = internal global ptr @da9150_charger_probe._entry, section ".printk_index", align 4
@da9150_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&charger->otg_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CHG_STATUS\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHG_TJUNC\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CHG_VFAULT\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CHG_VBUS\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9150-usb\00", [21 x i8] zeroinitializer }, align 32
@da9150_charger_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 12, i32 18, i32 52], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9150-battery\00", [17 x i8] zeroinitializer }, align 32
@da9150_charger_bat_props = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 4, i32 2, i32 3, i32 1, i32 11, i32 12, i32 30, i32 32], [60 x i8] zeroinitializer }, align 32
@da9150_charger_otg_ncb.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 0, i8 113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9150_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9150_charger_otg_ncb\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DA9150 OTG notify %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@da9150_charger_register_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 470, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get IRQ CHG_STATUS: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da9150_charger_register_irq\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@da9150_charger_register_irq._entry_ptr = internal global ptr @da9150_charger_register_irq._entry, section ".printk_index", align 4
@da9150_charger_register_irq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.7, i32 477, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@da9150_charger_register_irq._entry_ptr.25 = internal global ptr @da9150_charger_register_irq._entry.23, section ".printk_index", align 4
@da9150_charger_tjunc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 378, ptr @.str.28, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TJunc over temperature!!!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da9150_charger_tjunc_irq\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@da9150_charger_tjunc_irq._entry_ptr = internal global ptr @da9150_charger_tjunc_irq._entry, section ".printk_index", align 4
@da9150_charger_vfault_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 389, ptr @.str.28, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VSYS under voltage!!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"da9150_charger_vfault_irq\00", [38 x i8] zeroinitializer }, align 32
@da9150_charger_vfault_irq._entry_ptr = internal global ptr @da9150_charger_vfault_irq._entry, section ".printk_index", align 4
@da9150_charger_vbus_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.31, ptr @.str.7, i32 414, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da9150_charger_vbus_irq\00", [40 x i8] zeroinitializer }, align 32
@da9150_charger_vbus_irq._entry_ptr = internal global ptr @da9150_charger_vbus_irq._entry, section ".printk_index", align 4
@da9150_charger_unregister_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.32, ptr @.str.7, i32 491, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"da9150_charger_unregister_irq\00", [34 x i8] zeroinitializer }, align 32
@da9150_charger_unregister_irq._entry_ptr = internal global ptr @da9150_charger_unregister_irq._entry, section ".printk_index", align 4
@switch.table.da9150_charger_battery_get_prop = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 4, i32 3, i32 3, i32 3], [56 x i8] zeroinitializer }, align 32
@switch.table.da9150_charger_battery_get_prop.33 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 5], [36 x i8] zeroinitializer }, align 32
@switch.table.da9150_charger_battery_get_prop.34 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 2, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 12, i64 18, i64 52]
@__sancov_gen_cov_switch_values.38 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 11, i64 12, i64 30, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 112]
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"da9150_charger_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 678, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 680, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 531, i32 44 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 537, i32 44 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 543, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 549, i32 44 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"usb_desc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 498, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"battery_desc\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 506, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 580, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 588, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 595, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 600, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 605, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 610, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 499, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"da9150_charger_props\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 102, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 507, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"da9150_charger_bat_props\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 309, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 452, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 470, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 477, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 378, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 389, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 413, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [41 x i8] c"../drivers/power/supply/da9150-charger.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 491, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [45 x i8] c"switch.table.da9150_charger_battery_get_prop\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [48 x i8] c"switch.table.da9150_charger_battery_get_prop.33\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [48 x i8] c"switch.table.da9150_charger_battery_get_prop.34\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_da9150_charger_driver_exit, ptr @__initcall__kmod_da9150_charger__294_686_da9150_charger_driver_init6, ptr @da9150_charger_driver_exit, ptr @da9150_charger_probe._entry, ptr @da9150_charger_probe._entry_ptr, ptr @da9150_charger_register_irq._entry, ptr @da9150_charger_register_irq._entry.23, ptr @da9150_charger_register_irq._entry_ptr, ptr @da9150_charger_register_irq._entry_ptr.25, ptr @da9150_charger_tjunc_irq._entry, ptr @da9150_charger_tjunc_irq._entry_ptr, ptr @da9150_charger_unregister_irq._entry, ptr @da9150_charger_unregister_irq._entry_ptr, ptr @da9150_charger_vbus_irq._entry, ptr @da9150_charger_vbus_irq._entry_ptr, ptr @da9150_charger_vfault_irq._entry, ptr @da9150_charger_vfault_irq._entry_ptr, ptr @da9150_charger_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @usb_desc, ptr @battery_desc, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @da9150_charger_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @da9150_charger_props, ptr @.str.16, ptr @da9150_charger_bat_props, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.da9150_charger_battery_get_prop, ptr @switch.table.da9150_charger_battery_get_prop.33, ptr @switch.table.da9150_charger_battery_get_prop.34], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_bat_props to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_register_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_register_irq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_tjunc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_vfault_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_vbus_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_charger_unregister_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9150_charger_battery_get_prop to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9150_charger_battery_get_prop.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9150_charger_battery_get_prop.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9150_charger_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9150_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9150_charger_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call.i, align 4
  %dev4 = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev4, align 4
  %call5 = tail call ptr @iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %ibus_chan = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %ibus_chan to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %ibus_chan, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %vbus_chan = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %vbus_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %vbus_chan, align 4
  %cmp.i172 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call12 to i32
  br label %vbus_chan_fail

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %tjunc_chan = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %tjunc_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call19, ptr %tjunc_chan, align 4
  %cmp.i173 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call19 to i32
  br label %tjunc_chan_fail

if.end25:                                         ; preds = %if.end18
  %call26 = tail call ptr @iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %vbat_chan = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %vbat_chan to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %vbat_chan, align 4
  %cmp.i174 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call26 to i32
  br label %vbat_chan_fail

if.end32:                                         ; preds = %if.end25
  %call33 = tail call ptr @power_supply_register(ptr noundef %dev1, ptr noundef nonnull @usb_desc, ptr noundef null) #5
  %usb = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call33, ptr %usb, align 4
  %cmp.i175 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call33 to i32
  br label %usb_fail

if.end39:                                         ; preds = %if.end32
  %call40 = tail call ptr @power_supply_register(ptr noundef %dev1, ptr noundef nonnull @battery_desc, ptr noundef null) #5
  %battery = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call40, ptr %battery, align 4
  %cmp.i176 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call40 to i32
  br label %battery_fail

if.end46:                                         ; preds = %if.end39
  %call47 = tail call zeroext i8 @da9150_reg_read(ptr noundef %3, i16 noundef zeroext 111) #5
  %conv = zext i8 %call47 to i32
  %and = and i32 %conv, 7
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end [
    i32 0, label %if.end46.sw.bb_crit_edge
    i32 1, label %if.end46.sw.bb_crit_edge184
    i32 2, label %sw.bb49
  ]

if.end46.sw.bb_crit_edge184:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end46.sw.bb_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end46.sw.bb_crit_edge, %if.end46.sw.bb_crit_edge184
  %20 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %battery, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb49, %sw.bb
  %.sink = phi ptr [ null, %do.end ], [ %23, %sw.bb49 ], [ %21, %sw.bb ]
  %supply_online53 = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %supply_online53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.sink, ptr %supply_online53, align 4
  %call54 = tail call ptr @devm_usb_get_phy(ptr noundef %dev1, i32 noundef 1) #5
  %usb_phy = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call54, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %call54, null
  %cmp.i177 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i177
  br i1 %spec.select.i, label %sw.epilog.if.end69_crit_edge, label %do.body58

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.body58:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %otg_work = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %otg_work, i32 noundef 0) #5
  %26 = ptrtoint ptr %otg_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %otg_work, align 4
  %lockdep_map = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @da9150_charger_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry62 = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry62, ptr %entry62, align 4
  %prev.i = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry62, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @da9150_charger_otg_work, ptr %func, align 4
  %otg_nb = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %otg_nb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @da9150_charger_otg_ncb, ptr %otg_nb, align 4
  %31 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_phy, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %32, i32 0, i32 18
  %call.i178 = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %otg_nb) #5
  br label %if.end69

if.end69:                                         ; preds = %do.body58, %sw.epilog.if.end69_crit_edge
  %call70 = tail call fastcc i32 @da9150_charger_register_irq(ptr noundef %pdev, ptr noundef nonnull @da9150_charger_chg_irq, ptr noundef nonnull @.str.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp = icmp slt i32 %call70, 0
  br i1 %cmp, label %if.end69.chg_irq_fail_crit_edge, label %if.end73

if.end69.chg_irq_fail_crit_edge:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %chg_irq_fail

if.end73:                                         ; preds = %if.end69
  %call74 = tail call fastcc i32 @da9150_charger_register_irq(ptr noundef %pdev, ptr noundef nonnull @da9150_charger_tjunc_irq, ptr noundef nonnull @.str.12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.tjunc_irq_fail_crit_edge, label %if.end78

if.end73.tjunc_irq_fail_crit_edge:                ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %tjunc_irq_fail

if.end78:                                         ; preds = %if.end73
  %call79 = tail call fastcc i32 @da9150_charger_register_irq(ptr noundef %pdev, ptr noundef nonnull @da9150_charger_vfault_irq, ptr noundef nonnull @.str.13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end78.vfault_irq_fail_crit_edge, label %if.end83

if.end78.vfault_irq_fail_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfault_irq_fail

if.end83:                                         ; preds = %if.end78
  %call84 = tail call fastcc i32 @da9150_charger_register_irq(ptr noundef %pdev, ptr noundef nonnull @da9150_charger_vbus_irq, ptr noundef nonnull @.str.14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %vbus_irq_fail, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

vbus_irq_fail:                                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @da9150_charger_unregister_irq(ptr noundef %pdev, ptr noundef nonnull @.str.13)
  br label %vfault_irq_fail

vfault_irq_fail:                                  ; preds = %vbus_irq_fail, %if.end78.vfault_irq_fail_crit_edge
  %ret.0 = phi i32 [ %call79, %if.end78.vfault_irq_fail_crit_edge ], [ %call84, %vbus_irq_fail ]
  tail call fastcc void @da9150_charger_unregister_irq(ptr noundef %pdev, ptr noundef nonnull @.str.12)
  br label %tjunc_irq_fail

tjunc_irq_fail:                                   ; preds = %vfault_irq_fail, %if.end73.tjunc_irq_fail_crit_edge
  %ret.1 = phi i32 [ %call74, %if.end73.tjunc_irq_fail_crit_edge ], [ %ret.0, %vfault_irq_fail ]
  tail call fastcc void @da9150_charger_unregister_irq(ptr noundef %pdev, ptr noundef nonnull @.str.11)
  br label %chg_irq_fail

chg_irq_fail:                                     ; preds = %tjunc_irq_fail, %if.end69.chg_irq_fail_crit_edge
  %ret.2 = phi i32 [ %call70, %if.end69.chg_irq_fail_crit_edge ], [ %ret.1, %tjunc_irq_fail ]
  %33 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i179 = icmp eq ptr %34, null
  %cmp.i180 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %spec.select.i181 = or i1 %tobool.not.i179, %cmp.i180
  br i1 %spec.select.i181, label %chg_irq_fail.battery_fail_crit_edge, label %if.then91

chg_irq_fail.battery_fail_crit_edge:              ; preds = %chg_irq_fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %battery_fail

if.then91:                                        ; preds = %chg_irq_fail
  call void @__sanitizer_cov_trace_pc() #7
  %otg_nb93 = getelementptr inbounds %struct.da9150_charger, ptr %call.i, i32 0, i32 6
  %notifier.i182 = getelementptr inbounds %struct.usb_phy, ptr %34, i32 0, i32 18
  %call.i183 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i182, ptr noundef %otg_nb93) #5
  br label %battery_fail

battery_fail:                                     ; preds = %if.then91, %chg_irq_fail.battery_fail_crit_edge, %if.then43
  %ret.3 = phi i32 [ %18, %if.then43 ], [ %ret.2, %chg_irq_fail.battery_fail_crit_edge ], [ %ret.2, %if.then91 ]
  %35 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %36) #5
  br label %usb_fail

usb_fail:                                         ; preds = %battery_fail, %if.then36
  %ret.4 = phi i32 [ %16, %if.then36 ], [ %ret.3, %battery_fail ]
  %37 = ptrtoint ptr %vbat_chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vbat_chan, align 4
  tail call void @iio_channel_release(ptr noundef %38) #5
  br label %vbat_chan_fail

vbat_chan_fail:                                   ; preds = %usb_fail, %if.then29
  %ret.5 = phi i32 [ %14, %if.then29 ], [ %ret.4, %usb_fail ]
  %39 = ptrtoint ptr %tjunc_chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tjunc_chan, align 4
  tail call void @iio_channel_release(ptr noundef %40) #5
  br label %tjunc_chan_fail

tjunc_chan_fail:                                  ; preds = %vbat_chan_fail, %if.then22
  %ret.6 = phi i32 [ %12, %if.then22 ], [ %ret.5, %vbat_chan_fail ]
  %41 = ptrtoint ptr %vbus_chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vbus_chan, align 4
  tail call void @iio_channel_release(ptr noundef %42) #5
  br label %vbus_chan_fail

vbus_chan_fail:                                   ; preds = %tjunc_chan_fail, %if.then15
  %ret.7 = phi i32 [ %10, %if.then15 ], [ %ret.6, %tjunc_chan_fail ]
  %43 = ptrtoint ptr %ibus_chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ibus_chan, align 4
  tail call void @iio_channel_release(ptr noundef %44) #5
  br label %cleanup

cleanup:                                          ; preds = %vbus_chan_fail, %if.end83.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %8, %if.then8 ], [ %ret.7, %vbus_chan_fail ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #5
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %1) #5
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.13) #5
  %call4 = tail call ptr @free_irq(i32 noundef %call3, ptr noundef %1) #5
  %call5 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.12) #5
  %call6 = tail call ptr @free_irq(i32 noundef %call5, ptr noundef %1) #5
  %call7 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #5
  %call8 = tail call ptr @free_irq(i32 noundef %call7, ptr noundef %1) #5
  %usb_phy = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %otg_nb = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 6
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %otg_nb) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %battery = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %battery, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #5
  %usb = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %7) #5
  %ibus_chan = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %ibus_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibus_chan, align 4
  tail call void @iio_channel_release(ptr noundef %9) #5
  %vbus_chan = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %vbus_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus_chan, align 4
  tail call void @iio_channel_release(ptr noundef %11) #5
  %tjunc_chan = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %tjunc_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tjunc_chan, align 4
  tail call void @iio_channel_release(ptr noundef %13) #5
  %vbat_chan = getelementptr inbounds %struct.da9150_charger, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %vbat_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbat_chan, align 4
  tail call void @iio_channel_release(ptr noundef %15) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @da9150_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9150_charger_otg_work(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -36
  %usb_event = getelementptr i8, ptr %data, i32 44
  %0 = ptrtoint ptr %usb_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 0, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr i8, ptr %data, i32 -28
  %3 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %4) #5
  %battery = getelementptr i8, ptr %data, i32 -24
  %5 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %6) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink7 = phi i8 [ 1, %sw.bb1 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  tail call void @da9150_set_bits(ptr noundef %8, i16 noundef zeroext 355, i8 noundef zeroext 3, i8 noundef zeroext %.sink7) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_otg_ncb(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9150_charger_otg_ncb.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@da9150_charger_otg_ncb, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %nb, i32 -20
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9150_charger_otg_ncb.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %val) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %usb_event = getelementptr i8, ptr %nb, i32 56
  %2 = ptrtoint ptr %usb_event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %usb_event, align 4
  %otg_work = getelementptr i8, ptr %nb, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %otg_work) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9150_charger_register_irq(ptr noundef %pdev, ptr noundef %handler, ptr noundef %irq_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %irq_name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @request_threaded_irq(i32 noundef %call2, ptr noundef null, ptr noundef %handler, i32 noundef 8192, ptr noundef %irq_name, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call2, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call3, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_chg_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %battery = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %1) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_tjunc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.26) #8
  %usb = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %3) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_vfault_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.29) #8
  %usb = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %3) #5
  %battery = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %5) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_vbus_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i8 @da9150_reg_read(ptr noundef %1, i16 noundef zeroext 111) #5
  %conv = zext i8 %call to i32
  %and = and i32 %conv, 7
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge16
    i32 2, label %sw.bb1
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %battery = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %battery, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  %.sink = phi ptr [ null, %do.end ], [ %6, %sw.bb1 ], [ %4, %sw.bb ]
  %supply_online4 = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %supply_online4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.sink, ptr %supply_online4, align 4
  %usb5 = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %usb5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb5, align 4
  tail call void @power_supply_changed(ptr noundef %11) #5
  %battery6 = getelementptr inbounds %struct.da9150_charger, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %battery6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %battery6, align 4
  tail call void @power_supply_changed(ptr noundef %13) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da9150_charger_unregister_irq(ptr noundef %pdev, ptr noundef %irq_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %irq_name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @free_irq(i32 noundef %call2, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_get_prop(ptr noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %t_val.i = alloca i32, align 4
  %i_val.i = alloca i32, align 4
  %v_val.i = alloca i32, align 4
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
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb2
    i32 18, label %sw.bb4
    i32 52, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %supply_online.i = getelementptr inbounds %struct.da9150_charger, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %supply_online.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %supply_online.i, align 4
  %cmp.i = icmp eq ptr %6, %psy
  %cond.i = zext i1 %cmp.i to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v_val.i) #5
  %8 = ptrtoint ptr %v_val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %v_val.i, align 4, !annotation !97
  %vbus_chan.i = getelementptr inbounds %struct.da9150_charger, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %vbus_chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbus_chan.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %10, ptr noundef nonnull %v_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i15 = icmp slt i32 %call.i, 0
  br i1 %cmp.i15, label %sw.bb2.da9150_charger_vbus_voltage_now.exit_crit_edge, label %if.end.i

sw.bb2.da9150_charger_vbus_voltage_now.exit_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_vbus_voltage_now.exit

if.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %v_val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v_val.i, align 4
  %mul.i = mul i32 %12, 1000
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i, ptr %val, align 4
  br label %da9150_charger_vbus_voltage_now.exit

da9150_charger_vbus_voltage_now.exit:             ; preds = %if.end.i, %sw.bb2.da9150_charger_vbus_voltage_now.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %sw.bb2.da9150_charger_vbus_voltage_now.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v_val.i) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_val.i) #5
  %14 = ptrtoint ptr %i_val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %i_val.i, align 4, !annotation !97
  %ibus_chan.i = getelementptr inbounds %struct.da9150_charger, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %ibus_chan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ibus_chan.i, align 4
  %call.i16 = call i32 @iio_read_channel_processed(ptr noundef %16, ptr noundef nonnull %i_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %sw.bb4.da9150_charger_ibus_current_avg.exit_crit_edge, label %if.end.i19

sw.bb4.da9150_charger_ibus_current_avg.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_ibus_current_avg.exit

if.end.i19:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %i_val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_val.i, align 4
  %mul.i18 = mul i32 %18, 1000
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i18, ptr %val, align 4
  br label %da9150_charger_ibus_current_avg.exit

da9150_charger_ibus_current_avg.exit:             ; preds = %if.end.i19, %sw.bb4.da9150_charger_ibus_current_avg.exit_crit_edge
  %retval.0.i20 = phi i32 [ 0, %if.end.i19 ], [ %call.i16, %sw.bb4.da9150_charger_ibus_current_avg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_val.i) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_val.i) #5
  %20 = ptrtoint ptr %t_val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %t_val.i, align 4, !annotation !97
  %tjunc_chan.i = getelementptr inbounds %struct.da9150_charger, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %tjunc_chan.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tjunc_chan.i, align 4
  %call.i21 = call i32 @iio_read_channel_processed(ptr noundef %22, ptr noundef nonnull %t_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i22 = icmp slt i32 %call.i21, 0
  br i1 %cmp.i22, label %sw.bb6.da9150_charger_tjunc_temp.exit_crit_edge, label %if.end.i23

sw.bb6.da9150_charger_tjunc_temp.exit_crit_edge:  ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_tjunc_temp.exit

if.end.i23:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %t_val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t_val.i, align 4
  %div.i = sdiv i32 %24, 100
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %val, align 4
  br label %da9150_charger_tjunc_temp.exit

da9150_charger_tjunc_temp.exit:                   ; preds = %if.end.i23, %sw.bb6.da9150_charger_tjunc_temp.exit_crit_edge
  %retval.0.i24 = phi i32 [ 0, %if.end.i23 ], [ %call.i21, %sw.bb6.da9150_charger_tjunc_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_val.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %da9150_charger_tjunc_temp.exit, %da9150_charger_ibus_current_avg.exit, %da9150_charger_vbus_voltage_now.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i24, %da9150_charger_tjunc_temp.exit ], [ %retval.0.i20, %da9150_charger_ibus_current_avg.exit ], [ %retval.0.i, %da9150_charger_vbus_voltage_now.exit ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_charger_battery_get_prop(ptr noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %v_val.i = alloca i32, align 4
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
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 1, label %sw.bb8
    i32 11, label %sw.bb10
    i32 12, label %sw.bb12
    i32 30, label %sw.bb14
    i32 32, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i = tail call zeroext i8 @da9150_reg_read(ptr noundef %6, i16 noundef zeroext 111) #5
  %7 = and i8 %call.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.i = icmp eq i8 %7, 0
  br i1 %switch.i, label %sw.bb.da9150_charger_battery_status.exit_crit_edge, label %if.end.i

sw.bb.da9150_charger_battery_status.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_battery_status.exit

if.end.i:                                         ; preds = %sw.bb
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call7.i = tail call zeroext i8 @da9150_reg_read(ptr noundef %9, i16 noundef zeroext 113) #5
  %10 = and i8 %call7.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %11 = icmp ult i8 %10, 10
  br i1 %11, label %switch.lookup, label %if.end.i.da9150_charger_battery_status.exit_crit_edge

if.end.i.da9150_charger_battery_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_battery_status.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i = zext i8 %10 to i32
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.da9150_charger_battery_get_prop, i32 0, i32 %and9.i
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %da9150_charger_battery_status.exit

da9150_charger_battery_status.exit:               ; preds = %switch.lookup, %if.end.i.da9150_charger_battery_status.exit_crit_edge, %sw.bb.da9150_charger_battery_status.exit_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb.da9150_charger_battery_status.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.i.da9150_charger_battery_status.exit_crit_edge ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %supply_online.i = getelementptr inbounds %struct.da9150_charger, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %supply_online.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %supply_online.i, align 4
  %cmp.i = icmp eq ptr %15, %psy
  %cond.i = zext i1 %cmp.i to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.i, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %call.i35 = tail call zeroext i8 @da9150_reg_read(ptr noundef %18, i16 noundef zeroext 113) #5
  %conv.i = zext i8 %call.i35 to i32
  %and.i = and i32 %conv.i, 112
  %19 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and.i, label %sw.epilog.i [
    i32 96, label %sw.bb4.da9150_charger_battery_health.exit_crit_edge
    i32 112, label %sw.bb1.i
  ]

sw.bb4.da9150_charger_battery_health.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_battery_health.exit

sw.bb1.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_battery_health.exit

sw.epilog.i:                                      ; preds = %sw.bb4
  %and3.i = and i32 %conv.i, 15
  %switch.tableidx = add nsw i32 %and3.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 7
  br i1 %20, label %switch.lookup58, label %sw.epilog.i.da9150_charger_battery_health.exit_crit_edge

sw.epilog.i.da9150_charger_battery_health.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_battery_health.exit

switch.lookup58:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep59 = getelementptr inbounds [7 x i32], ptr @switch.table.da9150_charger_battery_get_prop.33, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  br label %da9150_charger_battery_health.exit

da9150_charger_battery_health.exit:               ; preds = %switch.lookup58, %sw.epilog.i.da9150_charger_battery_health.exit_crit_edge, %sw.bb1.i, %sw.bb4.da9150_charger_battery_health.exit_crit_edge
  %.sink.i36 = phi i32 [ 2, %sw.bb1.i ], [ 6, %sw.bb4.da9150_charger_battery_health.exit_crit_edge ], [ %switch.load60, %switch.lookup58 ], [ 1, %sw.epilog.i.da9150_charger_battery_health.exit_crit_edge ]
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i36, ptr %val, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %call.i37 = tail call zeroext i8 @da9150_reg_read(ptr noundef %24, i16 noundef zeroext 113) #5
  %25 = and i8 %call.i37, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %25)
  %cmp.i38 = icmp ne i8 %25, 9
  %..i = zext i1 %cmp.i38 to i32
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %..i, ptr %val, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call.i39 = tail call zeroext i8 @da9150_reg_read(ptr noundef %28, i16 noundef zeroext 113) #5
  %29 = and i8 %call.i39, 15
  %and.i40 = zext i8 %29 to i32
  %switch.tableidx62 = add nsw i32 %and.i40, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx62)
  %30 = icmp ult i32 %switch.tableidx62, 4
  br i1 %30, label %switch.lookup61, label %sw.bb8.da9150_charger_battery_charge_type.exit_crit_edge

sw.bb8.da9150_charger_battery_charge_type.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_battery_charge_type.exit

switch.lookup61:                                  ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep63 = getelementptr inbounds [4 x i32], ptr @switch.table.da9150_charger_battery_get_prop.34, i32 0, i32 %switch.tableidx62
  %31 = ptrtoint ptr %switch.gep63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load64 = load i32, ptr %switch.gep63, align 4
  br label %da9150_charger_battery_charge_type.exit

da9150_charger_battery_charge_type.exit:          ; preds = %switch.lookup61, %sw.bb8.da9150_charger_battery_charge_type.exit_crit_edge
  %.sink.i43 = phi i32 [ %switch.load64, %switch.lookup61 ], [ 1, %sw.bb8.da9150_charger_battery_charge_type.exit_crit_edge ]
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i43, ptr %val, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %call.i45 = tail call zeroext i8 @da9150_reg_read(ptr noundef %34, i16 noundef zeroext 360) #5
  %35 = and i8 %call.i45, 15
  %and.i46 = zext i8 %35 to i32
  %mul.i = mul nuw nsw i32 %and.i46, 50000
  %add.i = add nuw nsw i32 %mul.i, 2500000
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %val, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v_val.i) #5
  %37 = ptrtoint ptr %v_val.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %v_val.i, align 4, !annotation !97
  %vbat_chan.i = getelementptr inbounds %struct.da9150_charger, ptr %3, i32 0, i32 12
  %38 = ptrtoint ptr %vbat_chan.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vbat_chan.i, align 4
  %call.i47 = call i32 @iio_read_channel_processed(ptr noundef %39, ptr noundef nonnull %v_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i48 = icmp slt i32 %call.i47, 0
  br i1 %cmp.i48, label %sw.bb12.da9150_charger_battery_voltage_now.exit_crit_edge, label %if.end.i50

sw.bb12.da9150_charger_battery_voltage_now.exit_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9150_charger_battery_voltage_now.exit

if.end.i50:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %v_val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v_val.i, align 4
  %mul.i49 = mul i32 %41, 1000
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul.i49, ptr %val, align 4
  br label %da9150_charger_battery_voltage_now.exit

da9150_charger_battery_voltage_now.exit:          ; preds = %if.end.i50, %sw.bb12.da9150_charger_battery_voltage_now.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i50 ], [ %call.i47, %sw.bb12.da9150_charger_battery_voltage_now.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v_val.i) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %call.i51 = tail call zeroext i8 @da9150_reg_read(ptr noundef %44, i16 noundef zeroext 362) #5
  %conv.i52 = zext i8 %call.i51 to i32
  %mul.i53 = mul nuw nsw i32 %conv.i52, 25000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.i53, ptr %val, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %call.i54 = tail call zeroext i8 @da9150_reg_read(ptr noundef %47, i16 noundef zeroext 359) #5
  %48 = and i8 %call.i54, 31
  %and.i55 = zext i8 %48 to i32
  %mul.i56 = mul nuw nsw i32 %and.i55, 25000
  %add.i57 = add nuw nsw i32 %mul.i56, 3650000
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i57, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %da9150_charger_battery_voltage_now.exit, %sw.bb10, %da9150_charger_battery_charge_type.exit, %sw.bb6, %da9150_charger_battery_health.exit, %sw.bb2, %da9150_charger_battery_status.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ %retval.0.i, %da9150_charger_battery_voltage_now.exit ], [ 0, %sw.bb10 ], [ 0, %da9150_charger_battery_charge_type.exit ], [ 0, %sw.bb6 ], [ 0, %da9150_charger_battery_health.exit ], [ 0, %sw.bb2 ], [ 0, %da9150_charger_battery_status.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da9150_set_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_da9150_charger__294_686_da9150_charger_driver_init6, !1, !"__initcall__kmod_da9150_charger__294_686_da9150_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/da9150-charger.c", i32 686, i32 1}
!2 = !{ptr @__exitcall_da9150_charger_driver_exit, !1, !"__exitcall_da9150_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/da9150-charger.c", i32 688, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/da9150-charger.c", i32 689, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/da9150-charger.c", i32 690, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/da9150-charger.c", i32 680, i32 11}
!12 = !{ptr @da9150_charger_driver, !13, !"da9150_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/da9150-charger.c", i32 678, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/da9150-charger.c", i32 531, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/da9150-charger.c", i32 537, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/da9150-charger.c", i32 543, i32 45}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/da9150-charger.c", i32 549, i32 44}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/da9150-charger.c", i32 580, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @da9150_charger_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @da9150_charger_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @da9150_charger_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/da9150-charger.c", i32 588, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/da9150-charger.c", i32 595, i32 8}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/da9150-charger.c", i32 600, i32 8}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/da9150-charger.c", i32 605, i32 8}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/da9150-charger.c", i32 610, i32 8}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/da9150-charger.c", i32 499, i32 11}
!43 = !{ptr @usb_desc, !44, !"usb_desc", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/da9150-charger.c", i32 498, i32 39}
!45 = !{ptr @da9150_charger_props, !46, !"da9150_charger_props", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/da9150-charger.c", i32 102, i32 35}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/da9150-charger.c", i32 507, i32 11}
!49 = !{ptr @battery_desc, !50, !"battery_desc", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/da9150-charger.c", i32 506, i32 39}
!51 = !{ptr @da9150_charger_bat_props, !52, !"da9150_charger_bat_props", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/da9150-charger.c", i32 309, i32 35}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/da9150-charger.c", i32 452, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @da9150_charger_otg_ncb.__UNIQUE_ID_ddebug293, !54, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/da9150-charger.c", i32 470, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @da9150_charger_register_irq._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @da9150_charger_register_irq._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/da9150-charger.c", i32 477, i32 3}
!66 = !{ptr @da9150_charger_register_irq._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @da9150_charger_register_irq._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/da9150-charger.c", i32 378, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @da9150_charger_tjunc_irq._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @da9150_charger_tjunc_irq._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/da9150-charger.c", i32 389, i32 2}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @da9150_charger_vfault_irq._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @da9150_charger_vfault_irq._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/da9150-charger.c", i32 413, i32 3}
!81 = !{ptr @da9150_charger_vbus_irq._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @da9150_charger_vbus_irq._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/da9150-charger.c", i32 491, i32 3}
!85 = !{ptr @da9150_charger_unregister_irq._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @da9150_charger_unregister_irq._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2148706953, i64 2148706958, i64 2148706971, i64 2148707015, i64 2148707049, i64 2148707070}
!97 = !{!"auto-init"}
