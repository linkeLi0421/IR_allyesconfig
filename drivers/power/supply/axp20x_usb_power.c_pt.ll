; ModuleID = '/llk/IR_all_yes/drivers/power/supply/axp20x_usb_power.c_pt.bc'
source_filename = "../drivers/power/supply/axp20x_usb_power.c"
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
%struct.axp_data = type { ptr, ptr, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.axp20x_usb_power = type { ptr, ptr, i32, ptr, ptr, %struct.delayed_work, i32, i32, i32, [0 x i32] }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_axp20x_usb_power__187_688_axp20x_usb_power_driver_init6 = internal global ptr @axp20x_usb_power_driver_init, section ".initcall6.init", align 4
@axp20x_usb_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp20x_usb_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axp20x_usb_power_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_usb_power_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp20x_usb_power_driver_exit = internal global ptr @axp20x_usb_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [60 x i8] c"axp20x_usb_power.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [72 x i8] c"axp20x_usb_power.description=AXP20x PMIC USB power supply status driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [60 x i8] c"axp20x_usb_power.file=drivers/power/supply/axp20x_usb_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [29 x i8] c"axp20x_usb_power.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"axp20x-usb-power-supply\00", [40 x i8] zeroinitializer }, align 32
@axp20x_usb_power_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp202-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp202_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp221-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp221_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp223-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp223_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp813-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp813_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@axp20x_usb_power_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @axp20x_usb_power_suspend, ptr @axp20x_usb_power_resume, ptr @axp20x_usb_power_suspend, ptr @axp20x_usb_power_resume, ptr @axp20x_usb_power_suspend, ptr @axp20x_usb_power_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@axp20x_usb_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Parent drvdata not set\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axp20x_usb_power_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/axp20x_usb_power.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_usb_power_probe._entry_ptr = internal global ptr @axp20x_usb_power_probe._entry, section ".printk_index", align 4
@axp20x_usb_power_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ for %s: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@axp20x_usb_power_probe._entry_ptr.8 = internal global ptr @axp20x_usb_power_probe._entry.6, section ".printk_index", align 4
@axp20x_usb_power_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 651, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error requesting %s IRQ: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@axp20x_usb_power_probe._entry_ptr.11 = internal global ptr @axp20x_usb_power_probe._entry.9, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@devm_delayed_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&(w)->work)\00", [34 x i8] zeroinitializer }, align 32
@devm_delayed_work_autocancel.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&(w)->timer\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vbus_v\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vbus_i\00", [25 x i8] zeroinitializer }, align 32
@axp202_data = internal constant { %struct.axp_data, [16 x i8] } { %struct.axp_data { ptr @axp20x_usb_power_desc, ptr @axp20x_irq_names, i32 4, i32 1 }, [16 x i8] zeroinitializer }, align 32
@axp221_data = internal constant { %struct.axp_data, [16 x i8] } { %struct.axp_data { ptr @axp22x_usb_power_desc, ptr @axp22x_irq_names, i32 2, i32 3 }, [16 x i8] zeroinitializer }, align 32
@axp223_data = internal constant { %struct.axp_data, [16 x i8] } { %struct.axp_data { ptr @axp22x_usb_power_desc, ptr @axp22x_irq_names, i32 2, i32 4 }, [16 x i8] zeroinitializer }, align 32
@axp813_data = internal constant { %struct.axp_data, [16 x i8] } { %struct.axp_data { ptr @axp22x_usb_power_desc, ptr @axp22x_irq_names, i32 2, i32 9 }, [16 x i8] zeroinitializer }, align 32
@axp20x_usb_power_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.17, i32 4, ptr null, i32 0, ptr @axp20x_usb_power_properties, i32 7, ptr @axp20x_usb_power_get_property, ptr @axp20x_usb_power_set_property, ptr @axp20x_usb_power_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@axp20x_irq_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp20x-usb\00", [21 x i8] zeroinitializer }, align 32
@axp20x_usb_power_properties = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 3, i32 4, i32 9, i32 12, i32 16, i32 17], [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VBUS_PLUGIN\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VBUS_REMOVAL\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VBUS_VALID\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VBUS_NOT_VALID\00", [17 x i8] zeroinitializer }, align 32
@axp22x_usb_power_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.17, i32 4, ptr null, i32 0, ptr @axp22x_usb_power_properties, i32 5, ptr @axp20x_usb_power_get_property, ptr @axp20x_usb_power_set_property, ptr @axp20x_usb_power_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@axp22x_irq_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@axp22x_usb_power_properties = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 3, i32 4, i32 9, i32 16], [44 x i8] zeroinitializer }, align 32
@switch.table.axp20x_usb_power_get_property = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 900000, i32 1500000, i32 2000000, i32 2500000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 9, i64 16]
@__sancov_gen_cov_switch_values.25 = internal global [10 x i64] [i64 8, i64 32, i64 4000000, i64 4100000, i64 4200000, i64 4300000, i64 4400000, i64 4500000, i64 4600000, i64 4700000]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 900000, i64 1500000, i64 2000000, i64 2500000]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 100000, i64 500000, i64 900000]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 9, i64 16]
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"axp20x_usb_power_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 679, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 682, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"axp20x_usb_power_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 662, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"axp20x_usb_power_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 535, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 580, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 641, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 650, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 50, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 541, i32 51 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 548, i32 51 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"axp202_data\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 471, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"axp221_data\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 478, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"axp223_data\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 485, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"axp813_data\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 492, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"axp20x_usb_power_desc\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 432, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"axp20x_irq_names\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 452, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 433, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"axp20x_usb_power_properties\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 414, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 453, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 454, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 455, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 456, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"axp22x_usb_power_desc\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 442, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"axp22x_irq_names\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 459, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant [28 x i8] c"axp22x_usb_power_properties\00", align 1
@___asan_gen_.132 = private constant [43 x i8] c"../drivers/power/supply/axp20x_usb_power.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 424, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [43 x i8] c"switch.table.axp20x_usb_power_get_property\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_axp20x_usb_power_driver_exit, ptr @__initcall__kmod_axp20x_usb_power__187_688_axp20x_usb_power_driver_init6, ptr @axp20x_usb_power_driver_exit, ptr @axp20x_usb_power_probe._entry, ptr @axp20x_usb_power_probe._entry.6, ptr @axp20x_usb_power_probe._entry.9, ptr @axp20x_usb_power_probe._entry_ptr, ptr @axp20x_usb_power_probe._entry_ptr.11, ptr @axp20x_usb_power_probe._entry_ptr.8, ptr @axp20x_usb_power_driver, ptr @.str, ptr @axp20x_usb_power_match, ptr @axp20x_usb_power_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @devm_delayed_work_autocancel.__key, ptr @.str.12, ptr @devm_delayed_work_autocancel.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @axp202_data, ptr @axp221_data, ptr @axp223_data, ptr @axp813_data, ptr @axp20x_usb_power_desc, ptr @axp20x_irq_names, ptr @.str.17, ptr @axp20x_usb_power_properties, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @axp22x_usb_power_desc, ptr @axp22x_irq_names, ptr @axp22x_usb_power_properties, ptr @switch.table.axp20x_usb_power_get_property], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp202_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp221_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp223_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_irq_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_usb_power_properties to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_usb_power_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_irq_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_usb_power_properties to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_usb_power_get_property to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_usb_power_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_usb_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_usb_power_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %4 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call2 = tail call zeroext i1 @of_device_is_available(ptr noundef %6) #7
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %num_irq_names = getelementptr inbounds %struct.axp_data, ptr %call7, i32 0, i32 2
  %7 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_irq_names, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #7
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 132) #7
  %retval.0.i = select i1 %10, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %axp20x_id = getelementptr inbounds %struct.axp_data, ptr %call7, i32 0, i32 3
  %13 = ptrtoint ptr %axp20x_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %axp20x_id, align 4
  %axp20x_id14 = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %axp20x_id14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %axp20x_id14, align 4
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call.i, align 4
  %19 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_irq_names, align 4
  %num_irqs = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_irqs, align 4
  %vbus_detect = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %vbus_detect, i32 noundef 0) #7
  %22 = ptrtoint ptr %vbus_detect to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %vbus_detect, align 4
  %lockdep_map.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @devm_delayed_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @axp20x_usb_power_poll_vbus, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @devm_delayed_work_autocancel.__key.13) #7
  %call.i152 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %vbus_detect) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool19.not = icmp eq i32 %call.i152, 0
  br i1 %tobool19.not, label %if.end21, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %26 = ptrtoint ptr %axp20x_id14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %axp20x_id14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %if.then23, label %if.end21.if.end33_crit_edge

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then23:                                        ; preds = %if.end21
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call.i153 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 139, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool26.not = icmp eq i32 %call.i153, 0
  br i1 %tobool26.not, label %if.end28, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  %call.i154 = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #7
  %vbus_v.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %vbus_v.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i154, ptr %vbus_v.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i154, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end28
  %cmp.i = icmp eq ptr %call.i154, inttoptr (i32 -19 to ptr)
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.configure_iio_channels.exit_crit_edge

if.then.i.configure_iio_channels.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %configure_iio_channels.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end28
  %call10.i = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  %vbus_i.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %vbus_i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call10.i, ptr %vbus_i.i, align 4
  %cmp.i30.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %if.then13.i, label %if.end33thread-pre-split

if.then13.i:                                      ; preds = %if.end8.i
  %cmp16.i = icmp eq ptr %call10.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp16.i, label %if.then13.i.cleanup_crit_edge, label %if.then13.i.configure_iio_channels.exit_crit_edge

if.then13.i.configure_iio_channels.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %configure_iio_channels.exit

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

configure_iio_channels.exit:                      ; preds = %if.then13.i.configure_iio_channels.exit_crit_edge, %if.then.i.configure_iio_channels.exit_crit_edge
  %retval.0.i156.in = phi ptr [ %call.i154, %if.then.i.configure_iio_channels.exit_crit_edge ], [ %call10.i, %if.then13.i.configure_iio_channels.exit_crit_edge ]
  %retval.0.i156 = ptrtoint ptr %retval.0.i156.in to i32
  br label %cleanup

if.end33thread-pre-split:                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %axp20x_id14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %axp20x_id14, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33thread-pre-split, %if.end21.if.end33_crit_edge
  %33 = phi i32 [ %.pr, %if.end33thread-pre-split ], [ %27, %if.end21.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %33)
  %cmp35 = icmp eq i32 %33, 9
  br i1 %cmp35, label %if.then36, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then36:                                        ; preds = %if.end33
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i157 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 44, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool39.not = icmp eq i32 %call.i157, 0
  br i1 %tobool39.not, label %if.then36.if.end42_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %if.then36.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %38 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %39 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %drv_data, align 4
  %40 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7, align 4
  %call47 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %41, ptr noundef nonnull %psy_cfg) #7
  %supply = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call47, ptr %supply, align 4
  %cmp.i158 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then50, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end42
  %43 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_irq_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp55174.not = icmp eq i32 %44, 0
  br i1 %cmp55174.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %irq_names = getelementptr inbounds %struct.axp_data, ptr %call7, i32 0, i32 1
  %regmap_irqc = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 4
  br label %for.body

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call47 to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %46 = ptrtoint ptr %irq_names to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irq_names, align 4
  %arrayidx = getelementptr ptr, ptr %47, i32 %i.0175
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  %call56 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end65

do.end61:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %irq_names to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irq_names, align 4
  %arrayidx64 = getelementptr ptr, ptr %51, i32 %i.0175
  %52 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx64, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %53, i32 noundef %call56) #10
  br label %cleanup

if.end65:                                         ; preds = %for.body
  %54 = ptrtoint ptr %regmap_irqc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap_irqc, align 4
  %call66 = call i32 @regmap_irq_get_virq(ptr noundef %55, i32 noundef %call56) #7
  %arrayidx67 = getelementptr %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 9, i32 %i.0175
  %56 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call66, ptr %arrayidx67, align 4
  %call71 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %call66, ptr noundef nonnull @axp20x_usb_power_irq, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %for.inc

do.end76:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %irq_names to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %irq_names, align 4
  %arrayidx79 = getelementptr ptr, ptr %58, i32 %i.0175
  %59 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx79, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %60, i32 noundef %call71) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end65
  %inc = add nuw i32 %i.0175, 1
  %61 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_irq_names, align 4
  %cmp55 = icmp ult i32 %inc, %62
  br i1 %cmp55, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %63 = ptrtoint ptr %axp20x_id14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %axp20x_id14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp.i159 = icmp ugt i32 %64, 2
  br i1 %cmp.i159, label %land.lhs.true.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.end
  %online.i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call.i, i32 0, i32 7
  %65 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %online.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i, label %if.then82, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then82:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %67 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i161 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %vbus_detect, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %land.lhs.true.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end76, %do.end61, %if.then50, %if.then36.cleanup_crit_edge, %configure_iio_channels.exit, %if.then13.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %45, %if.then50 ], [ %call56, %do.end61 ], [ %call71, %do.end76 ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call.i152, %if.end13.cleanup_crit_edge ], [ %call.i153, %if.then23.cleanup_crit_edge ], [ %retval.0.i156, %configure_iio_channels.exit ], [ %call.i157, %if.then36.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ], [ -517, %if.then13.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_usb_power_poll_vbus(ptr noundef %work) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !82
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 48
  store i32 %and, ptr %val, align 4
  %old_status = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %old_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp.not = icmp eq i32 %and, %6
  br i1 %cmp.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %supply = getelementptr i8, ptr %work, i32 -16
  %7 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %supply, align 4
  call void @power_supply_changed(ptr noundef %8) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old_status, align 4
  %and4 = and i32 %10, 16
  %online = getelementptr i8, ptr %work, i32 104
  %12 = ptrtoint ptr %online to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and4, ptr %online, align 4
  br label %out

out:                                              ; preds = %if.end2, %entry.out_crit_edge
  %axp20x_id.i = getelementptr i8, ptr %work, i32 -12
  %13 = ptrtoint ptr %axp20x_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %axp20x_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp ugt i32 %14, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %out.if.end9_crit_edge

out.if.end9_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true.i:                                  ; preds = %out
  %online.i = getelementptr i8, ptr %work, i32 104
  %15 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %online.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then6, label %land.lhs.true.i.if.end9_crit_edge

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %17 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work, i32 noundef 5) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.i.if.end9_crit_edge, %out.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %supply = getelementptr inbounds %struct.axp20x_usb_power, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  tail call void @power_supply_changed(ptr noundef %1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %vbus_detect = getelementptr inbounds %struct.axp20x_usb_power, ptr %devid, i32 0, i32 5
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %vbus_detect, i32 noundef 5) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %res) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %res) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %v.i87 = alloca i32, align 4
  %v.i = alloca i32, align 4
  %input = alloca i32, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #7
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #7
  %1 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v, align 4, !annotation !82
  %2 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %sw.epilog [
    i32 9, label %sw.bb
    i32 12, label %sw.bb2
    i32 16, label %sw.bb8
    i32 17, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 48, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v, align 4
  %shr = lshr i32 %6, 3
  %and = and i32 %shr, 7
  %mul = mul nuw nsw i32 %and, 100000
  %add = add nuw nsw i32 %mul, 4000000
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %vbus_v = getelementptr inbounds %struct.axp20x_usb_power, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %vbus_v to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus_v, align 4
  %call3 = tail call i32 @iio_read_channel_processed(ptr noundef %9, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %mul7 = mul i32 %11, 1000
  store i32 %mul7, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %axp20x_id = getelementptr inbounds %struct.axp20x_usb_power, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %axp20x_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %axp20x_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp = icmp eq i32 %13, 9
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %sw.bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #7
  %14 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %v.i, align 4, !annotation !82
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %call.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 48, ptr noundef nonnull %v.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.axp813_get_current_max.exit_crit_edge

if.then9.axp813_get_current_max.exit_crit_edge:   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axp813_get_current_max.exit

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v.i, align 4
  %and.i = and i32 %18, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.axp20x_usb_power_get_property, i32 0, i32 %and.i
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %switch.load, ptr %val, align 4
  br label %axp813_get_current_max.exit

axp813_get_current_max.exit:                      ; preds = %if.end.i, %if.then9.axp813_get_current_max.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #7
  br label %cleanup

if.end11:                                         ; preds = %sw.bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i87) #7
  %21 = ptrtoint ptr %v.i87 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %v.i87, align 4, !annotation !82
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %call.i88 = call i32 @regmap_read(ptr noundef %23, i32 noundef 48, ptr noundef nonnull %v.i87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.end.i91, label %if.end11.axp20x_get_current_max.exit_crit_edge

if.end11.axp20x_get_current_max.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %axp20x_get_current_max.exit

if.end.i91:                                       ; preds = %if.end11
  %24 = ptrtoint ptr %v.i87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v.i87, align 4
  %and.i90 = and i32 %25, 3
  %26 = zext i32 %and.i90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and.i90, label %if.end.unreachabledefault.i92 [
    i32 2, label %sw.bb.i
    i32 1, label %if.end.i91.cleanup.sink.split.i94_crit_edge
    i32 0, label %sw.bb4.i
    i32 3, label %sw.bb5.i
  ]

if.end.i91.cleanup.sink.split.i94_crit_edge:      ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i94

sw.bb.i:                                          ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %axp20x_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %axp20x_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i = icmp eq i32 %28, 3
  %..i = select i1 %cmp.i, i32 -1, i32 100000
  br label %cleanup.sink.split.i94

sw.bb4.i:                                         ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i94

sw.bb5.i:                                         ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i94

if.end.unreachabledefault.i92:                    ; preds = %if.end.i91
  unreachable

cleanup.sink.split.i94:                           ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb.i, %if.end.i91.cleanup.sink.split.i94_crit_edge
  %.sink.i93 = phi i32 [ 900000, %sw.bb4.i ], [ -1, %sw.bb5.i ], [ %..i, %sw.bb.i ], [ 500000, %if.end.i91.cleanup.sink.split.i94_crit_edge ]
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i93, ptr %val, align 4
  br label %axp20x_get_current_max.exit

axp20x_get_current_max.exit:                      ; preds = %cleanup.sink.split.i94, %if.end11.axp20x_get_current_max.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i87) #7
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %vbus_i = getelementptr inbounds %struct.axp20x_usb_power, ptr %call, i32 0, i32 4
  %30 = ptrtoint ptr %vbus_i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vbus_i, align 4
  %call14 = tail call i32 @iio_read_channel_processed(ptr noundef %31, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %mul18 = mul i32 %33, 1000
  store i32 %mul18, ptr %val, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %call20 = call i32 @regmap_read(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %input) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  %36 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %psp, label %if.end23.cleanup_crit_edge [
    i32 2, label %sw.bb24
    i32 3, label %sw.bb42
    i32 4, label %sw.bb46
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb24:                                          ; preds = %if.end23
  %37 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %input, align 4
  %and25 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.end28:                                         ; preds = %sw.bb24
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %val, align 4
  %axp20x_id29 = getelementptr inbounds %struct.axp20x_usb_power, ptr %call, i32 0, i32 2
  %41 = ptrtoint ptr %axp20x_id29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %axp20x_id29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp30 = icmp eq i32 %42, 1
  br i1 %cmp30, label %if.then31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call, align 4
  %call33 = call i32 @regmap_read(ptr noundef %44, i32 noundef 2, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.then31
  %45 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v, align 4
  %and37 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %val, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %input, align 4
  %and43 = lshr i32 %49, 5
  %and43.lobit = and i32 %and43, 1
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and43.lobit, ptr %val, align 4
  br label %cleanup

sw.bb46:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %input, align 4
  %and47 = lshr i32 %52, 4
  %and47.lobit = and i32 %and47, 1
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and47.lobit, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb46, %sw.bb42, %if.then39, %if.end36.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then27, %if.end23.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end17, %sw.bb13.cleanup_crit_edge, %axp20x_get_current_max.exit, %axp813_get_current_max.exit, %if.end6, %sw.bb2.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call.i, %axp813_get_current_max.exit ], [ %call.i88, %axp20x_get_current_max.exit ], [ 0, %if.end6 ], [ 0, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %call14, %sw.bb13.cleanup_crit_edge ], [ %call20, %sw.epilog.cleanup_crit_edge ], [ %call33, %if.then31.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %sw.bb46 ], [ 0, %sw.bb42 ], [ 0, %if.then27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 9, label %sw.bb2
    i32 16, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %axp20x_id = getelementptr inbounds %struct.axp20x_usb_power, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %axp20x_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %axp20x_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp.not = icmp eq i32 %2, 9
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %shl.i = select i1 %tobool.not.i, i32 128, i32 0
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 48, i32 noundef 128, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %8, label %sw.bb2.cleanup_crit_edge [
    i32 4000000, label %sw.bb2.sw.bb.i_crit_edge
    i32 4100000, label %sw.bb2.sw.bb.i_crit_edge28
    i32 4200000, label %sw.bb2.sw.bb.i_crit_edge29
    i32 4300000, label %sw.bb2.sw.bb.i_crit_edge30
    i32 4400000, label %sw.bb2.sw.bb.i_crit_edge31
    i32 4500000, label %sw.bb2.sw.bb.i_crit_edge32
    i32 4600000, label %sw.bb2.sw.bb.i_crit_edge33
    i32 4700000, label %sw.bb2.sw.bb.i_crit_edge34
  ]

sw.bb2.sw.bb.i_crit_edge34:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge33:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge32:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge31:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge30:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge29:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge28:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb2.sw.bb.i_crit_edge, %sw.bb2.sw.bb.i_crit_edge28, %sw.bb2.sw.bb.i_crit_edge29, %sw.bb2.sw.bb.i_crit_edge30, %sw.bb2.sw.bb.i_crit_edge31, %sw.bb2.sw.bb.i_crit_edge32, %sw.bb2.sw.bb.i_crit_edge33, %sw.bb2.sw.bb.i_crit_edge34
  %sub.i = add nsw i32 %8, -4000000
  %div2.i = udiv i32 %sub.i, 100000
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %shl.i19 = shl nuw nsw i32 %div2.i, 3
  %call.i.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 48, i32 noundef 56, i32 noundef %shl.i19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %axp20x_id5 = getelementptr inbounds %struct.axp20x_usb_power, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %axp20x_id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %axp20x_id5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp6 = icmp eq i32 %13, 9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %sw.bb4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %15, label %if.then7.cleanup_crit_edge [
    i32 900000, label %if.then7.cleanup.sink.split.i_crit_edge
    i32 1500000, label %if.then7.sw.bb1.i_crit_edge
    i32 2000000, label %if.then7.sw.bb1.i_crit_edge35
    i32 2500000, label %if.then7.sw.bb1.i_crit_edge36
  ]

if.then7.sw.bb1.i_crit_edge36:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then7.sw.bb1.i_crit_edge35:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then7.sw.bb1.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then7.cleanup.sink.split.i_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then7.sw.bb1.i_crit_edge, %if.then7.sw.bb1.i_crit_edge35, %if.then7.sw.bb1.i_crit_edge36
  %sub.i21 = add nsw i32 %15, -1000000
  %div7.i = udiv i32 %sub.i21, 500000
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb1.i, %if.then7.cleanup.sink.split.i_crit_edge
  %div7.sink.i = phi i32 [ %div7.i, %sw.bb1.i ], [ 0, %if.then7.cleanup.sink.split.i_crit_edge ]
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 48, i32 noundef 3, i32 noundef %div7.sink.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end9:                                          ; preds = %sw.bb4
  %19 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %15, label %if.end9.cleanup_crit_edge [
    i32 100000, label %sw.bb.i23
    i32 500000, label %if.end9.sw.bb1.i26_crit_edge
    i32 900000, label %if.end9.sw.bb1.i26_crit_edge37
  ]

if.end9.sw.bb1.i26_crit_edge37:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i26

if.end9.sw.bb1.i26_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i26

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %sw.bb.i23.cleanup_crit_edge, label %sw.bb.i23.sw.bb1.i26_crit_edge

sw.bb.i23.sw.bb1.i26_crit_edge:                   ; preds = %sw.bb.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i26

sw.bb.i23.cleanup_crit_edge:                      ; preds = %sw.bb.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i26:                                       ; preds = %sw.bb.i23.sw.bb1.i26_crit_edge, %if.end9.sw.bb1.i26_crit_edge, %if.end9.sw.bb1.i26_crit_edge37
  %sub.i24 = sub nuw nsw i32 900000, %15
  %div4.i = udiv i32 %sub.i24, 400000
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %call.i.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 48, i32 noundef 3, i32 noundef %div4.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1.i26, %sw.bb.i23.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %cleanup.sink.split.i, %if.then7.cleanup_crit_edge, %sw.bb.i, %sw.bb2.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i20, %sw.bb.i ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ %call.i6.i, %cleanup.sink.split.i ], [ %call.i.i25, %sw.bb1.i26 ], [ -22, %sw.bb.i23.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_prop_writeable(ptr noundef %psy, i32 noundef %psp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %psp, label %lor.rhs [
    i32 4, label %if.then
    i32 9, label %entry.cleanup_crit_edge
    i32 16, label %entry.cleanup_crit_edge8
  ]

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %axp20x_id = getelementptr inbounds %struct.axp20x_usb_power, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %axp20x_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %axp20x_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp1 = icmp eq i32 %2, 9
  %phi.cast = zext i1 %cmp1 to i32
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.then, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge8
  %retval.0.shrunk = phi i32 [ %phi.cast, %if.then ], [ 0, %lor.rhs ], [ 1, %entry.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge8 ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supply = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %can_wakeup.i = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 7, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 7, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irqs = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqs, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %num_irqs = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %10)
  %cmp12 = icmp ult i32 %i.0, %10
  br i1 %cmp12, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %i.113 = phi i32 [ %inc5, %while.body.while.body_crit_edge ], [ %i.0, %if.end.while.body_crit_edge ]
  %inc5 = add nuw i32 %i.113, 1
  %arrayidx6 = getelementptr %struct.axp20x_usb_power, ptr %1, i32 0, i32 9, i32 %i.113
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  tail call void @disable_irq(i32 noundef %12) #7
  %13 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_irqs, align 4
  %cmp = icmp ult i32 %inc5, %14
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supply = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %can_wakeup.i = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 7, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 7, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irqs = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqs, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %num_irqs = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %10)
  %cmp16 = icmp ult i32 %i.0, %10
  br i1 %cmp16, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %i.117 = phi i32 [ %inc5, %while.body.while.body_crit_edge ], [ %i.0, %if.end.while.body_crit_edge ]
  %inc5 = add nuw i32 %i.117, 1
  %arrayidx6 = getelementptr %struct.axp20x_usb_power, ptr %1, i32 0, i32 9, i32 %i.117
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  tail call void @enable_irq(i32 noundef %12) #7
  %13 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_irqs, align 4
  %cmp = icmp ult i32 %inc5, %14
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %15 = load ptr, ptr @system_power_efficient_wq, align 4
  %vbus_detect = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 5
  %call.i15 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %vbus_detect, i32 noundef 5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_axp20x_usb_power__187_688_axp20x_usb_power_driver_init6, !1, !"__initcall__kmod_axp20x_usb_power__187_688_axp20x_usb_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 688, i32 1}
!2 = !{ptr @__exitcall_axp20x_usb_power_driver_exit, !1, !"__exitcall_axp20x_usb_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 690, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 691, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 692, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 682, i32 12}
!12 = !{ptr @axp20x_usb_power_driver, !13, !"axp20x_usb_power_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 679, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 580, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @axp20x_usb_power_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @axp20x_usb_power_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 641, i32 4}
!24 = !{ptr @axp20x_usb_power_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @axp20x_usb_power_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 650, i32 4}
!28 = !{ptr @axp20x_usb_power_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @axp20x_usb_power_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @devm_delayed_work_autocancel.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/devm-helpers.h", i32 50, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @devm_delayed_work_autocancel.__key.13, !31, !"__key", i1 false, i1 false}
!34 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 541, i32 51}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 548, i32 51}
!39 = !{ptr @axp20x_usb_power_match, !40, !"axp20x_usb_power_match", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 662, i32 34}
!41 = !{ptr @axp202_data, !42, !"axp202_data", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 471, i32 30}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 433, i32 10}
!45 = !{ptr @axp20x_usb_power_desc, !46, !"axp20x_usb_power_desc", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 432, i32 39}
!47 = !{ptr @axp20x_usb_power_properties, !48, !"axp20x_usb_power_properties", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 414, i32 35}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 453, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 454, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 455, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 456, i32 2}
!57 = !{ptr @axp20x_irq_names, !58, !"axp20x_irq_names", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 452, i32 27}
!59 = !{ptr @axp221_data, !60, !"axp221_data", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 478, i32 30}
!61 = !{ptr @axp22x_usb_power_desc, !62, !"axp22x_usb_power_desc", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 442, i32 39}
!63 = !{ptr @axp22x_usb_power_properties, !64, !"axp22x_usb_power_properties", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 424, i32 35}
!65 = !{ptr @axp22x_irq_names, !66, !"axp22x_irq_names", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 459, i32 27}
!67 = !{ptr @axp223_data, !68, !"axp223_data", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 485, i32 30}
!69 = !{ptr @axp813_data, !70, !"axp813_data", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 492, i32 30}
!71 = !{ptr @axp20x_usb_power_pm_ops, !72, !"axp20x_usb_power_pm_ops", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/axp20x_usb_power.c", i32 535, i32 8}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
