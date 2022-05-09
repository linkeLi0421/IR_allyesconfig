; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ab8500_fg.c_pt.bc'
source_filename = "../drivers/power/supply/ab8500_fg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_bm_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ab8500_fg_interrupts = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.ab8500_fg_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.ab8500_fg = type { ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.completion, %struct.completion, %struct.ab8500_fg_flags, %struct.ab8500_fg_battery_capacity, %struct.ab8500_fg_avg_cap, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.mutex, %struct.kobject }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ab8500_fg_flags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ab8500_fg_battery_capacity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ab8500_fg_cap_scaling }
%struct.ab8500_fg_cap_scaling = type { i8, [2 x i32], i32, i32 }
%struct.ab8500_fg_avg_cap = type { i32, [20 x i32], [20 x i64], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500_fg_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_bm_capacity_levels = type { i32, i32, i32, i32, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%union.power_supply_propval = type { i32 }

@ab8500_fg_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ab8500_fg_list, ptr @ab8500_fg_list }, [24 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_start.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_fg\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_fg_inst_curr_start\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/power/supply/ab8500_fg.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s Enable FG\0A\00", [18 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_fg_inst_curr_finalize\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Finalize time: %d ms\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_finalize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 627, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"completion timed out [%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_finalize._entry_ptr = internal global ptr @ab8500_fg_inst_curr_finalize._entry, section ".printk_index", align 4
@ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 -88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s Disable FG\0A\00", [17 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_blocking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 712, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to initialize fg_inst\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_fg_inst_curr_blocking\00", [35 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_blocking._entry_ptr = internal global ptr @ab8500_fg_inst_curr_blocking._entry, section ".printk_index", align 4
@ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Start time: %d ms\0A\00", [45 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_blocking._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.2, i32 726, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_blocking._entry_ptr.14 = internal global ptr @ab8500_fg_inst_curr_blocking._entry.13, section ".printk_index", align 4
@ab8500_fg_inst_curr_blocking._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 733, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to finalize fg_inst\0A\00", [36 x i8] zeroinitializer }, align 32
@ab8500_fg_inst_curr_blocking._entry_ptr.17 = internal global ptr @ab8500_fg_inst_curr_blocking._entry.15, section ".printk_index", align 4
@ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.18, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s instant current: %d uA\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500-fg\00", [22 x i8] zeroinitializer }, align 32
@ab8500_fg_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-fg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ab8500_fg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ab8500_fg_suspend, ptr @ab8500_fg_resume, ptr @ab8500_fg_suspend, ptr @ab8500_fg_resume, ptr @ab8500_fg_suspend, ptr @ab8500_fg_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ab8500_fg_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_fg_probe, ptr @ab8500_fg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ab8500_fg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_fg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file338 = internal constant [46 x i8] c"ab8500_fg.file=drivers/power/supply/ab8500_fg\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [25 x i8] c"ab8500_fg.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author340 = internal constant [49 x i8] c"ab8500_fg.author=Johan Palsson, Karl Komierowski\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [35 x i8] c"ab8500_fg.alias=platform:ab8500-fg\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [47 x i8] c"ab8500_fg.description=AB8500 Fuel Gauge driver\00", section ".modinfo", align 1
@ab8500_bm_data = external dso_local global %struct.ab8500_bm_data, align 4
@ab8500_fg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&di->cc_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"main_bat_v\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get main battery ADC channel\0A\00", [56 x i8] zeroinitializer }, align 32
@supply_interface = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.59, ptr @.str.60], [24 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&di->fg_work)\00", [32 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&di->fg_acc_cur_work)\00", [56 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&di->fg_reinit_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&di->fg_reinit_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&di->fg_periodic_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&di->fg_periodic_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&di->fg_low_bat_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&di->fg_low_bat_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(work_completion)(&(&di->fg_check_hw_failure_work)->work)\00", [38 x i8] zeroinitializer }, align 32
@ab8500_fg_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&(&di->fg_check_hw_failure_work)->timer\00", [56 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 3096, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_fg_probe\00", [16 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry_ptr = internal global ptr @ab8500_fg_probe._entry, section ".printk_index", align 4
@ab8500_fg_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 1, ptr null, i32 0, ptr @ab8500_fg_props, i32 11, ptr @ab8500_fg_get_property, ptr null, ptr null, ptr @ab8500_fg_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 3107, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register FG psy\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry_ptr.47 = internal global ptr @ab8500_fg_probe._entry.45, section ".printk_index", align 4
@ab8500_fg_irq = internal constant { [5 x %struct.ab8500_fg_interrupts], [56 x i8] } { [5 x %struct.ab8500_fg_interrupts] [%struct.ab8500_fg_interrupts { ptr @.str.174, ptr @ab8500_fg_cc_convend_handler }, %struct.ab8500_fg_interrupts { ptr @.str.175, ptr @ab8500_fg_batt_ovv_handler }, %struct.ab8500_fg_interrupts { ptr @.str.176, ptr @ab8500_fg_lowbatf_handler }, %struct.ab8500_fg_interrupts { ptr @.str.177, ptr @ab8500_fg_cc_int_calib_handler }, %struct.ab8500_fg_interrupts { ptr @.str.52, ptr @ab8500_fg_cc_data_end_handler }], [56 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 3133, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request %s IRQ %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry_ptr.50 = internal global ptr @ab8500_fg_probe._entry.48, section ".printk_index", align 4
@ab8500_fg_probe.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.51, i8 3, i8 16, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Requested %s IRQ %d: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CCEOC\00", [26 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.2, i32 3148, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create sysfs entry\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry_ptr.55 = internal global ptr @ab8500_fg_probe._entry.53, section ".printk_index", align 4
@ab8500_fg_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.44, ptr @.str.2, i32 3154, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to create FG psy\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_fg_probe._entry_ptr.58 = internal global ptr @ab8500_fg_probe._entry.56, section ".printk_index", align 4
@ab8500_fg_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @ab8500_fg_bind, ptr @ab8500_fg_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_chargalg\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500_usb\00", [21 x i8] zeroinitializer }, align 32
@ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 1, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_fg_charge_state_to\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Charge state from %d [%s] to %d [%s]\0A\00", [58 x i8] zeroinitializer }, align 32
@charge_state = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.63, ptr @.str.64], [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CHARGE_INIT\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CHARGE_READOUT\00", [17 x i8] zeroinitializer }, align 32
@ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_fg_discharge_state_to\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Discharge state from %d [%s] to %d [%s]\0A\00", [55 x i8] zeroinitializer }, align 32
@discharge_state = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DISCHARGE_INIT\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DISCHARGE_INITMEASURING\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DISCHARGE_INIT_RECOVERY\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DISCHARGE_RECOVERY\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DISCHARGE_READOUT_INIT\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DISCHARGE_READOUT\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DISCHARGE_WAKEUP\00", [47 x i8] zeroinitializer }, align 32
@ab8500_fg_algorithm.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 1, i8 -74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ab8500_fg_algorithm\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[FG_DATA] %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 1, i8 -93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_fg_algorithm_calibrate\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Calibration ongoing...\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 1, i8 -88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Calibration done...\0A\00", [43 x i8] zeroinitializer }, align 32
@ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.79, i8 1, i8 -87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Calibration WFI\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_fg_algorithm_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.76, ptr @.str.2, i32 1711, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to calibrate the CC\0A\00", [36 x i8] zeroinitializer }, align 32
@ab8500_fg_algorithm_calibrate._entry_ptr = internal global ptr @ab8500_fg_algorithm_calibrate._entry, section ".printk_index", align 4
@ab8500_fg_algorithm_charging.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 1, i8 101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_fg_algorithm_charging\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s CC conv not done\0A\00", [43 x i8] zeroinitializer }, align 32
@ab8500_fg_coulomb_counter.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_fg_coulomb_counter\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" CC enabled: %d Samples: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_fg_coulomb_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 519, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Enabling coulomb counter failed\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_fg_coulomb_counter._entry_ptr = internal global ptr @ab8500_fg_coulomb_counter._entry, section ".printk_index", align 4
@ab8500_fg_calc_cap_charging.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 -3, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_fg_calc_cap_charging\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s cap_mah %d accu_charge %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_fg_bat_voltage.prev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ab8500_fg_bat_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s ADC conversion failed, using previous value\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_fg_bat_voltage\00", [42 x i8] zeroinitializer }, align 32
@ab8500_fg_bat_voltage._entry_ptr = internal global ptr @ab8500_fg_bat_voltage._entry, section ".printk_index", align 4
@ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 1, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_fg_check_capacity_limits\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"level changed from %d to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.92, i8 1, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"level not allowed to go up since no charger is connected: %d to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.93, i8 1, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Battery low, set capacity to 0\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.94, i8 1, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"battery reported full but capacity dropping: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.95, i8 1, i8 78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"capacity changed from %d to %d (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.96, i8 1, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"capacity not allowed to go up since no charger is connected: %d to %d (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ab8500_fg_check_capacity_limits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.90, ptr @.str.2, i32 1357, ptr @.str.98, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"capacity=%d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ab8500_fg_check_capacity_limits._entry_ptr = internal global ptr @ab8500_fg_check_capacity_limits._entry, section ".printk_index", align 4
@ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.99, i8 1, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Battery full, notifying.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"charge_full\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"charge_now\00", [21 x i8] zeroinitializer }, align 32
@ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 1, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ab8500_fg_calculate_scaled_capacity\00", [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Scale cap with %d/%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.104, i8 1, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cap to stop scale lowered %d%%\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.105, i8 1, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Disabling scaled capacity\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.106, i8 1, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Waiting in cap to level %d%%\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_fg_algorithm_discharging.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.2, ptr @.str.82, i8 1, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_fg_algorithm_discharging\00", [32 x i8] zeroinitializer }, align 32
@ab8500_fg_load_comp_volt_to_capacity.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 0, i8 -20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_fg_load_comp_volt_to_capacity\00", [59 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s Measured Vbat: %d uV,Compensated Vbat %d uV, R: %d mOhm, Current: %d uA Vbat Samples: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_fg_battery_resistance.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 0, i8 -31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_fg_battery_resistance\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s Temp: %d battery internal resistance: %d fg resistance %d, total: %d (mOhm)\0A\00", [48 x i8] zeroinitializer }, align 32
@ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.87, i8 1, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_fg_calc_cap_discharge_fg\00", [32 x i8] zeroinitializer }, align 32
@ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 1, i8 20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s voltage based: perm %d perm_volt %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_fg_acc_cur_work.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 0, i8 -53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500_fg_acc_cur_work\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"fg_res: %d, fg_samples: %d, gasg: %d, accu_charge: %d \0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_fg_acc_cur_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 816, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read or write gas gauge registers\0A\00", [51 x i8] zeroinitializer }, align 32
@ab8500_fg_acc_cur_work._entry_ptr = internal global ptr @ab8500_fg_acc_cur_work._entry, section ".printk_index", align 4
@ab8500_fg_reinit_work.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 2, i8 83, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_fg_reinit_work\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Resetting FG state machine to init.\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_fg_reinit_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 2392, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Residual offset calibration ongoing retrying..\0A\00", [48 x i8] zeroinitializer }, align 32
@ab8500_fg_reinit_work._entry_ptr = internal global ptr @ab8500_fg_reinit_work._entry, section ".printk_index", align 4
@check_sysfs_capacity.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_sysfs_capacity\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Capacity limits: (Lower: %d User: %d Upper: %d) [user: %d, was: %d]\0A\00", [59 x i8] zeroinitializer }, align 32
@check_sysfs_capacity.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.122, i8 1, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"OK! Using users cap %d uAh now\0A\00", [32 x i8] zeroinitializer }, align 32
@check_sysfs_capacity.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.123, i8 1, i8 117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Capacity from user out of limits, ignoring\00", [53 x i8] zeroinitializer }, align 32
@force_capacity.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.125, i8 1, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"force_capacity\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Remaining cap %d can't be bigger than total %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ab8500_fg_low_bat_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1851, ptr @.str.128, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Shut down pending...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500_fg_low_bat_work\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ab8500_fg_low_bat_work._entry_ptr = internal global ptr @ab8500_fg_low_bat_work._entry, section ".printk_index", align 4
@ab8500_fg_low_bat_work._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.127, ptr @.str.2, i32 1859, ptr @.str.128, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Battery voltage still LOW\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_fg_low_bat_work._entry_ptr.131 = internal global ptr @ab8500_fg_low_bat_work._entry.129, section ".printk_index", align 4
@ab8500_fg_low_bat_work._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.127, ptr @.str.2, i32 1866, ptr @.str.128, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Battery voltage OK again\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_fg_low_bat_work._entry_ptr.134 = internal global ptr @ab8500_fg_low_bat_work._entry.132, section ".printk_index", align 4
@ab8500_fg_check_hw_failure_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1812, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s ab8500 read failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_fg_check_hw_failure_work\00", [32 x i8] zeroinitializer }, align 32
@ab8500_fg_check_hw_failure_work._entry_ptr = internal global ptr @ab8500_fg_check_hw_failure_work._entry, section ".printk_index", align 4
@ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.2, ptr @.str.137, i8 1, i8 -58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Battery OVV\0A\00", [19 x i8] zeroinitializer }, align 32
@ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.2, ptr @.str.138, i8 1, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Battery recovered from OVV\0A\00", [36 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2273, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set BATT_OVV\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_fg_init_hw_registers\00", [36 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr = internal global ptr @ab8500_fg_init_hw_registers._entry, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 2284, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable BATT_OVV\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.143 = internal global ptr @ab8500_fg_init_hw_registers._entry.141, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 2296, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s write failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.146 = internal global ptr @ab8500_fg_init_hw_registers._entry.144, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.140, ptr @.str.2, i32 2303, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BattOk init write failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.149 = internal global ptr @ab8500_fg_init_hw_registers._entry.147, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.140, ptr @.str.2, i32 2312, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s write failed AB8505_RTC_PCUT_MAX_TIME_REG\0A\00", [50 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.152 = internal global ptr @ab8500_fg_init_hw_registers._entry.150, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.140, ptr @.str.2, i32 2320, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s write failed AB8505_RTC_PCUT_FLAG_TIME_REG\0A\00", [49 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.155 = internal global ptr @ab8500_fg_init_hw_registers._entry.153, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.140, ptr @.str.2, i32 2328, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s write failed AB8505_RTC_PCUT_RESTART_REG\0A\00", [51 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.158 = internal global ptr @ab8500_fg_init_hw_registers._entry.156, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.140, ptr @.str.2, i32 2336, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s write failed AB8505_RTC_PCUT_DEBOUNCE_REG\0A\00", [50 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.161 = internal global ptr @ab8500_fg_init_hw_registers._entry.159, section ".printk_index", align 4
@ab8500_fg_init_hw_registers._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.140, ptr @.str.2, i32 2344, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s write failed AB8505_RTC_PCUT_CTL_STATUS_REG\0A\00", [48 x i8] zeroinitializer }, align 32
@ab8500_fg_init_hw_registers._entry_ptr.164 = internal global ptr @ab8500_fg_init_hw_registers._entry.162, section ".printk_index", align 4
@ab8500_fg_lowbat_voltage_map = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 2300000, i32 2325000, i32 2350000, i32 2375000, i32 2400000, i32 2425000, i32 2450000, i32 2475000, i32 2500000, i32 2525000, i32 2550000, i32 2575000, i32 2600000, i32 2625000, i32 2650000, i32 2675000, i32 2700000, i32 2725000, i32 2750000, i32 2775000, i32 2800000, i32 2825000, i32 2850000, i32 2875000, i32 2900000, i32 2925000, i32 2950000, i32 2975000, i32 3000000, i32 3025000, i32 3050000, i32 3075000, i32 3100000, i32 3125000, i32 3150000, i32 3175000, i32 3200000, i32 3225000, i32 3250000, i32 3275000, i32 3300000, i32 3325000, i32 3350000, i32 3375000, i32 3400000, i32 3425000, i32 3450000, i32 3475000, i32 3500000, i32 3525000, i32 3550000, i32 3575000, i32 3600000, i32 3625000, i32 3650000, i32 3675000, i32 3700000, i32 3725000, i32 3750000, i32 3775000, i32 3800000, i32 3825000, i32 3850000, i32 3850000], [64 x i8] zeroinitializer }, align 32
@ab8500_fg_battok_init_hw_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 1919, ptr @.str.128, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid voltage step:%d, using %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_fg_battok_init_hw_register\00", [62 x i8] zeroinitializer }, align 32
@ab8500_fg_battok_init_hw_register._entry_ptr = internal global ptr @ab8500_fg_battok_init_hw_register._entry, section ".printk_index", align 4
@ab8500_fg_battok_init_hw_register._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 1925, ptr @.str.128, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@ab8500_fg_battok_init_hw_register._entry_ptr.168 = internal global ptr @ab8500_fg_battok_init_hw_register._entry.167, section ".printk_index", align 4
@ab8500_fg_battok_init_hw_register.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.166, ptr @.str.2, ptr @.str.169, i8 1, i8 -30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"using: %x %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_fg_props = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 12, i32 17, i32 18, i32 41, i32 43, i32 45, i32 22, i32 24, i32 26, i32 47, i32 51], [52 x i8] zeroinitializer }, align 32
@power_supply_class = external dso_local local_unnamed_addr global ptr, align 4
@ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.2, ptr @.str.171, i8 1, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_fg_update_cap_scalers\00", [35 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cap to stop scale at charge %d%%\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.2, ptr @.str.172, i8 1, i8 52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cap to scale at discharge %d/%d\0A\00", [63 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NCONV_ACCU\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATT_OVV\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOW_BAT_F\00", [22 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CC_INT_CALIB\00", [19 x i8] zeroinitializer }, align 32
@ab8500_fg_batt_ovv_handler.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.178, ptr @.str.2, ptr @.str.137, i8 1, i8 -10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_fg_batt_ovv_handler\00", [37 x i8] zeroinitializer }, align 32
@ab8500_fg_lowbatf_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 2031, ptr @.str.128, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Battery voltage is below LOW threshold\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_fg_lowbatf_handler\00", [38 x i8] zeroinitializer }, align 32
@ab8500_fg_lowbatf_handler._entry_ptr = internal global ptr @ab8500_fg_lowbatf_handler._entry, section ".printk_index", align 4
@ab8500_fg_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @ab8500_fg_sysfs_ops, ptr @ab8500_fg_attrs, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@ab8500_fg_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.182, ptr @.str.2, i32 2525, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_fg_sysfs_init\00", [43 x i8] zeroinitializer }, align 32
@ab8500_fg_sysfs_init._entry_ptr = internal global ptr @ab8500_fg_sysfs_init._entry, section ".printk_index", align 4
@ab8500_fg_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @ab8500_fg_show, ptr @ab8500_fg_store }, [24 x i8] zeroinitializer }, align 32
@ab8500_fg_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @charge_full_attr, ptr @charge_now_attr, ptr null], [20 x i8] zeroinitializer }, align 32
@charge_full_attr = internal global { %struct.ab8500_fg_sysfs_entry, [36 x i8] } { %struct.ab8500_fg_sysfs_entry { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @charge_full_show, ptr @charge_full_store }, [36 x i8] zeroinitializer }, align 32
@charge_now_attr = internal global { %struct.ab8500_fg_sysfs_entry, [36 x i8] } { %struct.ab8500_fg_sysfs_entry { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @charge_now_show, ptr @charge_now_store }, [36 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ab8505_fg_sysfs_psy_attrs = internal global { [9 x %struct.device_attribute], [36 x i8] } { [9 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.186, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_flagtime_read, ptr @ab8505_powercut_flagtime_write }, %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_maxtime_read, ptr @ab8505_powercut_maxtime_write }, %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_restart_read, ptr @ab8505_powercut_restart_write }, %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_timer_read, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_restart_counter_read, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_read, ptr @ab8505_powercut_write }, %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_flag_read, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_debounce_read, ptr @ab8505_powercut_debounce_write }, %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8505_powercut_enable_status_read, ptr null }], [36 x i8] zeroinitializer }, align 32
@ab8500_fg_sysfs_psy_create_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 2904, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed creating sysfs psy attrs for ab8505.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_fg_sysfs_psy_create_attrs\00", [63 x i8] zeroinitializer }, align 32
@ab8500_fg_sysfs_psy_create_attrs._entry_ptr = internal global ptr @ab8500_fg_sysfs_psy_create_attrs._entry, section ".printk_index", align 4
@.str.186 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"powercut_flagtime\00", [46 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"powercut_maxtime\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"powercut_restart_max\00", [43 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powercut_timer\00", [17 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powercut_restart_counter\00", [39 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"powercut_enable\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"powercut_flag\00", [18 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"powercut_debounce_time\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"powercut_enable_status\00", [41 x i8] zeroinitializer }, align 32
@ab8505_powercut_flagtime_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 2543, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read AB8505_RTC_PCUT_FLAG_TIME_REG\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8505_powercut_flagtime_read\00", [34 x i8] zeroinitializer }, align 32
@ab8505_powercut_flagtime_read._entry_ptr = internal global ptr @ab8505_powercut_flagtime_read._entry, section ".printk_index", align 4
@ab8505_powercut_flagtime_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 2566, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Incorrect parameter, echo 0 (1.98s) - 127 (15.625ms) for flagtime\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8505_powercut_flagtime_write\00", [33 x i8] zeroinitializer }, align 32
@ab8505_powercut_flagtime_write._entry_ptr = internal global ptr @ab8505_powercut_flagtime_write._entry, section ".printk_index", align 4
@ab8505_powercut_flagtime_write._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.2, i32 2574, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to set AB8505_RTC_PCUT_FLAG_TIME_REG\0A\00", [51 x i8] zeroinitializer }, align 32
@ab8505_powercut_flagtime_write._entry_ptr.201 = internal global ptr @ab8505_powercut_flagtime_write._entry.199, section ".printk_index", align 4
@ab8505_powercut_maxtime_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 2593, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read AB8505_RTC_PCUT_MAX_TIME_REG\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8505_powercut_maxtime_read\00", [35 x i8] zeroinitializer }, align 32
@ab8505_powercut_maxtime_read._entry_ptr = internal global ptr @ab8505_powercut_maxtime_read._entry, section ".printk_index", align 4
@ab8505_powercut_maxtime_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.2, i32 2617, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Incorrect parameter, echo 0 (0.0s) - 127 (1.98s) for maxtime\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8505_powercut_maxtime_write\00", [34 x i8] zeroinitializer }, align 32
@ab8505_powercut_maxtime_write._entry_ptr = internal global ptr @ab8505_powercut_maxtime_write._entry, section ".printk_index", align 4
@ab8505_powercut_maxtime_write._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.205, ptr @.str.2, i32 2625, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to set AB8505_RTC_PCUT_MAX_TIME_REG\0A\00", [52 x i8] zeroinitializer }, align 32
@ab8505_powercut_maxtime_write._entry_ptr.208 = internal global ptr @ab8505_powercut_maxtime_write._entry.206, section ".printk_index", align 4
@ab8505_powercut_restart_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 2644, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to read AB8505_RTC_PCUT_RESTART_REG\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8505_powercut_restart_read\00", [35 x i8] zeroinitializer }, align 32
@ab8505_powercut_restart_read._entry_ptr = internal global ptr @ab8505_powercut_restart_read._entry, section ".printk_index", align 4
@ab8505_powercut_restart_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.2, i32 2667, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Incorrect parameter, echo 0 - 15 for number of restart\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8505_powercut_restart_write\00", [34 x i8] zeroinitializer }, align 32
@ab8505_powercut_restart_write._entry_ptr = internal global ptr @ab8505_powercut_restart_write._entry, section ".printk_index", align 4
@ab8505_powercut_restart_write._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.2, i32 2675, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to set AB8505_RTC_PCUT_RESTART_REG\0A\00", [53 x i8] zeroinitializer }, align 32
@ab8505_powercut_restart_write._entry_ptr.215 = internal global ptr @ab8505_powercut_restart_write._entry.213, section ".printk_index", align 4
@ab8505_powercut_timer_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.2, i32 2695, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read AB8505_RTC_PCUT_TIME_REG\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8505_powercut_timer_read\00", [37 x i8] zeroinitializer }, align 32
@ab8505_powercut_timer_read._entry_ptr = internal global ptr @ab8505_powercut_timer_read._entry, section ".printk_index", align 4
@ab8505_powercut_restart_counter_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.218, ptr @.str.2, i32 2718, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8505_powercut_restart_counter_read\00", [59 x i8] zeroinitializer }, align 32
@ab8505_powercut_restart_counter_read._entry_ptr = internal global ptr @ab8505_powercut_restart_counter_read._entry, section ".printk_index", align 4
@ab8505_powercut_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.2, i32 2762, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Incorrect parameter, echo 0/1 to disable/enable Pcut feature\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8505_powercut_write\00", [42 x i8] zeroinitializer }, align 32
@ab8505_powercut_write._entry_ptr = internal global ptr @ab8505_powercut_write._entry, section ".printk_index", align 4
@ab8505_powercut_write._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.2, i32 2770, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to set AB8505_RTC_PCUT_CTL_STATUS_REG\0A\00", [50 x i8] zeroinitializer }, align 32
@ab8505_powercut_write._entry_ptr.223 = internal global ptr @ab8505_powercut_write._entry.221, section ".printk_index", align 4
@ab8505_powercut_flag_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.2, i32 2790, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to read AB8505_RTC_PCUT_CTL_STATUS_REG\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8505_powercut_flag_read\00", [38 x i8] zeroinitializer }, align 32
@ab8505_powercut_flag_read._entry_ptr = internal global ptr @ab8505_powercut_flag_read._entry, section ".printk_index", align 4
@ab8505_powercut_debounce_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 2813, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read AB8505_RTC_PCUT_DEBOUNCE_REG\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8505_powercut_debounce_read\00", [34 x i8] zeroinitializer }, align 32
@ab8505_powercut_debounce_read._entry_ptr = internal global ptr @ab8505_powercut_debounce_read._entry, section ".printk_index", align 4
@ab8505_powercut_debounce_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.2, i32 2836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Incorrect parameter, echo 0 to 7 for debounce setting\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8505_powercut_debounce_write\00", [33 x i8] zeroinitializer }, align 32
@ab8505_powercut_debounce_write._entry_ptr = internal global ptr @ab8505_powercut_debounce_write._entry, section ".printk_index", align 4
@ab8505_powercut_debounce_write._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.229, ptr @.str.2, i32 2844, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to set AB8505_RTC_PCUT_DEBOUNCE_REG\0A\00", [52 x i8] zeroinitializer }, align 32
@ab8505_powercut_debounce_write._entry_ptr.232 = internal global ptr @ab8505_powercut_debounce_write._entry.230, section ".printk_index", align 4
@ab8505_powercut_enable_status_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.233, ptr @.str.2, i32 2863, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ab8505_powercut_enable_status_read\00", [61 x i8] zeroinitializer }, align 32
@ab8505_powercut_enable_status_read._entry_ptr = internal global ptr @ab8505_powercut_enable_status_read._entry, section ".printk_index", align 4
@.str.234 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500_fg_wq\00", [19 x i8] zeroinitializer }, align 32
@ab8500_fg_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 2993, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create work queue\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500_fg_bind\00", [17 x i8] zeroinitializer }, align 32
@ab8500_fg_bind._entry_ptr = internal global ptr @ab8500_fg_bind._entry, section ".printk_index", align 4
@ab8500_fg_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.2, i32 3018, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to disable coulomb counter\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_fg_unbind\00", [47 x i8] zeroinitializer }, align 32
@ab8500_fg_unbind._entry_ptr = internal global ptr @ab8500_fg_unbind._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.240 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.241 = internal global [13 x i64] [i64 11, i64 32, i64 12, i64 17, i64 18, i64 22, i64 24, i64 26, i64 41, i64 43, i64 45, i64 47, i64 51]
@__sancov_gen_cov_switch_values.242 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 52]
@__sancov_gen_cov_switch_values.243 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"ab8500_fg_list\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 239, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 546, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 620, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 626, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 674, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 712, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 721, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 725, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 733, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 737, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3196, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"ab8500_fg_match\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3186, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"ab8500_fg_pm_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3184, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"ab8500_fg_driver\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3192, i32 24 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3043, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3049, i32 45 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3052, i32 9 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"supply_interface\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2971, i32 14 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3066, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3069, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3072, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3076, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3080, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3084, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3096, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [15 x i8] c"ab8500_fg_desc\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2976, i32 39 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3107, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [14 x i8] c"ab8500_fg_irq\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2963, i32 36 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3132, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3136, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3140, i32 42 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3148, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3154, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant [24 x i8] c"ab8500_fg_component_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3024, i32 35 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2972, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2973, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1372, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [13 x i8] c"charge_state\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 94, i32 14 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 95, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 96, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1384, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [16 x i8] c"discharge_state\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 79, i32 14 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 80, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 81, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 82, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 83, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 84, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 85, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 86, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1734, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1677, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1699, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1703, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1711, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1427, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 512, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 519, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1009, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 830, i32 13 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 834, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1261, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1267, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1279, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1306, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1332, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1342, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1355, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1361, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1363, i32 40 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1365, i32 39 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1170, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1185, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1190, i32 5 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1194, i32 5 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1621, i32 5 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 942, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 899, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1078, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1104, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 811, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 815, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2383, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2391, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1483, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1489, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1493, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1454, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1851, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1859, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1866, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1812, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1817, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1825, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2273, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2284, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2296, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2303, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2312, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2320, i32 4 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2328, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2336, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2344, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant [29 x i8] c"ab8500_fg_lowbat_voltage_map\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 270, i32 12 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1918, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1924, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1929, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [16 x i8] c"ab8500_fg_props\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 252, i32 35 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1221, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 1234, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.797 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 87, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2964, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2965, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2966, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2967, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2010, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2031, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant [16 x i8] c"ab8500_fg_ktype\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2494, i32 25 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2523, i32 9 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2525, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant [20 x i8] c"ab8500_fg_sysfs_ops\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2483, i32 31 }
@___asan_gen_.838 = private unnamed_addr constant [16 x i8] c"ab8500_fg_attrs\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2488, i32 26 }
@___asan_gen_.841 = private unnamed_addr constant [17 x i8] c"charge_full_attr\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2447, i32 37 }
@___asan_gen_.844 = private unnamed_addr constant [16 x i8] c"charge_now_attr\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2450, i32 37 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2409, i32 22 }
@___asan_gen_.850 = private unnamed_addr constant [26 x i8] c"ab8505_fg_sysfs_psy_attrs\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2873, i32 32 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2904, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2874, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2876, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2878, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2880, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2881, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2883, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2885, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2886, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2888, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2543, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2566, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2574, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2593, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2617, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2625, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2644, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2667, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2675, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2695, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2718, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2762, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2770, i32 3 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2790, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2813, i32 3 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2836, i32 3 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2844, i32 3 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2863, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2991, i32 14 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 2993, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1049 = private constant [36 x i8] c"../drivers/power/supply/ab8500_fg.c\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1049, i32 3018, i32 3 }
@llvm.compiler.used = appending global [327 x ptr] [ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @ab8500_fg_acc_cur_work._entry, ptr @ab8500_fg_acc_cur_work._entry_ptr, ptr @ab8500_fg_algorithm_calibrate._entry, ptr @ab8500_fg_algorithm_calibrate._entry_ptr, ptr @ab8500_fg_bat_voltage._entry, ptr @ab8500_fg_bat_voltage._entry_ptr, ptr @ab8500_fg_battok_init_hw_register._entry, ptr @ab8500_fg_battok_init_hw_register._entry.167, ptr @ab8500_fg_battok_init_hw_register._entry_ptr, ptr @ab8500_fg_battok_init_hw_register._entry_ptr.168, ptr @ab8500_fg_bind._entry, ptr @ab8500_fg_bind._entry_ptr, ptr @ab8500_fg_check_capacity_limits._entry, ptr @ab8500_fg_check_capacity_limits._entry_ptr, ptr @ab8500_fg_check_hw_failure_work._entry, ptr @ab8500_fg_check_hw_failure_work._entry_ptr, ptr @ab8500_fg_coulomb_counter._entry, ptr @ab8500_fg_coulomb_counter._entry_ptr, ptr @ab8500_fg_init_hw_registers._entry, ptr @ab8500_fg_init_hw_registers._entry.141, ptr @ab8500_fg_init_hw_registers._entry.144, ptr @ab8500_fg_init_hw_registers._entry.147, ptr @ab8500_fg_init_hw_registers._entry.150, ptr @ab8500_fg_init_hw_registers._entry.153, ptr @ab8500_fg_init_hw_registers._entry.156, ptr @ab8500_fg_init_hw_registers._entry.159, ptr @ab8500_fg_init_hw_registers._entry.162, ptr @ab8500_fg_init_hw_registers._entry_ptr, ptr @ab8500_fg_init_hw_registers._entry_ptr.143, ptr @ab8500_fg_init_hw_registers._entry_ptr.146, ptr @ab8500_fg_init_hw_registers._entry_ptr.149, ptr @ab8500_fg_init_hw_registers._entry_ptr.152, ptr @ab8500_fg_init_hw_registers._entry_ptr.155, ptr @ab8500_fg_init_hw_registers._entry_ptr.158, ptr @ab8500_fg_init_hw_registers._entry_ptr.161, ptr @ab8500_fg_init_hw_registers._entry_ptr.164, ptr @ab8500_fg_inst_curr_blocking._entry, ptr @ab8500_fg_inst_curr_blocking._entry.13, ptr @ab8500_fg_inst_curr_blocking._entry.15, ptr @ab8500_fg_inst_curr_blocking._entry_ptr, ptr @ab8500_fg_inst_curr_blocking._entry_ptr.14, ptr @ab8500_fg_inst_curr_blocking._entry_ptr.17, ptr @ab8500_fg_inst_curr_finalize._entry, ptr @ab8500_fg_inst_curr_finalize._entry_ptr, ptr @ab8500_fg_low_bat_work._entry, ptr @ab8500_fg_low_bat_work._entry.129, ptr @ab8500_fg_low_bat_work._entry.132, ptr @ab8500_fg_low_bat_work._entry_ptr, ptr @ab8500_fg_low_bat_work._entry_ptr.131, ptr @ab8500_fg_low_bat_work._entry_ptr.134, ptr @ab8500_fg_lowbatf_handler._entry, ptr @ab8500_fg_lowbatf_handler._entry_ptr, ptr @ab8500_fg_probe._entry, ptr @ab8500_fg_probe._entry.45, ptr @ab8500_fg_probe._entry.48, ptr @ab8500_fg_probe._entry.53, ptr @ab8500_fg_probe._entry.56, ptr @ab8500_fg_probe._entry_ptr, ptr @ab8500_fg_probe._entry_ptr.47, ptr @ab8500_fg_probe._entry_ptr.50, ptr @ab8500_fg_probe._entry_ptr.55, ptr @ab8500_fg_probe._entry_ptr.58, ptr @ab8500_fg_reinit_work._entry, ptr @ab8500_fg_reinit_work._entry_ptr, ptr @ab8500_fg_sysfs_init._entry, ptr @ab8500_fg_sysfs_init._entry_ptr, ptr @ab8500_fg_sysfs_psy_create_attrs._entry, ptr @ab8500_fg_sysfs_psy_create_attrs._entry_ptr, ptr @ab8500_fg_unbind._entry, ptr @ab8500_fg_unbind._entry_ptr, ptr @ab8505_powercut_debounce_read._entry, ptr @ab8505_powercut_debounce_read._entry_ptr, ptr @ab8505_powercut_debounce_write._entry, ptr @ab8505_powercut_debounce_write._entry.230, ptr @ab8505_powercut_debounce_write._entry_ptr, ptr @ab8505_powercut_debounce_write._entry_ptr.232, ptr @ab8505_powercut_enable_status_read._entry, ptr @ab8505_powercut_enable_status_read._entry_ptr, ptr @ab8505_powercut_flag_read._entry, ptr @ab8505_powercut_flag_read._entry_ptr, ptr @ab8505_powercut_flagtime_read._entry, ptr @ab8505_powercut_flagtime_read._entry_ptr, ptr @ab8505_powercut_flagtime_write._entry, ptr @ab8505_powercut_flagtime_write._entry.199, ptr @ab8505_powercut_flagtime_write._entry_ptr, ptr @ab8505_powercut_flagtime_write._entry_ptr.201, ptr @ab8505_powercut_maxtime_read._entry, ptr @ab8505_powercut_maxtime_read._entry_ptr, ptr @ab8505_powercut_maxtime_write._entry, ptr @ab8505_powercut_maxtime_write._entry.206, ptr @ab8505_powercut_maxtime_write._entry_ptr, ptr @ab8505_powercut_maxtime_write._entry_ptr.208, ptr @ab8505_powercut_restart_counter_read._entry, ptr @ab8505_powercut_restart_counter_read._entry_ptr, ptr @ab8505_powercut_restart_read._entry, ptr @ab8505_powercut_restart_read._entry_ptr, ptr @ab8505_powercut_restart_write._entry, ptr @ab8505_powercut_restart_write._entry.213, ptr @ab8505_powercut_restart_write._entry_ptr, ptr @ab8505_powercut_restart_write._entry_ptr.215, ptr @ab8505_powercut_timer_read._entry, ptr @ab8505_powercut_timer_read._entry_ptr, ptr @ab8505_powercut_write._entry, ptr @ab8505_powercut_write._entry.221, ptr @ab8505_powercut_write._entry_ptr, ptr @ab8505_powercut_write._entry_ptr.223, ptr @ab8500_fg_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @ab8500_fg_match, ptr @ab8500_fg_pm_ops, ptr @ab8500_fg_driver, ptr @ab8500_fg_probe.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @supply_interface, ptr @ab8500_fg_probe.__key.23, ptr @.str.24, ptr @ab8500_fg_probe.__key.25, ptr @.str.26, ptr @ab8500_fg_probe.__key.27, ptr @.str.28, ptr @ab8500_fg_probe.__key.29, ptr @.str.30, ptr @ab8500_fg_probe.__key.31, ptr @.str.32, ptr @ab8500_fg_probe.__key.33, ptr @.str.34, ptr @ab8500_fg_probe.__key.35, ptr @.str.36, ptr @ab8500_fg_probe.__key.37, ptr @.str.38, ptr @ab8500_fg_probe.__key.39, ptr @.str.40, ptr @ab8500_fg_probe.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @ab8500_fg_desc, ptr @.str.46, ptr @ab8500_fg_irq, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @ab8500_fg_component_ops, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @charge_state, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @discharge_state, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @ab8500_fg_bat_voltage.prev, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @ab8500_fg_lowbat_voltage_map, ptr @.str.165, ptr @.str.166, ptr @.str.169, ptr @ab8500_fg_props, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @init_completion.__key, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @ab8500_fg_ktype, ptr @.str.181, ptr @.str.182, ptr @ab8500_fg_sysfs_ops, ptr @ab8500_fg_attrs, ptr @charge_full_attr, ptr @charge_now_attr, ptr @.str.183, ptr @ab8505_fg_sysfs_psy_attrs, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238], section "llvm.metadata"
@0 = internal global [269 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_inst_curr_finalize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_inst_curr_blocking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_inst_curr_blocking._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_inst_curr_blocking._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supply_interface to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_irq to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charge_state to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discharge_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_algorithm_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_coulomb_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_bat_voltage.prev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_bat_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_check_capacity_limits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_acc_cur_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_reinit_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_low_bat_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_low_bat_work._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_low_bat_work._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_check_hw_failure_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_init_hw_registers._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_lowbat_voltage_map to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_battok_init_hw_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_battok_init_hw_register._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_props to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_lowbatf_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charge_full_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charge_now_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_fg_sysfs_psy_attrs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_sysfs_psy_create_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_flagtime_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_flagtime_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_flagtime_write._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_maxtime_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_maxtime_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_maxtime_write._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_restart_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_restart_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_restart_write._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_timer_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_restart_counter_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_write._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_flag_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_debounce_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_debounce_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_debounce_write._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_powercut_enable_status_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_fg_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ab8500_fg_get() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @ab8500_fg_list, align 4
  %cmp.not = icmp eq ptr %0, @ab8500_fg_list
  %add.ptr = getelementptr i8, ptr %0, i32 -4
  %spec.select = select i1 %cmp.not, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_fg_inst_curr_start(ptr noundef %di) local_unnamed_addr #2 align 64 {
entry:
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #9
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_val, align 1, !annotation !539
  %cc_lock = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cc_lock, i32 noundef 0) #9
  %nbr_cceoc_irq_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 14
  %1 = ptrtoint ptr %nbr_cceoc_irq_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nbr_cceoc_irq_cnt, align 4
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 8
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %3, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull %reg_val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_val, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_inst_curr_start.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_inst_curr_start, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !540

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_inst_curr_start.__UNIQUE_ID_ddebug290, ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %turn_off_fg = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 18
  %9 = ptrtoint ptr %turn_off_fg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %turn_off_fg, align 1
  %10 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %di, align 8
  %call11 = call i32 @abx500_set_register_interruptible(ptr noundef %11, i8 noundef zeroext 12, i8 noundef zeroext 16, i8 noundef zeroext 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end.fail_crit_edge

do.end.fail_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end14:                                         ; preds = %do.end
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 8
  %call16 = call i32 @abx500_set_register_interruptible(ptr noundef %13, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end21_crit_edge, label %if.end14.fail_crit_edge

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %turn_off_fg20 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 18
  %14 = ptrtoint ptr %turn_off_fg20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %turn_off_fg20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end14.if.end21_crit_edge
  %ab8500_fg_started = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 22
  %15 = ptrtoint ptr %ab8500_fg_started to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ab8500_fg_started, align 4
  %ab8500_fg_complete = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 23
  %16 = ptrtoint ptr %ab8500_fg_complete to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ab8500_fg_complete, align 4
  %irq = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 2
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %18) #9
  br label %cleanup

fail:                                             ; preds = %if.end14.fail_crit_edge, %do.end.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ %call, %entry.fail_crit_edge ], [ %call11, %do.end.fail_crit_edge ], [ %call16, %if.end14.fail_crit_edge ]
  call void @mutex_unlock(ptr noundef %cc_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end21
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_fg_inst_curr_started(ptr noundef %di) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ab8500_fg_started = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 22
  %call = tail call zeroext i1 @completion_done(ptr noundef %ab8500_fg_started) #9
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_fg_inst_curr_done(ptr noundef %di) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ab8500_fg_complete = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 23
  %call = tail call zeroext i1 @completion_done(ptr noundef %ab8500_fg_complete) #9
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_fg_inst_curr_finalize(ptr noundef %di, ptr nocapture noundef writeonly %curr_ua) local_unnamed_addr #2 align 64 {
entry:
  %low = alloca i8, align 1
  %high = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low) #9
  %0 = ptrtoint ptr %low to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %low, align 1, !annotation !539
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %high) #9
  %1 = ptrtoint ptr %high to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %high, align 1, !annotation !539
  %ab8500_fg_complete = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 23
  %call = tail call zeroext i1 @completion_done(ptr noundef %ab8500_fg_complete) #9
  br i1 %call, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %ab8500_fg_complete, i32 noundef 300) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_inst_curr_finalize, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !540

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 8
  %sub = sub i32 300, %call2
  %call8 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %call8) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool9.not = icmp eq i32 %call2, 0
  br i1 %tobool9.not, label %if.then10, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #9
  %nbr_cceoc_irq_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 14
  %6 = ptrtoint ptr %nbr_cceoc_irq_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nbr_cceoc_irq_cnt, align 4
  %7 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 627) #12
  br label %fail

if.end16:                                         ; preds = %do.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  %irq17 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 2
  %9 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq17, align 4
  tail call void @disable_irq(i32 noundef %10) #9
  %nbr_cceoc_irq_cnt18 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 14
  %11 = ptrtoint ptr %nbr_cceoc_irq_cnt18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nbr_cceoc_irq_cnt18, align 4
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 8
  %call20 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %13, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 100, i32 noundef 2) #9
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %di, align 8
  %call22 = call i32 @abx500_get_register_interruptible(ptr noundef %15, i8 noundef zeroext 12, i8 noundef zeroext 7, ptr noundef nonnull %low) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end16.fail_crit_edge, label %if.end24

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end24:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %di, align 8
  %call26 = call i32 @abx500_get_register_interruptible(ptr noundef %17, i8 noundef zeroext 12, i8 noundef zeroext 8, ptr noundef nonnull %high) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end24.fail_crit_edge, label %if.end29

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end29:                                         ; preds = %if.end24
  %18 = ptrtoint ptr %high to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %high, align 1
  %conv = zext i8 %19 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %20 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %low, align 1
  %conv35 = zext i8 %21 to i32
  %shl37 = shl nuw nsw i32 %conv, 8
  %or38 = or i32 %shl37, %conv35
  %or34 = or i32 %or38, -8192
  %val.0 = select i1 %tobool30.not, i32 %or38, i32 %or34
  %mul41 = mul i32 %val.0, 154224
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %22 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bm, align 8
  %fg_res = getelementptr inbounds %struct.ab8500_bm_data, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %fg_res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fg_res, align 4
  %div = sdiv i32 %mul41, %25
  %turn_off_fg = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 18
  %26 = ptrtoint ptr %turn_off_fg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %turn_off_fg, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool42.not = icmp eq i8 %27, 0
  br i1 %tobool42.not, label %if.end29.if.end73_crit_edge, label %do.body44

if.end29.if.end73_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.body44:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_inst_curr_finalize, %do.end62)) #9
          to label %if.then58 [label %do.end62], !srcloc !540

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug292, ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #9
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body44
  %30 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %di, align 8
  %call64 = call i32 @abx500_set_register_interruptible(ptr noundef %31, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %do.end62.fail_crit_edge

do.end62.fail_crit_edge:                          ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end67:                                         ; preds = %do.end62
  %32 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %di, align 8
  %call69 = call i32 @abx500_set_register_interruptible(ptr noundef %33, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end67.if.end73_crit_edge, label %if.end67.fail_crit_edge

if.end67.fail_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end73:                                         ; preds = %if.end67.if.end73_crit_edge, %if.end29.if.end73_crit_edge
  %cc_lock = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 38
  call void @mutex_unlock(ptr noundef %cc_lock) #9
  %34 = ptrtoint ptr %curr_ua to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %curr_ua, align 4
  br label %cleanup

fail:                                             ; preds = %if.end67.fail_crit_edge, %do.end62.fail_crit_edge, %if.end24.fail_crit_edge, %if.end16.fail_crit_edge, %if.then10
  %ret.0 = phi i32 [ %call22, %if.end16.fail_crit_edge ], [ %call26, %if.end24.fail_crit_edge ], [ %call64, %do.end62.fail_crit_edge ], [ %call69, %if.end67.fail_crit_edge ], [ -62, %if.then10 ]
  %cc_lock74 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 38
  call void @mutex_unlock(ptr noundef %cc_lock74) #9
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end73
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %high) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_fg_inst_curr_blocking(ptr noundef %di) local_unnamed_addr #2 align 64 {
entry:
  %curr_ua = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_ua) #9
  %0 = ptrtoint ptr %curr_ua to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %curr_ua, align 4
  %call = tail call i32 @ab8500_fg_inst_curr_start(ptr noundef %di)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ab8500_fg_started = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 22
  %call1 = tail call zeroext i1 @completion_done(ptr noundef %ab8500_fg_started) #9
  br i1 %call1, label %if.end.if.end24_crit_edge, label %if.then2

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %ab8500_fg_started, i32 noundef 300) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_inst_curr_blocking, %do.end16)) #9
          to label %if.then11 [label %do.end16], !srcloc !540

if.then11:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %di, align 8
  %sub = sub i32 300, %call4
  %call13 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug293, ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %call13) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool17.not = icmp eq i32 %call4, 0
  br i1 %tobool17.not, label %if.then18, label %do.end16.if.end24_crit_edge

do.end16.if.end24_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef 726) #12
  %irq = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 2
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #9
  %cc_lock = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 38
  tail call void @mutex_unlock(ptr noundef %cc_lock) #9
  br label %cleanup

if.end24:                                         ; preds = %do.end16.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %call25 = call i32 @ab8500_fg_inst_curr_finalize(ptr noundef %di, ptr noundef nonnull %curr_ua)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body33, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16) #12
  br label %cleanup

do.body33:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_inst_curr_blocking, %do.end51)) #9
          to label %if.then47 [label %do.end51], !srcloc !540

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di, align 8
  %13 = ptrtoint ptr %curr_ua to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curr_ua, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug294, ptr noundef %12, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, i32 noundef %14) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body33
  %15 = ptrtoint ptr %curr_ua to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curr_ua, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.end30, %if.then18, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end30 ], [ %16, %do.end51 ], [ -62, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_ua) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #9
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1264, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 29
  %1 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ab8500_bm_data, ptr %bm, align 8
  %cc_lock = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 38
  tail call void @__mutex_init(ptr noundef %cc_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @ab8500_fg_probe.__key) #9
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %parent5 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 27
  %7 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent5, align 8
  %call6 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  %main_bat_v = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 28
  %8 = ptrtoint ptr %main_bat_v to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %main_bat_v, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call6 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %10 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @supply_interface, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %11 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %num_supplicants, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %12 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %drv_data, align 4
  %init_capacity = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 17
  %13 = ptrtoint ptr %init_capacity to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %init_capacity, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_probe, %ab8500_fg_charge_state_to.exit)) #9
          to label %if.then.i [label %ab8500_fg_charge_state_to.exit], !srcloc !540

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  %charge_state.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 21
  %16 = ptrtoint ptr %charge_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %charge_state.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @charge_state, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, ptr noundef %15, ptr noundef nonnull @.str.62, i32 noundef %17, ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.63) #9
  br label %ab8500_fg_charge_state_to.exit

ab8500_fg_charge_state_to.exit:                   ; preds = %if.then.i, %if.end13
  %charge_state6.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 21
  %20 = ptrtoint ptr %charge_state6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %charge_state6.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_probe, %ab8500_fg_discharge_state_to.exit)) #9
          to label %if.then.i315 [label %ab8500_fg_discharge_state_to.exit], !srcloc !540

if.then.i315:                                     ; preds = %ab8500_fg_charge_state_to.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  %discharge_state.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 20
  %23 = ptrtoint ptr %discharge_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %discharge_state.i, align 8
  %arrayidx.i314 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i314, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %22, ptr noundef nonnull @.str.66, i32 noundef %24, ptr noundef %26, i32 noundef 0, ptr noundef nonnull @.str.67) #9
  br label %ab8500_fg_discharge_state_to.exit

ab8500_fg_discharge_state_to.exit:                ; preds = %if.then.i315, %ab8500_fg_charge_state_to.exit
  %discharge_state6.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 20
  %27 = ptrtoint ptr %discharge_state6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %discharge_state6.i, align 8
  %fg_work = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 35
  tail call void @__init_work(ptr noundef %fg_work, i32 noundef 0) #9
  %28 = ptrtoint ptr %fg_work to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %fg_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 35, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @ab8500_fg_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry18 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 35, i32 1
  %29 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 35, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 35, i32 2
  %31 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ab8500_fg_instant_work, ptr %func, align 4
  %fg_acc_cur_work = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 36
  tail call void @__init_work(ptr noundef %fg_acc_cur_work, i32 noundef 0) #9
  %32 = ptrtoint ptr %fg_acc_cur_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %fg_acc_cur_work, align 4
  %lockdep_map28 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 36, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map28, ptr noundef nonnull @.str.26, ptr noundef nonnull @ab8500_fg_probe.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry30 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 36, i32 1
  %33 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i316 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 36, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i316 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry30, ptr %prev.i316, align 4
  %func32 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 36, i32 2
  %35 = ptrtoint ptr %func32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ab8500_fg_acc_cur_work, ptr %func32, align 4
  %fg_reinit_work = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 34
  tail call void @__init_work(ptr noundef %fg_reinit_work, i32 noundef 0) #9
  %36 = ptrtoint ptr %fg_reinit_work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %fg_reinit_work, align 4
  %lockdep_map44 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 34, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map44, ptr noundef nonnull @.str.28, ptr noundef nonnull @ab8500_fg_probe.__key.27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry47 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 34, i32 0, i32 1
  %37 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i317 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 34, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i317 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry47, ptr %prev.i317, align 4
  %func50 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 34, i32 0, i32 2
  %39 = ptrtoint ptr %func50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ab8500_fg_reinit_work, ptr %func50, align 4
  %timer = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 34, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.30, ptr noundef nonnull @ab8500_fg_probe.__key.29) #9
  %fg_periodic_work = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 32
  tail call void @__init_work(ptr noundef %fg_periodic_work, i32 noundef 0) #9
  %40 = ptrtoint ptr %fg_periodic_work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %fg_periodic_work, align 4
  %lockdep_map69 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 32, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map69, ptr noundef nonnull @.str.32, ptr noundef nonnull @ab8500_fg_probe.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry72 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 32, i32 0, i32 1
  %41 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i318 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 32, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i318 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry72, ptr %prev.i318, align 4
  %func75 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 32, i32 0, i32 2
  %43 = ptrtoint ptr %func75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ab8500_fg_periodic_work, ptr %func75, align 4
  %timer80 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 32, i32 1
  tail call void @init_timer_key(ptr noundef %timer80, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.34, ptr noundef nonnull @ab8500_fg_probe.__key.33) #9
  %fg_low_bat_work = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 33
  tail call void @__init_work(ptr noundef %fg_low_bat_work, i32 noundef 0) #9
  %44 = ptrtoint ptr %fg_low_bat_work to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %fg_low_bat_work, align 8
  %lockdep_map95 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 33, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map95, ptr noundef nonnull @.str.36, ptr noundef nonnull @ab8500_fg_probe.__key.35, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry98 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 33, i32 0, i32 1
  %45 = ptrtoint ptr %entry98 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry98, ptr %entry98, align 4
  %prev.i319 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 33, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i319 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry98, ptr %prev.i319, align 4
  %func101 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 33, i32 0, i32 2
  %47 = ptrtoint ptr %func101 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ab8500_fg_low_bat_work, ptr %func101, align 4
  %timer106 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 33, i32 1
  tail call void @init_timer_key(ptr noundef %timer106, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.38, ptr noundef nonnull @ab8500_fg_probe.__key.37) #9
  %fg_check_hw_failure_work = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 37
  tail call void @__init_work(ptr noundef %fg_check_hw_failure_work, i32 noundef 0) #9
  %48 = ptrtoint ptr %fg_check_hw_failure_work to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %fg_check_hw_failure_work, align 8
  %lockdep_map121 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 37, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map121, ptr noundef nonnull @.str.40, ptr noundef nonnull @ab8500_fg_probe.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry124 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 37, i32 0, i32 1
  %49 = ptrtoint ptr %entry124 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry124, ptr %entry124, align 4
  %prev.i320 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 37, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i320 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry124, ptr %prev.i320, align 4
  %func127 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 37, i32 0, i32 2
  %51 = ptrtoint ptr %func127 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ab8500_fg_check_hw_failure_work, ptr %func127, align 4
  %timer132 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 37, i32 1
  tail call void @init_timer_key(ptr noundef %timer132, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.42, ptr noundef nonnull @ab8500_fg_probe.__key.41) #9
  %low_bat = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 24, i32 6
  %52 = ptrtoint ptr %low_bat to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %low_bat, align 2
  %low_bat_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 13
  %53 = ptrtoint ptr %low_bat_cnt to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 10, ptr %low_bat_cnt, align 8
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 8
  %call.i321 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %55, i8 noundef zeroext 11, i8 noundef zeroext 85, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool.not.i = icmp eq i32 %call.i321, 0
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 8
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %ab8500_fg_discharge_state_to.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.139) #12
  br label %do.end142

if.end.i:                                         ; preds = %ab8500_fg_discharge_state_to.exit
  %call3.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %57, i8 noundef zeroext 11, i8 noundef zeroext 85, i8 noundef zeroext 2, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 8
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.142) #12
  br label %do.end142

if.end10.i:                                       ; preds = %if.end.i
  %60 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bm, align 8
  %fg_params.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %fg_params.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fg_params.i, align 4
  %lowbat_threshold_uv.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %lowbat_threshold_uv.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lowbat_threshold_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2300000, i32 %65)
  %cmp.i.i = icmp slt i32 %65, 2300000
  br i1 %cmp.i.i, label %if.end10.i.ab8500_volt_to_regval.exit.i_crit_edge, label %if.end10.i.for.body.i.i_crit_edge

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

if.end10.i.ab8500_volt_to_regval.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_volt_to_regval.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x i32], ptr @ab8500_fg_lowbat_voltage_map, i32 0, i32 %i.012.i.i
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %65)
  %cmp2.i.i = icmp sgt i32 %67, %65
  br i1 %cmp2.i.i, label %if.then3.i.i, label %for.inc.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = trunc i32 %i.012.i.i to i8
  %conv5.i.i = shl i8 %68, 1
  %phi.bo125.i = add i8 %conv5.i.i, -1
  br label %ab8500_volt_to_regval.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ab8500_volt_to_regval.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.ab8500_volt_to_regval.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_volt_to_regval.exit.i

ab8500_volt_to_regval.exit.i:                     ; preds = %for.inc.i.i.ab8500_volt_to_regval.exit.i_crit_edge, %if.then3.i.i, %if.end10.i.ab8500_volt_to_regval.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %phi.bo125.i, %if.then3.i.i ], [ 1, %if.end10.i.ab8500_volt_to_regval.exit.i_crit_edge ], [ 127, %for.inc.i.i.ab8500_volt_to_regval.exit.i_crit_edge ]
  %call14.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %59, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %retval.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end21.i, label %do.end19.i

do.end19.i:                                       ; preds = %ab8500_volt_to_regval.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.140) #12
  br label %do.end142

if.end21.i:                                       ; preds = %ab8500_volt_to_regval.exit.i
  %call22.i = tail call fastcc i32 @ab8500_fg_battok_init_hw_register(ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end29.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.148) #12
  br label %do.end142

if.end29.i:                                       ; preds = %if.end21.i
  %73 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent5, align 8
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i124.not.i = icmp eq i32 %76, 1
  br i1 %cmp.i124.not.i, label %if.then32.i, label %if.end29.i.if.end143_crit_edge

if.end29.i.if.end143_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then32.i:                                      ; preds = %if.end29.i
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 8
  %79 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bm, align 8
  %fg_params35.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %80, i32 0, i32 23
  %81 = ptrtoint ptr %fg_params35.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fg_params35.i, align 4
  %pcut_max_time.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %pcut_max_time.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pcut_max_time.i, align 1
  %call36.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %78, i8 noundef zeroext 15, i8 noundef zeroext 20, i8 noundef zeroext %84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i, align 8
  br i1 %tobool37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.140) #12
  br label %do.end142

if.end43.i:                                       ; preds = %if.then32.i
  %87 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bm, align 8
  %fg_params46.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %88, i32 0, i32 23
  %89 = ptrtoint ptr %fg_params46.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fg_params46.i, align 4
  %pcut_flag_time.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %90, i32 0, i32 16
  %91 = ptrtoint ptr %pcut_flag_time.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %pcut_flag_time.i, align 2
  %call47.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %86, i8 noundef zeroext 15, i8 noundef zeroext 21, i8 noundef zeroext %92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 8
  br i1 %tobool48.not.i, label %if.end54.i, label %do.end52.i

do.end52.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.140) #12
  br label %do.end142

if.end54.i:                                       ; preds = %if.end43.i
  %95 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bm, align 8
  %fg_params57.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %96, i32 0, i32 23
  %97 = ptrtoint ptr %fg_params57.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fg_params57.i, align 4
  %pcut_max_restart.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %98, i32 0, i32 17
  %99 = ptrtoint ptr %pcut_max_restart.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pcut_max_restart.i, align 1
  %call58.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %94, i8 noundef zeroext 15, i8 noundef zeroext 22, i8 noundef zeroext %100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 8
  br i1 %tobool59.not.i, label %if.end65.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.140) #12
  br label %do.end142

if.end65.i:                                       ; preds = %if.end54.i
  %103 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bm, align 8
  %fg_params68.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %104, i32 0, i32 23
  %105 = ptrtoint ptr %fg_params68.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fg_params68.i, align 4
  %pcut_debounce_time.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %106, i32 0, i32 18
  %107 = ptrtoint ptr %pcut_debounce_time.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pcut_debounce_time.i, align 4
  %call69.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %102, i8 noundef zeroext 15, i8 noundef zeroext 23, i8 noundef zeroext %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 8
  br i1 %tobool70.not.i, label %if.end76.i, label %do.end74.i

do.end74.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.140) #12
  br label %do.end142

if.end76.i:                                       ; preds = %if.end65.i
  %111 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bm, align 8
  %fg_params79.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %112, i32 0, i32 23
  %113 = ptrtoint ptr %fg_params79.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fg_params79.i, align 4
  %pcut_enable.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %114, i32 0, i32 14
  %115 = ptrtoint ptr %pcut_enable.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %pcut_enable.i, align 4, !range !541
  %call82.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %110, i8 noundef zeroext 15, i8 noundef zeroext 18, i8 noundef zeroext %116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end76.i.if.end143_crit_edge, label %do.end87.i

if.end76.i.if.end143_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

do.end87.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.140) #12
  br label %do.end142

do.end142:                                        ; preds = %do.end87.i, %do.end74.i, %do.end63.i, %do.end52.i, %do.end41.i, %do.end27.i, %do.end19.i, %do.end8.i, %do.end.i
  %ret.0.i.ph = phi i32 [ %call82.i, %do.end87.i ], [ %call69.i, %do.end74.i ], [ %call58.i, %do.end63.i ], [ %call47.i, %do.end52.i ], [ %call36.i, %do.end41.i ], [ %call22.i, %do.end27.i ], [ %call14.i, %do.end19.i ], [ %call3.i, %do.end8.i ], [ %call.i321, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end143:                                        ; preds = %if.end76.i.if.end143_crit_edge, %if.end29.i.if.end143_crit_edge
  %batt_unknown = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 24, i32 8
  %119 = ptrtoint ptr %batt_unknown to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %batt_unknown, align 8
  %batt_id_received = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 24, i32 11
  %120 = ptrtoint ptr %batt_id_received to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %batt_id_received, align 1
  %call146 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @ab8500_fg_desc, ptr noundef nonnull %psy_cfg) #9
  %fg_psy = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 30
  %121 = ptrtoint ptr %fg_psy to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call146, ptr %fg_psy, align 4
  %cmp.i322 = icmp ugt ptr %call146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %do.end152, label %if.end155

do.end152:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46) #12
  %122 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fg_psy, align 4
  %124 = ptrtoint ptr %123 to i32
  br label %cleanup

if.end155:                                        ; preds = %if.end143
  %125 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bm, align 8
  %fg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %126, i32 0, i32 23
  %127 = ptrtoint ptr %fg_params to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fg_params, align 4
  %init_timer = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %init_timer to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %init_timer, align 4
  %mul = shl i32 %130, 2
  %fg_samples = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 8
  %131 = ptrtoint ptr %fg_samples to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %mul, ptr %fg_samples, align 4
  %ab8500_fg_started = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 22
  %132 = ptrtoint ptr %ab8500_fg_started to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %ab8500_fg_started, align 4
  %wait.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 22, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.173, ptr noundef nonnull @init_completion.__key) #9
  %ab8500_fg_complete = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 23
  %133 = ptrtoint ptr %ab8500_fg_complete to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %ab8500_fg_complete, align 4
  %wait.i323 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 23, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i323, ptr noundef nonnull @.str.173, ptr noundef nonnull @init_completion.__key) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end155
  %i.0343 = phi i32 [ 0, %if.end155 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.ab8500_fg_interrupts], ptr @ab8500_fg_irq, i32 0, i32 %i.0343
  %134 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx, align 4
  %call157 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %135) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %for.body.cleanup_crit_edge, label %if.end160

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end160:                                        ; preds = %for.body
  %isr = getelementptr [5 x %struct.ab8500_fg_interrupts], ptr @ab8500_fg_irq, i32 0, i32 %i.0343, i32 1
  %136 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %isr, align 4
  %call164 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call157, ptr noundef null, ptr noundef %137, i32 noundef 24704, ptr noundef %135, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165.not = icmp eq i32 %call164, 0
  br i1 %cmp165.not, label %do.body173, label %do.end169

do.end169:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, ptr noundef %135, i32 noundef %call157, i32 noundef %call164) #12
  br label %cleanup

do.body173:                                       ; preds = %if.end160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_probe.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_probe, %for.inc)) #9
          to label %if.then179 [label %for.inc], !srcloc !540

if.then179:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_probe.__UNIQUE_ID_ddebug337, ptr noundef %dev1, ptr noundef nonnull @.str.51, ptr noundef %135, i32 noundef %call157, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then179, %do.body173
  %inc = add nuw nsw i32 %i.0343, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call185 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.52) #9
  %irq186 = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 2
  %138 = ptrtoint ptr %irq186 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call185, ptr %irq186, align 4
  call void @disable_irq(i32 noundef %call185) #9
  %nbr_cceoc_irq_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 14
  %139 = ptrtoint ptr %nbr_cceoc_irq_cnt to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %nbr_cceoc_irq_cnt, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %140 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %fg_kobject.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 39
  %call.i324 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %fg_kobject.i, ptr noundef nonnull @ab8500_fg_ktype, ptr noundef null, ptr noundef nonnull @.str.181) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %cmp.i325 = icmp slt i32 %call.i324, 0
  br i1 %cmp.i325, label %ab8500_fg_sysfs_init.exit.thread, label %ab8500_fg_sysfs_init.exit

ab8500_fg_sysfs_init.exit.thread:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.54) #12
  br label %do.end193

ab8500_fg_sysfs_init.exit:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool189.not = icmp eq i32 %call.i324, 0
  br i1 %tobool189.not, label %if.end194, label %ab8500_fg_sysfs_init.exit.do.end193_crit_edge

ab8500_fg_sysfs_init.exit.do.end193_crit_edge:    ; preds = %ab8500_fg_sysfs_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end193

do.end193:                                        ; preds = %ab8500_fg_sysfs_init.exit.do.end193_crit_edge, %ab8500_fg_sysfs_init.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end194:                                        ; preds = %ab8500_fg_sysfs_init.exit
  %143 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %parent5, align 8
  %version.i.i329 = getelementptr inbounds %struct.ab8500, ptr %144, i32 0, i32 6
  %145 = ptrtoint ptr %version.i.i329 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %version.i.i329, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp.i.not.i = icmp eq i32 %146, 1
  br i1 %cmp.i.not.i, label %for.cond.preheader.i, label %if.end194.if.end201_crit_edge

if.end194.if.end201_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end201

for.cond.preheader.i:                             ; preds = %if.end194
  %147 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fg_psy, align 4
  %dev.i = getelementptr inbounds %struct.power_supply, ptr %148, i32 0, i32 7
  %call1.i = call i32 @device_create_file(ptr noundef %dev.i, ptr noundef nonnull @ab8505_fg_sysfs_psy_attrs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %149 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %fg_psy, align 4
  %dev.1.i = getelementptr inbounds %struct.power_supply, ptr %150, i32 0, i32 7
  br i1 %tobool2.not.i, label %for.inc.i, label %do.end.i330

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %call1.1.i = call i32 @device_create_file(ptr noundef %dev.1.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool2.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool2.not.1.i, label %for.inc.1.i, label %for.inc.i.while.body.preheader.i_crit_edge

for.inc.i.while.body.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %151 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fg_psy, align 4
  %dev.2.i = getelementptr inbounds %struct.power_supply, ptr %152, i32 0, i32 7
  %call1.2.i = call i32 @device_create_file(ptr noundef %dev.2.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %tobool2.not.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %tobool2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.while.body.preheader.i_crit_edge

for.inc.1.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %153 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %fg_psy, align 4
  %dev.3.i = getelementptr inbounds %struct.power_supply, ptr %154, i32 0, i32 7
  %call1.3.i = call i32 @device_create_file(ptr noundef %dev.3.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i)
  %tobool2.not.3.i = icmp eq i32 %call1.3.i, 0
  br i1 %tobool2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.while.body.preheader.i_crit_edge

for.inc.2.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %155 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fg_psy, align 4
  %dev.4.i = getelementptr inbounds %struct.power_supply, ptr %156, i32 0, i32 7
  %call1.4.i = call i32 @device_create_file(ptr noundef %dev.4.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4.i)
  %tobool2.not.4.i = icmp eq i32 %call1.4.i, 0
  br i1 %tobool2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.while.body.preheader.i_crit_edge

for.inc.3.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %157 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fg_psy, align 4
  %dev.5.i = getelementptr inbounds %struct.power_supply, ptr %158, i32 0, i32 7
  %call1.5.i = call i32 @device_create_file(ptr noundef %dev.5.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5.i)
  %tobool2.not.5.i = icmp eq i32 %call1.5.i, 0
  br i1 %tobool2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.while.body.preheader.i_crit_edge

for.inc.4.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %159 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fg_psy, align 4
  %dev.6.i = getelementptr inbounds %struct.power_supply, ptr %160, i32 0, i32 7
  %call1.6.i = call i32 @device_create_file(ptr noundef %dev.6.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 6)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6.i)
  %tobool2.not.6.i = icmp eq i32 %call1.6.i, 0
  br i1 %tobool2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.while.body.preheader.i_crit_edge

for.inc.5.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %161 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %fg_psy, align 4
  %dev.7.i = getelementptr inbounds %struct.power_supply, ptr %162, i32 0, i32 7
  %call1.7.i = call i32 @device_create_file(ptr noundef %dev.7.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 7)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7.i)
  %tobool2.not.7.i = icmp eq i32 %call1.7.i, 0
  br i1 %tobool2.not.7.i, label %for.inc.7.i, label %for.inc.6.i.while.body.preheader.i_crit_edge

for.inc.6.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %163 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %fg_psy, align 4
  %dev.8.i = getelementptr inbounds %struct.power_supply, ptr %164, i32 0, i32 7
  %call1.8.i = call i32 @device_create_file(ptr noundef %dev.8.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 8)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.8.i)
  %tobool2.not.8.i = icmp eq i32 %call1.8.i, 0
  br i1 %tobool2.not.8.i, label %for.inc.7.i.if.end201_crit_edge, label %for.inc.7.i.while.body.preheader.i_crit_edge

for.inc.7.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader.i

for.inc.7.i.if.end201_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end201

do.end.i330:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.1.i, ptr noundef nonnull @.str.184) #12
  br label %do.end200

while.body.preheader.i:                           ; preds = %for.inc.7.i.while.body.preheader.i_crit_edge, %for.inc.6.i.while.body.preheader.i_crit_edge, %for.inc.5.i.while.body.preheader.i_crit_edge, %for.inc.4.i.while.body.preheader.i_crit_edge, %for.inc.3.i.while.body.preheader.i_crit_edge, %for.inc.2.i.while.body.preheader.i_crit_edge, %for.inc.1.i.while.body.preheader.i_crit_edge, %for.inc.i.while.body.preheader.i_crit_edge
  %i.020.lcssa.ph.i = phi i32 [ 7, %for.inc.7.i.while.body.preheader.i_crit_edge ], [ 6, %for.inc.6.i.while.body.preheader.i_crit_edge ], [ 5, %for.inc.5.i.while.body.preheader.i_crit_edge ], [ 4, %for.inc.4.i.while.body.preheader.i_crit_edge ], [ 3, %for.inc.3.i.while.body.preheader.i_crit_edge ], [ 2, %for.inc.2.i.while.body.preheader.i_crit_edge ], [ 1, %for.inc.1.i.while.body.preheader.i_crit_edge ], [ 0, %for.inc.i.while.body.preheader.i_crit_edge ]
  %165 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fg_psy, align 4
  %dev626.i = getelementptr inbounds %struct.power_supply, ptr %166, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev626.i, ptr noundef nonnull @.str.184) #12
  %167 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %fg_psy, align 4
  %dev9.i = getelementptr inbounds %struct.power_supply, ptr %168, i32 0, i32 7
  %arrayidx10.i = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %i.020.lcssa.ph.i
  call void @device_remove_file(ptr noundef %dev9.i, ptr noundef %arrayidx10.i) #9
  br i1 %tobool2.not.1.i, label %while.body.i.1, label %while.body.preheader.i.do.end200_crit_edge

while.body.preheader.i.do.end200_crit_edge:       ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

while.body.i.1:                                   ; preds = %while.body.preheader.i
  %dec.i.1 = add nsw i32 %i.020.lcssa.ph.i, -1
  %169 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %fg_psy, align 4
  %dev9.i.1 = getelementptr inbounds %struct.power_supply, ptr %170, i32 0, i32 7
  %arrayidx10.i.1 = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %dec.i.1
  call void @device_remove_file(ptr noundef %dev9.i.1, ptr noundef %arrayidx10.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool7.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool7.not.i.1, label %while.body.i.1.do.end200_crit_edge, label %while.body.i.2

while.body.i.1.do.end200_crit_edge:               ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

while.body.i.2:                                   ; preds = %while.body.i.1
  %dec.i.2 = add nsw i32 %i.020.lcssa.ph.i, -2
  %171 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fg_psy, align 4
  %dev9.i.2 = getelementptr inbounds %struct.power_supply, ptr %172, i32 0, i32 7
  %arrayidx10.i.2 = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %dec.i.2
  call void @device_remove_file(ptr noundef %dev9.i.2, ptr noundef %arrayidx10.i.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.2)
  %tobool7.not.i.2 = icmp eq i32 %dec.i.2, 0
  br i1 %tobool7.not.i.2, label %while.body.i.2.do.end200_crit_edge, label %while.body.i.3

while.body.i.2.do.end200_crit_edge:               ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

while.body.i.3:                                   ; preds = %while.body.i.2
  %dec.i.3 = add nsw i32 %i.020.lcssa.ph.i, -3
  %173 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %fg_psy, align 4
  %dev9.i.3 = getelementptr inbounds %struct.power_supply, ptr %174, i32 0, i32 7
  %arrayidx10.i.3 = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %dec.i.3
  call void @device_remove_file(ptr noundef %dev9.i.3, ptr noundef %arrayidx10.i.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.3)
  %tobool7.not.i.3 = icmp eq i32 %dec.i.3, 0
  br i1 %tobool7.not.i.3, label %while.body.i.3.do.end200_crit_edge, label %while.body.i.4

while.body.i.3.do.end200_crit_edge:               ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

while.body.i.4:                                   ; preds = %while.body.i.3
  %dec.i.4 = add nsw i32 %i.020.lcssa.ph.i, -4
  %175 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %fg_psy, align 4
  %dev9.i.4 = getelementptr inbounds %struct.power_supply, ptr %176, i32 0, i32 7
  %arrayidx10.i.4 = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %dec.i.4
  call void @device_remove_file(ptr noundef %dev9.i.4, ptr noundef %arrayidx10.i.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.4)
  %tobool7.not.i.4 = icmp eq i32 %dec.i.4, 0
  br i1 %tobool7.not.i.4, label %while.body.i.4.do.end200_crit_edge, label %while.body.i.5

while.body.i.4.do.end200_crit_edge:               ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

while.body.i.5:                                   ; preds = %while.body.i.4
  %dec.i.5 = add nsw i32 %i.020.lcssa.ph.i, -5
  %177 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %fg_psy, align 4
  %dev9.i.5 = getelementptr inbounds %struct.power_supply, ptr %178, i32 0, i32 7
  %arrayidx10.i.5 = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %dec.i.5
  call void @device_remove_file(ptr noundef %dev9.i.5, ptr noundef %arrayidx10.i.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.5)
  %tobool7.not.i.5 = icmp eq i32 %dec.i.5, 0
  br i1 %tobool7.not.i.5, label %while.body.i.5.do.end200_crit_edge, label %while.body.i.6

while.body.i.5.do.end200_crit_edge:               ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

while.body.i.6:                                   ; preds = %while.body.i.5
  %dec.i.6 = add nsw i32 %i.020.lcssa.ph.i, -6
  %179 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %fg_psy, align 4
  %dev9.i.6 = getelementptr inbounds %struct.power_supply, ptr %180, i32 0, i32 7
  %arrayidx10.i.6 = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %dec.i.6
  call void @device_remove_file(ptr noundef %dev9.i.6, ptr noundef %arrayidx10.i.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.6)
  %tobool7.not.i.6 = icmp eq i32 %dec.i.6, 0
  br i1 %tobool7.not.i.6, label %while.body.i.6.do.end200_crit_edge, label %while.body.i.7

while.body.i.6.do.end200_crit_edge:               ; preds = %while.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

while.body.i.7:                                   ; preds = %while.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i.7 = add nsw i32 %i.020.lcssa.ph.i, -7
  %181 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fg_psy, align 4
  %dev9.i.7 = getelementptr inbounds %struct.power_supply, ptr %182, i32 0, i32 7
  %arrayidx10.i.7 = getelementptr [9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 %dec.i.7
  call void @device_remove_file(ptr noundef %dev9.i.7, ptr noundef %arrayidx10.i.7) #9
  br label %do.end200

do.end200:                                        ; preds = %while.body.i.7, %while.body.i.6.do.end200_crit_edge, %while.body.i.5.do.end200_crit_edge, %while.body.i.4.do.end200_crit_edge, %while.body.i.3.do.end200_crit_edge, %while.body.i.2.do.end200_crit_edge, %while.body.i.1.do.end200_crit_edge, %while.body.preheader.i.do.end200_crit_edge, %do.end.i330
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57) #12
  call void @kobject_del(ptr noundef %fg_kobject.i) #9
  br label %cleanup

if.end201:                                        ; preds = %for.inc.7.i.if.end201_crit_edge, %if.end194.if.end201_crit_edge
  %calibrate = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 24, i32 9
  %183 = ptrtoint ptr %calibrate to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 1, ptr %calibrate, align 1
  %calib_state = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 19
  %184 = ptrtoint ptr %calib_state to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %calib_state, align 4
  %bat_temp = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 7
  %185 = ptrtoint ptr %bat_temp to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 210, ptr %bat_temp, align 8
  %node = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 1
  %186 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ab8500_fg_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %186, ptr noundef nonnull @ab8500_fg_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end201.list_add_tail.exit_crit_edge

if.end201.list_add_tail.exit_crit_edge:           ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @ab8500_fg_list, i32 0, i32 1), align 4
  %187 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @ab8500_fg_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.ab8500_fg, ptr %call.i, i32 0, i32 1, i32 1
  %188 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %186, ptr %prev3.i.i, align 4
  %189 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %node, ptr %186, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end201.list_add_tail.exit_crit_edge
  %call203 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @ab8500_fg_component_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end200, %do.end193, %do.end169, %for.body.cleanup_crit_edge, %do.end152, %do.end142, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then9 ], [ %ret.0.i.ph, %do.end142 ], [ %124, %do.end152 ], [ %call164, %do.end169 ], [ %call.i324, %do.end193 ], [ -5, %do.end200 ], [ %call203, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call157, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @ab8500_fg_component_ops) #9
  %node = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %fg_kobject.i = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 39
  tail call void @kobject_del(ptr noundef %fg_kobject.i) #9
  %parent.i = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 1
  br i1 %cmp.i.not.i, label %for.cond.preheader.i, label %list_del.exit.ab8500_fg_sysfs_psy_remove_attrs.exit_crit_edge

list_del.exit.ab8500_fg_sysfs_psy_remove_attrs.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_sysfs_psy_remove_attrs.exit

for.cond.preheader.i:                             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %fg_psy.i = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fg_psy.i, align 4
  %dev.i = getelementptr inbounds %struct.power_supply, ptr %15, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @ab8505_fg_sysfs_psy_attrs) #9
  %16 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fg_psy.i, align 4
  %dev.1.i = getelementptr inbounds %struct.power_supply, ptr %17, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.1.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 1)) #9
  %18 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fg_psy.i, align 4
  %dev.2.i = getelementptr inbounds %struct.power_supply, ptr %19, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.2.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 2)) #9
  %20 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fg_psy.i, align 4
  %dev.3.i = getelementptr inbounds %struct.power_supply, ptr %21, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.3.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 3)) #9
  %22 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fg_psy.i, align 4
  %dev.4.i = getelementptr inbounds %struct.power_supply, ptr %23, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.4.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 4)) #9
  %24 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fg_psy.i, align 4
  %dev.5.i = getelementptr inbounds %struct.power_supply, ptr %25, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.5.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 5)) #9
  %26 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fg_psy.i, align 4
  %dev.6.i = getelementptr inbounds %struct.power_supply, ptr %27, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.6.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 6)) #9
  %28 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fg_psy.i, align 4
  %dev.7.i = getelementptr inbounds %struct.power_supply, ptr %29, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.7.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 7)) #9
  %30 = ptrtoint ptr %fg_psy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fg_psy.i, align 4
  %dev.8.i = getelementptr inbounds %struct.power_supply, ptr %31, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev.8.i, ptr noundef getelementptr inbounds ([9 x %struct.device_attribute], ptr @ab8505_fg_sysfs_psy_attrs, i32 0, i32 8)) #9
  br label %ab8500_fg_sysfs_psy_remove_attrs.exit

ab8500_fg_sysfs_psy_remove_attrs.exit:            ; preds = %for.cond.preheader.i, %list_del.exit.ab8500_fg_sysfs_psy_remove_attrs.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_instant_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -848
  tail call fastcc void @ab8500_fg_algorithm(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_acc_cur_work(ptr noundef %work) #2 align 64 {
entry:
  %low = alloca i8, align 1
  %med = alloca i8, align 1
  %high = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low) #9
  %0 = ptrtoint ptr %low to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %low, align 1, !annotation !539
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %med) #9
  %1 = ptrtoint ptr %med to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %med, align 1, !annotation !539
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %high) #9
  %2 = ptrtoint ptr %high to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %high, align 1, !annotation !539
  %add.ptr = getelementptr i8, ptr %work, i32 -892
  %cc_lock = getelementptr i8, ptr %work, i32 144
  tail call void @mutex_lock_nested(ptr noundef %cc_lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %4, i8 noundef zeroext 12, i8 noundef zeroext 17, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end56_crit_edge

entry.do.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %call2 = call i32 @abx500_get_register_interruptible(ptr noundef %6, i8 noundef zeroext 12, i8 noundef zeroext 18, ptr noundef nonnull %low) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.do.end56_crit_edge, label %if.end4

if.end.do.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %call6 = call i32 @abx500_get_register_interruptible(ptr noundef %8, i8 noundef zeroext 12, i8 noundef zeroext 19, ptr noundef nonnull %med) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.do.end56_crit_edge, label %if.end9

if.end4.do.end56_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.end9:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %call11 = call i32 @abx500_get_register_interruptible(ptr noundef %10, i8 noundef zeroext 12, i8 noundef zeroext 20, ptr noundef nonnull %high) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.do.end56_crit_edge, label %if.end14

if.end9.do.end56_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %high to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %high, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %13 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %low, align 1
  %conv23 = zext i8 %14 to i32
  %15 = ptrtoint ptr %med to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %med, align 1
  %conv24 = zext i8 %16 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %shl28 = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl28, -2097152
  %shl28.sink = select i1 %tobool15.not, i32 %shl28, i32 %shl25
  %shl25.sink = select i1 %tobool15.not, i32 %shl25, i32 %or
  %or26 = or i32 %shl28.sink, %conv23
  %or29 = or i32 %or26, %shl25.sink
  %mul = mul i32 %or29, 1071
  %bm = getelementptr i8, ptr %work, i32 -356
  %17 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bm, align 8
  %fg_res = getelementptr inbounds %struct.ab8500_bm_data, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %fg_res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fg_res, align 4
  %mul31 = mul i32 %20, 100
  %div = sdiv i32 %mul, %mul31
  %accu_charge = getelementptr i8, ptr %work, i32 -852
  %21 = ptrtoint ptr %accu_charge to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %accu_charge, align 8
  %mul33 = mul i32 %or29, 38556
  %22 = load i32, ptr %fg_res, align 4
  %fg_samples = getelementptr i8, ptr %work, i32 -856
  %23 = ptrtoint ptr %fg_samples to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fg_samples, align 4
  %div36 = sdiv i32 %24, 4
  %mul37 = mul i32 %div36, %22
  %div38 = sdiv i32 %mul33, %mul37
  %avg_curr_ua = getelementptr i8, ptr %work, i32 -864
  %25 = ptrtoint ptr %avg_curr_ua to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div38, ptr %avg_curr_ua, align 4
  %conv_done = getelementptr i8, ptr %work, i32 -699
  %26 = ptrtoint ptr %conv_done to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %conv_done, align 1
  call void @mutex_unlock(ptr noundef %cc_lock) #9
  %fg_wq = getelementptr i8, ptr %work, i32 -348
  %27 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fg_wq, align 8
  %fg_work = getelementptr i8, ptr %work, i32 -44
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %fg_work) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_acc_cur_work.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_acc_cur_work, %cleanup)) #9
          to label %if.then47 [label %cleanup], !srcloc !540

if.then47:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %31 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bm, align 8
  %fg_res50 = getelementptr inbounds %struct.ab8500_bm_data, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %fg_res50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fg_res50, align 4
  %35 = ptrtoint ptr %fg_samples to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fg_samples, align 4
  %37 = ptrtoint ptr %accu_charge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %accu_charge, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_acc_cur_work.__UNIQUE_ID_ddebug295, ptr noundef %30, ptr noundef nonnull @.str.115, i32 noundef %34, i32 noundef %36, i32 noundef %or29, i32 noundef %38) #9
  br label %cleanup

do.end56:                                         ; preds = %if.end9.do.end56_crit_edge, %if.end4.do.end56_crit_edge, %if.end.do.end56_crit_edge, %entry.do.end56_crit_edge
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.116) #12
  call void @mutex_unlock(ptr noundef %cc_lock) #9
  %fg_wq59 = getelementptr i8, ptr %work, i32 -348
  %41 = ptrtoint ptr %fg_wq59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fg_wq59, align 8
  %fg_work60 = getelementptr i8, ptr %work, i32 -44
  %call.i93 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %fg_work60) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.then47, %if.end14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %high) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %med) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_reinit_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -748
  %calibrate = getelementptr i8, ptr %work, i32 -547
  %0 = ptrtoint ptr %calibrate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %calibrate, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %do.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_reinit_work.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_reinit_work, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !540

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_reinit_work.__UNIQUE_ID_ddebug336, ptr noundef %3, ptr noundef nonnull @.str.118) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %avg_cap.i = getelementptr i8, ptr %work, i32 -484
  %arrayidx2.i = getelementptr i8, ptr %work, i32 -396
  %4 = call ptr @memset(ptr %avg_cap.i, i32 0, i32 84)
  %5 = call ptr @memset(ptr %arrayidx2.i, i32 0, i32 172)
  tail call fastcc void @ab8500_fg_calc_cap_discharge_voltage(ptr noundef %add.ptr)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_reinit_work, %ab8500_fg_charge_state_to.exit)) #9
          to label %if.then.i [label %ab8500_fg_charge_state_to.exit], !srcloc !540

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %charge_state.i = getelementptr i8, ptr %work, i32 -672
  %8 = ptrtoint ptr %charge_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %charge_state.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @charge_state, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, ptr noundef %7, ptr noundef nonnull @.str.62, i32 noundef %9, ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.63) #9
  br label %ab8500_fg_charge_state_to.exit

ab8500_fg_charge_state_to.exit:                   ; preds = %if.then.i, %do.end
  %charge_state6.i = getelementptr i8, ptr %work, i32 -672
  %12 = ptrtoint ptr %charge_state6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %charge_state6.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_reinit_work, %ab8500_fg_discharge_state_to.exit)) #9
          to label %if.then.i28 [label %ab8500_fg_discharge_state_to.exit], !srcloc !540

if.then.i28:                                      ; preds = %ab8500_fg_charge_state_to.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %discharge_state.i = getelementptr i8, ptr %work, i32 -676
  %15 = ptrtoint ptr %discharge_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %discharge_state.i, align 8
  %arrayidx.i27 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %14, ptr noundef nonnull @.str.66, i32 noundef %16, ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.67) #9
  br label %ab8500_fg_discharge_state_to.exit

ab8500_fg_discharge_state_to.exit:                ; preds = %if.then.i28, %ab8500_fg_charge_state_to.exit
  %discharge_state6.i = getelementptr i8, ptr %work, i32 -676
  %19 = ptrtoint ptr %discharge_state6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %discharge_state6.i, align 8
  %fg_wq = getelementptr i8, ptr %work, i32 -204
  %20 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fg_wq, align 8
  %fg_periodic_work = getelementptr i8, ptr %work, i32 -200
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %fg_periodic_work, i32 noundef 0) #9
  br label %if.end16

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.119) #12
  %fg_wq13 = getelementptr i8, ptr %work, i32 -204
  %24 = ptrtoint ptr %fg_wq13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fg_wq13, align 8
  %call14 = tail call i32 @round_jiffies(i32 noundef 1) #9
  %call.i29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work, i32 noundef %call14) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %ab8500_fg_discharge_state_to.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_periodic_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -548
  %init_capacity = getelementptr i8, ptr %work, i32 -482
  %0 = ptrtoint ptr %init_capacity to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init_capacity, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ab8500_fg_calc_cap_discharge_voltage(ptr noundef %add.ptr)
  tail call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %add.ptr, i1 noundef zeroext true)
  %2 = ptrtoint ptr %init_capacity to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %init_capacity, align 2
  %fg_wq = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fg_wq, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 0) #9
  br label %if.end19

if.else:                                          ; preds = %entry
  %user_cap = getelementptr i8, ptr %work, i32 -346
  %5 = ptrtoint ptr %user_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %user_cap, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.else17, label %if.then4

if.then4:                                         ; preds = %if.else
  %call5 = tail call fastcc zeroext i1 @check_sysfs_capacity(ptr noundef %add.ptr)
  br i1 %call5, label %if.then6, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.then4
  tail call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %add.ptr, i1 noundef zeroext true)
  %charging = getelementptr i8, ptr %work, i32 -354
  %7 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %charging, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_periodic_work, %ab8500_fg_charge_state_to.exit)) #9
          to label %if.then.i [label %ab8500_fg_charge_state_to.exit], !srcloc !540

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %charge_state.i = getelementptr i8, ptr %work, i32 -472
  %11 = ptrtoint ptr %charge_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %charge_state.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @charge_state, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, ptr noundef %10, ptr noundef nonnull @.str.62, i32 noundef %12, ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.63) #9
  br label %ab8500_fg_charge_state_to.exit

ab8500_fg_charge_state_to.exit:                   ; preds = %if.then.i, %if.then9
  %charge_state6.i = getelementptr i8, ptr %work, i32 -472
  %15 = ptrtoint ptr %charge_state6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %charge_state6.i, align 4
  br label %if.end11

if.else10:                                        ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_periodic_work, %ab8500_fg_discharge_state_to.exit)) #9
          to label %if.then.i36 [label %ab8500_fg_discharge_state_to.exit], !srcloc !540

if.then.i36:                                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %discharge_state.i = getelementptr i8, ptr %work, i32 -476
  %18 = ptrtoint ptr %discharge_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %discharge_state.i, align 8
  %arrayidx.i35 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %17, ptr noundef nonnull @.str.66, i32 noundef %19, ptr noundef %21, i32 noundef 4, ptr noundef nonnull @.str.71) #9
  br label %ab8500_fg_discharge_state_to.exit

ab8500_fg_discharge_state_to.exit:                ; preds = %if.then.i36, %if.else10
  %discharge_state6.i = getelementptr i8, ptr %work, i32 -476
  %22 = ptrtoint ptr %discharge_state6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %discharge_state6.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %ab8500_fg_discharge_state_to.exit, %ab8500_fg_charge_state_to.exit, %if.then4.if.end11_crit_edge
  %23 = ptrtoint ptr %user_cap to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %user_cap, align 2
  %fg_wq14 = getelementptr i8, ptr %work, i32 -4
  %24 = ptrtoint ptr %fg_wq14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fg_wq14, align 8
  %call.i37 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work, i32 noundef 0) #9
  br label %if.end19

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ab8500_fg_algorithm(ptr noundef %add.ptr)
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.end11, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_low_bat_work(ptr noundef %work) #2 align 64 {
entry:
  %vbat.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat.i) #9
  %0 = ptrtoint ptr %vbat.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vbat.i, align 4, !annotation !539
  %main_bat_v.i = getelementptr i8, ptr %work, i32 -116
  %1 = ptrtoint ptr %main_bat_v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %main_bat_v.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %2, ptr noundef nonnull %vbat.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #12
  %5 = load i32, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_bat_voltage.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %vbat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbat.i, align 4
  %mul.i = mul i32 %7, 1000
  store i32 %mul.i, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_bat_voltage.exit

ab8500_fg_bat_voltage.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %5, %do.end.i ], [ %mul.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat.i) #9
  %bm = getelementptr i8, ptr %work, i32 -112
  %8 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bm, align 8
  %fg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %fg_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fg_params, align 4
  %lowbat_threshold_uv = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %lowbat_threshold_uv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lowbat_threshold_uv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %13)
  %cmp = icmp slt i32 %retval.0.i, %13
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %ab8500_fg_bat_voltage.exit
  %low_bat_cnt = getelementptr i8, ptr %work, i32 -592
  %14 = ptrtoint ptr %low_bat_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %low_bat_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1 = icmp slt i32 %15, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %low_bat = getelementptr i8, ptr %work, i32 -450
  %16 = ptrtoint ptr %low_bat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %low_bat, align 2
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.126) #12
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %15, -1
  %19 = ptrtoint ptr %low_bat_cnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec, ptr %low_bat_cnt, align 8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.130) #12
  %fg_wq = getelementptr i8, ptr %work, i32 -104
  %22 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fg_wq, align 8
  %call8 = call i32 @round_jiffies(i32 noundef 6) #9
  %call.i30 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %work, i32 noundef %call8) #9
  br label %if.end17

if.else10:                                        ; preds = %ab8500_fg_bat_voltage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %low_bat_delay = getelementptr i8, ptr %work, i32 -451
  %24 = ptrtoint ptr %low_bat_delay to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %low_bat_delay, align 1
  %low_bat_cnt12 = getelementptr i8, ptr %work, i32 -592
  %25 = ptrtoint ptr %low_bat_cnt12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %low_bat_cnt12, align 8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.133) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else10, %if.else, %if.then2
  call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_check_hw_failure_work(ptr noundef %work) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %add.ptr = getelementptr i8, ptr %work, i32 -936
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 11, i8 noundef zeroext 5, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2.not = icmp eq i8 %7, 0
  br i1 %cmp2.not, label %do.body22, label %if.then4

if.then4:                                         ; preds = %if.end
  %bat_ovv = getelementptr i8, ptr %work, i32 -737
  %8 = ptrtoint ptr %bat_ovv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bat_ovv, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.body6, label %if.then4.if.end20_crit_edge

if.then4.if.end20_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body6:                                         ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_hw_failure_work, %do.end17)) #9
          to label %if.then13 [label %do.end17], !srcloc !540

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug332, ptr noundef %11, ptr noundef nonnull @.str.137) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body6
  %12 = ptrtoint ptr %bat_ovv to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bat_ovv, align 1
  %fg_psy = getelementptr i8, ptr %work, i32 -396
  %13 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fg_psy, align 4
  call void @power_supply_changed(ptr noundef %14) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.then4.if.end20_crit_edge
  %fg_wq = getelementptr i8, ptr %work, i32 -392
  %15 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fg_wq, align 8
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 100) #9
  br label %cleanup

do.body22:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_hw_failure_work, %do.end40)) #9
          to label %if.then36 [label %do.end40], !srcloc !540

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug333, ptr noundef %18, ptr noundef nonnull @.str.138) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body22
  %bat_ovv42 = getelementptr i8, ptr %work, i32 -737
  %19 = ptrtoint ptr %bat_ovv42 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bat_ovv42, align 1
  %fg_psy43 = getelementptr i8, ptr %work, i32 -396
  %20 = ptrtoint ptr %fg_psy43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fg_psy43, align 4
  call void @power_supply_changed(ptr noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end20, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_algorithm(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %calibrate = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 9
  %0 = ptrtoint ptr %calibrate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %calibrate, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ab8500_fg_algorithm_calibrate(ptr noundef %di)
  br label %do.body

if.else:                                          ; preds = %entry
  %charging = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %charging, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ab8500_fg_algorithm_charging(ptr noundef %di)
  br label %do.body

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ab8500_fg_algorithm_discharging(ptr noundef %di)
  br label %do.body

do.body:                                          ; preds = %if.else4, %if.then3, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_algorithm.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm, %do.end)) #9
          to label %if.then10 [label %do.end], !srcloc !540

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %di, align 8
  %bat_cap = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25
  %6 = ptrtoint ptr %bat_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bat_cap, align 4
  %max_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 1
  %8 = ptrtoint ptr %max_mah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_mah, align 4
  %mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %10 = ptrtoint ptr %mah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mah, align 4
  %permille = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %12 = ptrtoint ptr %permille to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %permille, align 4
  %level = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 4
  %14 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level, align 4
  %prev_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 5
  %16 = ptrtoint ptr %prev_mah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prev_mah, align 4
  %prev_percent = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 6
  %18 = ptrtoint ptr %prev_percent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prev_percent, align 4
  %prev_level = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 7
  %20 = ptrtoint ptr %prev_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prev_level, align 4
  %vbat_uv = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 3
  %22 = ptrtoint ptr %vbat_uv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vbat_uv, align 8
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 5
  %24 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inst_curr_ua, align 8
  %avg_curr_ua = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 6
  %26 = ptrtoint ptr %avg_curr_ua to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avg_curr_ua, align 4
  %accu_charge = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 9
  %28 = ptrtoint ptr %accu_charge to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %accu_charge, align 8
  %charging19 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 2
  %30 = ptrtoint ptr %charging19 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %charging19, align 2, !range !541
  %32 = zext i8 %31 to i32
  %charge_state = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 21
  %33 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %charge_state, align 4
  %discharge_state = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 20
  %35 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %discharge_state, align 8
  %high_curr_mode = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 16
  %37 = ptrtoint ptr %high_curr_mode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %high_curr_mode, align 1, !range !541
  %39 = zext i8 %38 to i32
  %recovery_needed = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 15
  %40 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %recovery_needed, align 8, !range !541
  %42 = zext i8 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_algorithm.__UNIQUE_ID_ddebug331, ptr noundef %5, ptr noundef nonnull @.str.75, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %39, i32 noundef %42) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_algorithm_calibrate(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %calib_state = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 19
  %0 = ptrtoint ptr %calib_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %calib_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 2, label %sw.bb14
    i32 1, label %do.body41
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_calibrate, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !540

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug328, ptr noundef %4, ptr noundef nonnull @.str.77) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %5 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %di, align 8
  %call5 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 96, i8 noundef zeroext 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.do.end62_crit_edge, label %if.end7

do.end.do.end62_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end7:                                          ; preds = %do.end
  %7 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %di, align 8
  %call9 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %8, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 16, i8 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.do.end62_crit_edge, label %if.end12

if.end7.do.end62_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %calib_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %calib_state, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %10 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %di, align 8
  %call16 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %11, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext -128, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.bb14.do.end62_crit_edge, label %if.end19

sw.bb14.do.end62_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end19:                                         ; preds = %sw.bb14
  %calibrate = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 9
  %12 = ptrtoint ptr %calibrate to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %calibrate, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_calibrate, %do.end38)) #9
          to label %if.then34 [label %do.end38], !srcloc !540

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug329, ptr noundef %14, ptr noundef nonnull @.str.78) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %if.end19
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 31
  %15 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fg_wq, align 8
  %fg_periodic_work = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 32
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %fg_periodic_work, i32 noundef 0) #9
  br label %cleanup

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_calibrate, %cleanup)) #9
          to label %if.then55 [label %cleanup], !srcloc !540

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug330, ptr noundef %18, ptr noundef nonnull @.str.79) #9
  br label %cleanup

do.end62:                                         ; preds = %sw.bb14.do.end62_crit_edge, %if.end7.do.end62_crit_edge, %do.end.do.end62_crit_edge
  %19 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.80) #12
  %calibrate65 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 9
  %21 = ptrtoint ptr %calibrate65 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %calibrate65, align 1
  %22 = ptrtoint ptr %calib_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %calib_state, align 4
  %fg_wq67 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 31
  %23 = ptrtoint ptr %fg_wq67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fg_wq67, align 8
  %fg_periodic_work68 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 32
  %call.i93 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %fg_periodic_work68, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.then55, %do.body41, %do.end38, %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_algorithm_charging(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %discharge_state = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 20
  %0 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %discharge_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_charging, %ab8500_fg_discharge_state_to.exit)) #9
          to label %if.then.i [label %ab8500_fg_discharge_state_to.exit], !srcloc !540

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 8
  %4 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %discharge_state, align 8
  %arrayidx.i = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef %5, ptr noundef %7, i32 noundef 2, ptr noundef nonnull @.str.69) #9
  br label %ab8500_fg_discharge_state_to.exit

ab8500_fg_discharge_state_to.exit:                ; preds = %if.then.i, %if.then
  %8 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %discharge_state, align 8
  br label %if.end

if.end:                                           ; preds = %ab8500_fg_discharge_state_to.exit, %entry.if.end_crit_edge
  %charge_state = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 21
  %9 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %charge_state, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %10, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %12 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bm, align 8
  %fg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %fg_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fg_params, align 4
  %accu_charging = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %accu_charging to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %accu_charging, align 4
  %mul = shl i32 %17, 2
  %fg_samples = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %18 = ptrtoint ptr %fg_samples to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %fg_samples, align 4
  %call = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %di, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_charging, %ab8500_fg_charge_state_to.exit)) #9
          to label %if.then.i34 [label %ab8500_fg_charge_state_to.exit], !srcloc !540

if.then.i34:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %di, align 8
  %21 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %charge_state, align 4
  %arrayidx.i33 = getelementptr [2 x ptr], ptr @charge_state, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, ptr noundef %20, ptr noundef nonnull @.str.62, i32 noundef %22, ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.64) #9
  br label %ab8500_fg_charge_state_to.exit

ab8500_fg_charge_state_to.exit:                   ; preds = %if.then.i34, %sw.bb
  %25 = ptrtoint ptr %charge_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %charge_state, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %cc_lock = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cc_lock, i32 noundef 0) #9
  %conv_done = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 1
  %26 = ptrtoint ptr %conv_done to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %conv_done, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb1.if.end13_crit_edge

sw.bb1.if.end13_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %sw.bb1
  %force_full = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 4
  %28 = ptrtoint ptr %force_full to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %force_full, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not = icmp eq i8 %29, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %cc_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_algorithm_charging.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_charging, %sw.epilog)) #9
          to label %if.then11 [label %sw.epilog], !srcloc !540

if.then11:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_algorithm_charging.__UNIQUE_ID_ddebug322, ptr noundef %31, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81) #9
  br label %sw.epilog

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %sw.bb1.if.end13_crit_edge
  %32 = ptrtoint ptr %conv_done to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %conv_done, align 1
  tail call void @mutex_unlock(ptr noundef %cc_lock) #9
  tail call fastcc void @ab8500_fg_calc_cap_charging(ptr noundef %di)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %if.then11, %if.then4, %ab8500_fg_charge_state_to.exit, %if.end.sw.epilog_crit_edge
  tail call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %di, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_algorithm_discharging(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %charge_state = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 21
  %0 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %charge_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_charge_state_to.exit)) #9
          to label %if.then.i [label %ab8500_fg_charge_state_to.exit], !srcloc !540

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 8
  %4 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %charge_state, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @charge_state, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.62, i32 noundef %5, ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.63) #9
  br label %ab8500_fg_charge_state_to.exit

ab8500_fg_charge_state_to.exit:                   ; preds = %if.then.i, %if.then
  %8 = ptrtoint ptr %charge_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %charge_state, align 4
  br label %if.end

if.end:                                           ; preds = %ab8500_fg_charge_state_to.exit, %entry.if.end_crit_edge
  %discharge_state = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 20
  %9 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %discharge_state, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %10, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb1_crit_edge
    i32 2, label %sw.bb19
    i32 3, label %if.end.sw.bb20_crit_edge
    i32 4, label %sw.bb51
    i32 5, label %sw.bb58
    i32 6, label %sw.bb112
  ]

if.end.sw.bb20_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %init_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 12
  %12 = ptrtoint ptr %init_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %init_cnt, align 4
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %13 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bm, align 8
  %fg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %fg_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fg_params, align 4
  %init_timer = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %init_timer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %init_timer, align 4
  %mul = shl i32 %18, 2
  %fg_samples = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %19 = ptrtoint ptr %fg_samples to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %fg_samples, align 4
  %call = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %di, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit)) #9
          to label %if.then.i199 [label %ab8500_fg_discharge_state_to.exit], !srcloc !540

if.then.i199:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %di, align 8
  %22 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %discharge_state, align 8
  %arrayidx.i198 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i198, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %21, ptr noundef nonnull @.str.66, i32 noundef %23, ptr noundef %25, i32 noundef 1, ptr noundef nonnull @.str.68) #9
  br label %ab8500_fg_discharge_state_to.exit

ab8500_fg_discharge_state_to.exit:                ; preds = %if.then.i199, %sw.bb
  %26 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %discharge_state, align 8
  br label %sw.bb1

sw.bb1:                                           ; preds = %ab8500_fg_discharge_state_to.exit, %if.end.sw.bb1_crit_edge
  %bm2 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %27 = ptrtoint ptr %bm2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bm2, align 8
  %fg_params3 = getelementptr inbounds %struct.ab8500_bm_data, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %fg_params3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fg_params3, align 4
  %init_timer4 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %init_timer4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %init_timer4, align 4
  %init_cnt5 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 12
  %33 = ptrtoint ptr %init_cnt5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %init_cnt5, align 4
  %init_discard_time = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %init_discard_time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %init_discard_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp8 = icmp sgt i32 %34, %36
  br i1 %cmp8, label %if.then9, label %sw.bb1.if.end11_crit_edge

sw.bb1.if.end11_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ab8500_fg_calc_cap_discharge_voltage(ptr noundef %di)
  tail call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %di, i1 noundef zeroext true)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %sw.bb1.if.end11_crit_edge
  %37 = ptrtoint ptr %init_cnt5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %init_cnt5, align 4
  %add = add i32 %38, %32
  store i32 %add, ptr %init_cnt5, align 4
  %39 = ptrtoint ptr %bm2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bm2, align 8
  %fg_params15 = getelementptr inbounds %struct.ab8500_bm_data, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %fg_params15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fg_params15, align 4
  %init_total_time = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %init_total_time to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %init_total_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %44)
  %cmp16 = icmp sgt i32 %add, %44
  br i1 %cmp16, label %if.then17, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then17:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit204)) #9
          to label %if.then.i202 [label %ab8500_fg_discharge_state_to.exit204], !srcloc !540

if.then.i202:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %di, align 8
  %47 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %discharge_state, align 8
  %arrayidx.i201 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i201, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %46, ptr noundef nonnull @.str.66, i32 noundef %48, ptr noundef %50, i32 noundef 4, ptr noundef nonnull @.str.71) #9
  br label %ab8500_fg_discharge_state_to.exit204

ab8500_fg_discharge_state_to.exit204:             ; preds = %if.then.i202, %if.then17
  %51 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %discharge_state, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %recovery_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 10
  %52 = ptrtoint ptr %recovery_cnt to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %recovery_cnt, align 4
  %recovery_needed = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 15
  %53 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %recovery_needed, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit209)) #9
          to label %if.then.i207 [label %ab8500_fg_discharge_state_to.exit209], !srcloc !540

if.then.i207:                                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %di, align 8
  %56 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %discharge_state, align 8
  %arrayidx.i206 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i206, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %55, ptr noundef nonnull @.str.66, i32 noundef %57, ptr noundef %59, i32 noundef 3, ptr noundef nonnull @.str.70) #9
  br label %ab8500_fg_discharge_state_to.exit209

ab8500_fg_discharge_state_to.exit209:             ; preds = %if.then.i207, %sw.bb19
  %60 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %discharge_state, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %ab8500_fg_discharge_state_to.exit209, %if.end.sw.bb20_crit_edge
  %bm21 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %61 = ptrtoint ptr %bm21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bm21, align 8
  %fg_params22 = getelementptr inbounds %struct.ab8500_bm_data, ptr %62, i32 0, i32 23
  %63 = ptrtoint ptr %fg_params22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fg_params22, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %call23 = tail call i32 @ab8500_fg_inst_curr_blocking(ptr noundef %di)
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 5
  %67 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call23, ptr %inst_curr_ua, align 8
  %68 = ptrtoint ptr %bm21 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bm21, align 8
  %fg_params.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %69, i32 0, i32 23
  %70 = ptrtoint ptr %fg_params.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fg_params.i, align 4
  %high_curr_threshold_ua.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %high_curr_threshold_ua.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %high_curr_threshold_ua.i, align 4
  %sub.i = sub i32 0, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %sub.i)
  %cmp.i.not = icmp sgt i32 %call23, %sub.i
  br i1 %cmp.i.not, label %if.then26, label %if.else43

if.then26:                                        ; preds = %sw.bb20
  %recovery_cnt27 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 10
  %74 = ptrtoint ptr %recovery_cnt27 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %recovery_cnt27, align 4
  %recovery_total_time = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %recovery_total_time to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %recovery_total_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp30 = icmp sgt i32 %75, %77
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then26
  %accu_high_curr = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %71, i32 0, i32 7
  %78 = ptrtoint ptr %accu_high_curr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %accu_high_curr, align 4
  %mul34 = shl i32 %79, 2
  %fg_samples35 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %80 = ptrtoint ptr %fg_samples35 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul34, ptr %fg_samples35, align 4
  %call36 = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %di, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit214)) #9
          to label %if.then.i212 [label %ab8500_fg_discharge_state_to.exit214], !srcloc !540

if.then.i212:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %di, align 8
  %83 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %discharge_state, align 8
  %arrayidx.i211 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i211, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %82, ptr noundef nonnull @.str.66, i32 noundef %84, ptr noundef %86, i32 noundef 5, ptr noundef nonnull @.str.72) #9
  br label %ab8500_fg_discharge_state_to.exit214

ab8500_fg_discharge_state_to.exit214:             ; preds = %if.then.i212, %if.then31
  %87 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 5, ptr %discharge_state, align 8
  %recovery_needed37 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 15
  %88 = ptrtoint ptr %recovery_needed37 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %recovery_needed37, align 8
  br label %if.end40

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 31
  %89 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fg_wq, align 8
  %fg_periodic_work = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 32
  %mul38 = mul i32 %66, 100
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %fg_periodic_work, i32 noundef %mul38) #9
  br label %if.end40

if.end40:                                         ; preds = %if.else, %ab8500_fg_discharge_state_to.exit214
  %91 = ptrtoint ptr %recovery_cnt27 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %recovery_cnt27, align 4
  %add42 = add i32 %92, %66
  store i32 %add42, ptr %recovery_cnt27, align 4
  br label %sw.epilog

if.else43:                                        ; preds = %sw.bb20
  %accu_high_curr46 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %71, i32 0, i32 7
  %93 = ptrtoint ptr %accu_high_curr46 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %accu_high_curr46, align 4
  %mul47 = shl i32 %94, 2
  %fg_samples48 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %95 = ptrtoint ptr %fg_samples48 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %mul47, ptr %fg_samples48, align 4
  %call49 = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %di, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit219)) #9
          to label %if.then.i217 [label %ab8500_fg_discharge_state_to.exit219], !srcloc !540

if.then.i217:                                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %di, align 8
  %98 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %discharge_state, align 8
  %arrayidx.i216 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i216, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %97, ptr noundef nonnull @.str.66, i32 noundef %99, ptr noundef %101, i32 noundef 5, ptr noundef nonnull @.str.72) #9
  br label %ab8500_fg_discharge_state_to.exit219

ab8500_fg_discharge_state_to.exit219:             ; preds = %if.then.i217, %if.else43
  %102 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 5, ptr %discharge_state, align 8
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end
  %bm52 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %103 = ptrtoint ptr %bm52 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bm52, align 8
  %fg_params53 = getelementptr inbounds %struct.ab8500_bm_data, ptr %104, i32 0, i32 23
  %105 = ptrtoint ptr %fg_params53 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fg_params53, align 4
  %accu_high_curr54 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %accu_high_curr54 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %accu_high_curr54, align 4
  %mul55 = shl i32 %108, 2
  %fg_samples56 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %109 = ptrtoint ptr %fg_samples56 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %mul55, ptr %fg_samples56, align 4
  %call57 = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %di, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit224)) #9
          to label %if.then.i222 [label %ab8500_fg_discharge_state_to.exit224], !srcloc !540

if.then.i222:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %di, align 8
  %112 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %discharge_state, align 8
  %arrayidx.i221 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i221, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %111, ptr noundef nonnull @.str.66, i32 noundef %113, ptr noundef %115, i32 noundef 5, ptr noundef nonnull @.str.72) #9
  br label %ab8500_fg_discharge_state_to.exit224

ab8500_fg_discharge_state_to.exit224:             ; preds = %if.then.i222, %sw.bb51
  %116 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 5, ptr %discharge_state, align 8
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  %call59 = tail call i32 @ab8500_fg_inst_curr_blocking(ptr noundef %di)
  %inst_curr_ua60 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 5
  %117 = ptrtoint ptr %inst_curr_ua60 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call59, ptr %inst_curr_ua60, align 8
  %bm.i225 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %118 = ptrtoint ptr %bm.i225 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bm.i225, align 8
  %fg_params.i226 = getelementptr inbounds %struct.ab8500_bm_data, ptr %119, i32 0, i32 23
  %120 = ptrtoint ptr %fg_params.i226 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fg_params.i226, align 4
  %high_curr_threshold_ua.i227 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %high_curr_threshold_ua.i227 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %high_curr_threshold_ua.i227, align 4
  %sub.i228 = sub i32 0, %123
  call void @__sanitizer_cov_trace_cmp4(i32 %call59, i32 %sub.i228)
  %cmp.i229.not = icmp sgt i32 %call59, %sub.i228
  br i1 %cmp.i229.not, label %if.then64, label %if.else77

if.then64:                                        ; preds = %sw.bb58
  %high_curr_mode = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 16
  %124 = ptrtoint ptr %high_curr_mode to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %high_curr_mode, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool65.not = icmp eq i8 %125, 0
  br i1 %tobool65.not, label %if.then64.if.end68_crit_edge, label %if.then66

if.then64.if.end68_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %high_curr_mode to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %high_curr_mode, align 1
  %high_curr_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 11
  %127 = ptrtoint ptr %high_curr_cnt to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %high_curr_cnt, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64.if.end68_crit_edge
  %recovery_needed69 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 15
  %128 = ptrtoint ptr %recovery_needed69 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %recovery_needed69, align 8, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool70.not = icmp eq i8 %129, 0
  br i1 %tobool70.not, label %if.end75, label %if.then71

if.then71:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit235)) #9
          to label %if.then.i233 [label %ab8500_fg_discharge_state_to.exit235], !srcloc !540

if.then.i233:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %di, align 8
  %132 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %discharge_state, align 8
  %arrayidx.i232 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i232, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %131, ptr noundef nonnull @.str.66, i32 noundef %133, ptr noundef %135, i32 noundef 2, ptr noundef nonnull @.str.69) #9
  br label %ab8500_fg_discharge_state_to.exit235

ab8500_fg_discharge_state_to.exit235:             ; preds = %if.then.i233, %if.then71
  %136 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2, ptr %discharge_state, align 8
  %fg_wq72 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 31
  %137 = ptrtoint ptr %fg_wq72 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fg_wq72, align 8
  %fg_periodic_work73 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 32
  %call.i236 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %138, ptr noundef %fg_periodic_work73, i32 noundef 0) #9
  br label %sw.epilog

if.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ab8500_fg_calc_cap_discharge_voltage(ptr noundef %di)
  br label %if.end111

if.else77:                                        ; preds = %sw.bb58
  %cc_lock = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cc_lock, i32 noundef 0) #9
  %conv_done = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 1
  %139 = ptrtoint ptr %conv_done to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %conv_done, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool78.not = icmp eq i8 %140, 0
  br i1 %tobool78.not, label %if.then79, label %if.end88

if.then79:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %cc_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_algorithm_discharging.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %sw.epilog)) #9
          to label %if.then86 [label %sw.epilog], !srcloc !540

if.then86:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_algorithm_discharging.__UNIQUE_ID_ddebug327, ptr noundef %142, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.107) #9
  br label %sw.epilog

if.end88:                                         ; preds = %if.else77
  %143 = ptrtoint ptr %conv_done to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %conv_done, align 1
  tail call void @mutex_unlock(ptr noundef %cc_lock) #9
  %high_curr_mode92 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 16
  %144 = ptrtoint ptr %high_curr_mode92 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %high_curr_mode92, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool93.not = icmp eq i8 %145, 0
  br i1 %tobool93.not, label %if.then94, label %if.end88.if.end97_crit_edge

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %high_curr_mode92 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %high_curr_mode92, align 1
  %high_curr_cnt96 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 11
  %147 = ptrtoint ptr %high_curr_cnt96 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %high_curr_cnt96, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end88.if.end97_crit_edge
  %148 = ptrtoint ptr %bm.i225 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bm.i225, align 8
  %fg_params99 = getelementptr inbounds %struct.ab8500_bm_data, ptr %149, i32 0, i32 23
  %150 = ptrtoint ptr %fg_params99 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %fg_params99, align 4
  %accu_high_curr100 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %151, i32 0, i32 7
  %152 = ptrtoint ptr %accu_high_curr100 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %accu_high_curr100, align 4
  %high_curr_cnt101 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 11
  %154 = ptrtoint ptr %high_curr_cnt101 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %high_curr_cnt101, align 8
  %add102 = add i32 %155, %153
  store i32 %add102, ptr %high_curr_cnt101, align 8
  %156 = load ptr, ptr %fg_params99, align 4
  %high_curr_time = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %high_curr_time to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %high_curr_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add102, i32 %158)
  %cmp106 = icmp sgt i32 %add102, %158
  br i1 %cmp106, label %if.then107, label %if.end97.if.end109_crit_edge

if.end97.if.end109_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then107:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %recovery_needed108 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 15
  %159 = ptrtoint ptr %recovery_needed108 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %recovery_needed108, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end97.if.end109_crit_edge
  tail call fastcc void @ab8500_fg_calc_cap_discharge_fg(ptr noundef %di)
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.end75
  tail call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %di, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end
  tail call fastcc void @ab8500_fg_calc_cap_discharge_voltage(ptr noundef %di)
  %bm114 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %160 = ptrtoint ptr %bm114 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bm114, align 8
  %fg_params115 = getelementptr inbounds %struct.ab8500_bm_data, ptr %161, i32 0, i32 23
  %162 = ptrtoint ptr %fg_params115 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fg_params115, align 4
  %accu_high_curr116 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %163, i32 0, i32 7
  %164 = ptrtoint ptr %accu_high_curr116 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %accu_high_curr116, align 4
  %mul117 = shl i32 %165, 2
  %fg_samples118 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %166 = ptrtoint ptr %fg_samples118 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %mul117, ptr %fg_samples118, align 4
  %call119 = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %di, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_algorithm_discharging, %ab8500_fg_discharge_state_to.exit241)) #9
          to label %if.then.i239 [label %ab8500_fg_discharge_state_to.exit241], !srcloc !540

if.then.i239:                                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %di, align 8
  %169 = ptrtoint ptr %discharge_state to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %discharge_state, align 8
  %arrayidx.i238 = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %170
  %171 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i238, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %168, ptr noundef nonnull @.str.66, i32 noundef %170, ptr noundef %172, i32 noundef 5, ptr noundef nonnull @.str.72) #9
  br label %ab8500_fg_discharge_state_to.exit241

ab8500_fg_discharge_state_to.exit241:             ; preds = %if.then.i239, %sw.bb112
  %173 = ptrtoint ptr %discharge_state to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 5, ptr %discharge_state, align 8
  tail call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %di, i1 noundef zeroext false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %ab8500_fg_discharge_state_to.exit241, %if.end111, %if.then86, %if.then79, %ab8500_fg_discharge_state_to.exit235, %ab8500_fg_discharge_state_to.exit224, %ab8500_fg_discharge_state_to.exit219, %if.end40, %ab8500_fg_discharge_state_to.exit204, %if.end11.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %di, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_lock = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cc_lock, i32 noundef 0) #9
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di, align 8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.do.end46_crit_edge

if.then.do.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 8
  %fg_samples = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %4 = ptrtoint ptr %fg_samples to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fg_samples, align 4
  %conv = trunc i32 %5 to i8
  %call4 = tail call i32 @abx500_set_register_interruptible(ptr noundef %3, i8 noundef zeroext 12, i8 noundef zeroext 16, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.do.end46_crit_edge

if.end.do.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 8
  %call9 = tail call i32 @abx500_set_register_interruptible(ptr noundef %7, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.do.body_crit_edge, label %if.end7.do.end46_crit_edge

if.end7.do.end46_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else:                                          ; preds = %entry
  %call14 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else.do.end46_crit_edge

if.else.do.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end17:                                         ; preds = %if.else
  %8 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di, align 8
  %call19 = tail call i32 @abx500_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 12, i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.end46_crit_edge

if.end17.do.end46_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end22:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %di, align 8
  %call24 = tail call i32 @abx500_set_register_interruptible(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.do.body_crit_edge, label %if.end22.do.end46_crit_edge

if.end22.do.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end22.do.body_crit_edge, %if.end7.do.body_crit_edge
  %.sink = phi i8 [ 1, %if.end7.do.body_crit_edge ], [ 0, %if.end22.do.body_crit_edge ]
  %flags = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %flags, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_coulomb_counter.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_coulomb_counter, %cleanup)) #9
          to label %if.then37 [label %cleanup], !srcloc !540

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di, align 8
  %conv40 = zext i1 %enable to i32
  %fg_samples41 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 8
  %15 = ptrtoint ptr %fg_samples41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fg_samples41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_coulomb_counter.__UNIQUE_ID_ddebug289, ptr noundef %14, ptr noundef nonnull @.str.84, i32 noundef %conv40, i32 noundef %16) #9
  br label %cleanup

do.end46:                                         ; preds = %if.end22.do.end46_crit_edge, %if.end17.do.end46_crit_edge, %if.else.do.end46_crit_edge, %if.end7.do.end46_crit_edge, %if.end.do.end46_crit_edge, %if.then.do.end46_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.do.end46_crit_edge ], [ %call4, %if.end.do.end46_crit_edge ], [ %call9, %if.end7.do.end46_crit_edge ], [ %call14, %if.else.do.end46_crit_edge ], [ %call19, %if.end17.do.end46_crit_edge ], [ %call24, %if.end22.do.end46_crit_edge ]
  %17 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.then37, %do.body
  %retval.0 = phi i32 [ %ret.1, %do.end46 ], [ 0, %do.body ], [ 0, %if.then37 ]
  tail call void @mutex_unlock(ptr noundef %cc_lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_calc_cap_charging(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  %vbat.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_calc_cap_charging.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_calc_cap_charging, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !540

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di, align 8
  %mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %2 = ptrtoint ptr %mah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mah, align 4
  %accu_charge = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 9
  %4 = ptrtoint ptr %accu_charge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %accu_charge, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_calc_cap_charging.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %3, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bat_cap4 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25
  %mah5 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %6 = ptrtoint ptr %mah5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mah5, align 4
  %accu_charge6 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 9
  %8 = ptrtoint ptr %accu_charge6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %accu_charge6, align 8
  %add = add i32 %9, %7
  %10 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %11 = ptrtoint ptr %mah5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mah5, align 4
  %12 = ptrtoint ptr %bat_cap4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bat_cap4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp18.not = icmp slt i32 %10, %13
  br i1 %cmp18.not, label %lor.lhs.false, label %do.end.if.then20_crit_edge

do.end.if.then20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false:                                    ; preds = %do.end
  %force_full = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 4
  %14 = ptrtoint ptr %force_full to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %force_full, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %do.end.if.then20_crit_edge
  %16 = ptrtoint ptr %mah5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %mah5, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %lor.lhs.false.if.end25_crit_edge
  %17 = ptrtoint ptr %mah5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mah5, align 4
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i)
  %cmp8.i.i.i = icmp slt i64 %call.i.i.i, 0
  %19 = tail call i64 @llvm.abs.i64(i64 %call.i.i.i, i1 false) #9
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %19, i32 0) #13, !srcloc !542
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %20, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %20, 1
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %19, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !543
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %21, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %arrayidx.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %cond213.i.i.i, ptr %arrayidx1.i, align 8
  %arrayidx.1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %18, ptr %arrayidx.1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %cond213.i.i.i, ptr %arrayidx1.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %18, ptr %arrayidx.2.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %cond213.i.i.i, ptr %arrayidx1.2.i, align 8
  %arrayidx.3.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %18, ptr %arrayidx.3.i, align 4
  %arrayidx1.3.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 3
  %29 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %cond213.i.i.i, ptr %arrayidx1.3.i, align 8
  %arrayidx.4.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 4
  %30 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %18, ptr %arrayidx.4.i, align 4
  %arrayidx1.4.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 4
  %31 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %cond213.i.i.i, ptr %arrayidx1.4.i, align 8
  %arrayidx.5.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %18, ptr %arrayidx.5.i, align 4
  %arrayidx1.5.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 5
  %33 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %cond213.i.i.i, ptr %arrayidx1.5.i, align 8
  %arrayidx.6.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 6
  %34 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %18, ptr %arrayidx.6.i, align 4
  %arrayidx1.6.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 6
  %35 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %cond213.i.i.i, ptr %arrayidx1.6.i, align 8
  %arrayidx.7.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 7
  %36 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %18, ptr %arrayidx.7.i, align 4
  %arrayidx1.7.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 7
  %37 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %cond213.i.i.i, ptr %arrayidx1.7.i, align 8
  %arrayidx.8.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 8
  %38 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %18, ptr %arrayidx.8.i, align 4
  %arrayidx1.8.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 8
  %39 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %cond213.i.i.i, ptr %arrayidx1.8.i, align 8
  %arrayidx.9.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 9
  %40 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %18, ptr %arrayidx.9.i, align 4
  %arrayidx1.9.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 9
  %41 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %cond213.i.i.i, ptr %arrayidx1.9.i, align 8
  %arrayidx.10.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 10
  %42 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %18, ptr %arrayidx.10.i, align 4
  %arrayidx1.10.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 10
  %43 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %cond213.i.i.i, ptr %arrayidx1.10.i, align 8
  %arrayidx.11.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 11
  %44 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %18, ptr %arrayidx.11.i, align 4
  %arrayidx1.11.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 11
  %45 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %cond213.i.i.i, ptr %arrayidx1.11.i, align 8
  %arrayidx.12.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 12
  %46 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %18, ptr %arrayidx.12.i, align 4
  %arrayidx1.12.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 12
  %47 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %cond213.i.i.i, ptr %arrayidx1.12.i, align 8
  %arrayidx.13.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 13
  %48 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %18, ptr %arrayidx.13.i, align 4
  %arrayidx1.13.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 13
  %49 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %cond213.i.i.i, ptr %arrayidx1.13.i, align 8
  %arrayidx.14.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 14
  %50 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %18, ptr %arrayidx.14.i, align 4
  %arrayidx1.14.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 14
  %51 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %cond213.i.i.i, ptr %arrayidx1.14.i, align 8
  %arrayidx.15.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 15
  %52 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %18, ptr %arrayidx.15.i, align 4
  %arrayidx1.15.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 15
  %53 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %cond213.i.i.i, ptr %arrayidx1.15.i, align 8
  %arrayidx.16.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 16
  %54 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %18, ptr %arrayidx.16.i, align 4
  %arrayidx1.16.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 16
  %55 = ptrtoint ptr %arrayidx1.16.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %cond213.i.i.i, ptr %arrayidx1.16.i, align 8
  %arrayidx.17.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 17
  %56 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %18, ptr %arrayidx.17.i, align 4
  %arrayidx1.17.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 17
  %57 = ptrtoint ptr %arrayidx1.17.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %cond213.i.i.i, ptr %arrayidx1.17.i, align 8
  %arrayidx.18.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 18
  %58 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %18, ptr %arrayidx.18.i, align 4
  %arrayidx1.18.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 18
  %59 = ptrtoint ptr %arrayidx1.18.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %cond213.i.i.i, ptr %arrayidx1.18.i, align 8
  %arrayidx.19.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 19
  %60 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %18, ptr %arrayidx.19.i, align 4
  %arrayidx1.19.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 19
  %61 = ptrtoint ptr %arrayidx1.19.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %cond213.i.i.i, ptr %arrayidx1.19.i, align 8
  %avg_cap.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26
  %pos.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 3
  %62 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %pos.i, align 8
  %nbr_samples.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 4
  %63 = ptrtoint ptr %nbr_samples.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 20, ptr %nbr_samples.i, align 4
  %mul.i = mul i32 %18, 20
  %sum.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 5
  %64 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul.i, ptr %sum.i, align 8
  %65 = ptrtoint ptr %avg_cap.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %18, ptr %avg_cap.i, align 8
  %66 = ptrtoint ptr %mah5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mah5, align 4
  %mul.i1 = mul i32 %67, 1000
  %68 = ptrtoint ptr %bat_cap4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bat_cap4, align 4
  %div.i = sdiv i32 %mul.i1, %69
  %permille = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %70 = ptrtoint ptr %permille to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div.i, ptr %permille, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat.i) #9
  %71 = ptrtoint ptr %vbat.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %vbat.i, align 4, !annotation !539
  %main_bat_v.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 28
  %72 = ptrtoint ptr %main_bat_v.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %main_bat_v.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %73, ptr noundef nonnull %vbat.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #12
  %76 = load i32, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_bat_voltage.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %vbat.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vbat.i, align 4
  %mul.i2 = mul i32 %78, 1000
  store i32 %mul.i2, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_bat_voltage.exit

ab8500_fg_bat_voltage.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i3 = phi i32 [ %76, %do.end.i ], [ %mul.i2, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat.i) #9
  %vbat_uv = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 3
  %79 = ptrtoint ptr %vbat_uv to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i3, ptr %vbat_uv, align 8
  %call33 = call i32 @ab8500_fg_inst_curr_blocking(ptr noundef %di)
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 5
  %80 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call33, ptr %inst_curr_ua, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %di, i1 noundef zeroext %init) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %permille = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %0 = ptrtoint ptr %permille to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %permille, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  %cond.in.v = select i1 %cmp, i32 5, i32 -5
  %cond.in = add i32 %cond.in.v, %1
  %cond = sdiv i32 %cond.in, 10
  %bm.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %2 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm.i, align 8
  %cap_levels.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %cap_levels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cap_levels.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %7)
  %cmp8.not.i = icmp sgt i32 %cond, %7
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %entry.ab8500_fg_capacity_level.exit_crit_edge

entry.ab8500_fg_capacity_level.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_capacity_level.exit

lor.lhs.false.i:                                  ; preds = %entry
  %low_bat.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 6
  %8 = ptrtoint ptr %low_bat.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %low_bat.i, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %lor.lhs.false.i.ab8500_fg_capacity_level.exit_crit_edge

lor.lhs.false.i.ab8500_fg_capacity_level.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_capacity_level.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %low.i = getelementptr inbounds %struct.ab8500_bm_capacity_levels, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %11)
  %cmp13.not.i = icmp sgt i32 %cond, %11
  br i1 %cmp13.not.i, label %if.else16.i, label %if.else.i.ab8500_fg_capacity_level.exit_crit_edge

if.else.i.ab8500_fg_capacity_level.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_capacity_level.exit

if.else16.i:                                      ; preds = %if.else.i
  %normal.i = getelementptr inbounds %struct.ab8500_bm_capacity_levels, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %normal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %normal.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %13)
  %cmp19.not.i = icmp sgt i32 %cond, %13
  br i1 %cmp19.not.i, label %if.else22.i, label %if.else16.i.ab8500_fg_capacity_level.exit_crit_edge

if.else16.i.ab8500_fg_capacity_level.exit_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_capacity_level.exit

if.else22.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  %high.i = getelementptr inbounds %struct.ab8500_bm_capacity_levels, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %high.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %15)
  %cmp25.not.i = icmp sgt i32 %cond, %15
  %..i = select i1 %cmp25.not.i, i32 5, i32 4
  br label %ab8500_fg_capacity_level.exit

ab8500_fg_capacity_level.exit:                    ; preds = %if.else22.i, %if.else16.i.ab8500_fg_capacity_level.exit_crit_edge, %if.else.i.ab8500_fg_capacity_level.exit_crit_edge, %lor.lhs.false.i.ab8500_fg_capacity_level.exit_crit_edge, %entry.ab8500_fg_capacity_level.exit_crit_edge
  %ret.0.i = phi i32 [ 1, %lor.lhs.false.i.ab8500_fg_capacity_level.exit_crit_edge ], [ 1, %entry.ab8500_fg_capacity_level.exit_crit_edge ], [ 2, %if.else.i.ab8500_fg_capacity_level.exit_crit_edge ], [ 3, %if.else16.i.ab8500_fg_capacity_level.exit_crit_edge ], [ %..i, %if.else22.i ]
  %level = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 4
  %16 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ret.0.i, ptr %level, align 4
  %prev_level = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 7
  %17 = ptrtoint ptr %prev_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i, i32 %18)
  %cmp12.not = icmp eq i32 %ret.0.i, %18
  br i1 %cmp12.not, label %ab8500_fg_capacity_level.exit.if.end63_crit_edge, label %if.then

ab8500_fg_capacity_level.exit.if.end63_crit_edge: ; preds = %ab8500_fg_capacity_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then:                                          ; preds = %ab8500_fg_capacity_level.exit
  %charging = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 2
  %19 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %charging, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp ne i8 %20, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i, i32 %18)
  %cmp18 = icmp sle i32 %ret.0.i, %18
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp18
  %brmerge = or i1 %or.cond, %init
  br i1 %brmerge, label %do.body, label %do.body39

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_capacity_limits, %do.end)) #9
          to label %if.then30 [label %do.end], !srcloc !540

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %di, align 8
  %23 = ptrtoint ptr %prev_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prev_level, align 4
  %25 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %level, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug313, ptr noundef %22, ptr noundef nonnull @.str.91, i32 noundef %24, i32 noundef %26) #9
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  %27 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %level, align 4
  %29 = ptrtoint ptr %prev_level to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %prev_level, align 4
  br label %if.end63

do.body39:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_capacity_limits, %if.end63)) #9
          to label %if.then53 [label %if.end63], !srcloc !540

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %di, align 8
  %32 = ptrtoint ptr %prev_level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prev_level, align 4
  %34 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %level, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug314, ptr noundef %31, ptr noundef nonnull @.str.92, i32 noundef %33, i32 noundef %35) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %do.body39, %do.end, %ab8500_fg_capacity_level.exit.if.end63_crit_edge
  %changed.0.off0 = phi i1 [ true, %do.end ], [ false, %if.then53 ], [ false, %ab8500_fg_capacity_level.exit.if.end63_crit_edge ], [ false, %do.body39 ]
  %low_bat = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 6
  %36 = ptrtoint ptr %low_bat to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %low_bat, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool65.not = icmp eq i8 %37, 0
  br i1 %tobool65.not, label %if.else91, label %do.body67

do.body67:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_capacity_limits, %do.end85)) #9
          to label %if.then81 [label %do.end85], !srcloc !540

if.then81:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug315, ptr noundef %39, ptr noundef nonnull @.str.93) #9
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body67
  %prev_percent = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 6
  %40 = ptrtoint ptr %prev_percent to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %prev_percent, align 4
  %41 = ptrtoint ptr %permille to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %permille, align 4
  %prev_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 5
  %42 = ptrtoint ptr %prev_mah to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %prev_mah, align 4
  %mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %43 = ptrtoint ptr %mah to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %mah, align 4
  br label %if.then240

if.else91:                                        ; preds = %if.end63
  %fully_charged = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 3
  %44 = ptrtoint ptr %fully_charged to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fully_charged, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool93.not = icmp eq i8 %45, 0
  br i1 %tobool93.not, label %if.else157, label %if.then94

if.then94:                                        ; preds = %if.else91
  %force_full = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 4
  %46 = ptrtoint ptr %force_full to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %force_full, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool96.not = icmp eq i8 %47, 0
  %prev_percent126 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 6
  br i1 %tobool96.not, label %if.else124, label %if.then97

if.then97:                                        ; preds = %if.then94
  %48 = ptrtoint ptr %prev_percent126 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond, ptr %prev_percent126, align 4
  %mah101 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %49 = ptrtoint ptr %mah101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mah101, align 4
  %prev_mah103 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 5
  %51 = ptrtoint ptr %prev_mah103 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %prev_mah103, align 4
  %cap_scale = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9
  %52 = ptrtoint ptr %cap_scale to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cap_scale, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool105.not = icmp eq i8 %53, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %if.then97.if.then240_crit_edge

if.then97.if.then240_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then240

land.lhs.true106:                                 ; preds = %if.then97
  %54 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bm.i, align 8
  %capacity_scaling = getelementptr inbounds %struct.ab8500_bm_data, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %capacity_scaling to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %capacity_scaling, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool107.not = icmp eq i8 %57, 0
  br i1 %tobool107.not, label %land.lhs.true106.if.then240_crit_edge, label %if.then109

land.lhs.true106.if.then240_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then240

if.then109:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %cap_scale to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %cap_scale, align 4
  %cap_to_scale = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 1
  %59 = ptrtoint ptr %cap_to_scale to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 100, ptr %cap_to_scale, align 4
  %arrayidx120 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond, ptr %arrayidx120, align 4
  %disable_cap_level = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 2
  %61 = ptrtoint ptr %disable_cap_level to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 100, ptr %disable_cap_level, align 4
  br label %if.then240

if.else124:                                       ; preds = %if.then94
  %62 = ptrtoint ptr %prev_percent126 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prev_percent126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %cond)
  %cmp127.not = icmp eq i32 %63, %cond
  br i1 %cmp127.not, label %if.else124.if.end238_crit_edge, label %do.body130

if.else124.if.end238_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

do.body130:                                       ; preds = %if.else124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_capacity_limits, %do.end148)) #9
          to label %if.then144 [label %do.end148], !srcloc !540

if.then144:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug316, ptr noundef %65, ptr noundef nonnull @.str.94, i32 noundef %cond) #9
  br label %do.end148

do.end148:                                        ; preds = %if.then144, %do.body130
  %66 = ptrtoint ptr %prev_percent126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond, ptr %prev_percent126, align 4
  %mah152 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %67 = ptrtoint ptr %mah152 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mah152, align 4
  %prev_mah154 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 5
  %69 = ptrtoint ptr %prev_mah154 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %prev_mah154, align 4
  br label %if.then240

if.else157:                                       ; preds = %if.else91
  %prev_percent159 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 6
  %70 = ptrtoint ptr %prev_percent159 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %prev_percent159, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %cond)
  %cmp160.not = icmp eq i32 %71, %cond
  br i1 %cmp160.not, label %if.else157.if.end238_crit_edge, label %if.then162

if.else157.if.end238_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then162:                                       ; preds = %if.else157
  %cond.in.off = add i32 %cond.in, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond.in.off)
  %72 = icmp ult i32 %cond.in.off, 19
  br i1 %72, label %if.then165, label %if.else168

if.then165:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %prev_percent159 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %prev_percent159, align 4
  br label %if.then240

if.else168:                                       ; preds = %if.then162
  %charging170 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 2
  %74 = ptrtoint ptr %charging170 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %charging170, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool171.not = icmp ne i8 %75, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %71)
  %cmp175 = icmp sle i32 %cond, %71
  %or.cond377 = select i1 %tobool171.not, i1 true, i1 %cmp175
  %brmerge378 = or i1 %or.cond377, %init
  br i1 %brmerge378, label %do.body181, label %do.body211

do.body181:                                       ; preds = %if.else168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_capacity_limits, %do.end203)) #9
          to label %if.then195 [label %do.end203], !srcloc !540

if.then195:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %di, align 8
  %78 = ptrtoint ptr %prev_percent159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %prev_percent159, align 4
  %80 = ptrtoint ptr %permille to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %permille, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug317, ptr noundef %77, ptr noundef nonnull @.str.95, i32 noundef %79, i32 noundef %cond, i32 noundef %81) #9
  br label %do.end203

do.end203:                                        ; preds = %if.then195, %do.body181
  %82 = ptrtoint ptr %prev_percent159 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond, ptr %prev_percent159, align 4
  %mah207 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %83 = ptrtoint ptr %mah207 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mah207, align 4
  %prev_mah209 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 5
  %85 = ptrtoint ptr %prev_mah209 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %prev_mah209, align 4
  br label %if.then240

do.body211:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_capacity_limits, %if.end238)) #9
          to label %if.then225 [label %if.end238], !srcloc !540

if.then225:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %di, align 8
  %88 = ptrtoint ptr %prev_percent159 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %prev_percent159, align 4
  %90 = ptrtoint ptr %permille to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %permille, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug318, ptr noundef %87, ptr noundef nonnull @.str.96, i32 noundef %89, i32 noundef %cond, i32 noundef %91) #9
  br label %if.end238

if.end238:                                        ; preds = %if.then225, %do.body211, %if.else157.if.end238_crit_edge, %if.else124.if.end238_crit_edge
  br i1 %changed.0.off0, label %if.end238.if.then240_crit_edge, label %if.end238.if.end291_crit_edge

if.end238.if.end291_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end291

if.end238.if.then240_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then240

if.then240:                                       ; preds = %if.end238.if.then240_crit_edge, %do.end203, %if.then165, %do.end148, %if.then109, %land.lhs.true106.if.then240_crit_edge, %if.then97.if.then240_crit_edge, %do.end85
  %92 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bm.i, align 8
  %capacity_scaling242 = getelementptr inbounds %struct.ab8500_bm_data, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %capacity_scaling242 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %capacity_scaling242, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool243.not = icmp eq i8 %95, 0
  br i1 %tobool243.not, label %if.then240.if.end257_crit_edge, label %if.then244

if.then240.if.end257_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end257

if.then244:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  %call245 = tail call fastcc i32 @ab8500_fg_calculate_scaled_capacity(ptr noundef %di)
  %scaled_cap = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 3
  %96 = ptrtoint ptr %scaled_cap to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call245, ptr %scaled_cap, align 4
  %97 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %di, align 8
  %prev_percent253 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 6
  %99 = ptrtoint ptr %prev_percent253 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %prev_percent253, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.97, i32 noundef %100, i32 noundef %call245) #12
  br label %if.end257

if.end257:                                        ; preds = %if.then244, %if.then240.if.end257_crit_edge
  %fg_psy = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 30
  %101 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fg_psy, align 4
  tail call void @power_supply_changed(ptr noundef %102) #9
  %fully_charged259 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 3
  %103 = ptrtoint ptr %fully_charged259 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %fully_charged259, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool260.not = icmp eq i8 %104, 0
  br i1 %tobool260.not, label %if.end257.if.end289_crit_edge, label %land.lhs.true262

if.end257.if.end289_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end289

land.lhs.true262:                                 ; preds = %if.end257
  %force_full264 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 4
  %105 = ptrtoint ptr %force_full264 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %force_full264, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool265.not = icmp eq i8 %106, 0
  br i1 %tobool265.not, label %land.lhs.true262.if.end289_crit_edge, label %do.body268

land.lhs.true262.if.end289_crit_edge:             ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end289

do.body268:                                       ; preds = %land.lhs.true262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_check_capacity_limits, %do.end286)) #9
          to label %if.then282 [label %do.end286], !srcloc !540

if.then282:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug319, ptr noundef %108, ptr noundef nonnull @.str.99) #9
  br label %do.end286

do.end286:                                        ; preds = %if.then282, %do.body268
  %109 = ptrtoint ptr %force_full264 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %force_full264, align 4
  %fg_kobject = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 39
  tail call void @sysfs_notify(ptr noundef %fg_kobject, ptr noundef null, ptr noundef nonnull @.str.100) #9
  br label %if.end289

if.end289:                                        ; preds = %do.end286, %land.lhs.true262.if.end289_crit_edge, %if.end257.if.end289_crit_edge
  %fg_kobject290 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 39
  tail call void @sysfs_notify(ptr noundef %fg_kobject290, ptr noundef null, ptr noundef nonnull @.str.101) #9
  br label %if.end291

if.end291:                                        ; preds = %if.end289, %if.end238.if.end291_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_fg_calculate_scaled_capacity(ptr nocapture noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_scale = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9
  %prev_percent = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 6
  %0 = ptrtoint ptr %prev_percent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prev_percent, align 4
  %2 = ptrtoint ptr %cap_scale to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cap_scale, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fully_charged = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 3
  %4 = ptrtoint ptr %fully_charged to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fully_charged, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cap_to_scale = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 1
  %6 = ptrtoint ptr %cap_to_scale to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %cap_to_scale, align 4
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %7 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bm, align 8
  %fg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %fg_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fg_params, align 4
  %maint_thres = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %maint_thres to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maint_thres, align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %1, i32 %12)
  %arrayidx5 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_calculate_scaled_capacity, %if.end17)) #9
          to label %if.then11 [label %if.end17], !srcloc !540

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %di, align 8
  %17 = ptrtoint ptr %cap_to_scale to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_to_scale, align 4
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug303, ptr noundef %16, ptr noundef nonnull @.str.103, i32 noundef %18, i32 noundef %20) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then3, %if.end.if.end17_crit_edge
  %cap_to_scale18 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 1
  %21 = ptrtoint ptr %cap_to_scale18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap_to_scale18, align 4
  %arrayidx21 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp22.not = icmp ne i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25 = icmp sgt i32 %24, 0
  %or.cond = and i1 %cmp22.not, %cmp25
  br i1 %or.cond, label %if.then26, label %if.end17.if.end53_crit_edge

if.end17.if.end53_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %prev_percent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prev_percent, align 4
  %mul = mul i32 %26, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp34 = icmp sgt i32 %mul, 0
  %div199201 = lshr i32 %24, 1
  %27 = sub nsw i32 0, %div199201
  %add.pn.p = select i1 %cmp34, i32 %div199201, i32 %27
  %add.pn = add i32 %add.pn.p, %mul
  %cond45 = sdiv i32 %add.pn, %24
  %28 = tail call i32 @llvm.smin.i32(i32 %cond45, i32 100)
  br label %if.end53

if.end53:                                         ; preds = %if.then26, %if.end17.if.end53_crit_edge
  %capacity.0 = phi i32 [ %28, %if.then26 ], [ %1, %if.end17.if.end53_crit_edge ]
  %charging = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 2
  %29 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %charging, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool55.not = icmp eq i8 %30, 0
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.then56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  %disable_cap_level = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 9, i32 2
  %31 = ptrtoint ptr %disable_cap_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %disable_cap_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %capacity.0, i32 %32)
  %cmp57 = icmp slt i32 %capacity.0, %32
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %disable_cap_level to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %capacity.0, ptr %disable_cap_level, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_calculate_scaled_capacity, %cleanup)) #9
          to label %if.then75 [label %cleanup], !srcloc !540

if.then75:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %di, align 8
  %36 = ptrtoint ptr %disable_cap_level to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %disable_cap_level, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug306, ptr noundef %35, ptr noundef nonnull @.str.104, i32 noundef %37) #9
  br label %cleanup

if.else:                                          ; preds = %if.then56
  %38 = ptrtoint ptr %fully_charged to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fully_charged, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool83.not = icmp eq i8 %39, 0
  br i1 %tobool83.not, label %if.then84, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then84:                                        ; preds = %if.else
  %40 = ptrtoint ptr %prev_percent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prev_percent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %32)
  %cmp88.not = icmp slt i32 %41, %32
  br i1 %cmp88.not, label %do.body114, label %do.body91

do.body91:                                        ; preds = %if.then84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_calculate_scaled_capacity, %do.end109)) #9
          to label %if.then105 [label %do.end109], !srcloc !540

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug307, ptr noundef %43, ptr noundef nonnull @.str.105) #9
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.body91
  %44 = ptrtoint ptr %cap_scale to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cap_scale, align 4
  %45 = ptrtoint ptr %prev_percent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prev_percent, align 4
  br label %cleanup

do.body114:                                       ; preds = %if.then84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_calculate_scaled_capacity, %do.end133)) #9
          to label %if.then128 [label %do.end133], !srcloc !540

if.then128:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %di, align 8
  %49 = ptrtoint ptr %disable_cap_level to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %disable_cap_level, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug308, ptr noundef %48, ptr noundef nonnull @.str.106, i32 noundef %50) #9
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %do.body114
  %51 = ptrtoint ptr %disable_cap_level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %disable_cap_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end133, %do.end109, %if.else.cleanup_crit_edge, %if.then75, %if.then59, %if.end53.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %entry.cleanup_crit_edge ], [ %capacity.0, %if.then75 ], [ %capacity.0, %if.else.cleanup_crit_edge ], [ %46, %do.end109 ], [ %52, %do.end133 ], [ %capacity.0, %if.end53.cleanup_crit_edge ], [ %capacity.0, %if.then59 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_calc_cap_discharge_voltage(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ab8500_fg_load_comp_volt_to_capacity(ptr noundef %di)
  %bat_cap.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25
  %0 = ptrtoint ptr %bat_cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bat_cap.i, align 4
  %mul.i = mul i32 %1, %call
  %div.i = sdiv i32 %mul.i, 1000
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i)
  %cmp8.i.i.i = icmp slt i64 %call.i.i.i, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %call.i.i.i, i1 false) #9
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %2, i32 0) #13, !srcloc !542
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %2, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !543
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %pos.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 3
  %sum.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 5
  %nbr_samples.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 4
  %sub14.i = add nsw i64 %cond213.i.i.i, -2700
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %5 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos.i, align 8
  %arrayidx.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %div.i, %8
  %9 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sum.i, align 8
  %add.i = add i32 %sub.i, %10
  store i32 %add.i, ptr %sum.i, align 8
  store i32 %div.i, ptr %arrayidx.i, align 4
  %11 = load i32, ptr %pos.i, align 8
  %arrayidx5.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 %11
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %cond213.i.i.i, ptr %arrayidx5.i, align 8
  %13 = load i32, ptr %pos.i, align 8
  %inc.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 20
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i, ptr %pos.i, align 8
  %15 = ptrtoint ptr %nbr_samples.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbr_samples.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %16)
  %cmp9.i = icmp slt i32 %16, 20
  br i1 %cmp9.i, label %if.then10.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc12.i = add nsw i32 %16, 1
  %17 = ptrtoint ptr %nbr_samples.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc12.i, ptr %nbr_samples.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then10.i, %do.body.i.do.cond.i_crit_edge
  %arrayidx17.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 %spec.select.i
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx17.i, align 8
  %cmp18.i = icmp sgt i64 %sub14.i, %19
  br i1 %cmp18.i, label %do.cond.i.do.body.i_crit_edge, label %ab8500_fg_add_cap_sample.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

ab8500_fg_add_cap_sample.exit:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %avg_cap.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26
  %20 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sum.i, align 8
  %22 = ptrtoint ptr %nbr_samples.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbr_samples.i, align 4
  %div.i1 = sdiv i32 %21, %23
  %24 = ptrtoint ptr %avg_cap.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div.i1, ptr %avg_cap.i, align 8
  %mah4 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %25 = ptrtoint ptr %mah4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i1, ptr %mah4, align 4
  %mul.i2 = mul i32 %div.i1, 1000
  %26 = ptrtoint ptr %bat_cap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bat_cap.i, align 4
  %div.i4 = sdiv i32 %mul.i2, %27
  %permille9 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %28 = ptrtoint ptr %permille9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i4, ptr %permille9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_fg_calc_cap_discharge_fg(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  %vbat.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_calc_cap_discharge_fg, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !540

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di, align 8
  %mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %2 = ptrtoint ptr %mah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mah, align 4
  %accu_charge = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 9
  %4 = ptrtoint ptr %accu_charge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %accu_charge, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.112, i32 noundef %3, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bat_cap4 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25
  %mah5 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %6 = ptrtoint ptr %mah5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mah5, align 4
  %accu_charge6 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 9
  %8 = ptrtoint ptr %accu_charge6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %accu_charge6, align 8
  %add = add i32 %9, %7
  %10 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %11 = ptrtoint ptr %bat_cap4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bat_cap4, align 4
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 %12)
  %14 = ptrtoint ptr %mah5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mah5, align 4
  %mul.i = mul i32 %13, 1000
  %div.i = sdiv i32 %mul.i, %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat.i.i) #9
  %15 = ptrtoint ptr %vbat.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %vbat.i.i, align 4, !annotation !539
  %main_bat_v.i.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 28
  %16 = ptrtoint ptr %main_bat_v.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_bat_v.i.i, align 4
  %call.i.i = call i32 @iio_read_channel_processed(ptr noundef %17, ptr noundef nonnull %vbat.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #12
  %20 = load i32, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_uncomp_volt_to_capacity.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %vbat.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vbat.i.i, align 4
  %mul.i.i = mul i32 %22, 1000
  store i32 %mul.i.i, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_uncomp_volt_to_capacity.exit

ab8500_fg_uncomp_volt_to_capacity.exit:           ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %20, %do.end.i.i ], [ %mul.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat.i.i) #9
  %vbat_uv.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 3
  %23 = ptrtoint ptr %vbat_uv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i, ptr %vbat_uv.i, align 8
  %bm.i.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %24 = ptrtoint ptr %bm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bm.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %bat_temp.i.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 7
  %28 = ptrtoint ptr %bat_temp.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bat_temp.i.i, align 8
  %call.i6.i = call i32 @power_supply_batinfo_ocv2cap(ptr noundef %27, i32 noundef %retval.0.i.i, i32 noundef %29) #9
  %mul.i7.i = mul i32 %call.i6.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %mul.i7.i)
  %cmp29 = icmp slt i32 %div.i, %mul.i7.i
  br i1 %cmp29, label %if.then30, label %if.else59

if.then30:                                        ; preds = %ab8500_fg_uncomp_volt_to_capacity.exit
  %permille32 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %30 = ptrtoint ptr %permille32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i7.i, ptr %permille32, align 4
  %31 = ptrtoint ptr %bat_cap4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bat_cap4, align 4
  %mul.i5 = mul i32 %32, %mul.i7.i
  %div.i6 = sdiv i32 %mul.i5, 1000
  %33 = ptrtoint ptr %mah5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div.i6, ptr %mah5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_calc_cap_discharge_fg, %do.end56)) #9
          to label %if.then52 [label %do.end56], !srcloc !540

if.then52:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug300, ptr noundef %35, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.112, i32 noundef %div.i, i32 noundef %mul.i7.i) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %if.then30
  %36 = ptrtoint ptr %mah5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mah5, align 4
  %call.i.i.i = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i)
  %cmp8.i.i.i = icmp slt i64 %call.i.i.i, 0
  %38 = call i64 @llvm.abs.i64(i64 %call.i.i.i, i1 false) #9
  %39 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %38, i32 0) #13, !srcloc !542
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %39, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %39, 1
  %40 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %38, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !543
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %40, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %arrayidx.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 0
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 0
  %42 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %cond213.i.i.i, ptr %arrayidx1.i, align 8
  %arrayidx.1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %37, ptr %arrayidx.1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %cond213.i.i.i, ptr %arrayidx1.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %37, ptr %arrayidx.2.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 2
  %46 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %cond213.i.i.i, ptr %arrayidx1.2.i, align 8
  %arrayidx.3.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 3
  %47 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %37, ptr %arrayidx.3.i, align 4
  %arrayidx1.3.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 3
  %48 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %cond213.i.i.i, ptr %arrayidx1.3.i, align 8
  %arrayidx.4.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 4
  %49 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %37, ptr %arrayidx.4.i, align 4
  %arrayidx1.4.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 4
  %50 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %cond213.i.i.i, ptr %arrayidx1.4.i, align 8
  %arrayidx.5.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 5
  %51 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %37, ptr %arrayidx.5.i, align 4
  %arrayidx1.5.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 5
  %52 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %cond213.i.i.i, ptr %arrayidx1.5.i, align 8
  %arrayidx.6.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 6
  %53 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %37, ptr %arrayidx.6.i, align 4
  %arrayidx1.6.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 6
  %54 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %cond213.i.i.i, ptr %arrayidx1.6.i, align 8
  %arrayidx.7.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 7
  %55 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %37, ptr %arrayidx.7.i, align 4
  %arrayidx1.7.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 7
  %56 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %cond213.i.i.i, ptr %arrayidx1.7.i, align 8
  %arrayidx.8.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 8
  %57 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %37, ptr %arrayidx.8.i, align 4
  %arrayidx1.8.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 8
  %58 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %cond213.i.i.i, ptr %arrayidx1.8.i, align 8
  %arrayidx.9.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 9
  %59 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %37, ptr %arrayidx.9.i, align 4
  %arrayidx1.9.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 9
  %60 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %cond213.i.i.i, ptr %arrayidx1.9.i, align 8
  %arrayidx.10.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 10
  %61 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %37, ptr %arrayidx.10.i, align 4
  %arrayidx1.10.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 10
  %62 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %cond213.i.i.i, ptr %arrayidx1.10.i, align 8
  %arrayidx.11.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 11
  %63 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %37, ptr %arrayidx.11.i, align 4
  %arrayidx1.11.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 11
  %64 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %cond213.i.i.i, ptr %arrayidx1.11.i, align 8
  %arrayidx.12.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 12
  %65 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %arrayidx.12.i, align 4
  %arrayidx1.12.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 12
  %66 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %cond213.i.i.i, ptr %arrayidx1.12.i, align 8
  %arrayidx.13.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 13
  %67 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %37, ptr %arrayidx.13.i, align 4
  %arrayidx1.13.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 13
  %68 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %cond213.i.i.i, ptr %arrayidx1.13.i, align 8
  %arrayidx.14.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 14
  %69 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %37, ptr %arrayidx.14.i, align 4
  %arrayidx1.14.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 14
  %70 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %cond213.i.i.i, ptr %arrayidx1.14.i, align 8
  %arrayidx.15.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 15
  %71 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %37, ptr %arrayidx.15.i, align 4
  %arrayidx1.15.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 15
  %72 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %cond213.i.i.i, ptr %arrayidx1.15.i, align 8
  %arrayidx.16.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 16
  %73 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %37, ptr %arrayidx.16.i, align 4
  %arrayidx1.16.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 16
  %74 = ptrtoint ptr %arrayidx1.16.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %cond213.i.i.i, ptr %arrayidx1.16.i, align 8
  %arrayidx.17.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 17
  %75 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %37, ptr %arrayidx.17.i, align 4
  %arrayidx1.17.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 17
  %76 = ptrtoint ptr %arrayidx1.17.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %cond213.i.i.i, ptr %arrayidx1.17.i, align 8
  %arrayidx.18.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 18
  %77 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %37, ptr %arrayidx.18.i, align 4
  %arrayidx1.18.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 18
  %78 = ptrtoint ptr %arrayidx1.18.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %cond213.i.i.i, ptr %arrayidx1.18.i, align 8
  %arrayidx.19.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 19
  %79 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %37, ptr %arrayidx.19.i, align 4
  %arrayidx1.19.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 19
  %80 = ptrtoint ptr %arrayidx1.19.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %cond213.i.i.i, ptr %arrayidx1.19.i, align 8
  %avg_cap.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26
  %pos.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 3
  %81 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %pos.i, align 8
  %nbr_samples.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 4
  %82 = ptrtoint ptr %nbr_samples.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 20, ptr %nbr_samples.i, align 4
  %mul.i7 = mul i32 %37, 20
  %sum.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 5
  %83 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul.i7, ptr %sum.i, align 8
  %84 = ptrtoint ptr %avg_cap.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %37, ptr %avg_cap.i, align 8
  br label %if.end67

if.else59:                                        ; preds = %ab8500_fg_uncomp_volt_to_capacity.exit
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %mah5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mah5, align 4
  %call.i.i.i8 = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i8)
  %cmp8.i.i.i9 = icmp slt i64 %call.i.i.i8, 0
  %87 = call i64 @llvm.abs.i64(i64 %call.i.i.i8, i1 false) #9
  %88 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %87, i32 0) #13, !srcloc !542
  %asmresult.i.i.i.i10 = extractvalue { i64, i32 } %88, 0
  %asmresult4.i.i.i.i11 = extractvalue { i64, i32 } %88, 1
  %89 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %87, i64 %asmresult.i.i.i.i10, i32 %asmresult4.i.i.i.i11) #13, !srcloc !543
  %asmresult10.i.i.i.i12 = extractvalue { i64, i32 } %89, 0
  %tmp.0.i.i.i13 = lshr i64 %asmresult10.i.i.i.i12, 29
  %sub210.i.i.i14 = sub nsw i64 0, %tmp.0.i.i.i13
  %cond213.i.i.i15 = select i1 %cmp8.i.i.i9, i64 %sub210.i.i.i14, i64 %tmp.0.i.i.i13
  %arrayidx.i16 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 0
  %90 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %86, ptr %arrayidx.i16, align 4
  %arrayidx1.i17 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 0
  %91 = ptrtoint ptr %arrayidx1.i17 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.i17, align 8
  %arrayidx.1.i18 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 1
  %92 = ptrtoint ptr %arrayidx.1.i18 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %86, ptr %arrayidx.1.i18, align 4
  %arrayidx1.1.i19 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx1.1.i19 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.1.i19, align 8
  %arrayidx.2.i20 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 2
  %94 = ptrtoint ptr %arrayidx.2.i20 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %86, ptr %arrayidx.2.i20, align 4
  %arrayidx1.2.i21 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 2
  %95 = ptrtoint ptr %arrayidx1.2.i21 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.2.i21, align 8
  %arrayidx.3.i22 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 3
  %96 = ptrtoint ptr %arrayidx.3.i22 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %86, ptr %arrayidx.3.i22, align 4
  %arrayidx1.3.i23 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 3
  %97 = ptrtoint ptr %arrayidx1.3.i23 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.3.i23, align 8
  %arrayidx.4.i24 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 4
  %98 = ptrtoint ptr %arrayidx.4.i24 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %86, ptr %arrayidx.4.i24, align 4
  %arrayidx1.4.i25 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 4
  %99 = ptrtoint ptr %arrayidx1.4.i25 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.4.i25, align 8
  %arrayidx.5.i26 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 5
  %100 = ptrtoint ptr %arrayidx.5.i26 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %86, ptr %arrayidx.5.i26, align 4
  %arrayidx1.5.i27 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 5
  %101 = ptrtoint ptr %arrayidx1.5.i27 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.5.i27, align 8
  %arrayidx.6.i28 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 6
  %102 = ptrtoint ptr %arrayidx.6.i28 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %86, ptr %arrayidx.6.i28, align 4
  %arrayidx1.6.i29 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 6
  %103 = ptrtoint ptr %arrayidx1.6.i29 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.6.i29, align 8
  %arrayidx.7.i30 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 7
  %104 = ptrtoint ptr %arrayidx.7.i30 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %86, ptr %arrayidx.7.i30, align 4
  %arrayidx1.7.i31 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 7
  %105 = ptrtoint ptr %arrayidx1.7.i31 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.7.i31, align 8
  %arrayidx.8.i32 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 8
  %106 = ptrtoint ptr %arrayidx.8.i32 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %86, ptr %arrayidx.8.i32, align 4
  %arrayidx1.8.i33 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 8
  %107 = ptrtoint ptr %arrayidx1.8.i33 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.8.i33, align 8
  %arrayidx.9.i34 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 9
  %108 = ptrtoint ptr %arrayidx.9.i34 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %86, ptr %arrayidx.9.i34, align 4
  %arrayidx1.9.i35 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 9
  %109 = ptrtoint ptr %arrayidx1.9.i35 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.9.i35, align 8
  %arrayidx.10.i36 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 10
  %110 = ptrtoint ptr %arrayidx.10.i36 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %86, ptr %arrayidx.10.i36, align 4
  %arrayidx1.10.i37 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 10
  %111 = ptrtoint ptr %arrayidx1.10.i37 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.10.i37, align 8
  %arrayidx.11.i38 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 11
  %112 = ptrtoint ptr %arrayidx.11.i38 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %86, ptr %arrayidx.11.i38, align 4
  %arrayidx1.11.i39 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 11
  %113 = ptrtoint ptr %arrayidx1.11.i39 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.11.i39, align 8
  %arrayidx.12.i40 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 12
  %114 = ptrtoint ptr %arrayidx.12.i40 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %86, ptr %arrayidx.12.i40, align 4
  %arrayidx1.12.i41 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 12
  %115 = ptrtoint ptr %arrayidx1.12.i41 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.12.i41, align 8
  %arrayidx.13.i42 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 13
  %116 = ptrtoint ptr %arrayidx.13.i42 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %86, ptr %arrayidx.13.i42, align 4
  %arrayidx1.13.i43 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 13
  %117 = ptrtoint ptr %arrayidx1.13.i43 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.13.i43, align 8
  %arrayidx.14.i44 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 14
  %118 = ptrtoint ptr %arrayidx.14.i44 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %86, ptr %arrayidx.14.i44, align 4
  %arrayidx1.14.i45 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 14
  %119 = ptrtoint ptr %arrayidx1.14.i45 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.14.i45, align 8
  %arrayidx.15.i46 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 15
  %120 = ptrtoint ptr %arrayidx.15.i46 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %86, ptr %arrayidx.15.i46, align 4
  %arrayidx1.15.i47 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 15
  %121 = ptrtoint ptr %arrayidx1.15.i47 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.15.i47, align 8
  %arrayidx.16.i48 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 16
  %122 = ptrtoint ptr %arrayidx.16.i48 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %86, ptr %arrayidx.16.i48, align 4
  %arrayidx1.16.i49 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 16
  %123 = ptrtoint ptr %arrayidx1.16.i49 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.16.i49, align 8
  %arrayidx.17.i50 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 17
  %124 = ptrtoint ptr %arrayidx.17.i50 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %86, ptr %arrayidx.17.i50, align 4
  %arrayidx1.17.i51 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 17
  %125 = ptrtoint ptr %arrayidx1.17.i51 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.17.i51, align 8
  %arrayidx.18.i52 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 18
  %126 = ptrtoint ptr %arrayidx.18.i52 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %86, ptr %arrayidx.18.i52, align 4
  %arrayidx1.18.i53 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 18
  %127 = ptrtoint ptr %arrayidx1.18.i53 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.18.i53, align 8
  %arrayidx.19.i54 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 19
  %128 = ptrtoint ptr %arrayidx.19.i54 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %86, ptr %arrayidx.19.i54, align 4
  %arrayidx1.19.i55 = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 19
  %129 = ptrtoint ptr %arrayidx1.19.i55 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %cond213.i.i.i15, ptr %arrayidx1.19.i55, align 8
  %avg_cap.i56 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26
  %pos.i57 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 3
  %130 = ptrtoint ptr %pos.i57 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %pos.i57, align 8
  %nbr_samples.i58 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 4
  %131 = ptrtoint ptr %nbr_samples.i58 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 20, ptr %nbr_samples.i58, align 4
  %mul.i59 = mul i32 %86, 20
  %sum.i60 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 5
  %132 = ptrtoint ptr %sum.i60 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %mul.i59, ptr %sum.i60, align 8
  %133 = ptrtoint ptr %avg_cap.i56 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %86, ptr %avg_cap.i56, align 8
  %134 = ptrtoint ptr %mah5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mah5, align 4
  %mul.i61 = mul i32 %135, 1000
  %136 = ptrtoint ptr %bat_cap4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bat_cap4, align 4
  %div.i63 = sdiv i32 %mul.i61, %137
  %permille66 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %138 = ptrtoint ptr %permille66 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %div.i63, ptr %permille66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else59, %do.end56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_fg_load_comp_volt_to_capacity(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  %vbat.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ab8500_fg_inst_curr_start(ptr noundef %di)
  %main_bat_v.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 28
  %ab8500_fg_complete.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 23
  br label %do.body

do.body:                                          ; preds = %ab8500_fg_bat_voltage.exit.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %ab8500_fg_bat_voltage.exit.do.body_crit_edge ]
  %vbat_uv.0 = phi i32 [ 0, %entry ], [ %add, %ab8500_fg_bat_voltage.exit.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat.i) #9
  %0 = ptrtoint ptr %vbat.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vbat.i, align 4, !annotation !539
  %1 = ptrtoint ptr %main_bat_v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %main_bat_v.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %2, ptr noundef nonnull %vbat.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #12
  %5 = load i32, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_bat_voltage.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %vbat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbat.i, align 4
  %mul.i = mul i32 %7, 1000
  store i32 %mul.i, ptr @ab8500_fg_bat_voltage.prev, align 4
  br label %ab8500_fg_bat_voltage.exit

ab8500_fg_bat_voltage.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i38 = phi i32 [ %5, %do.end.i ], [ %mul.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat.i) #9
  %add = add i32 %retval.0.i38, %vbat_uv.0
  %inc = add i32 %i.0, 1
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #9
  %call.i39 = call zeroext i1 @completion_done(ptr noundef %ab8500_fg_complete.i) #9
  br i1 %call.i39, label %do.end, label %ab8500_fg_bat_voltage.exit.do.body_crit_edge

ab8500_fg_bat_voltage.exit.do.body_crit_edge:     ; preds = %ab8500_fg_bat_voltage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %ab8500_fg_bat_voltage.exit
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 5
  %call3 = call i32 @ab8500_fg_inst_curr_finalize(ptr noundef %di, ptr noundef %inst_curr_ua)
  %div = sdiv i32 %add, %inc
  %vbat_uv4 = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 3
  %8 = ptrtoint ptr %vbat_uv4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %vbat_uv4, align 8
  %bm.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %9 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bm.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %resist_table.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %resist_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resist_table.i, align 4
  %resist_table_size.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %12, i32 0, i32 24
  %15 = ptrtoint ptr %resist_table_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resist_table_size.i, align 4
  %bat_temp.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 7
  %17 = ptrtoint ptr %bat_temp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bat_temp.i, align 8
  %div.i = sdiv i32 %18, 10
  %call.i40 = call i32 @power_supply_temp2resist_simple(ptr noundef %14, i32 noundef %16, i32 noundef %div.i) #9
  %factory_internal_resistance_uohm.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %12, i32 0, i32 13
  %19 = ptrtoint ptr %factory_internal_resistance_uohm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %factory_internal_resistance_uohm.i, align 4
  %div2.i = sdiv i32 %20, 1000
  %mul.i41 = mul i32 %div2.i, %call.i40
  %div3.i = sdiv i32 %mul.i41, 100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_battery_resistance.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_load_comp_volt_to_capacity, %ab8500_fg_battery_resistance.exit)) #9
          to label %if.then.i [label %ab8500_fg_battery_resistance.exit], !srcloc !540

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %di, align 8
  %23 = ptrtoint ptr %bat_temp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bat_temp.i, align 8
  %25 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bm.i, align 8
  %fg_res.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %fg_res.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fg_res.i, align 4
  %div10.i = sdiv i32 %28, 10
  %add.i = add nsw i32 %div10.i, %div3.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_battery_resistance.__UNIQUE_ID_ddebug296, ptr noundef %22, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i32 noundef %24, i32 noundef %div3.i, i32 noundef %div10.i, i32 noundef %add.i) #9
  br label %ab8500_fg_battery_resistance.exit

ab8500_fg_battery_resistance.exit:                ; preds = %if.then.i, %do.end
  %29 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bm.i, align 8
  %fg_res15.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %fg_res15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fg_res15.i, align 4
  %div16.i = sdiv i32 %32, 10
  %add17.i = add nsw i32 %div16.i, %div3.i
  %33 = ptrtoint ptr %vbat_uv4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vbat_uv4, align 8
  %35 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inst_curr_ua, align 8
  %mul = mul i32 %36, %add17.i
  %div8.neg = sdiv i32 %mul, -1000
  %sub = add i32 %div8.neg, %34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_load_comp_volt_to_capacity.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_load_comp_volt_to_capacity, %do.end19)) #9
          to label %if.then [label %do.end19], !srcloc !540

if.then:                                          ; preds = %ab8500_fg_battery_resistance.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %di, align 8
  %39 = ptrtoint ptr %vbat_uv4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vbat_uv4, align 8
  %41 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inst_curr_ua, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_load_comp_volt_to_capacity.__UNIQUE_ID_ddebug297, ptr noundef %38, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, i32 noundef %40, i32 noundef %sub, i32 noundef %add17.i, i32 noundef %42, i32 noundef %inc) #9
  br label %do.end19

do.end19:                                         ; preds = %if.then, %ab8500_fg_battery_resistance.exit
  %43 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bm.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %bat_temp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bat_temp.i, align 8
  %call.i45 = call i32 @power_supply_batinfo_ocv2cap(ptr noundef %46, i32 noundef %sub, i32 noundef %48) #9
  %mul.i46 = mul i32 %call.i45, 10
  ret i32 %mul.i46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_temp2resist_simple(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_batinfo_ocv2cap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_sysfs_capacity(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 8
  %0 = ptrtoint ptr %user_mah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_mah, align 4
  %mul.i = mul i32 %1, 1000
  %bat_cap.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25
  %2 = ptrtoint ptr %bat_cap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bat_cap.i, align 4
  %div.i = sdiv i32 %mul.i, %3
  %permille = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %4 = ptrtoint ptr %permille to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %permille, align 4
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %6 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bm, align 8
  %fg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %fg_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fg_params, align 4
  %user_cap_limit = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %user_cap_limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %user_cap_limit, align 4
  %mul = mul i32 %11, 10
  %sub = sub i32 %5, %mul
  %add = add i32 %mul, %5
  %12 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %13 = tail call i32 @llvm.smin.i32(i32 %add, i32 1000)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_sysfs_capacity.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_sysfs_capacity, %do.end)) #9
          to label %if.then17 [label %do.end], !srcloc !540

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %di, align 8
  %mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %16 = ptrtoint ptr %mah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mah, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_sysfs_capacity.__UNIQUE_ID_ddebug324, ptr noundef %15, ptr noundef nonnull @.str.121, i32 noundef %12, i32 noundef %div.i, i32 noundef %13, i32 noundef %1, i32 noundef %17) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %12)
  %cmp20 = icmp sgt i32 %div.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %13)
  %cmp21 = icmp slt i32 %div.i, %13
  %or.cond = select i1 %cmp20, i1 %cmp21, i1 false
  br i1 %or.cond, label %do.body23, label %do.body43

do.body23:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_sysfs_capacity.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_sysfs_capacity, %do.end41)) #9
          to label %if.then37 [label %do.end41], !srcloc !540

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_sysfs_capacity.__UNIQUE_ID_ddebug325, ptr noundef %19, ptr noundef nonnull @.str.122, i32 noundef %1) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body23
  tail call fastcc void @force_capacity(ptr noundef %di)
  br label %cleanup

do.body43:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_sysfs_capacity.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_sysfs_capacity, %cleanup)) #9
          to label %if.then57 [label %cleanup], !srcloc !540

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_sysfs_capacity.__UNIQUE_ID_ddebug326, ptr noundef %21, ptr noundef nonnull @.str.123) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body43, %do.end41
  ret i1 %or.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @force_capacity(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_cap.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26
  %arrayidx2.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 0
  %0 = call ptr @memset(ptr %avg_cap.i, i32 0, i32 84)
  %1 = call ptr @memset(ptr %arrayidx2.i, i32 0, i32 172)
  %bat_cap = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25
  %user_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 8
  %2 = ptrtoint ptr %user_mah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %user_mah, align 4
  %4 = ptrtoint ptr %bat_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bat_cap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp sgt i32 %3, %5
  br i1 %cmp, label %do.body, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @force_capacity.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@force_capacity, %do.end)) #9
          to label %if.then5 [label %do.end], !srcloc !540

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 8
  %8 = ptrtoint ptr %bat_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bat_cap, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @force_capacity.__UNIQUE_ID_ddebug323, ptr noundef %7, ptr noundef nonnull @.str.125, i32 noundef %3, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %10 = ptrtoint ptr %bat_cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bat_cap, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  %cap.0 = phi i32 [ %11, %do.end ], [ %3, %entry.if.end10_crit_edge ]
  %12 = ptrtoint ptr %user_mah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %user_mah, align 4
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i)
  %cmp8.i.i.i = icmp slt i64 %call.i.i.i, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %call.i.i.i, i1 false) #9
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %14, i32 0) #13, !srcloc !542
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %14, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !543
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %16, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %arrayidx.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %cond213.i.i.i, ptr %arrayidx2.i, align 8
  %arrayidx.1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %arrayidx.1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cond213.i.i.i, ptr %arrayidx1.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %arrayidx.2.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %cond213.i.i.i, ptr %arrayidx1.2.i, align 8
  %arrayidx.3.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %13, ptr %arrayidx.3.i, align 4
  %arrayidx1.3.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %cond213.i.i.i, ptr %arrayidx1.3.i, align 8
  %arrayidx.4.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %13, ptr %arrayidx.4.i, align 4
  %arrayidx1.4.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %cond213.i.i.i, ptr %arrayidx1.4.i, align 8
  %arrayidx.5.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %13, ptr %arrayidx.5.i, align 4
  %arrayidx1.5.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 5
  %28 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %cond213.i.i.i, ptr %arrayidx1.5.i, align 8
  %arrayidx.6.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %13, ptr %arrayidx.6.i, align 4
  %arrayidx1.6.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 6
  %30 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %cond213.i.i.i, ptr %arrayidx1.6.i, align 8
  %arrayidx.7.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 7
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %13, ptr %arrayidx.7.i, align 4
  %arrayidx1.7.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 7
  %32 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %cond213.i.i.i, ptr %arrayidx1.7.i, align 8
  %arrayidx.8.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 8
  %33 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %13, ptr %arrayidx.8.i, align 4
  %arrayidx1.8.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 8
  %34 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %cond213.i.i.i, ptr %arrayidx1.8.i, align 8
  %arrayidx.9.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 9
  %35 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %13, ptr %arrayidx.9.i, align 4
  %arrayidx1.9.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 9
  %36 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %cond213.i.i.i, ptr %arrayidx1.9.i, align 8
  %arrayidx.10.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 10
  %37 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %13, ptr %arrayidx.10.i, align 4
  %arrayidx1.10.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 10
  %38 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %cond213.i.i.i, ptr %arrayidx1.10.i, align 8
  %arrayidx.11.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 11
  %39 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %13, ptr %arrayidx.11.i, align 4
  %arrayidx1.11.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 11
  %40 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %cond213.i.i.i, ptr %arrayidx1.11.i, align 8
  %arrayidx.12.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 12
  %41 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %13, ptr %arrayidx.12.i, align 4
  %arrayidx1.12.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 12
  %42 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %cond213.i.i.i, ptr %arrayidx1.12.i, align 8
  %arrayidx.13.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 13
  %43 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %13, ptr %arrayidx.13.i, align 4
  %arrayidx1.13.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 13
  %44 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %cond213.i.i.i, ptr %arrayidx1.13.i, align 8
  %arrayidx.14.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 14
  %45 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %13, ptr %arrayidx.14.i, align 4
  %arrayidx1.14.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 14
  %46 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %cond213.i.i.i, ptr %arrayidx1.14.i, align 8
  %arrayidx.15.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 15
  %47 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %13, ptr %arrayidx.15.i, align 4
  %arrayidx1.15.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 15
  %48 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %cond213.i.i.i, ptr %arrayidx1.15.i, align 8
  %arrayidx.16.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 16
  %49 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %13, ptr %arrayidx.16.i, align 4
  %arrayidx1.16.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 16
  %50 = ptrtoint ptr %arrayidx1.16.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %cond213.i.i.i, ptr %arrayidx1.16.i, align 8
  %arrayidx.17.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 17
  %51 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %13, ptr %arrayidx.17.i, align 4
  %arrayidx1.17.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 17
  %52 = ptrtoint ptr %arrayidx1.17.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %cond213.i.i.i, ptr %arrayidx1.17.i, align 8
  %arrayidx.18.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 18
  %53 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %13, ptr %arrayidx.18.i, align 4
  %arrayidx1.18.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 18
  %54 = ptrtoint ptr %arrayidx1.18.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %cond213.i.i.i, ptr %arrayidx1.18.i, align 8
  %arrayidx.19.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 1, i32 19
  %55 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %13, ptr %arrayidx.19.i, align 4
  %arrayidx1.19.i = getelementptr %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 2, i32 19
  %56 = ptrtoint ptr %arrayidx1.19.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %cond213.i.i.i, ptr %arrayidx1.19.i, align 8
  %pos.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 3
  %57 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %pos.i, align 8
  %nbr_samples.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 4
  %58 = ptrtoint ptr %nbr_samples.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 20, ptr %nbr_samples.i, align 4
  %mul.i = mul i32 %13, 20
  %sum.i = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 26, i32 5
  %59 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul.i, ptr %sum.i, align 8
  %60 = ptrtoint ptr %avg_cap.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %13, ptr %avg_cap.i, align 8
  %mul.i31 = mul i32 %cap.0, 1000
  %61 = ptrtoint ptr %bat_cap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bat_cap, align 4
  %div.i = sdiv i32 %mul.i31, %62
  %permille = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 3
  %63 = ptrtoint ptr %permille to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div.i, ptr %permille, align 4
  %mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 2
  %64 = ptrtoint ptr %mah to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cap.0, ptr %mah, align 4
  tail call fastcc void @ab8500_fg_check_capacity_limits(ptr noundef %di, i1 noundef zeroext true)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_fg_battok_init_hw_register(ptr nocapture noundef readonly %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 29
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 8
  %fg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fg_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fg_params, align 4
  %battok_falling_th_sel0 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %battok_falling_th_sel0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %battok_falling_th_sel0, align 4
  %battok_raising_th_sel1 = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %battok_raising_th_sel1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %battok_raising_th_sel1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3060, i32 %5)
  %cmp.i = icmp sgt i32 %5, 3060
  br i1 %cmp.i, label %entry.ab8500_fg_battok_calc.exit_crit_edge, label %if.end.i

entry.ab8500_fg_battok_calc.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_battok_calc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2360, i32 %5)
  %cmp1.i = icmp slt i32 %5, 2360
  br i1 %cmp1.i, label %if.end.i.ab8500_fg_battok_calc.exit_crit_edge, label %if.end3.i

if.end.i.ab8500_fg_battok_calc.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_battok_calc.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = trunc i32 %5 to i16
  %div1.lhs.trunc.i = add nsw i16 %8, -2360
  %div12.i = udiv i16 %div1.lhs.trunc.i, 50
  %div1.zext.i = zext i16 %div12.i to i32
  br label %ab8500_fg_battok_calc.exit

ab8500_fg_battok_calc.exit:                       ; preds = %if.end3.i, %if.end.i.ab8500_fg_battok_calc.exit_crit_edge, %entry.ab8500_fg_battok_calc.exit_crit_edge
  %retval.0.i47 = phi i32 [ %div1.zext.i, %if.end3.i ], [ 14, %entry.ab8500_fg_battok_calc.exit_crit_edge ], [ 0, %if.end.i.ab8500_fg_battok_calc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3060, i32 %7)
  %cmp.i48 = icmp sgt i32 %7, 3060
  br i1 %cmp.i48, label %ab8500_fg_battok_calc.exit.ab8500_fg_battok_calc.exit56_crit_edge, label %if.end.i50

ab8500_fg_battok_calc.exit.ab8500_fg_battok_calc.exit56_crit_edge: ; preds = %ab8500_fg_battok_calc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_battok_calc.exit56

if.end.i50:                                       ; preds = %ab8500_fg_battok_calc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2360, i32 %7)
  %cmp1.i49 = icmp slt i32 %7, 2360
  br i1 %cmp1.i49, label %if.end.i50.ab8500_fg_battok_calc.exit56_crit_edge, label %if.end3.i54

if.end.i50.ab8500_fg_battok_calc.exit56_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %ab8500_fg_battok_calc.exit56

if.end3.i54:                                      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #11
  %9 = trunc i32 %7 to i16
  %div1.lhs.trunc.i51 = add nsw i16 %9, -2360
  %div12.i52 = udiv i16 %div1.lhs.trunc.i51, 50
  %div1.zext.i53 = zext i16 %div12.i52 to i32
  br label %ab8500_fg_battok_calc.exit56

ab8500_fg_battok_calc.exit56:                     ; preds = %if.end3.i54, %if.end.i50.ab8500_fg_battok_calc.exit56_crit_edge, %ab8500_fg_battok_calc.exit.ab8500_fg_battok_calc.exit56_crit_edge
  %retval.0.i55 = phi i32 [ %div1.zext.i53, %if.end3.i54 ], [ 14, %ab8500_fg_battok_calc.exit.ab8500_fg_battok_calc.exit56_crit_edge ], [ 0, %if.end.i50.ab8500_fg_battok_calc.exit56_crit_edge ]
  %mul = mul nuw nsw i32 %retval.0.i47, 50
  %add = add nuw nsw i32 %mul, 2360
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp eq i32 %add, %5
  br i1 %cmp.not, label %ab8500_fg_battok_calc.exit56.if.end_crit_edge, label %do.end

ab8500_fg_battok_calc.exit56.if.end_crit_edge:    ; preds = %ab8500_fg_battok_calc.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %ab8500_fg_battok_calc.exit56
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.165, i32 noundef %5, i32 noundef %add, i32 noundef %retval.0.i47) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %ab8500_fg_battok_calc.exit56.if.end_crit_edge
  %mul4 = mul nuw nsw i32 %retval.0.i55, 50
  %add5 = add nuw nsw i32 %mul4, 2360
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %7)
  %cmp6.not = icmp eq i32 %add5, %7
  br i1 %cmp6.not, label %if.end.if.end12_crit_edge, label %do.end10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.165, i32 noundef %7, i32 noundef %add5, i32 noundef %retval.0.i55) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end.if.end12_crit_edge
  %shl = shl nuw nsw i32 %retval.0.i55, 4
  %or = or i32 %shl, %retval.0.i47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_battok_init_hw_register.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_battok_init_hw_register, %do.end22)) #9
          to label %if.then18 [label %do.end22], !srcloc !540

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_battok_init_hw_register.__UNIQUE_ID_ddebug334, ptr noundef %15, ptr noundef nonnull @.str.169, i32 noundef %or, i32 noundef %retval.0.i47, i32 noundef %retval.0.i55) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %if.end12
  %16 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %di, align 8
  %conv = trunc i32 %or to i8
  %call24 = tail call i32 @abx500_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 4, i8 noundef zeroext %conv) #9
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 17, label %sw.bb1
    i32 18, label %sw.bb2
    i32 41, label %sw.bb3
    i32 43, label %sw.bb5
    i32 45, label %sw.bb8
    i32 22, label %sw.bb23
    i32 24, label %sw.bb26
    i32 26, label %sw.bb29
    i32 47, label %sw.bb48
    i32 51, label %sw.bb64
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %bat_ovv = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 7
  %1 = ptrtoint ptr %bat_ovv to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bat_ovv, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %vbat_uv = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %vbat_uv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vbat_uv, align 8
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst_curr_ua, align 8
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %avg_curr_ua = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %avg_curr_ua to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avg_curr_ua, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bat_cap = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25
  %9 = ptrtoint ptr %bat_cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bat_cap, align 4
  %conv.i = sext i32 %10 to i64
  %vbat_nom_uv.i = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %vbat_nom_uv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vbat_nom_uv.i, align 4
  %conv1.i = sext i32 %12 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  %conv17.i = trunc i64 %mul.i to i32
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i) #13, !srcloc !544
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i, i64 %13, i32 0) #13, !srcloc !543
  %asmresult10.i.i = extractvalue { i64, i32 } %14, 0
  %div162268.i = lshr i64 %asmresult10.i.i, 18
  %conv163.i = trunc i64 %div162268.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999, i32 %sub165.i)
  %cmp184.i = icmp ugt i32 %sub165.i, 499999
  %extract.t.i = zext i1 %cmp184.i to i32
  %spec.select.i = add i32 %extract.t.i, %conv163.i
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_mah = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 1
  %15 = ptrtoint ptr %max_mah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_mah, align 4
  %conv.i124 = sext i32 %16 to i64
  %vbat_nom_uv.i125 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %vbat_nom_uv.i125 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbat_nom_uv.i125, align 4
  %conv1.i126 = sext i32 %18 to i64
  %mul.i127 = mul nsw i64 %conv1.i126, %conv.i124
  %conv17.i128 = trunc i64 %mul.i127 to i32
  %19 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i127) #13, !srcloc !544
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i127, i64 %19, i32 0) #13, !srcloc !543
  %asmresult10.i.i129 = extractvalue { i64, i32 } %20, 0
  %div162268.i130 = lshr i64 %asmresult10.i.i129, 18
  %conv163.i131 = trunc i64 %div162268.i130 to i32
  %mul164.neg.i132 = mul i32 %conv163.i131, -1000000
  %sub165.i133 = add i32 %mul164.neg.i132, %conv17.i128
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999, i32 %sub165.i133)
  %cmp184.i134 = icmp ugt i32 %sub165.i133, 499999
  %extract.t.i135 = zext i1 %cmp184.i134 to i32
  %spec.select.i136 = add i32 %extract.t.i135, %conv163.i131
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  %batt_unknown = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 8
  %21 = ptrtoint ptr %batt_unknown to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %batt_unknown, align 8, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not = icmp eq i8 %22, 0
  br i1 %tobool10.not, label %sw.bb8.if.else19_crit_edge, label %land.lhs.true

sw.bb8.if.else19_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true:                                    ; preds = %sw.bb8
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 29
  %23 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bm, align 8
  %chg_unknown_bat = getelementptr inbounds %struct.ab8500_bm_data, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %chg_unknown_bat to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chg_unknown_bat, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool11.not = icmp eq i8 %26, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true.if.else19_crit_edge

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true12:                                  ; preds = %land.lhs.true
  %batt_id_received = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 11
  %27 = ptrtoint ptr %batt_id_received to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %batt_id_received, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool14.not = icmp eq i8 %28, 0
  br i1 %tobool14.not, label %land.lhs.true12.if.else19_crit_edge, label %if.then15

land.lhs.true12.if.else19_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  %max_mah17 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 1
  %29 = ptrtoint ptr %max_mah17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_mah17, align 4
  %call18 = tail call fastcc i32 @ab8500_fg_convert_mah_to_uwh(ptr noundef %call, i32 noundef %30)
  br label %cleanup.sink.split

if.else19:                                        ; preds = %land.lhs.true12.if.else19_crit_edge, %land.lhs.true.if.else19_crit_edge, %sw.bb8.if.else19_crit_edge
  %prev_mah = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 5
  %31 = ptrtoint ptr %prev_mah to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prev_mah, align 4
  %conv.i137 = sext i32 %32 to i64
  %vbat_nom_uv.i138 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 4
  %33 = ptrtoint ptr %vbat_nom_uv.i138 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vbat_nom_uv.i138, align 4
  %conv1.i139 = sext i32 %34 to i64
  %mul.i140 = mul nsw i64 %conv1.i139, %conv.i137
  %conv17.i141 = trunc i64 %mul.i140 to i32
  %35 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i140) #13, !srcloc !544
  %36 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i140, i64 %35, i32 0) #13, !srcloc !543
  %asmresult10.i.i142 = extractvalue { i64, i32 } %36, 0
  %div162268.i143 = lshr i64 %asmresult10.i.i142, 18
  %conv163.i144 = trunc i64 %div162268.i143 to i32
  %mul164.neg.i145 = mul i32 %conv163.i144, -1000000
  %sub165.i146 = add i32 %mul164.neg.i145, %conv17.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999, i32 %sub165.i146)
  %cmp184.i147 = icmp ugt i32 %sub165.i146, 499999
  %extract.t.i148 = zext i1 %cmp184.i147 to i32
  %spec.select.i149 = add i32 %extract.t.i148, %conv163.i144
  br label %cleanup.sink.split

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bat_cap24 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25
  %37 = ptrtoint ptr %bat_cap24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bat_cap24, align 4
  br label %cleanup.sink.split

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_mah28 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 1
  %39 = ptrtoint ptr %max_mah28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_mah28, align 4
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %entry
  %batt_unknown31 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 8
  %41 = ptrtoint ptr %batt_unknown31 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %batt_unknown31, align 8, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool32.not = icmp eq i8 %42, 0
  br i1 %tobool32.not, label %sw.bb29.if.else44_crit_edge, label %land.lhs.true33

sw.bb29.if.else44_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44

land.lhs.true33:                                  ; preds = %sw.bb29
  %bm34 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 29
  %43 = ptrtoint ptr %bm34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bm34, align 8
  %chg_unknown_bat35 = getelementptr inbounds %struct.ab8500_bm_data, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %chg_unknown_bat35 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %chg_unknown_bat35, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool36.not = icmp eq i8 %46, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true33.if.else44_crit_edge

land.lhs.true33.if.else44_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %batt_id_received39 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 11
  %47 = ptrtoint ptr %batt_id_received39 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %batt_id_received39, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool40.not = icmp eq i8 %48, 0
  br i1 %tobool40.not, label %land.lhs.true37.if.else44_crit_edge, label %if.then41

land.lhs.true37.if.else44_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %max_mah43 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 1
  %49 = ptrtoint ptr %max_mah43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_mah43, align 4
  br label %cleanup.sink.split

if.else44:                                        ; preds = %land.lhs.true37.if.else44_crit_edge, %land.lhs.true33.if.else44_crit_edge, %sw.bb29.if.else44_crit_edge
  %prev_mah46 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 5
  %51 = ptrtoint ptr %prev_mah46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %prev_mah46, align 4
  br label %cleanup.sink.split

sw.bb48:                                          ; preds = %entry
  %batt_unknown50 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 8
  %53 = ptrtoint ptr %batt_unknown50 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %batt_unknown50, align 8, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool51.not = icmp eq i8 %54, 0
  br i1 %tobool51.not, label %sw.bb48.if.else61_crit_edge, label %land.lhs.true52

sw.bb48.if.else61_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

land.lhs.true52:                                  ; preds = %sw.bb48
  %bm53 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 29
  %55 = ptrtoint ptr %bm53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bm53, align 8
  %chg_unknown_bat54 = getelementptr inbounds %struct.ab8500_bm_data, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %chg_unknown_bat54 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %chg_unknown_bat54, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool55.not = icmp eq i8 %58, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %land.lhs.true52.if.else61_crit_edge

land.lhs.true52.if.else61_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %batt_id_received58 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 11
  %59 = ptrtoint ptr %batt_id_received58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %batt_id_received58, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool59.not = icmp eq i8 %60, 0
  br i1 %tobool59.not, label %land.lhs.true56.if.else61_crit_edge, label %land.lhs.true56.cleanup.sink.split_crit_edge

land.lhs.true56.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true56.if.else61_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

if.else61:                                        ; preds = %land.lhs.true56.if.else61_crit_edge, %land.lhs.true52.if.else61_crit_edge, %sw.bb48.if.else61_crit_edge
  %prev_percent = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 6
  %61 = ptrtoint ptr %prev_percent to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %prev_percent, align 4
  br label %cleanup.sink.split

sw.bb64:                                          ; preds = %entry
  %batt_unknown66 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 8
  %63 = ptrtoint ptr %batt_unknown66 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %batt_unknown66, align 8, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool67.not = icmp eq i8 %64, 0
  br i1 %tobool67.not, label %sw.bb64.if.else77_crit_edge, label %land.lhs.true68

sw.bb64.if.else77_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else77

land.lhs.true68:                                  ; preds = %sw.bb64
  %bm69 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 29
  %65 = ptrtoint ptr %bm69 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bm69, align 8
  %chg_unknown_bat70 = getelementptr inbounds %struct.ab8500_bm_data, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %chg_unknown_bat70 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %chg_unknown_bat70, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool71.not = icmp eq i8 %68, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %land.lhs.true68.if.else77_crit_edge

land.lhs.true68.if.else77_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else77

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %batt_id_received74 = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 24, i32 11
  %69 = ptrtoint ptr %batt_id_received74 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %batt_id_received74, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool75.not = icmp eq i8 %70, 0
  br i1 %tobool75.not, label %land.lhs.true72.if.else77_crit_edge, label %land.lhs.true72.cleanup.sink.split_crit_edge

land.lhs.true72.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true72.if.else77_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else77

if.else77:                                        ; preds = %land.lhs.true72.if.else77_crit_edge, %land.lhs.true68.if.else77_crit_edge, %sw.bb64.if.else77_crit_edge
  %prev_level = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 25, i32 7
  %71 = ptrtoint ptr %prev_level to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %prev_level, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else77, %land.lhs.true72.cleanup.sink.split_crit_edge, %if.else61, %land.lhs.true56.cleanup.sink.split_crit_edge, %if.else44, %if.then41, %sw.bb26, %sw.bb23, %if.else19, %if.then15, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %if.else, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %6, %sw.bb1 ], [ %8, %sw.bb2 ], [ %spec.select.i, %sw.bb3 ], [ %spec.select.i136, %sw.bb5 ], [ %38, %sw.bb23 ], [ %40, %sw.bb26 ], [ %4, %if.else ], [ %spec.select.i149, %if.else19 ], [ %call18, %if.then15 ], [ %52, %if.else44 ], [ %50, %if.then41 ], [ %62, %if.else61 ], [ %72, %if.else77 ], [ 4750000, %sw.bb.cleanup.sink.split_crit_edge ], [ 100, %land.lhs.true56.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true72.cleanup.sink.split_crit_edge ]
  %73 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_external_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @power_supply_class to i32))
  %0 = load ptr, ptr @power_supply_class, align 4
  %fg_psy = getelementptr inbounds %struct.ab8500_fg, ptr %call, i32 0, i32 30
  %1 = ptrtoint ptr %fg_psy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fg_psy, align 4
  %call1 = tail call i32 @class_for_each_device(ptr noundef %0, ptr noundef null, ptr noundef %2, ptr noundef nonnull @ab8500_fg_get_ext_psy_data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_fg_convert_mah_to_uwh(ptr nocapture noundef readonly %di, i32 noundef %cap_mah) unnamed_addr #5 align 64 {
if.end182:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %cap_mah to i64
  %vbat_nom_uv = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 4
  %0 = ptrtoint ptr %vbat_nom_uv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vbat_nom_uv, align 4
  %conv1 = sext i32 %1 to i64
  %mul = mul nsw i64 %conv1, %conv
  %conv17 = trunc i64 %mul to i32
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #13, !srcloc !544
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %2, i32 0) #13, !srcloc !543
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %div162268 = lshr i64 %asmresult10.i, 18
  %conv163 = trunc i64 %div162268 to i32
  %mul164.neg = mul i32 %conv163, -1000000
  %sub165 = add i32 %mul164.neg, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999, i32 %sub165)
  %cmp184 = icmp ugt i32 %sub165, 499999
  %extract.t = zext i1 %cmp184 to i32
  %spec.select = add i32 %extract.t, %conv163
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_get_ext_psy_data(ptr nocapture noundef readonly %dev, ptr noundef %data) #2 align 64 {
entry:
  %ret = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supplied_to, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #9
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ret, align 4, !annotation !539
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %data) #9
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 29
  %5 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bm, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_supplicants, align 8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call3 = tail call i32 @match_string(ptr noundef %3, i32 noundef %10, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup104_crit_edge, label %for.cond.preheader

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

for.cond.preheader:                               ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %num_properties187 = getelementptr inbounds %struct.power_supply_desc, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %num_properties187 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_properties187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5188.not = icmp eq i32 %18, 0
  br i1 %cmp5188.not, label %for.cond.preheader.cleanup104_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup104_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %batt_id_received96 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 24, i32 11
  %bat_temp = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 7
  %tobool66.not = icmp eq ptr %8, null
  %bat_cap75 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25
  %max_mah79 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 1
  %vbat_nom_uv = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 4
  %batt_unknown = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 24, i32 8
  %charging39 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 24, i32 2
  %fully_charged42 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 24, i32 3
  %cap_scale.i162 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 9
  %scaled_cap16.i166 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 9, i32 3
  %disable_cap_level.i168 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 9, i32 2
  %fg_wq55 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 31
  %fg_work56 = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 35
  %force_full = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 24, i32 4
  %mah = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 2
  %cap_to_scale23.i = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 9, i32 1
  %prev_percent.i = getelementptr inbounds %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 6
  %19 = getelementptr %struct.ab8500_fg, ptr %call1, i32 0, i32 25, i32 9, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %20 = phi ptr [ %16, %for.body.lr.ph ], [ %130, %cleanup.for.body_crit_edge ]
  %j.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %properties, align 4
  %arrayidx = getelementptr i32, ptr %22, i32 %j.0189
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %call7 = call i32 @power_supply_get_property(ptr noundef %1, i32 noundef %24, ptr noundef nonnull %ret) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %24, label %if.end9.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 6, label %sw.bb59
    i32 52, label %sw.bb91
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cond112 = icmp eq i32 %29, 1
  br i1 %cond112, label %sw.bb11, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ret, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %31, label %sw.bb11.cleanup_crit_edge [
    i32 0, label %sw.bb11.sw.bb12_crit_edge
    i32 2, label %sw.bb11.sw.bb12_crit_edge190
    i32 3, label %sw.bb11.sw.bb12_crit_edge191
    i32 4, label %sw.bb24
    i32 1, label %sw.bb37
  ]

sw.bb11.sw.bb12_crit_edge191:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

sw.bb11.sw.bb12_crit_edge190:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

sw.bb11.sw.bb12_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb11.sw.bb12_crit_edge, %sw.bb11.sw.bb12_crit_edge190, %sw.bb11.sw.bb12_crit_edge191
  %33 = ptrtoint ptr %charging39 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %charging39, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool13.not = icmp eq i8 %34, 0
  br i1 %tobool13.not, label %sw.bb12.cleanup_crit_edge, label %if.end15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  %35 = ptrtoint ptr %charging39 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %charging39, align 2
  %36 = ptrtoint ptr %fully_charged42 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %fully_charged42, align 1
  %37 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bm, align 8
  %capacity_scaling = getelementptr inbounds %struct.ab8500_bm_data, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %capacity_scaling to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %capacity_scaling, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool20.not = icmp eq i8 %40, 0
  br i1 %tobool20.not, label %if.end15.if.end22_crit_edge, label %if.then21

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %if.end15
  %41 = ptrtoint ptr %cap_scale.i162 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cap_scale.i162, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.then21.if.end22_crit_edge, label %if.else.i

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else.i:                                        ; preds = %if.then21
  %43 = ptrtoint ptr %scaled_cap16.i166 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scaled_cap16.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 100
  br i1 %cmp.not.i, label %if.else22.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %cap_to_scale23.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %cap_to_scale23.i, align 4
  %46 = ptrtoint ptr %prev_percent.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %prev_percent.i, align 4
  br label %do.body32.i

if.else22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %cap_to_scale23.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 100, ptr %cap_to_scale23.i, align 4
  %49 = ptrtoint ptr %prev_percent.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prev_percent.i, align 4
  %fg_params.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %38, i32 0, i32 23
  %51 = ptrtoint ptr %fg_params.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fg_params.i, align 4
  %maint_thres.i = getelementptr inbounds %struct.ab8500_fg_parameters, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %maint_thres.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maint_thres.i, align 4
  %55 = call i32 @llvm.smax.i32(i32 %50, i32 %54) #9
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.else22.i, %if.then17.i
  %.sink.i = phi i32 [ %55, %if.else22.i ], [ %47, %if.then17.i ]
  %56 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink.i, ptr %19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_get_ext_psy_data, %if.end22)) #9
          to label %if.then46.i [label %if.end22], !srcloc !540

if.then46.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call1, align 8
  %59 = ptrtoint ptr %cap_to_scale23.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cap_to_scale23.i, align 4
  %61 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug312, ptr noundef %58, ptr noundef nonnull @.str.172, i32 noundef %60, i32 noundef %62) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then46.i, %do.body32.i, %if.then21.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %63 = ptrtoint ptr %fg_wq55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fg_wq55, align 8
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %fg_work56) #9
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb11
  %65 = ptrtoint ptr %fully_charged42 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fully_charged42, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool27.not = icmp eq i8 %66, 0
  br i1 %tobool27.not, label %if.end29, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %fully_charged42 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %fully_charged42, align 1
  %68 = ptrtoint ptr %force_full to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %force_full, align 4
  %69 = ptrtoint ptr %mah to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mah, align 4
  %71 = ptrtoint ptr %max_mah79 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %max_mah79, align 4
  %72 = ptrtoint ptr %fg_wq55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fg_wq55, align 8
  %call.i161 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %fg_work56) #9
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb11
  %74 = ptrtoint ptr %charging39 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %charging39, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool40.not = icmp eq i8 %75, 0
  br i1 %tobool40.not, label %sw.bb37.if.end45_crit_edge, label %land.lhs.true

sw.bb37.if.end45_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %sw.bb37
  %76 = ptrtoint ptr %fully_charged42 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %fully_charged42, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool43.not = icmp eq i8 %77, 0
  br i1 %tobool43.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %sw.bb37.if.end45_crit_edge
  %78 = ptrtoint ptr %charging39 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %charging39, align 2
  %79 = ptrtoint ptr %fully_charged42 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %fully_charged42, align 1
  %80 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bm, align 8
  %capacity_scaling51 = getelementptr inbounds %struct.ab8500_bm_data, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %capacity_scaling51 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %capacity_scaling51, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool52.not = icmp eq i8 %83, 0
  br i1 %tobool52.not, label %if.end45.if.end54_crit_edge, label %if.then53

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then53:                                        ; preds = %if.end45
  %84 = ptrtoint ptr %cap_scale.i162 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %cap_scale.i162, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i163 = icmp eq i8 %85, 0
  br i1 %tobool.not.i163, label %if.then53.if.end54_crit_edge, label %if.then2.i169

if.then53.if.end54_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then2.i169:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %scaled_cap16.i166 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %scaled_cap16.i166, align 4
  %88 = ptrtoint ptr %disable_cap_level.i168 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %disable_cap_level.i168, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_get_ext_psy_data, %if.end54)) #9
          to label %if.then11.i170 [label %if.end54], !srcloc !540

if.then11.i170:                                   ; preds = %if.then2.i169
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call1, align 8
  %91 = ptrtoint ptr %disable_cap_level.i168 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %disable_cap_level.i168, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug309, ptr noundef %90, ptr noundef nonnull @.str.171, i32 noundef %92) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then11.i170, %if.then2.i169, %if.then53.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  %93 = ptrtoint ptr %fg_wq55 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fg_wq55, align 8
  %call.i186 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %94, ptr noundef %fg_work56) #9
  br label %cleanup

sw.bb59:                                          ; preds = %if.end9
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 8
  %type61 = getelementptr inbounds %struct.power_supply_desc, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %type61 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cond111 = icmp eq i32 %98, 1
  br i1 %cond111, label %sw.bb62, label %sw.bb59.cleanup_crit_edge

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb62:                                          ; preds = %sw.bb59
  %99 = ptrtoint ptr %batt_id_received96 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %batt_id_received96, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool64.not = icmp ne i8 %100, 0
  %or.cond = select i1 %tobool64.not, i1 true, i1 %tobool66.not
  br i1 %or.cond, label %sw.bb62.if.end82_crit_edge, label %land.lhs.true67

sw.bb62.if.end82_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

land.lhs.true67:                                  ; preds = %sw.bb62
  %101 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp68.not = icmp eq i32 %102, 0
  br i1 %cmp68.not, label %land.lhs.true67.if.end82_crit_edge, label %if.then69

land.lhs.true67.if.end82_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %batt_id_received96 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %batt_id_received96, align 1
  %104 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bm, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %charge_full_design_uah = getelementptr inbounds %struct.power_supply_battery_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %charge_full_design_uah to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %charge_full_design_uah, align 4
  %110 = ptrtoint ptr %bat_cap75 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %bat_cap75, align 4
  %111 = ptrtoint ptr %max_mah79 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %109, ptr %max_mah79, align 4
  %112 = load ptr, ptr %105, align 4
  %voltage_max_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %voltage_max_design_uv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %voltage_max_design_uv, align 4
  %115 = ptrtoint ptr %vbat_nom_uv to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %vbat_nom_uv, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then69, %land.lhs.true67.if.end82_crit_edge, %sw.bb62.if.end82_crit_edge
  %116 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool83.not = icmp eq i32 %117, 0
  br i1 %tobool83.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %batt_unknown to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %batt_unknown, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %batt_unknown to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %batt_unknown, align 8
  br label %cleanup

sw.bb91:                                          ; preds = %if.end9
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 8
  %type93 = getelementptr inbounds %struct.power_supply_desc, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %type93 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cond = icmp eq i32 %123, 1
  br i1 %cond, label %sw.bb94, label %sw.bb91.cleanup_crit_edge

sw.bb91.cleanup_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb94:                                          ; preds = %sw.bb91
  %124 = ptrtoint ptr %batt_id_received96 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %batt_id_received96, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool97.not = icmp eq i8 %125, 0
  br i1 %tobool97.not, label %sw.bb94.cleanup_crit_edge, label %if.then98

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then98:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ret, align 4
  %128 = ptrtoint ptr %bat_temp to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %bat_temp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %sw.bb94.cleanup_crit_edge, %sw.bb91.cleanup_crit_edge, %if.else, %if.then84, %sw.bb59.cleanup_crit_edge, %if.end54, %land.lhs.true.cleanup_crit_edge, %if.end29, %sw.bb24.cleanup_crit_edge, %if.end22, %sw.bb12.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %j.0189, 1
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_properties, align 4
  %cmp5 = icmp ult i32 %inc, %132
  br i1 %cmp5, label %cleanup.for.body_crit_edge, label %cleanup.cleanup104_crit_edge

cleanup.cleanup104_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup104:                                       ; preds = %cleanup.cleanup104_crit_edge, %for.cond.preheader.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_cc_convend_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 31
  %0 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fg_wq, align 8
  %fg_acc_cur_work = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 36
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %fg_acc_cur_work) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_batt_ovv_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_batt_ovv_handler.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_batt_ovv_handler, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !540

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_batt_ovv_handler.__UNIQUE_ID_ddebug335, ptr noundef %1, ptr noundef nonnull @.str.137) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 31
  %2 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fg_wq, align 8
  %fg_check_hw_failure_work = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 37
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %fg_check_hw_failure_work, i32 noundef 0) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_lowbatf_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %low_bat_delay = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 24, i32 5
  %0 = ptrtoint ptr %low_bat_delay to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %low_bat_delay, align 1, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_di, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.179) #12
  %4 = ptrtoint ptr %low_bat_delay to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %low_bat_delay, align 1
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 31
  %5 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fg_wq, align 8
  %fg_low_bat_work = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 33
  %call = tail call i32 @round_jiffies(i32 noundef 6) #9
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %fg_low_bat_work, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_cc_int_calib_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %calib_state = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 19
  %0 = ptrtoint ptr %calib_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %calib_state, align 4
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 31
  %1 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fg_wq, align 8
  %fg_periodic_work = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 32
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %fg_periodic_work, i32 noundef 0) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_cc_data_end_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nbr_cceoc_irq_cnt = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 14
  %0 = ptrtoint ptr %nbr_cceoc_irq_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbr_cceoc_irq_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %nbr_cceoc_irq_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nbr_cceoc_irq_cnt, align 4
  %ab8500_fg_started = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 22
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %nbr_cceoc_irq_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nbr_cceoc_irq_cnt, align 4
  %ab8500_fg_complete = getelementptr inbounds %struct.ab8500_fg, ptr %_di, i32 0, i32 23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ab8500_fg_complete.sink = phi ptr [ %ab8500_fg_complete, %if.else ], [ %ab8500_fg_started, %if.then ]
  tail call void @complete(ptr noundef %ab8500_fg_complete.sink) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.ab8500_fg_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -1128
  %call = tail call i32 %1(ptr noundef %add.ptr4, ptr noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.ab8500_fg_sysfs_entry, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -1128
  %call = tail call i32 %1(ptr noundef %add.ptr4, ptr noundef %buf, i32 noundef %count) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charge_full_show(ptr nocapture noundef readonly %di, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 1
  %0 = ptrtoint ptr %max_mah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mah, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.183, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charge_full_store(ptr nocapture noundef writeonly %di, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %charge_full = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charge_full) #9
  %0 = ptrtoint ptr %charge_full to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %charge_full, align 4, !annotation !539
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %charge_full) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %charge_full to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %charge_full, align 4
  %max_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 1
  %3 = ptrtoint ptr %max_mah to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %max_mah, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_full) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charge_now_show(ptr nocapture noundef readonly %di, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 5
  %0 = ptrtoint ptr %prev_mah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prev_mah, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.183, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charge_now_store(ptr noundef %di, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %charge_now = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charge_now) #9
  %0 = ptrtoint ptr %charge_now to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %charge_now, align 4, !annotation !539
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %charge_now) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %charge_now to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %charge_now, align 4
  %user_mah = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 25, i32 8
  %3 = ptrtoint ptr %user_mah to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %user_mah, align 4
  %user_cap = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 24, i32 10
  %4 = ptrtoint ptr %user_cap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %user_cap, align 2
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 31
  %5 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fg_wq, align 8
  %fg_periodic_work = getelementptr inbounds %struct.ab8500_fg, ptr %di, i32 0, i32 32
  %call.i7 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %fg_periodic_work, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_now) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_flagtime_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 21, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.195) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = and i8 %6, 127
  %and = zext i8 %7 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_flagtime_write(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_value, align 4, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %4)
  %cmp = icmp sgt i32 %4, 127
  br i1 %cmp, label %if.end.fail.sink.split_crit_edge, label %if.end4

if.end.fail.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 8
  %conv = trunc i32 %4 to i8
  %call6 = call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 15, i8 noundef zeroext 21, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.fail.sink.split_crit_edge, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end4.fail.sink.split_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

fail.sink.split:                                  ; preds = %if.end4.fail.sink.split_crit_edge, %if.end.fail.sink.split_crit_edge
  %.str.200.sink = phi ptr [ @.str.197, %if.end.fail.sink.split_crit_edge ], [ @.str.200, %if.end4.fail.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.200.sink) #12
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end4.fail_crit_edge, %entry.fail_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #9
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_maxtime_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 20, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.202) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = and i8 %6, 127
  %and = zext i8 %7 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_maxtime_write(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_value, align 4, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %4)
  %cmp = icmp sgt i32 %4, 127
  br i1 %cmp, label %if.end.fail.sink.split_crit_edge, label %if.end4

if.end.fail.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 8
  %conv = trunc i32 %4 to i8
  %call6 = call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 15, i8 noundef zeroext 20, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.fail.sink.split_crit_edge, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end4.fail.sink.split_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

fail.sink.split:                                  ; preds = %if.end4.fail.sink.split_crit_edge, %if.end.fail.sink.split_crit_edge
  %.str.207.sink = phi ptr [ @.str.204, %if.end.fail.sink.split_crit_edge ], [ @.str.207, %if.end4.fail.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.207.sink) #12
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end4.fail_crit_edge, %entry.fail_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #9
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_restart_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 22, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.209) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = and i8 %6, 15
  %and = zext i8 %7 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_restart_write(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_value, align 4, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %cmp = icmp sgt i32 %4, 15
  br i1 %cmp, label %if.end.fail.sink.split_crit_edge, label %if.end4

if.end.fail.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 8
  %conv = trunc i32 %4 to i8
  %call6 = call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 15, i8 noundef zeroext 22, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.fail.sink.split_crit_edge, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end4.fail.sink.split_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

fail.sink.split:                                  ; preds = %if.end4.fail.sink.split_crit_edge, %if.end.fail.sink.split_crit_edge
  %.str.214.sink = phi ptr [ @.str.211, %if.end.fail.sink.split_crit_edge ], [ @.str.214, %if.end4.fail.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.214.sink) #12
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end4.fail_crit_edge, %entry.fail_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #9
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_timer_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 19, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.216) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = and i8 %6, 127
  %and = zext i8 %7 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_restart_counter_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 22, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.209) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = lshr i8 %6, 4
  %8 = zext i8 %7 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 18, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = and i8 %6, 1
  %and = zext i8 %7 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_write(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_value, align 4, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.end.fail.sink.split_crit_edge, label %if.end4

if.end.fail.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 8
  %conv = trunc i32 %4 to i8
  %call6 = call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 15, i8 noundef zeroext 18, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.fail.sink.split_crit_edge, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end4.fail.sink.split_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

fail.sink.split:                                  ; preds = %if.end4.fail.sink.split_crit_edge, %if.end.fail.sink.split_crit_edge
  %.str.222.sink = phi ptr [ @.str.219, %if.end.fail.sink.split_crit_edge ], [ @.str.222, %if.end4.fail.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.222.sink) #12
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end4.fail_crit_edge, %entry.fail_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #9
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_flag_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 18, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.224) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_debounce_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 23, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.226) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = and i8 %6, 7
  %and = zext i8 %7 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_debounce_write(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_value, align 4, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp sgt i32 %4, 7
  br i1 %cmp, label %if.end.fail.sink.split_crit_edge, label %if.end4

if.end.fail.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 8
  %conv = trunc i32 %4 to i8
  %call6 = call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 15, i8 noundef zeroext 23, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.fail.sink.split_crit_edge, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end4.fail.sink.split_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

fail.sink.split:                                  ; preds = %if.end4.fail.sink.split_crit_edge, %if.end.fail.sink.split_crit_edge
  %.str.231.sink = phi ptr [ @.str.228, %if.end.fail.sink.split_crit_edge ], [ @.str.231, %if.end4.fail.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.231.sink) #12
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end4.fail_crit_edge, %entry.fail_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #9
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8505_powercut_enable_status_read(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #9
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !539
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %2) #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 8
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext 18, ptr noundef nonnull %reg_value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.224) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = lshr i8 %6, 5
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.183, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.234, i32 noundef 655370, i32 noundef 1) #9
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %fg_wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %fg_wq, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.235) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bm = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 29
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %charge_full_design_uah = getelementptr inbounds %struct.power_supply_battery_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %charge_full_design_uah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %charge_full_design_uah, align 4
  %bat_cap = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %bat_cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bat_cap, align 4
  %max_mah = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 25, i32 1
  %10 = ptrtoint ptr %max_mah to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %max_mah, align 4
  %11 = load ptr, ptr %4, align 4
  %voltage_max_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %voltage_max_design_uv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %voltage_max_design_uv, align 4
  %vbat_nom_uv = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %vbat_nom_uv to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %vbat_nom_uv, align 4
  %call8 = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %1, i1 noundef zeroext true)
  %15 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fg_wq, align 8
  %fg_periodic_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 32
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %fg_periodic_work, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_fg_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.237) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fg_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fg_periodic_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 32
  %call1 = tail call zeroext i1 @flush_delayed_work(ptr noundef %fg_periodic_work) #9
  %fg_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 35
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %fg_work) #9
  %fg_acc_cur_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 36
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %fg_acc_cur_work) #9
  %fg_reinit_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 34
  %call4 = tail call zeroext i1 @flush_delayed_work(ptr noundef %fg_reinit_work) #9
  %fg_low_bat_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 33
  %call5 = tail call zeroext i1 @flush_delayed_work(ptr noundef %fg_low_bat_work) #9
  %fg_check_hw_failure_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 37
  %call6 = tail call zeroext i1 @flush_delayed_work(ptr noundef %fg_check_hw_failure_work) #9
  %flags = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 8, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %charging = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %charging, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call fastcc i32 @ab8500_fg_coulomb_counter(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_fg_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %charging = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %charging, align 2, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_fg_resume, %ab8500_fg_discharge_state_to.exit)) #9
          to label %if.then.i [label %ab8500_fg_discharge_state_to.exit], !srcloc !540

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %discharge_state.i = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %discharge_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %discharge_state.i, align 8
  %arrayidx.i = getelementptr [7 x ptr], ptr @discharge_state, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, ptr noundef %5, ptr noundef nonnull @.str.66, i32 noundef %7, ptr noundef %9, i32 noundef 6, ptr noundef nonnull @.str.73) #9
  br label %ab8500_fg_discharge_state_to.exit

ab8500_fg_discharge_state_to.exit:                ; preds = %if.then.i, %if.then
  %discharge_state6.i = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %discharge_state6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %discharge_state6.i, align 8
  %fg_wq = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 31
  %11 = ptrtoint ptr %fg_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fg_wq, align 8
  %fg_work = getelementptr inbounds %struct.ab8500_fg, ptr %1, i32 0, i32 35
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %fg_work) #9
  br label %if.end

if.end:                                           ; preds = %ab8500_fg_discharge_state_to.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 269)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 269)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !120, !121, !123, !125, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !153, !154, !155, !157, !158, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !211, !212, !214, !215, !217, !219, !221, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !274, !275, !277, !278, !279, !281, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !298, !300, !301, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !345, !346, !347, !348, !350, !351, !353, !354, !356, !358, !360, !361, !362, !364, !365, !367, !368, !370, !372, !374, !376, !378, !380, !381, !383, !384, !385, !386, !388, !390, !391, !392, !394, !396, !398, !400, !402, !404, !406, !407, !408, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !432, !433, !434, !436, !437, !438, !439, !441, !442, !443, !445, !446, !447, !448, !450, !451, !452, !453, !455, !456, !457, !459, !460, !461, !462, !464, !465, !466, !467, !469, !470, !471, !473, !474, !475, !476, !478, !479, !480, !482, !483, !484, !485, !487, !488, !489, !491, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !504, !506, !507, !508, !510, !511, !512, !514, !516, !518, !519, !520, !521, !523, !524, !525, !526, !528}
!llvm.module.flags = !{!530, !531, !532, !533, !534, !535, !536, !537}
!llvm.ident = !{!538}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ab8500_fg.c", i32 546, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ab8500_fg_inst_curr_start.__UNIQUE_ID_ddebug290, !1, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/ab8500_fg.c", i32 620, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug291, !7, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/ab8500_fg.c", i32 626, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ab8500_fg_inst_curr_finalize._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ab8500_fg_inst_curr_finalize._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/ab8500_fg.c", i32 674, i32 3}
!18 = !{ptr @ab8500_fg_inst_curr_finalize.__UNIQUE_ID_ddebug292, !17, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/ab8500_fg.c", i32 712, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ab8500_fg_inst_curr_blocking._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ab8500_fg_inst_curr_blocking._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/ab8500_fg.c", i32 721, i32 3}
!26 = !{ptr @ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug293, !25, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!27 = !{ptr @ab8500_fg_inst_curr_blocking._entry.13, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/ab8500_fg.c", i32 725, i32 4}
!29 = !{ptr @ab8500_fg_inst_curr_blocking._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/ab8500_fg.c", i32 733, i32 3}
!32 = !{ptr @ab8500_fg_inst_curr_blocking._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ab8500_fg_inst_curr_blocking._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/ab8500_fg.c", i32 737, i32 2}
!36 = !{ptr @ab8500_fg_inst_curr_blocking.__UNIQUE_ID_ddebug294, !35, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3196, i32 11}
!39 = !{ptr @ab8500_fg_driver, !40, !"ab8500_fg_driver", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3192, i32 24}
!41 = !{ptr @__UNIQUE_ID_file338, !42, !"__UNIQUE_ID_file338", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3201, i32 1}
!43 = !{ptr @__UNIQUE_ID_license339, !42, !"__UNIQUE_ID_license339", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_author340, !45, !"__UNIQUE_ID_author340", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3202, i32 1}
!46 = !{ptr @__UNIQUE_ID_alias341, !47, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3203, i32 1}
!48 = !{ptr @__UNIQUE_ID_description342, !49, !"__UNIQUE_ID_description342", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3204, i32 1}
!50 = !{ptr @ab8500_fg_list, !51, !"ab8500_fg_list", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/ab8500_fg.c", i32 239, i32 8}
!52 = !{ptr @ab8500_fg_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3043, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3049, i32 45}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3052, i32 9}
!59 = !{ptr @ab8500_fg_probe.__key.23, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3066, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ab8500_fg_probe.__key.25, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3069, i32 2}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ab8500_fg_probe.__key.27, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3072, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ab8500_fg_probe.__key.29, !66, !"__key", i1 false, i1 false}
!69 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ab8500_fg_probe.__key.31, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3076, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ab8500_fg_probe.__key.33, !71, !"__key", i1 false, i1 false}
!74 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ab8500_fg_probe.__key.35, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3080, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ab8500_fg_probe.__key.37, !76, !"__key", i1 false, i1 false}
!79 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ab8500_fg_probe.__key.39, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3084, i32 2}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ab8500_fg_probe.__key.41, !81, !"__key", i1 false, i1 false}
!84 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3096, i32 3}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ab8500_fg_probe._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ab8500_fg_probe._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3107, i32 3}
!92 = !{ptr @ab8500_fg_probe._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ab8500_fg_probe._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3132, i32 4}
!96 = !{ptr @ab8500_fg_probe._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ab8500_fg_probe._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3136, i32 3}
!100 = !{ptr @ab8500_fg_probe.__UNIQUE_ID_ddebug337, !99, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3140, i32 42}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3148, i32 3}
!105 = !{ptr @ab8500_fg_probe._entry.53, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ab8500_fg_probe._entry_ptr.55, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3154, i32 3}
!109 = !{ptr @ab8500_fg_probe._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ab8500_fg_probe._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2972, i32 2}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2973, i32 2}
!115 = !{ptr @supply_interface, !116, !"supply_interface", i1 false, i1 false}
!116 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2971, i32 14}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1372, i32 2}
!119 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ab8500_fg_charge_state_to.__UNIQUE_ID_ddebug320, !118, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/power/supply/ab8500_fg.c", i32 95, i32 2}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/power/supply/ab8500_fg.c", i32 96, i32 2}
!125 = !{ptr @charge_state, !126, !"charge_state", i1 false, i1 false}
!126 = !{!"../drivers/power/supply/ab8500_fg.c", i32 94, i32 14}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1384, i32 2}
!129 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ab8500_fg_discharge_state_to.__UNIQUE_ID_ddebug321, !128, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/ab8500_fg.c", i32 80, i32 2}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/power/supply/ab8500_fg.c", i32 81, i32 2}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/power/supply/ab8500_fg.c", i32 82, i32 2}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/ab8500_fg.c", i32 83, i32 2}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/ab8500_fg.c", i32 84, i32 2}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/ab8500_fg.c", i32 85, i32 2}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/ab8500_fg.c", i32 86, i32 2}
!145 = !{ptr @discharge_state, !146, !"discharge_state", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/ab8500_fg.c", i32 79, i32 14}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1734, i32 2}
!149 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ab8500_fg_algorithm.__UNIQUE_ID_ddebug331, !148, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1677, i32 3}
!153 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug328, !152, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1699, i32 3}
!157 = !{ptr @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug329, !156, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1703, i32 3}
!160 = !{ptr @ab8500_fg_algorithm_calibrate.__UNIQUE_ID_ddebug330, !159, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1711, i32 2}
!163 = !{ptr @ab8500_fg_algorithm_calibrate._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ab8500_fg_algorithm_calibrate._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1427, i32 4}
!167 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ab8500_fg_algorithm_charging.__UNIQUE_ID_ddebug322, !166, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/ab8500_fg.c", i32 512, i32 2}
!171 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ab8500_fg_coulomb_counter.__UNIQUE_ID_ddebug289, !170, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/ab8500_fg.c", i32 519, i32 2}
!175 = !{ptr @ab8500_fg_coulomb_counter._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ab8500_fg_coulomb_counter._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1009, i32 2}
!179 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ab8500_fg_calc_cap_charging.__UNIQUE_ID_ddebug298, !178, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!181 = !{ptr @ab8500_fg_bat_voltage.prev, !182, !"prev", i1 false, i1 false}
!182 = !{!"../drivers/power/supply/ab8500_fg.c", i32 830, i32 13}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/power/supply/ab8500_fg.c", i32 834, i32 3}
!185 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ab8500_fg_bat_voltage._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ab8500_fg_bat_voltage._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1261, i32 4}
!190 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug313, !189, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1267, i32 4}
!194 = !{ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug314, !193, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1279, i32 3}
!197 = !{ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug315, !196, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1306, i32 4}
!200 = !{ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug316, !199, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1332, i32 4}
!203 = !{ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug317, !202, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1342, i32 4}
!206 = !{ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug318, !205, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1355, i32 4}
!209 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @ab8500_fg_check_capacity_limits._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @ab8500_fg_check_capacity_limits._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1361, i32 4}
!214 = !{ptr @ab8500_fg_check_capacity_limits.__UNIQUE_ID_ddebug319, !213, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1363, i32 40}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1365, i32 39}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1170, i32 3}
!221 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug303, !220, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1185, i32 4}
!225 = !{ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug306, !224, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1190, i32 5}
!228 = !{ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug307, !227, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1194, i32 5}
!231 = !{ptr @ab8500_fg_calculate_scaled_capacity.__UNIQUE_ID_ddebug308, !230, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1621, i32 5}
!234 = !{ptr @ab8500_fg_algorithm_discharging.__UNIQUE_ID_ddebug327, !233, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!235 = !{ptr @.str.108, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/power/supply/ab8500_fg.c", i32 942, i32 2}
!237 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @ab8500_fg_load_comp_volt_to_capacity.__UNIQUE_ID_ddebug297, !236, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/power/supply/ab8500_fg.c", i32 899, i32 2}
!241 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @ab8500_fg_battery_resistance.__UNIQUE_ID_ddebug296, !240, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1078, i32 2}
!245 = !{ptr @ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug299, !244, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!246 = !{ptr @.str.113, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1104, i32 3}
!248 = !{ptr @ab8500_fg_calc_cap_discharge_fg.__UNIQUE_ID_ddebug300, !247, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/power/supply/ab8500_fg.c", i32 811, i32 2}
!251 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @ab8500_fg_acc_cur_work.__UNIQUE_ID_ddebug295, !250, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/power/supply/ab8500_fg.c", i32 815, i32 2}
!255 = !{ptr @ab8500_fg_acc_cur_work._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @ab8500_fg_acc_cur_work._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.117, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2383, i32 3}
!259 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @ab8500_fg_reinit_work.__UNIQUE_ID_ddebug336, !258, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!261 = !{ptr @.str.119, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2391, i32 3}
!263 = !{ptr @ab8500_fg_reinit_work._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @ab8500_fg_reinit_work._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.120, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1483, i32 2}
!267 = !{ptr @.str.121, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @check_sysfs_capacity.__UNIQUE_ID_ddebug324, !266, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!269 = !{ptr @.str.122, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1489, i32 3}
!271 = !{ptr @check_sysfs_capacity.__UNIQUE_ID_ddebug325, !270, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!272 = !{ptr @.str.123, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1493, i32 2}
!274 = !{ptr @check_sysfs_capacity.__UNIQUE_ID_ddebug326, !273, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!275 = !{ptr @.str.124, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1454, i32 3}
!277 = !{ptr @.str.125, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @force_capacity.__UNIQUE_ID_ddebug323, !276, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!279 = !{ptr @.str.126, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1851, i32 4}
!281 = !{ptr @.str.127, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.128, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @ab8500_fg_low_bat_work._entry, !280, !"_entry", i1 false, i1 false}
!284 = !{ptr @ab8500_fg_low_bat_work._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.130, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1859, i32 4}
!287 = !{ptr @ab8500_fg_low_bat_work._entry.129, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @ab8500_fg_low_bat_work._entry_ptr.131, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.133, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1866, i32 3}
!291 = !{ptr @ab8500_fg_low_bat_work._entry.132, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @ab8500_fg_low_bat_work._entry_ptr.134, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.135, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1812, i32 3}
!295 = !{ptr @.str.136, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @ab8500_fg_check_hw_failure_work._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @ab8500_fg_check_hw_failure_work._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1817, i32 4}
!300 = !{ptr @ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug332, !299, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!301 = !{ptr @.str.138, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1825, i32 4}
!303 = !{ptr @ab8500_fg_check_hw_failure_work.__UNIQUE_ID_ddebug333, !302, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!304 = !{ptr @.str.139, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2273, i32 3}
!306 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @ab8500_fg_init_hw_registers._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.142, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2284, i32 3}
!311 = !{ptr @ab8500_fg_init_hw_registers._entry.141, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.143, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.145, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2296, i32 3}
!315 = !{ptr @ab8500_fg_init_hw_registers._entry.144, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.146, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.148, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2303, i32 3}
!319 = !{ptr @ab8500_fg_init_hw_registers._entry.147, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.149, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.151, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2312, i32 4}
!323 = !{ptr @ab8500_fg_init_hw_registers._entry.150, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.152, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.154, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2320, i32 4}
!327 = !{ptr @ab8500_fg_init_hw_registers._entry.153, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.155, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.157, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2328, i32 4}
!331 = !{ptr @ab8500_fg_init_hw_registers._entry.156, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.158, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2336, i32 4}
!335 = !{ptr @ab8500_fg_init_hw_registers._entry.159, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.161, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.163, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2344, i32 4}
!339 = !{ptr @ab8500_fg_init_hw_registers._entry.162, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @ab8500_fg_init_hw_registers._entry_ptr.164, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @ab8500_fg_lowbat_voltage_map, !342, !"ab8500_fg_lowbat_voltage_map", i1 false, i1 false}
!342 = !{!"../drivers/power/supply/ab8500_fg.c", i32 270, i32 12}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1918, i32 3}
!345 = !{ptr @.str.166, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @ab8500_fg_battok_init_hw_register._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @ab8500_fg_battok_init_hw_register._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @ab8500_fg_battok_init_hw_register._entry.167, !349, !"_entry", i1 false, i1 false}
!349 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1924, i32 3}
!350 = !{ptr @ab8500_fg_battok_init_hw_register._entry_ptr.168, !349, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.169, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1929, i32 2}
!353 = !{ptr @ab8500_fg_battok_init_hw_register.__UNIQUE_ID_ddebug334, !352, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!354 = !{ptr @ab8500_fg_desc, !355, !"ab8500_fg_desc", i1 false, i1 false}
!355 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2976, i32 39}
!356 = !{ptr @ab8500_fg_props, !357, !"ab8500_fg_props", i1 false, i1 false}
!357 = !{!"../drivers/power/supply/ab8500_fg.c", i32 252, i32 35}
!358 = !{ptr @.str.170, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1221, i32 3}
!360 = !{ptr @.str.171, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug309, !359, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!362 = !{ptr @.str.172, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/power/supply/ab8500_fg.c", i32 1234, i32 3}
!364 = !{ptr @ab8500_fg_update_cap_scalers.__UNIQUE_ID_ddebug312, !363, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!365 = !{ptr @init_completion.__key, !366, !"__key", i1 false, i1 false}
!366 = !{!"../include/linux/completion.h", i32 87, i32 2}
!367 = !{ptr @.str.173, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.174, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2964, i32 3}
!370 = !{ptr @.str.175, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2965, i32 3}
!372 = !{ptr @.str.176, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2966, i32 3}
!374 = !{ptr @.str.177, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2967, i32 3}
!376 = !{ptr @ab8500_fg_irq, !377, !"ab8500_fg_irq", i1 false, i1 false}
!377 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2963, i32 36}
!378 = !{ptr @.str.178, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2010, i32 2}
!380 = !{ptr @ab8500_fg_batt_ovv_handler.__UNIQUE_ID_ddebug335, !379, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!381 = !{ptr @.str.179, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2031, i32 3}
!383 = !{ptr @.str.180, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @ab8500_fg_lowbatf_handler._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @ab8500_fg_lowbatf_handler._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.181, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2523, i32 9}
!388 = !{ptr @.str.182, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2525, i32 3}
!390 = !{ptr @ab8500_fg_sysfs_init._entry, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @ab8500_fg_sysfs_init._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @ab8500_fg_ktype, !393, !"ab8500_fg_ktype", i1 false, i1 false}
!393 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2494, i32 25}
!394 = !{ptr @ab8500_fg_sysfs_ops, !395, !"ab8500_fg_sysfs_ops", i1 false, i1 false}
!395 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2483, i32 31}
!396 = !{ptr @ab8500_fg_attrs, !397, !"ab8500_fg_attrs", i1 false, i1 false}
!397 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2488, i32 26}
!398 = !{ptr @charge_full_attr, !399, !"charge_full_attr", i1 false, i1 false}
!399 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2447, i32 37}
!400 = !{ptr @.str.183, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2409, i32 22}
!402 = !{ptr @charge_now_attr, !403, !"charge_now_attr", i1 false, i1 false}
!403 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2450, i32 37}
!404 = !{ptr @.str.184, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2904, i32 2}
!406 = !{ptr @.str.185, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @ab8500_fg_sysfs_psy_create_attrs._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @ab8500_fg_sysfs_psy_create_attrs._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.186, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2874, i32 2}
!411 = !{ptr @.str.187, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2876, i32 2}
!413 = !{ptr @.str.188, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2878, i32 2}
!415 = !{ptr @.str.189, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2880, i32 2}
!417 = !{ptr @.str.190, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2881, i32 2}
!419 = !{ptr @.str.191, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2883, i32 2}
!421 = !{ptr @.str.192, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2885, i32 2}
!423 = !{ptr @.str.193, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2886, i32 2}
!425 = !{ptr @.str.194, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2888, i32 2}
!427 = !{ptr @ab8505_fg_sysfs_psy_attrs, !428, !"ab8505_fg_sysfs_psy_attrs", i1 false, i1 false}
!428 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2873, i32 32}
!429 = !{ptr @.str.195, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2543, i32 3}
!431 = !{ptr @.str.196, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @ab8505_powercut_flagtime_read._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @ab8505_powercut_flagtime_read._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.197, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2566, i32 3}
!436 = !{ptr @.str.198, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @ab8505_powercut_flagtime_write._entry, !435, !"_entry", i1 false, i1 false}
!438 = !{ptr @ab8505_powercut_flagtime_write._entry_ptr, !435, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.200, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2574, i32 3}
!441 = !{ptr @ab8505_powercut_flagtime_write._entry.199, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @ab8505_powercut_flagtime_write._entry_ptr.201, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.202, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2593, i32 3}
!445 = !{ptr @.str.203, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @ab8505_powercut_maxtime_read._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @ab8505_powercut_maxtime_read._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.204, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2617, i32 3}
!450 = !{ptr @.str.205, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @ab8505_powercut_maxtime_write._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @ab8505_powercut_maxtime_write._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.207, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2625, i32 3}
!455 = !{ptr @ab8505_powercut_maxtime_write._entry.206, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @ab8505_powercut_maxtime_write._entry_ptr.208, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.209, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2644, i32 3}
!459 = !{ptr @.str.210, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @ab8505_powercut_restart_read._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @ab8505_powercut_restart_read._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.211, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2667, i32 3}
!464 = !{ptr @.str.212, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @ab8505_powercut_restart_write._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @ab8505_powercut_restart_write._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.214, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2675, i32 3}
!469 = !{ptr @ab8505_powercut_restart_write._entry.213, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @ab8505_powercut_restart_write._entry_ptr.215, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.216, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2695, i32 3}
!473 = !{ptr @.str.217, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @ab8505_powercut_timer_read._entry, !472, !"_entry", i1 false, i1 false}
!475 = !{ptr @ab8505_powercut_timer_read._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.218, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2718, i32 3}
!478 = !{ptr @ab8505_powercut_restart_counter_read._entry, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @ab8505_powercut_restart_counter_read._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.219, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2762, i32 3}
!482 = !{ptr @.str.220, !481, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @ab8505_powercut_write._entry, !481, !"_entry", i1 false, i1 false}
!484 = !{ptr @ab8505_powercut_write._entry_ptr, !481, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.222, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2770, i32 3}
!487 = !{ptr @ab8505_powercut_write._entry.221, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @ab8505_powercut_write._entry_ptr.223, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.224, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2790, i32 3}
!491 = !{ptr @.str.225, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @ab8505_powercut_flag_read._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @ab8505_powercut_flag_read._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.226, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2813, i32 3}
!496 = !{ptr @.str.227, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @ab8505_powercut_debounce_read._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @ab8505_powercut_debounce_read._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.228, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2836, i32 3}
!501 = !{ptr @.str.229, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @ab8505_powercut_debounce_write._entry, !500, !"_entry", i1 false, i1 false}
!503 = !{ptr @ab8505_powercut_debounce_write._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.231, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2844, i32 3}
!506 = !{ptr @ab8505_powercut_debounce_write._entry.230, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @ab8505_powercut_debounce_write._entry_ptr.232, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.233, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2863, i32 3}
!510 = !{ptr @ab8505_powercut_enable_status_read._entry, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @ab8505_powercut_enable_status_read._entry_ptr, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @ab8500_fg_component_ops, !513, !"ab8500_fg_component_ops", i1 false, i1 false}
!513 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3024, i32 35}
!514 = !{ptr @.str.234, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2991, i32 14}
!516 = !{ptr @.str.235, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/power/supply/ab8500_fg.c", i32 2993, i32 3}
!518 = !{ptr @.str.236, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @ab8500_fg_bind._entry, !517, !"_entry", i1 false, i1 false}
!520 = !{ptr @ab8500_fg_bind._entry_ptr, !517, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.237, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3018, i32 3}
!523 = !{ptr @.str.238, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @ab8500_fg_unbind._entry, !522, !"_entry", i1 false, i1 false}
!525 = !{ptr @ab8500_fg_unbind._entry_ptr, !522, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @ab8500_fg_match, !527, !"ab8500_fg_match", i1 false, i1 false}
!527 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3186, i32 34}
!528 = !{ptr @ab8500_fg_pm_ops, !529, !"ab8500_fg_pm_ops", i1 false, i1 false}
!529 = !{!"../drivers/power/supply/ab8500_fg.c", i32 3184, i32 8}
!530 = !{i32 1, !"wchar_size", i32 2}
!531 = !{i32 1, !"min_enum_size", i32 4}
!532 = !{i32 8, !"branch-target-enforcement", i32 0}
!533 = !{i32 8, !"sign-return-address", i32 0}
!534 = !{i32 8, !"sign-return-address-all", i32 0}
!535 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!536 = !{i32 7, !"uwtable", i32 1}
!537 = !{i32 7, !"frame-pointer", i32 2}
!538 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!539 = !{!"auto-init"}
!540 = !{i64 2149035686, i64 2149035691, i64 2149035704, i64 2149035748, i64 2149035782, i64 2149035803}
!541 = !{i8 0, i8 2}
!542 = !{i64 795673, i64 795700, i64 795722, i64 795750}
!543 = !{i64 796081, i64 796108, i64 796141, i64 796162, i64 796189, i64 796215}
!544 = !{i64 795386, i64 795413}
