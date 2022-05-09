; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max14577_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max14577_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.maxim_charger_current = type { i32, i32, i32, i32 }
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
%struct.max14577_charger = type { ptr, ptr, ptr, ptr }
%struct.max14577_charger_platform_data = type { i32, i32, i32, i32 }
%struct.max14577 = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_max14577_charger__294_644_max14577_charger_driver_init6 = internal global ptr @max14577_charger_driver_init, section ".initcall6.init", align 4
@max14577_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max14577_charger_probe, ptr @max14577_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_max14577_charger_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max14577_charger_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max14577_charger_driver_exit = internal global ptr @max14577_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [62 x i8] c"max14577_charger.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [62 x i8] c"max14577_charger.description=Maxim 14577/77836 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [60 x i8] c"max14577_charger.file=drivers/power/supply/max14577_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [29 x i8] c"max14577_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max14577-charger\00", [47 x i8] zeroinitializer }, align 32
@of_max14577_charger_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max14577-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max14577_charger_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max14577-charger\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77836-charger\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dev_attr_fast_charge_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fast_charge_timer, ptr @store_fast_charge_timer }, [36 x i8] zeroinitializer }, align 32
@max14577_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed: create sysfs entry\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max14577_charger_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/max14577_charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max14577_charger_probe._entry_ptr = internal global ptr @max14577_charger_probe._entry, section ".printk_index", align 4
@max14577_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 1, ptr null, i32 0, ptr @max14577_charger_props, i32 7, ptr @max14577_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@max14577_charger_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: power supply register\0A\00", [33 x i8] zeroinitializer }, align 32
@max14577_charger_probe._entry_ptr.8 = internal global ptr @max14577_charger_probe._entry.6, section ".printk_index", align 4
@max14577_charger_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No charger OF node\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max14577_charger_dt_init\00", [39 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry_ptr = internal global ptr @max14577_charger_dt_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"maxim,constant-uvolt\00", [43 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cannot parse maxim,constant-uvolt field from DT\0A\00", [47 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry_ptr.14 = internal global ptr @max14577_charger_dt_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"maxim,fast-charge-uamp\00", [41 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cannot parse maxim,fast-charge-uamp field from DT\0A\00", [45 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry_ptr.18 = internal global ptr @max14577_charger_dt_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"maxim,eoc-uamp\00", [17 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot parse maxim,eoc-uamp field from DT\0A\00", [53 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry_ptr.22 = internal global ptr @max14577_charger_dt_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxim,ovp-uvolt\00", [16 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot parse maxim,ovp-uvolt field from DT\0A\00", [52 x i8] zeroinitializer }, align 32
@max14577_charger_dt_init._entry_ptr.26 = internal global ptr @max14577_charger_dt_init._entry.24, section ".printk_index", align 4
@max14577_charger_reg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Wrong value for OVP: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max14577_charger_reg_init\00", [38 x i8] zeroinitializer }, align 32
@max14577_charger_reg_init._entry_ptr = internal global ptr @max14577_charger_reg_init._entry, section ".printk_index", align 4
@maxim_charger_currents = external dso_local constant [0 x %struct.maxim_charger_current], align 4
@max14577_init_fast_charge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Wrong value for fast charge: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max14577_init_fast_charge\00", [38 x i8] zeroinitializer }, align 32
@max14577_init_fast_charge._entry_ptr = internal global ptr @max14577_init_fast_charge._entry, section ".printk_index", align 4
@max14577_set_fast_charge_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Wrong value for Fast-Charge Timer: %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max14577_set_fast_charge_timer\00", [33 x i8] zeroinitializer }, align 32
@max14577_set_fast_charge_timer._entry_ptr = internal global ptr @max14577_set_fast_charge_timer._entry, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fast_charge_timer\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@max14577_charger_props = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 73, i32 74], [36 x i8] zeroinitializer }, align 32
@model_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38], [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MAX14577-like\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAX14577\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAX77836\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Maxim Integrated\00", [47 x i8] zeroinitializer }, align 32
@switch.table.show_fast_charge_timer = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 5, i32 6, i32 7, i32 5, i32 5, i32 0], [40 x i8] zeroinitializer }, align 32
@switch.table.store_fast_charge_timer = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 112, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 64], [32 x i8] zeroinitializer }, align 32
@switch.table.max14577_charger_get_property = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4200000, i64 4350000]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 6000000, i64 6500000, i64 7000000, i64 7500000]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 73, i64 74]
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"max14577_charger_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 635, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 637, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [29 x i8] c"of_max14577_charger_dt_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 626, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"max14577_charger_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 619, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"dev_attr_fast_charge_timer\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 584, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"max14577_charger_desc\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 447, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 592, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 464, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 472, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 475, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 479, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 482, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 486, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 488, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 492, i32 33 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 494, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 382, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 311, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 220, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 556, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 535, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"max14577_charger_props\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 393, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant [12 x i8] c"model_names\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 403, i32 27 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 404, i32 32 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 405, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 406, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [43 x i8] c"../drivers/power/supply/max14577_charger.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 408, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant [36 x i8] c"switch.table.show_fast_charge_timer\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [37 x i8] c"switch.table.store_fast_charge_timer\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [43 x i8] c"switch.table.max14577_charger_get_property\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_max14577_charger_driver_exit, ptr @__initcall__kmod_max14577_charger__294_644_max14577_charger_driver_init6, ptr @max14577_charger_driver_exit, ptr @max14577_charger_dt_init._entry, ptr @max14577_charger_dt_init._entry.12, ptr @max14577_charger_dt_init._entry.16, ptr @max14577_charger_dt_init._entry.20, ptr @max14577_charger_dt_init._entry.24, ptr @max14577_charger_dt_init._entry_ptr, ptr @max14577_charger_dt_init._entry_ptr.14, ptr @max14577_charger_dt_init._entry_ptr.18, ptr @max14577_charger_dt_init._entry_ptr.22, ptr @max14577_charger_dt_init._entry_ptr.26, ptr @max14577_charger_probe._entry, ptr @max14577_charger_probe._entry.6, ptr @max14577_charger_probe._entry_ptr, ptr @max14577_charger_probe._entry_ptr.8, ptr @max14577_charger_reg_init._entry, ptr @max14577_charger_reg_init._entry_ptr, ptr @max14577_init_fast_charge._entry, ptr @max14577_init_fast_charge._entry_ptr, ptr @max14577_set_fast_charge_timer._entry, ptr @max14577_set_fast_charge_timer._entry_ptr, ptr @max14577_charger_driver, ptr @.str, ptr @of_max14577_charger_dt_match, ptr @max14577_charger_id, ptr @dev_attr_fast_charge_timer, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max14577_charger_desc, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @max14577_charger_props, ptr @model_names, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.show_fast_charge_timer, ptr @switch.table.store_fast_charge_timer, ptr @switch.table.max14577_charger_get_property], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_max14577_charger_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fast_charge_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_dt_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_dt_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_dt_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_dt_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_reg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_init_fast_charge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_set_fast_charge_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_charger_props to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.show_fast_charge_timer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_fast_charge_timer to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max14577_charger_get_property to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max14577_charger_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max14577_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max14577_charger_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg_data.i.i = alloca i8, align 1
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
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
  %max145775 = getelementptr inbounds %struct.max14577_charger, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %max145775 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %max145775, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %max14577_charger_dt_init.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.max14577_charger_dt_init.exit.thread_crit_edge, label %if.end7.i

if.end.i.max14577_charger_dt_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_charger_dt_init.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool9.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool9.not.i, label %if.end16.i, label %if.end7.i.max14577_charger_dt_init.exit.sink.split_crit_edge

if.end7.i.max14577_charger_dt_init.exit.sink.split_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_charger_dt_init.exit.sink.split

if.end16.i:                                       ; preds = %if.end7.i
  %fast_charge_uamp.i = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i68.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.15, ptr noundef %fast_charge_uamp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i68.i)
  %tobool18.not.i = icmp sgt i32 %call.i.i68.i, -1
  br i1 %tobool18.not.i, label %if.end25.i, label %if.end16.i.max14577_charger_dt_init.exit.sink.split_crit_edge

if.end16.i.max14577_charger_dt_init.exit.sink.split_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_charger_dt_init.exit.sink.split

if.end25.i:                                       ; preds = %if.end16.i
  %eoc_uamp.i = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i69.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.19, ptr noundef %eoc_uamp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i69.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i69.i, -1
  br i1 %tobool27.not.i, label %if.end34.i, label %if.end25.i.max14577_charger_dt_init.exit.sink.split_crit_edge

if.end25.i.max14577_charger_dt_init.exit.sink.split_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_charger_dt_init.exit.sink.split

if.end34.i:                                       ; preds = %if.end25.i
  %ovp_uvolt.i = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i70.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.23, ptr noundef %ovp_uvolt.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i70.i)
  %tobool36.not.i = icmp sgt i32 %call.i.i70.i, -1
  br i1 %tobool36.not.i, label %if.end34.i.max14577_charger_dt_init.exit_crit_edge, label %if.end34.i.max14577_charger_dt_init.exit.sink.split_crit_edge

if.end34.i.max14577_charger_dt_init.exit.sink.split_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_charger_dt_init.exit.sink.split

if.end34.i.max14577_charger_dt_init.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_charger_dt_init.exit

max14577_charger_dt_init.exit.thread:             ; preds = %if.end.i.max14577_charger_dt_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.max14577_charger_dt_init.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  %pdata78 = getelementptr inbounds %struct.max14577_charger, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %pdata78 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.ph, ptr %pdata78, align 4
  br label %if.then9

max14577_charger_dt_init.exit.sink.split:         ; preds = %if.end34.i.max14577_charger_dt_init.exit.sink.split_crit_edge, %if.end25.i.max14577_charger_dt_init.exit.sink.split_crit_edge, %if.end16.i.max14577_charger_dt_init.exit.sink.split_crit_edge, %if.end7.i.max14577_charger_dt_init.exit.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %if.end7.i.max14577_charger_dt_init.exit.sink.split_crit_edge ], [ @.str.17, %if.end16.i.max14577_charger_dt_init.exit.sink.split_crit_edge ], [ @.str.21, %if.end25.i.max14577_charger_dt_init.exit.sink.split_crit_edge ], [ @.str.25, %if.end34.i.max14577_charger_dt_init.exit.sink.split_crit_edge ]
  %call.i.i.i.sink = phi i32 [ %call.i.i.i, %if.end7.i.max14577_charger_dt_init.exit.sink.split_crit_edge ], [ %call.i.i68.i, %if.end16.i.max14577_charger_dt_init.exit.sink.split_crit_edge ], [ %call.i.i69.i, %if.end25.i.max14577_charger_dt_init.exit.sink.split_crit_edge ], [ %call.i.i70.i, %if.end34.i.max14577_charger_dt_init.exit.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.13.sink) #8
  %11 = inttoptr i32 %call.i.i.i.sink to ptr
  br label %max14577_charger_dt_init.exit

max14577_charger_dt_init.exit:                    ; preds = %max14577_charger_dt_init.exit.sink.split, %if.end34.i.max14577_charger_dt_init.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end34.i.max14577_charger_dt_init.exit_crit_edge ], [ %11, %max14577_charger_dt_init.exit.sink.split ]
  %pdata = getelementptr inbounds %struct.max14577_charger, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %pdata, align 4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %max14577_charger_dt_init.exit.if.then9_crit_edge, label %if.end12

max14577_charger_dt_init.exit.if.then9_crit_edge: ; preds = %max14577_charger_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %max14577_charger_dt_init.exit.if.then9_crit_edge, %max14577_charger_dt_init.exit.thread
  %retval.0.i80 = phi ptr [ %retval.0.i.ph, %max14577_charger_dt_init.exit.thread ], [ %retval.0.i, %max14577_charger_dt_init.exit.if.then9_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i80 to i32
  br label %cleanup

if.end12:                                         ; preds = %max14577_charger_dt_init.exit
  %14 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %max145775, align 4
  %regmap.i = getelementptr inbounds %struct.max14577, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 10, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i.i68 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 16, i32 noundef 192) #5
  %call.i57.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 20, i32 noundef 0) #5
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = add i32 %21, -4350001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -350001, i32 %22)
  %23 = icmp ult i32 %22, -350001
  br i1 %23, label %if.end12.cleanup_crit_edge, label %if.end.i.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end12
  %24 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.else6.i.i [
    i32 4200000, label %if.end.i.i.max14577_init_constant_voltage.exit.i_crit_edge
    i32 4350000, label %if.then5.i.i
  ]

if.end.i.i.max14577_init_constant_voltage.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_init_constant_voltage.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_init_constant_voltage.exit.i

if.else6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4280001, i32 %21)
  %cmp7.i.i = icmp ult i32 %21, 4280001
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else6.i.i.cleanup_crit_edge

if.else6.i.i.cleanup_crit_edge:                   ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.i.i:                                     ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add nsw i32 %21, -4000000
  %div.i.i = udiv i32 %sub.i.i, 20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4180001, i32 %21)
  %cmp9.i.i = icmp ult i32 %21, 4180001
  %add.i.i = zext i1 %cmp9.i.i to i32
  %reg_data.0.in.i.i = add nuw nsw i32 %div.i.i, %add.i.i
  br label %max14577_init_constant_voltage.exit.i

max14577_init_constant_voltage.exit.i:            ; preds = %if.then8.i.i, %if.then5.i.i, %if.end.i.i.max14577_init_constant_voltage.exit.i_crit_edge
  %reg_data.1.i.i = phi i32 [ 31, %if.then5.i.i ], [ %reg_data.0.in.i.i, %if.then8.i.i ], [ 0, %if.end.i.i.max14577_init_constant_voltage.exit.i_crit_edge ]
  %25 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %max145775, align 4
  %regmap.i.i = getelementptr inbounds %struct.max14577, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i58.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 17, i32 noundef %reg_data.1.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58.i)
  %tobool.not.i69 = icmp eq i32 %call.i.i58.i, 0
  br i1 %tobool.not.i69, label %if.end.i71, label %max14577_init_constant_voltage.exit.i.cleanup_crit_edge

max14577_init_constant_voltage.exit.i.cleanup_crit_edge: ; preds = %max14577_init_constant_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i71:                                       ; preds = %max14577_init_constant_voltage.exit.i
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata, align 4
  %eoc_uamp.i70 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %eoc_uamp.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %eoc_uamp.i70, align 4
  %33 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %max145775, align 4
  %dev_type.i.i = getelementptr inbounds %struct.max14577, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cond25.i.i = icmp eq i32 %36, 2
  br i1 %cond25.i.i, label %sw.bb.i.i, label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %32)
  %cmp.i.i = icmp ult i32 %32, 5000
  br i1 %cmp.i.i, label %sw.bb.i.i.cleanup_crit_edge, label %if.end.i60.i

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i60.i:                                     ; preds = %sw.bb.i.i
  %37 = add i32 %32, -7500
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %37)
  %38 = icmp ult i32 %37, 2500
  br i1 %38, label %if.end.i60.i.max14577_init_eoc.exit.i_crit_edge, label %if.else.i.i

if.end.i60.i.max14577_init_eoc.exit.i_crit_edge:  ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_init_eoc.exit.i

if.else.i.i:                                      ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50001, i32 %32)
  %cmp4.i.i = icmp ult i32 %32, 50001
  br i1 %cmp4.i.i, label %if.then5.i61.i, label %if.else6.i63.i

if.then5.i61.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div.lhs.trunc.i.i = trunc i32 %32 to i16
  %div45.i.i = udiv i16 %div.lhs.trunc.i.i, 5000
  %div.zext.i.i = zext i16 %div45.i.i to i32
  br label %max14577_init_eoc.exit.i

if.else6.i63.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %32)
  %cmp7.i62.i = icmp ult i32 %32, 100000
  %phi.bo42.i.i = add i32 %32, -50000
  %phi.bo43.i.i = udiv i32 %phi.bo42.i.i, 10000
  %phi.bo44.i.i = add nuw nsw i32 %phi.bo43.i.i, 10
  %cond.i.i = select i1 %cmp7.i62.i, i32 %phi.bo44.i.i, i32 15
  br label %max14577_init_eoc.exit.i

sw.default.i.i:                                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %32)
  %cmp12.i.i = icmp ult i32 %32, 50000
  br i1 %cmp12.i.i, label %sw.default.i.i.cleanup_crit_edge, label %if.end14.i.i

sw.default.i.i.cleanup_crit_edge:                 ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %32)
  %cmp16.i.i = icmp ult i32 %32, 200000
  %phi.bo.i.i = add i32 %32, -50000
  %phi.bo41.i.i = udiv i32 %phi.bo.i.i, 10000
  %cond20.i.i = select i1 %cmp16.i.i, i32 %phi.bo41.i.i, i32 15
  br label %max14577_init_eoc.exit.i

max14577_init_eoc.exit.i:                         ; preds = %if.end14.i.i, %if.else6.i63.i, %if.then5.i61.i, %if.end.i60.i.max14577_init_eoc.exit.i_crit_edge
  %current_bits.0.i.i = phi i32 [ %div.zext.i.i, %if.then5.i61.i ], [ %cond.i.i, %if.else6.i63.i ], [ %cond20.i.i, %if.end14.i.i ], [ 0, %if.end.i60.i.max14577_init_eoc.exit.i_crit_edge ]
  %regmap.i64.i = getelementptr inbounds %struct.max14577, ptr %34, i32 0, i32 4
  %39 = ptrtoint ptr %regmap.i64.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i64.i, align 4
  %conv2.i.i.i = and i32 %current_bits.0.i.i, 255
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 19, i32 noundef 15, i32 noundef %conv2.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %max14577_init_eoc.exit.i.cleanup_crit_edge

max14577_init_eoc.exit.i.cleanup_crit_edge:       ; preds = %max14577_init_eoc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %max14577_init_eoc.exit.i
  %41 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata, align 4
  %fast_charge_uamp.i72 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %fast_charge_uamp.i72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fast_charge_uamp.i72, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_data.i.i) #5
  %45 = ptrtoint ptr %reg_data.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %reg_data.i.i, align 1, !annotation !107
  %46 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %max145775, align 4
  %dev_type.i67.i = getelementptr inbounds %struct.max14577, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dev_type.i67.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev_type.i67.i, align 4
  %arrayidx.i.i = getelementptr [0 x %struct.maxim_charger_current], ptr @maxim_charger_currents, i32 0, i32 %49
  %call.i68.i = call i32 @maxim_charger_calc_reg_current(ptr noundef %arrayidx.i.i, i32 noundef %44, i32 noundef %44, ptr noundef nonnull %reg_data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool.not.i.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool.not.i.i, label %max14577_init_fast_charge.exit.i, label %max14577_init_fast_charge.exit.thread.i

max14577_init_fast_charge.exit.thread.i:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.29, i32 noundef %44) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_data.i.i) #5
  br label %cleanup

max14577_init_fast_charge.exit.i:                 ; preds = %if.end9.i
  %52 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %max145775, align 4
  %regmap.i69.i = getelementptr inbounds %struct.max14577, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %regmap.i69.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i69.i, align 4
  %56 = ptrtoint ptr %reg_data.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %reg_data.i.i, align 1
  %conv2.i.i70.i = zext i8 %57 to i32
  %call.i.i.i71.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 18, i32 noundef 31, i32 noundef %conv2.i.i70.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i71.i)
  %tobool12.not.i = icmp eq i32 %call.i.i.i71.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %max14577_init_fast_charge.exit.i.cleanup_crit_edge

max14577_init_fast_charge.exit.i.cleanup_crit_edge: ; preds = %max14577_init_fast_charge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.i:                                       ; preds = %max14577_init_fast_charge.exit.i
  %58 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %max145775, align 4
  %regmap.i76.i = getelementptr inbounds %struct.max14577, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %regmap.i76.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i76.i, align 4
  %call.i.i.i77.i = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 15, i32 noundef 112, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i77.i)
  %tobool16.not.i = icmp eq i32 %call.i.i.i77.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i:                                       ; preds = %if.end14.i
  %62 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata, align 4
  %ovp_uvolt.i73 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %ovp_uvolt.i73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ovp_uvolt.i73, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %65, label %do.end.i74 [
    i32 7500000, label %if.end18.i.if.end16_crit_edge
    i32 6000000, label %if.end18.i.sw.bb20.i_crit_edge
    i32 6500000, label %if.end18.i.sw.bb20.i_crit_edge84
    i32 7000000, label %if.end18.i.sw.bb20.i_crit_edge85
  ]

if.end18.i.sw.bb20.i_crit_edge85:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20.i

if.end18.i.sw.bb20.i_crit_edge84:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20.i

if.end18.i.sw.bb20.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20.i

if.end18.i.if.end16_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

sw.bb20.i:                                        ; preds = %if.end18.i.sw.bb20.i_crit_edge, %if.end18.i.sw.bb20.i_crit_edge84, %if.end18.i.sw.bb20.i_crit_edge85
  %sub.i = add nsw i32 %65, -6000000
  %div.i = udiv i32 %sub.i, 500000
  %conv23.i = add nuw nsw i32 %div.i, 1
  br label %if.end16

do.end.i74:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.27, i32 noundef %65) #8
  br label %cleanup

if.end16:                                         ; preds = %sw.bb20.i, %if.end18.i.if.end16_crit_edge
  %reg_data.0.i = phi i32 [ %conv23.i, %sw.bb20.i ], [ 0, %if.end18.i.if.end16_crit_edge ]
  %call.i80.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 21, i32 noundef %reg_data.0.i) #5
  %call18 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_fast_charge_timer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %69 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %drv_data, align 4
  %call24 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @max14577_charger_desc, ptr noundef nonnull %psy_cfg) #5
  %charger = getelementptr inbounds %struct.max14577_charger, ptr %call.i, i32 0, i32 2
  %70 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call24, ptr %charger, align 4
  %cmp.i76 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end30, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %71 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %charger, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_fast_charge_timer) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end22.cleanup_crit_edge, %do.end, %do.end.i74, %if.end14.i.cleanup_crit_edge, %max14577_init_fast_charge.exit.i.cleanup_crit_edge, %max14577_init_fast_charge.exit.thread.i, %max14577_init_eoc.exit.i.cleanup_crit_edge, %sw.default.i.i.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %max14577_init_constant_voltage.exit.i.cleanup_crit_edge, %if.else6.i.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then9 ], [ %call18, %do.end ], [ %73, %do.end30 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ -22, %sw.default.i.i.cleanup_crit_edge ], [ -22, %sw.bb.i.i.cleanup_crit_edge ], [ -22, %if.else6.i.i.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call.i68.i, %max14577_init_fast_charge.exit.thread.i ], [ %call.i.i.i77.i, %if.end14.i.cleanup_crit_edge ], [ %call.i.i.i71.i, %max14577_init_fast_charge.exit.i.cleanup_crit_edge ], [ %call.i.i.i.i, %max14577_init_eoc.exit.i.cleanup_crit_edge ], [ %call.i.i58.i, %max14577_init_constant_voltage.exit.i.cleanup_crit_edge ], [ -22, %do.end.i74 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_charger_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_fast_charge_timer) #5
  %charger = getelementptr inbounds %struct.max14577_charger, ptr %1, i32 0, i32 2
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @maxim_charger_calc_reg_current(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fast_charge_timer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %max14577 = getelementptr inbounds %struct.max14577_charger, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max14577, align 4
  %regmap = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !107
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 15, ptr noundef nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 7
  %switch.tableidx = add nsw i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 6
  br i1 %11, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.show_fast_charge_timer, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %val.0 = phi i32 [ %switch.load, %switch.lookup ], [ 5, %if.end.sw.epilog_crit_edge ]
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.34, i32 noundef %val.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fast_charge_timer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !107
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %switch.hole_check, label %if.end.max14577_set_fast_charge_timer.exit.thread_crit_edge

if.end.max14577_set_fast_charge_timer.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_set_fast_charge_timer.exit.thread

max14577_set_fast_charge_timer.exit.thread:       ; preds = %switch.hole_check.max14577_set_fast_charge_timer.exit.thread_crit_edge, %if.end.max14577_set_fast_charge_timer.exit.thread_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31, i32 noundef %4) #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %4 to i8
  %switch.shifted = lshr i8 -31, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.max14577_set_fast_charge_timer.exit.thread_crit_edge, label %switch.lookup

switch.hole_check.max14577_set_fast_charge_timer.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %max14577_set_fast_charge_timer.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.store_fast_charge_timer, i32 0, i32 %4
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %max14577.i = getelementptr inbounds %struct.max14577_charger, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %max14577.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %max14577.i, align 4
  %regmap.i = getelementptr inbounds %struct.max14577, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 15, i32 noundef 112, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not = icmp eq i32 %call.i.i.i, 0
  %spec.select = select i1 %tobool3.not, i32 %count, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %max14577_set_fast_charge_timer.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %max14577_set_fast_charge_timer.exit.thread ], [ %spec.select, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %val.i.i38 = alloca i32, align 4
  %val.i23.i = alloca i32, align 4
  %val.i.i25 = alloca i32, align 4
  %val.i25.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %val.i25.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 73, label %do.end
    i32 74, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %max14577.i = getelementptr inbounds %struct.max14577_charger, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %max14577.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %max14577.i, align 4
  %regmap.i = getelementptr inbounds %struct.max14577, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i.i, align 4, !annotation !107
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 16, ptr noundef nonnull %val.i.i) #5
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i = icmp eq i32 %8, 0
  br i1 %cmp1.i, label %if.end.i.out.sink.split.i_crit_edge, label %if.end4.i

if.end.i.out.sink.split.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i25.i) #5
  %9 = ptrtoint ptr %val.i25.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i25.i, align 4, !annotation !107
  %call.i26.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %val.i25.i) #5
  %10 = ptrtoint ptr %val.i25.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i25.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i25.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %cmp6.i = icmp slt i32 %call.i26.i, 0
  br i1 %cmp6.i, label %if.end4.i.cleanup_crit_edge, label %if.end9.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  %and11.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %if.end9.i.out.sink.split.i_crit_edge, label %if.then12.i

if.end9.i.out.sink.split.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %and14.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %..i = select i1 %tobool15.not.i, i32 1, i32 4
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.then12.i, %if.end9.i.out.sink.split.i_crit_edge, %if.end.i.out.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.end.i.out.sink.split.i_crit_edge ], [ %..i, %if.then12.i ], [ 2, %if.end9.i.out.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call.i.i, %if.end.i.out.sink.split.i_crit_edge ], [ %call.i26.i, %if.then12.i ], [ %call.i26.i, %if.end9.i.out.sink.split.i_crit_edge ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %max14577.i.i = getelementptr inbounds %struct.max14577_charger, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %max14577.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %max14577.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.max14577, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #5
  %17 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !107
  %call.i.i.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %val.i.i.i) #5
  %18 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %sw.bb2.cleanup_crit_edge, label %if.end.i.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb2
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.i.i = icmp eq i32 %20, 0
  br i1 %cmp1.i.i, label %if.end.i.i.if.end.thread.i_crit_edge, label %if.end4.i.i

if.end.i.i.if.end.thread.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i25.i.i) #5
  %21 = ptrtoint ptr %val.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i25.i.i, align 4, !annotation !107
  %call.i26.i.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %val.i25.i.i) #5
  %22 = ptrtoint ptr %val.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i25.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i25.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %cmp6.i.i = icmp slt i32 %call.i26.i.i, 0
  br i1 %cmp6.i.i, label %if.end4.i.i.cleanup_crit_edge, label %if.end9.i.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %24 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %if.end9.i.i.if.end.i24_crit_edge, label %if.end9.i.i.if.end.thread.i_crit_edge

if.end9.i.i.if.end.thread.i_crit_edge:            ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread.i

if.end9.i.i.if.end.i24_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i24

if.end.thread.i:                                  ; preds = %if.end9.i.i.if.end.thread.i_crit_edge, %if.end.i.i.if.end.thread.i_crit_edge
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.end.thread.i, %if.end9.i.i.if.end.i24_crit_edge
  %26 = phi i32 [ 1, %if.end.thread.i ], [ 3, %if.end9.i.i.if.end.i24_crit_edge ]
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %max14577.i26 = getelementptr inbounds %struct.max14577_charger, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %max14577.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %max14577.i26, align 4
  %regmap.i27 = getelementptr inbounds %struct.max14577, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i25) #5
  %32 = ptrtoint ptr %val.i.i25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i.i25, align 4, !annotation !107
  %call.i.i28 = call i32 @regmap_read(ptr noundef %31, i32 noundef 5, ptr noundef nonnull %val.i.i25) #5
  %33 = ptrtoint ptr %val.i.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp.i29 = icmp slt i32 %call.i.i28, 0
  br i1 %cmp.i29, label %sw.bb4.cleanup_crit_edge, label %if.end.i30

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i30:                                       ; preds = %sw.bb4
  %conv1.i.i = trunc i32 %34 to i8
  %35 = and i8 %conv1.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %35)
  %switch.i = icmp ult i8 %35, 6
  br i1 %switch.i, label %if.end.i30.if.end7.i_crit_edge, label %sw.bb2.i.i

if.end.i30.if.end7.i_crit_edge:                   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

sw.bb2.i.i:                                       ; preds = %if.end.i30
  %36 = ptrtoint ptr %max14577.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %max14577.i26, align 4
  %dev_type.i = getelementptr inbounds %struct.max14577, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i.i31 = icmp eq i32 %39, 2
  %or.i.i = or i8 %35, 8
  %spec.select.i.i = select i1 %cmp.i.i31, i8 %or.i.i, i8 %35
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %spec.select.i.i)
  %cmp4.i = icmp eq i8 %spec.select.i.i, 7
  br i1 %cmp4.i, label %sw.bb2.i.i.out.sink.split.i36_crit_edge, label %sw.bb2.i.i.if.end7.i_crit_edge

sw.bb2.i.i.if.end7.i_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

sw.bb2.i.i.out.sink.split.i36_crit_edge:          ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i36

if.end7.i:                                        ; preds = %sw.bb2.i.i.if.end7.i_crit_edge, %if.end.i30.if.end7.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i23.i) #5
  %40 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %val.i23.i, align 4, !annotation !107
  %call.i24.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 6, ptr noundef nonnull %val.i23.i) #5
  %41 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i23.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i23.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp9.i = icmp slt i32 %call.i24.i, 0
  br i1 %cmp9.i, label %if.end7.i.cleanup_crit_edge, label %if.end12.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i32 = icmp eq i32 %43, 0
  %..i33 = select i1 %tobool.not.i32, i32 1, i32 4
  br label %out.sink.split.i36

out.sink.split.i36:                               ; preds = %if.end12.i, %sw.bb2.i.i.out.sink.split.i36_crit_edge
  %.sink.i34 = phi i32 [ 3, %sw.bb2.i.i.out.sink.split.i36_crit_edge ], [ %..i33, %if.end12.i ]
  %ret.0.ph.i35 = phi i32 [ %call.i.i28, %sw.bb2.i.i.out.sink.split.i36_crit_edge ], [ %call.i24.i, %if.end12.i ]
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i34, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %max14577.i39 = getelementptr inbounds %struct.max14577_charger, ptr %call, i32 0, i32 1
  %46 = ptrtoint ptr %max14577.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %max14577.i39, align 4
  %regmap.i40 = getelementptr inbounds %struct.max14577, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %regmap.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i40, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i38) #5
  %50 = ptrtoint ptr %val.i.i38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i.i38, align 4, !annotation !107
  %call.i.i41 = call i32 @regmap_read(ptr noundef %49, i32 noundef 5, ptr noundef nonnull %val.i.i38) #5
  %51 = ptrtoint ptr %val.i.i38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i42 = icmp slt i32 %call.i.i41, 0
  br i1 %cmp.i42, label %sw.bb8.cleanup_crit_edge, label %if.end.i49

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i49:                                       ; preds = %sw.bb8
  %conv1.i.i43 = trunc i32 %52 to i8
  %53 = and i8 %conv1.i.i43, 7
  %54 = ptrtoint ptr %max14577.i39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %max14577.i39, align 4
  %dev_type.i44 = getelementptr inbounds %struct.max14577, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %dev_type.i44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dev_type.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %53)
  %switch.i45 = icmp ult i8 %53, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp.i.i46 = icmp eq i32 %57, 2
  %or.i.i47 = or i8 %53, 8
  %spec.select.i.i48 = select i1 %cmp.i.i46, i8 %or.i.i47, i8 %53
  %retval.0.i.v.i = select i1 %switch.i45, i8 %53, i8 %spec.select.i.i48
  %retval.0.i.i = zext i8 %retval.0.i.v.i to i32
  %switch.tableidx = add nsw i32 %retval.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %58 = icmp ult i32 %switch.tableidx, 14
  br i1 %58, label %switch.lookup, label %if.end.i49.sw.epilog.i_crit_edge

if.end.i49.sw.epilog.i_crit_edge:                 ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.max14577_charger_get_property, i32 0, i32 %switch.tableidx
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end.i49.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i49.sw.epilog.i_crit_edge ]
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %storemerge.i, ptr %val, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max14577 = getelementptr inbounds %struct.max14577_charger, ptr %call, i32 0, i32 1
  %61 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %max14577, align 4
  %dev_type = getelementptr inbounds %struct.max14577, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dev_type, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @model_names, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.39, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %do.end, %sw.epilog.i, %sw.bb8.cleanup_crit_edge, %sw.bb6, %out.sink.split.i36, %if.end7.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.end.i24, %if.end4.i.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %out.sink.split.i, %if.end4.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb11 ], [ 0, %do.end ], [ 0, %sw.bb6 ], [ %call.i.i, %sw.bb.cleanup_crit_edge ], [ %call.i26.i, %if.end4.i.cleanup_crit_edge ], [ %ret.0.ph.i, %out.sink.split.i ], [ 0, %if.end.i24 ], [ %call.i.i.i, %sw.bb2.cleanup_crit_edge ], [ %call.i26.i.i, %if.end4.i.i.cleanup_crit_edge ], [ %call.i.i28, %sw.bb4.cleanup_crit_edge ], [ %call.i24.i, %if.end7.i.cleanup_crit_edge ], [ %ret.0.ph.i35, %out.sink.split.i36 ], [ 0, %sw.epilog.i ], [ %call.i.i41, %sw.bb8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_max14577_charger__294_644_max14577_charger_driver_init6, !1, !"__initcall__kmod_max14577_charger__294_644_max14577_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max14577_charger.c", i32 644, i32 1}
!2 = !{ptr @__exitcall_max14577_charger_driver_exit, !1, !"__exitcall_max14577_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max14577_charger.c", i32 646, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/max14577_charger.c", i32 647, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/max14577_charger.c", i32 648, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max14577_charger.c", i32 637, i32 11}
!12 = !{ptr @max14577_charger_driver, !13, !"max14577_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max14577_charger.c", i32 635, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max14577_charger.c", i32 584, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max14577_charger_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max14577_charger_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/max14577_charger.c", i32 592, i32 3}
!24 = !{ptr @max14577_charger_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max14577_charger_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/max14577_charger.c", i32 464, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max14577_charger_dt_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @max14577_charger_dt_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/max14577_charger.c", i32 472, i32 33}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/max14577_charger.c", i32 475, i32 3}
!35 = !{ptr @max14577_charger_dt_init._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max14577_charger_dt_init._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/max14577_charger.c", i32 479, i32 33}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/max14577_charger.c", i32 482, i32 3}
!41 = !{ptr @max14577_charger_dt_init._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @max14577_charger_dt_init._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/max14577_charger.c", i32 486, i32 33}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/max14577_charger.c", i32 488, i32 3}
!47 = !{ptr @max14577_charger_dt_init._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @max14577_charger_dt_init._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/max14577_charger.c", i32 492, i32 33}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/max14577_charger.c", i32 494, i32 3}
!53 = !{ptr @max14577_charger_dt_init._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @max14577_charger_dt_init._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/max14577_charger.c", i32 382, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @max14577_charger_reg_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @max14577_charger_reg_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/max14577_charger.c", i32 311, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @max14577_init_fast_charge._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @max14577_init_fast_charge._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/max14577_charger.c", i32 220, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @max14577_set_fast_charge_timer._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @max14577_set_fast_charge_timer._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/max14577_charger.c", i32 556, i32 8}
!72 = !{ptr @dev_attr_fast_charge_timer, !71, !"dev_attr_fast_charge_timer", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/max14577_charger.c", i32 535, i32 35}
!75 = !{ptr @max14577_charger_desc, !76, !"max14577_charger_desc", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/max14577_charger.c", i32 447, i32 39}
!77 = !{ptr @max14577_charger_props, !78, !"max14577_charger_props", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/max14577_charger.c", i32 393, i32 35}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/max14577_charger.c", i32 42, i32 3}
!81 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/max14577_charger.c", i32 404, i32 32}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/max14577_charger.c", i32 405, i32 33}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/max14577_charger.c", i32 406, i32 33}
!88 = !{ptr @model_names, !89, !"model_names", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/max14577_charger.c", i32 403, i32 27}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/max14577_charger.c", i32 408, i32 35}
!92 = distinct !{null, !93, !"manufacturer", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/max14577_charger.c", i32 408, i32 20}
!94 = !{ptr @of_max14577_charger_dt_match, !95, !"of_max14577_charger_dt_match", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/max14577_charger.c", i32 626, i32 34}
!96 = !{ptr @max14577_charger_id, !97, !"max14577_charger_id", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/max14577_charger.c", i32 619, i32 40}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
