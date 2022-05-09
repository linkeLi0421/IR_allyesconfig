; ModuleID = '/llk/IR_all_yes/drivers/power/supply/axp20x_ac_power.c_pt.bc'
source_filename = "../drivers/power/supply/axp20x_ac_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.axp_data = type { ptr, ptr, i32, i8, i8 }
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
%struct.axp20x_ac_power = type { ptr, ptr, ptr, ptr, i8, i32, [0 x i32] }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_axp20x_ac_power__187_422_axp20x_ac_power_driver_init6 = internal global ptr @axp20x_ac_power_driver_init, section ".initcall6.init", align 4
@axp20x_ac_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp20x_ac_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axp20x_ac_power_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_ac_power_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp20x_ac_power_driver_exit = internal global ptr @axp20x_ac_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [74 x i8] c"axp20x_ac_power.author=Quentin Schulz <quentin.schulz@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [76 x i8] c"axp20x_ac_power.description=AXP20X and AXP22X PMICs' AC power supply driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [58 x i8] c"axp20x_ac_power.file=drivers/power/supply/axp20x_ac_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [28 x i8] c"axp20x_ac_power.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axp20x-ac-power-supply\00", [41 x i8] zeroinitializer }, align 32
@axp20x_ac_power_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp202-ac-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp20x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp221-ac-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp22x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp813-ac-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp813_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@axp20x_ac_power_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @axp20x_ac_power_suspend, ptr @axp20x_ac_power_resume, ptr @axp20x_ac_power_suspend, ptr @axp20x_ac_power_resume, ptr @axp20x_ac_power_suspend, ptr @axp20x_ac_power_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@axp20x_ac_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Parent drvdata not set\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axp20x_ac_power_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/axp20x_ac_power.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_ac_power_probe._entry_ptr = internal global ptr @axp20x_ac_power_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acin_v\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acin_i\00", [25 x i8] zeroinitializer }, align 32
@axp20x_ac_power_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ for %s: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@axp20x_ac_power_probe._entry_ptr.10 = internal global ptr @axp20x_ac_power_probe._entry.8, section ".printk_index", align 4
@axp20x_ac_power_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error requesting %s IRQ: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@axp20x_ac_power_probe._entry_ptr.13 = internal global ptr @axp20x_ac_power_probe._entry.11, section ".printk_index", align 4
@axp20x_data = internal constant { %struct.axp_data, [16 x i8] } { %struct.axp_data { ptr @axp20x_ac_power_desc, ptr @axp20x_irq_names, i32 2, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@axp22x_data = internal constant { %struct.axp_data, [16 x i8] } { %struct.axp_data { ptr @axp22x_ac_power_desc, ptr @axp20x_irq_names, i32 2, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@axp813_data = internal constant { %struct.axp_data, [16 x i8] } { %struct.axp_data { ptr @axp813_ac_power_desc, ptr @axp20x_irq_names, i32 2, i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@axp20x_ac_power_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.14, i32 3, ptr null, i32 0, ptr @axp20x_ac_power_properties, i32 5, ptr @axp20x_ac_power_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@axp20x_irq_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axp20x-ac\00", [22 x i8] zeroinitializer }, align 32
@axp20x_ac_power_properties = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 3, i32 4, i32 12, i32 17], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ACIN_PLUGIN\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACIN_REMOVAL\00", [19 x i8] zeroinitializer }, align 32
@axp22x_ac_power_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.17, i32 3, ptr null, i32 0, ptr @axp22x_ac_power_properties, i32 3, ptr @axp20x_ac_power_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axp22x-ac\00", [22 x i8] zeroinitializer }, align 32
@axp22x_ac_power_properties = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 3, i32 4], [20 x i8] zeroinitializer }, align 32
@axp813_ac_power_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.18, i32 3, ptr null, i32 0, ptr @axp813_ac_power_properties, i32 5, ptr @axp20x_ac_power_get_property, ptr @axp813_ac_power_set_property, ptr @axp813_ac_power_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axp813-ac\00", [22 x i8] zeroinitializer }, align 32
@axp813_ac_power_properties = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 3, i32 4, i32 9, i32 38], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 9, i64 12, i64 17, i64 38]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 9, i64 38]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"axp20x_ac_power_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 413, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 416, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"axp20x_ac_power_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 399, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"axp20x_ac_power_pm_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 319, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 334, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 347, i32 52 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 354, i32 52 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 381, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 390, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"axp20x_data\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 261, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"axp22x_data\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 269, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"axp813_data\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 277, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"axp20x_ac_power_desc\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 222, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"axp20x_irq_names\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 248, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 223, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"axp20x_ac_power_properties\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 200, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 249, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 250, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"axp22x_ac_power_desc\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 230, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 231, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"axp22x_ac_power_properties\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 208, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"axp813_ac_power_desc\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 238, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 239, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"axp813_ac_power_properties\00", align 1
@___asan_gen_.112 = private constant [42 x i8] c"../drivers/power/supply/axp20x_ac_power.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 214, i32 35 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_axp20x_ac_power_driver_exit, ptr @__initcall__kmod_axp20x_ac_power__187_422_axp20x_ac_power_driver_init6, ptr @axp20x_ac_power_driver_exit, ptr @axp20x_ac_power_probe._entry, ptr @axp20x_ac_power_probe._entry.11, ptr @axp20x_ac_power_probe._entry.8, ptr @axp20x_ac_power_probe._entry_ptr, ptr @axp20x_ac_power_probe._entry_ptr.10, ptr @axp20x_ac_power_probe._entry_ptr.13, ptr @axp20x_ac_power_driver, ptr @.str, ptr @axp20x_ac_power_match, ptr @axp20x_ac_power_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @axp20x_data, ptr @axp22x_data, ptr @axp813_data, ptr @axp20x_ac_power_desc, ptr @axp20x_irq_names, ptr @.str.14, ptr @axp20x_ac_power_properties, ptr @.str.15, ptr @.str.16, ptr @axp22x_ac_power_desc, ptr @.str.17, ptr @axp22x_ac_power_properties, ptr @axp813_ac_power_desc, ptr @.str.18, ptr @axp813_ac_power_properties], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_irq_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ac_power_properties to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_ac_power_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_ac_power_properties to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_ac_power_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_ac_power_properties to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_ac_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_ac_power_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_ac_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_ac_power_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_ac_power_probe(ptr noundef %pdev) #2 align 64 {
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
  %4 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call2 = tail call zeroext i1 @of_device_is_available(ptr noundef %7) #7
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
  %8 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_irq_names, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #7
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 24) #7
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %acin_adc = getelementptr inbounds %struct.axp_data, ptr %call7, i32 0, i32 3
  %13 = ptrtoint ptr %acin_adc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %acin_adc, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %if.end13.if.end41_crit_edge, label %if.then15

if.end13.if.end41_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then15:                                        ; preds = %if.end13
  %call17 = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  %acin_v = getelementptr inbounds %struct.axp20x_ac_power, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %acin_v to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %acin_v, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call17 to i32
  %cmp = icmp eq ptr %call17, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %16
  br label %cleanup

if.end27:                                         ; preds = %if.then15
  %call29 = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %acin_i = getelementptr inbounds %struct.axp20x_ac_power, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %acin_i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29, ptr %acin_i, align 4
  %cmp.i144 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then32, label %if.end27.if.end41_crit_edge

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call29 to i32
  %cmp35 = icmp eq ptr %call29, inttoptr (i32 -19 to ptr)
  %spec.select146 = select i1 %cmp35, i32 -517, i32 %18
  br label %cleanup

if.end41:                                         ; preds = %if.end27.if.end41_crit_edge, %if.end13.if.end41_crit_edge
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %call44 = tail call ptr @dev_get_regmap(ptr noundef %20, ptr noundef null) #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call44, ptr %call.i, align 4
  %acin_path_sel = getelementptr inbounds %struct.axp_data, ptr %call7, i32 0, i32 4
  %22 = ptrtoint ptr %acin_path_sel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %acin_path_sel, align 1, !range !77
  %has_acin_path_sel = getelementptr inbounds %struct.axp20x_ac_power, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %has_acin_path_sel to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %has_acin_path_sel, align 4
  %25 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_irq_names, align 4
  %num_irqs = getelementptr inbounds %struct.axp20x_ac_power, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num_irqs, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %31 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %32 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %drv_data, align 4
  %33 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7, align 4
  %call51 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %34, ptr noundef nonnull %psy_cfg) #7
  %supply = getelementptr inbounds %struct.axp20x_ac_power, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call51, ptr %supply, align 4
  %cmp.i145 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then54, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end41
  %36 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_irq_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp59152.not = icmp eq i32 %37, 0
  br i1 %cmp59152.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %irq_names = getelementptr inbounds %struct.axp_data, ptr %call7, i32 0, i32 1
  %regmap_irqc = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 4
  br label %for.body

if.then54:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call51 to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %39 = ptrtoint ptr %irq_names to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_names, align 4
  %arrayidx = getelementptr ptr, ptr %40, i32 %i.0153
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %call60 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end65, label %if.end69

do.end65:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %irq_names to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %irq_names, align 4
  %arrayidx68 = getelementptr ptr, ptr %44, i32 %i.0153
  %45 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %46, i32 noundef %call60) #10
  br label %cleanup

if.end69:                                         ; preds = %for.body
  %47 = ptrtoint ptr %regmap_irqc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap_irqc, align 4
  %call70 = call i32 @regmap_irq_get_virq(ptr noundef %48, i32 noundef %call60) #7
  %arrayidx71 = getelementptr %struct.axp20x_ac_power, ptr %call.i, i32 0, i32 6, i32 %i.0153
  %49 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call70, ptr %arrayidx71, align 4
  %call75 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %call70, ptr noundef nonnull @axp20x_ac_power_irq, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end80, label %for.inc

do.end80:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %irq_names to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irq_names, align 4
  %arrayidx83 = getelementptr ptr, ptr %51, i32 %i.0153
  %52 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx83, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %53, i32 noundef %call75) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end69
  %inc = add nuw i32 %i.0153, 1
  %54 = ptrtoint ptr %num_irq_names to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_irq_names, align 4
  %cmp59 = icmp ult i32 %inc, %55
  br i1 %cmp59, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end80, %do.end65, %if.then54, %for.cond.preheader.cleanup_crit_edge, %if.then32, %if.then20, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.then54 ], [ %call60, %do.end65 ], [ %call75, %do.end80 ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %spec.select, %if.then20 ], [ %spec.select146, %if.then32 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_ac_power_irq(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %supply = getelementptr inbounds %struct.axp20x_ac_power, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  tail call void @power_supply_changed(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_ac_power_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !78
  %1 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 4, label %sw.bb14
    i32 12, label %sw.bb41
    i32 17, label %sw.bb46
    i32 9, label %sw.bb52
    i32 38, label %sw.bb60
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %and = lshr i32 %5, 7
  %and.lobit = and i32 %and, 1
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %call7 = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %and11 = lshr i32 %9, 7
  %and11.lobit = and i32 %and11, 1
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call16 = call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %sw.bb14
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %and20 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %and20.lobit = lshr exact i32 %and20, 6
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and20.lobit, ptr %val, align 4
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end19
  %has_acin_path_sel = getelementptr inbounds %struct.axp20x_ac_power, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %has_acin_path_sel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_acin_path_sel, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not = icmp eq i8 %16, 0
  br i1 %tobool27.not, label %land.lhs.true.cleanup_crit_edge, label %if.then28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %call30 = call i32 @regmap_read(ptr noundef %18, i32 noundef 58, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %and34 = lshr i32 %20, 7
  %and34.lobit = and i32 %and34, 1
  br label %cleanup.sink.split

sw.bb41:                                          ; preds = %entry
  %acin_v = getelementptr inbounds %struct.axp20x_ac_power, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %acin_v to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acin_v, align 4
  %call42 = tail call i32 @iio_read_channel_processed(ptr noundef %22, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %sw.bb41.cleanup_crit_edge

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %mul = mul i32 %24, 1000
  br label %cleanup.sink.split

sw.bb46:                                          ; preds = %entry
  %acin_i = getelementptr inbounds %struct.axp20x_ac_power, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %acin_i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %acin_i, align 4
  %call47 = tail call i32 @iio_read_channel_processed(ptr noundef %26, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %sw.bb46.cleanup_crit_edge

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %mul51 = mul i32 %28, 1000
  br label %cleanup.sink.split

sw.bb52:                                          ; preds = %entry
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %call54 = call i32 @regmap_read(ptr noundef %30, i32 noundef 58, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %sw.bb52.cleanup_crit_edge

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg, align 4
  %and58 = lshr i32 %32, 3
  %shr = and i32 %and58, 7
  %add = or i32 %shr, 40
  %mul59 = mul nuw nsw i32 %add, 100000
  br label %cleanup.sink.split

sw.bb60:                                          ; preds = %entry
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call, align 4
  %call62 = call i32 @regmap_read(ptr noundef %34, i32 noundef 58, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %sw.bb60.cleanup_crit_edge

sw.bb60.cleanup_crit_edge:                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg, align 4
  %and66 = and i32 %36, 7
  %37 = mul nuw nsw i32 %and66, 500000
  %mul68 = add nuw nsw i32 %37, 1500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %37)
  %cmp = icmp ugt i32 %37, 2500000
  %spec.select = select i1 %cmp, i32 4000000, i32 %mul68
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end65, %if.end57, %if.end50, %if.end45, %if.end33, %if.end10, %if.end
  %and34.lobit.sink = phi i32 [ %and34.lobit, %if.end33 ], [ %spec.select, %if.end65 ], [ %mul59, %if.end57 ], [ %mul51, %if.end50 ], [ %mul, %if.end45 ], [ %and11.lobit, %if.end10 ], [ %and.lobit, %if.end ]
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and34.lobit.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb60.cleanup_crit_edge, %sw.bb52.cleanup_crit_edge, %sw.bb46.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ %call7, %sw.bb5.cleanup_crit_edge ], [ %call16, %sw.bb14.cleanup_crit_edge ], [ %call30, %if.then28.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %call42, %sw.bb41.cleanup_crit_edge ], [ %call47, %sw.bb46.cleanup_crit_edge ], [ %call54, %sw.bb52.cleanup_crit_edge ], [ %call62, %sw.bb60.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp813_ac_power_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 9, label %sw.bb3
    i32 38, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %shl = select i1 %tobool.not, i32 0, i32 128
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 58, i32 noundef 128, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -4700001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -700001, i32 %7)
  %8 = icmp ult i32 %7, -700001
  br i1 %8, label %sw.bb3.cleanup_crit_edge, label %if.end

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %div30 = udiv i32 %6, 100000
  %sub = shl nuw nsw i32 %div30, 3
  %shl6 = add nsw i32 %sub, -320
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 58, i32 noundef 56, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = add i32 %12, -4000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2500001, i32 %13)
  %14 = icmp ult i32 %13, -2500001
  br i1 %14, label %sw.bb8.cleanup_crit_edge, label %if.end13

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %div1531 = udiv i32 %12, 500000
  %sub16 = add nsw i32 %div1531, -3
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 58, i32 noundef 7, i32 noundef %sub16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sw.bb8.cleanup_crit_edge, %if.end, %sw.bb3.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i29, %if.end13 ], [ %call.i28, %if.end ], [ %call.i, %sw.bb ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axp813_ac_power_prop_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %psp, label %lor.rhs [
    i32 4, label %entry.lor.end_crit_edge
    i32 9, label %entry.lor.end_crit_edge5
  ]

entry.lor.end_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cmp2 = icmp eq i32 %psp, 38
  %phi.cast = zext i1 %cmp2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge, %entry.lor.end_crit_edge5
  %1 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %entry.lor.end_crit_edge5 ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_ac_power_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supply = getelementptr inbounds %struct.axp20x_ac_power, ptr %1, i32 0, i32 1
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
  %irqs = getelementptr inbounds %struct.axp20x_ac_power, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqs, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %num_irqs = getelementptr inbounds %struct.axp20x_ac_power, ptr %1, i32 0, i32 5
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
  %arrayidx6 = getelementptr %struct.axp20x_ac_power, ptr %1, i32 0, i32 6, i32 %i.113
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
define internal i32 @axp20x_ac_power_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supply = getelementptr inbounds %struct.axp20x_ac_power, ptr %1, i32 0, i32 1
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
  %irqs = getelementptr inbounds %struct.axp20x_ac_power, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqs, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %num_irqs = getelementptr inbounds %struct.axp20x_ac_power, ptr %1, i32 0, i32 5
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
  %arrayidx6 = getelementptr %struct.axp20x_ac_power, ptr %1, i32 0, i32 6, i32 %i.113
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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_axp20x_ac_power__187_422_axp20x_ac_power_driver_init6, !1, !"__initcall__kmod_axp20x_ac_power__187_422_axp20x_ac_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 422, i32 1}
!2 = !{ptr @__exitcall_axp20x_ac_power_driver_exit, !1, !"__exitcall_axp20x_ac_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 424, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 425, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 426, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 416, i32 12}
!12 = !{ptr @axp20x_ac_power_driver, !13, !"axp20x_ac_power_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 413, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 334, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @axp20x_ac_power_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @axp20x_ac_power_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 347, i32 52}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 354, i32 52}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 381, i32 4}
!28 = !{ptr @axp20x_ac_power_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @axp20x_ac_power_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 390, i32 4}
!32 = !{ptr @axp20x_ac_power_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @axp20x_ac_power_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @axp20x_ac_power_match, !35, !"axp20x_ac_power_match", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 399, i32 34}
!36 = !{ptr @axp20x_data, !37, !"axp20x_data", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 261, i32 30}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 223, i32 10}
!40 = !{ptr @axp20x_ac_power_desc, !41, !"axp20x_ac_power_desc", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 222, i32 39}
!42 = !{ptr @axp20x_ac_power_properties, !43, !"axp20x_ac_power_properties", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 200, i32 35}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 249, i32 2}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 250, i32 2}
!48 = !{ptr @axp20x_irq_names, !49, !"axp20x_irq_names", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 248, i32 27}
!50 = !{ptr @axp22x_data, !51, !"axp22x_data", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 269, i32 30}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 231, i32 10}
!54 = !{ptr @axp22x_ac_power_desc, !55, !"axp22x_ac_power_desc", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 230, i32 39}
!56 = !{ptr @axp22x_ac_power_properties, !57, !"axp22x_ac_power_properties", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 208, i32 35}
!58 = !{ptr @axp813_data, !59, !"axp813_data", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 277, i32 30}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 239, i32 10}
!62 = !{ptr @axp813_ac_power_desc, !63, !"axp813_ac_power_desc", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 238, i32 39}
!64 = !{ptr @axp813_ac_power_properties, !65, !"axp813_ac_power_properties", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 214, i32 35}
!66 = !{ptr @axp20x_ac_power_pm_ops, !67, !"axp20x_ac_power_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/axp20x_ac_power.c", i32 319, i32 8}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
!78 = !{!"auto-init"}
