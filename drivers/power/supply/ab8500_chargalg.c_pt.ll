; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ab8500_chargalg.c_pt.bc'
source_filename = "../drivers/power/supply/ab8500_chargalg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_bm_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.ab8500_chargalg_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500_chargalg = type { ptr, i32, i32, i8, i32, i32, i32, %struct.ab8500_charge_curr_maximization, %struct.ab8500_chargalg_charger_info, %struct.ab8500_chargalg_battery_data, %struct.ab8500_chargalg_suspension_status, ptr, %struct.ab8500_chargalg_current_step_status, ptr, ptr, ptr, ptr, %struct.ab8500_chargalg_events, ptr, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.hrtimer, %struct.hrtimer, %struct.kobject }
%struct.ab8500_charge_curr_maximization = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.ab8500_chargalg_charger_info = type { i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ab8500_chargalg_battery_data = type { i32, i32, i32, i32, i32 }
%struct.ab8500_chargalg_suspension_status = type { i8, i8, i8 }
%struct.ab8500_chargalg_current_step_status = type { i8, i32 }
%struct.ab8500_chargalg_events = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ux500_charger = type { ptr, %struct.ux500_charger_ops, i32, i32, i32, i8, i8 }
%struct.ux500_charger_ops = type { ptr, ptr, ptr, ptr }
%struct.ab8500_bm_charger_parameters = type { i32, i32, i32, i32 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%struct.ab8500_maxim_parameters = type { i8, i32, i32, i32 }
%struct.ab8500_battery_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(charger_notifier_list).rwsem.wait_lock\00", [56 x i8] zeroinitializer }, align 32
@charger_notifier_list = dso_local global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @charger_notifier_list, i64 56), ptr getelementptr (i8, ptr @charger_notifier_list, i64 56) }, ptr @charger_notifier_list, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(charger_notifier_list).rwsem\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_chargalg\00", [16 x i8] zeroinitializer }, align 32
@ab8500_chargalg_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-chargalg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ab8500_chargalg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ab8500_chargalg_suspend, ptr @ab8500_chargalg_resume, ptr @ab8500_chargalg_suspend, ptr @ab8500_chargalg_resume, ptr @ab8500_chargalg_suspend, ptr @ab8500_chargalg_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ab8500_chargalg_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_chargalg_probe, ptr @ab8500_chargalg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ab8500_chargalg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_chargalg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file317 = internal constant [58 x i8] c"ab8500_chargalg.file=drivers/power/supply/ab8500_chargalg\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [31 x i8] c"ab8500_chargalg.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [55 x i8] c"ab8500_chargalg.author=Johan Palsson, Karl Komierowski\00", section ".modinfo", align 1
@__UNIQUE_ID_alias320 = internal constant [47 x i8] c"ab8500_chargalg.alias=platform:ab8500-chargalg\00", section ".modinfo", align 1
@__UNIQUE_ID_description321 = internal constant [62 x i8] c"ab8500_chargalg.description=ab8500 battery charging algorithm\00", section ".modinfo", align 1
@ab8500_bm_data = external dso_local global %struct.ab8500_bm_data, align 4
@supply_interface = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&di->chargalg_periodic_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&di->chargalg_periodic_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&di->chargalg_wd_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&di->chargalg_wd_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&di->chargalg_work)\00", [58 x i8] zeroinitializer }, align 32
@ab8500_chargalg_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.2, i32 1, ptr null, i32 0, ptr @ab8500_chargalg_props, i32 2, ptr @ab8500_chargalg_get_property, ptr null, ptr null, ptr @ab8500_chargalg_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 2048, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register chargalg psy\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_chargalg_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/ab8500_chargalg.c\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe._entry_ptr = internal global ptr @ab8500_chargalg_probe._entry, section ".printk_index", align 4
@ab8500_chargalg_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.14, i32 2057, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create sysfs entry\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe._entry_ptr.19 = internal global ptr @ab8500_chargalg_probe._entry.17, section ".printk_index", align 4
@ab8500_chargalg_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.14, i32 2062, ptr @.str.22, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"probe success\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ab8500_chargalg_probe._entry_ptr.23 = internal global ptr @ab8500_chargalg_probe._entry.20, section ".printk_index", align 4
@ab8500_chargalg_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @ab8500_chargalg_bind, ptr @ab8500_chargalg_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_fg\00", [22 x i8] zeroinitializer }, align 32
@ab8500_chargalg_safety_timer_expired._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.14, i32 300, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Safety timer expired\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_chargalg_safety_timer_expired\00", [59 x i8] zeroinitializer }, align 32
@ab8500_chargalg_safety_timer_expired._entry_ptr = internal global ptr @ab8500_chargalg_safety_timer_expired._entry, section ".printk_index", align 4
@ab8500_chargalg_maintenance_timer_expired.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.14, ptr @.str.28, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ab8500_chargalg_maintenance_timer_expired\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maintenance timer expired\0A\00", [37 x i8] zeroinitializer }, align 32
@power_supply_class = external dso_local local_unnamed_addr global ptr, align 4
@ab8500_chargalg_algorithm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.14, i32 1322, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Checking charger is enabled error: Returned Value %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_chargalg_algorithm\00", [38 x i8] zeroinitializer }, align 32
@ab8500_chargalg_algorithm._entry_ptr = internal global ptr @ab8500_chargalg_algorithm._entry, section ".printk_index", align 4
@ab8500_chargalg_algorithm.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.30, ptr @.str.14, ptr @.str.31, i8 1, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [220 x i8], [36 x i8] } { [220 x i8] c"[CHARGALG] Vb %d Ib_avg %d Ib_inst %d Tb %d Cap %d Maint %d State %s Active_chg %d Chg_status %d AC %d USB %d AC_online %d USB_online %d AC_CV %d USB_CV %d AC_I %d USB_I %d AC_Vset %d AC_Iset %d USB_Vset %d USB_Iset %d\0A\00", [36 x i8] zeroinitializer }, align 32
@states = internal constant { [28 x ptr], [48 x i8] } { [28 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], [48 x i8] zeroinitializer }, align 32
@ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str.14, ptr @.str.33, i8 0, i8 -53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_chargalg_end_of_charge\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EOC reached!\0A\00", [18 x i8] zeroinitializer }, align 32
@ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str.14, ptr @.str.34, i8 0, i8 -51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c" EOC limit reached for the %d time, out of %d before EOC\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_chargalg_check_temp.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.35, ptr @.str.14, ptr @.str.36, i8 0, i8 -65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_chargalg_check_temp\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Within hysteresis limit temp: %d hyst_lowhigh %d, hyst normal %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.37, ptr @.str.14, ptr @.str.38, i8 0, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ab8500_chargalg_check_charger_connection\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Charging source is AC\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.37, ptr @.str.14, ptr @.str.39, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Charging source is USB\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.37, ptr @.str.14, ptr @.str.40, i8 0, i8 102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Charging is suspended\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.37, ptr @.str.14, ptr @.str.41, i8 0, i8 103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Charging source is OFF\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.42, ptr @.str.14, ptr @.str.43, i8 0, i8 87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500_chargalg_state_to\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"State changed: %s (From state: [%d] %s =to=> [%d] %s )\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HANDHELD_INIT\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HANDHELD\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CHG_NOT_OK_INIT\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CHG_NOT_OK\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_TEMP_PROTECT_INIT\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HW_TEMP_PROTECT\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NORMAL_INIT\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NORMAL\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WAIT_FOR_RECHARGE_INIT\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WAIT_FOR_RECHARGE\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAINTENANCE_A_INIT\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MAINTENANCE_A\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAINTENANCE_B_INIT\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MAINTENANCE_B\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TEMP_UNDEROVER_INIT\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEMP_UNDEROVER\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEMP_LOWHIGH_INIT\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TEMP_LOWHIGH\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SUSPENDED_INIT\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUSPENDED\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OVV_PROTECT_INIT\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OVV_PROTECT\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SAFETY_TIMER_EXPIRED_INIT\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SAFETY_TIMER_EXPIRED\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BATT_REMOVED_INIT\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BATT_REMOVED\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WD_EXPIRED_INIT\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WD_EXPIRED\00", [21 x i8] zeroinitializer }, align 32
@ab8500_chargalg_ac_en.ab8500_chargalg_ex_ac_enable_toggle = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.74, ptr @.str.14, ptr @.str.75, i8 0, i8 -80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_chargalg_start_charging\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AC parameters: Vset %d, Ich %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.74, ptr @.str.14, ptr @.str.76, i8 0, i8 -78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"USB parameters: Vset %d, Ich %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_chargalg_start_charging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.14, i32 720, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown charger to charge from\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_chargalg_start_charging._entry_ptr = internal global ptr @ab8500_chargalg_start_charging._entry, section ".printk_index", align 4
@ab8500_chargalg_start_safety_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.14, i32 461, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ab8500_chargalg_start_safety_timer\00", [61 x i8] zeroinitializer }, align 32
@ab8500_chargalg_start_safety_timer._entry_ptr = internal global ptr @ab8500_chargalg_start_safety_timer._entry, section ".printk_index", align 4
@handle_maxim_chg_curr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.14, i32 933, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set chg curr\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_maxim_chg_curr\00", [42 x i8] zeroinitializer }, align 32
@handle_maxim_chg_curr._entry_ptr = internal global ptr @handle_maxim_chg_curr._entry, section ".printk_index", align 4
@handle_maxim_chg_curr._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.14, i32 939, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@handle_maxim_chg_curr._entry_ptr.82 = internal global ptr @handle_maxim_chg_curr._entry.81, section ".printk_index", align 4
@ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.83, ptr @.str.14, ptr @.str.84, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_chargalg_chg_curr_maxim\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Charger voltage has collapsed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.83, ptr @.str.14, ptr @.str.85, i8 0, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lowering current\0A\00", [46 x i8] zeroinitializer }, align 32
@ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.83, ptr @.str.14, ptr @.str.86, i8 0, i8 -39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"waiting\0A\00", [23 x i8] zeroinitializer }, align 32
@ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.83, ptr @.str.14, ptr @.str.87, i8 0, i8 -35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c" Maximization Ibat (%duA) too high (limit %duA) (current iset: %duA)!\0A\00", [57 x i8] zeroinitializer }, align 32
@ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.83, ptr @.str.14, ptr @.str.88, i8 0, i8 -29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c" Maximization needed, increase with %d uA to %duA (Optimal ibat: %d uA) Level %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ab8500_chargalg_wd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.14, i32 1680, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to kick watchdog\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ab8500_chargalg_wd_work\00", [40 x i8] zeroinitializer }, align 32
@ab8500_chargalg_wd_work._entry_ptr = internal global ptr @ab8500_chargalg_wd_work._entry, section ".printk_index", align 4
@ab8500_chargalg_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2], [24 x i8] zeroinitializer }, align 32
@ab8500_chargalg_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @ab8500_chargalg_sysfs_ops, ptr @ab8500_chargalg_chg, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ab8500_chargalg_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.91, ptr @.str.14, i32 1911, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_chargalg_sysfs_init\00", [37 x i8] zeroinitializer }, align 32
@ab8500_chargalg_sysfs_init._entry_ptr = internal global ptr @ab8500_chargalg_sysfs_init._entry, section ".printk_index", align 4
@ab8500_chargalg_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @ab8500_chargalg_sysfs_show, ptr @ab8500_chargalg_sysfs_charger }, [24 x i8] zeroinitializer }, align 32
@ab8500_chargalg_chg = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ab8500_chargalg_en_charger, ptr @ab8500_chargalg_curr_step, ptr null], [20 x i8] zeroinitializer }, align 32
@ab8500_chargalg_en_charger = internal global { %struct.ab8500_chargalg_sysfs_entry, [36 x i8] } { %struct.ab8500_chargalg_sysfs_entry { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8500_chargalg_en_show, ptr @ab8500_chargalg_en_store }, [36 x i8] zeroinitializer }, align 32
@ab8500_chargalg_curr_step = internal global { %struct.ab8500_chargalg_sysfs_entry, [36 x i8] } { %struct.ab8500_chargalg_sysfs_entry { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8500_chargalg_curr_step_show, ptr @ab8500_chargalg_curr_step_store }, [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chargalg\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ab8500_chargalg_en_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.14, i32 1826, ptr @.str.22, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Wrong input\0AEnter 0. Disable AC/USB Charging\0A1. Enable AC charging\0A2. Enable USB Charging\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500_chargalg_en_store\00", [39 x i8] zeroinitializer }, align 32
@ab8500_chargalg_en_store._entry_ptr = internal global ptr @ab8500_chargalg_en_store._entry, section ".printk_index", align 4
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chargalg_curr_step\00", [45 x i8] zeroinitializer }, align 32
@ab8500_chargalg_curr_step_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.14, i32 1770, ptr @.str.22, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"Wrong current step\0AEnter 0. Disable AC/USB Charging\0A1--100. Set AC/USB charging current step\0A100. Enable AC/USB Charging\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_chargalg_curr_step_store\00", [32 x i8] zeroinitializer }, align 32
@ab8500_chargalg_curr_step_store._entry_ptr = internal global ptr @ab8500_chargalg_curr_step_store._entry, section ".printk_index", align 4
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_chargalg_wq\00", [45 x i8] zeroinitializer }, align 32
@ab8500_chargalg_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.14, i32 1968, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create work queue\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_chargalg_bind\00", [43 x i8] zeroinitializer }, align 32
@ab8500_chargalg_bind._entry_ptr = internal global ptr @ab8500_chargalg_bind._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 11, i64 13]
@__sancov_gen_cov_switch_values.102 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10, i64 12]
@__sancov_gen_cov_switch_values.106 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 6, i64 12, i64 13, i64 17, i64 18, i64 47, i64 52]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.111 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"charger_notifier_list\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 274, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2089, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"ab8500_chargalg_match\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2080, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"ab8500_chargalg_pm_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2078, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"ab8500_chargalg_driver\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2085, i32 24 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"supply_interface\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1946, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2032, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2034, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2038, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"ab8500_chargalg_desc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1950, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2048, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2057, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 2062, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [30 x i8] c"ab8500_chargalg_component_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1996, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1947, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 300, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 324, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1321, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1404, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 133, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 814, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 817, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 764, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 396, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 403, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 409, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 413, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 342, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 134, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 135, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 136, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 137, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 138, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 139, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 140, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 141, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 142, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 143, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 144, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 145, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 146, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 147, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 148, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 149, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 150, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 151, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 152, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 153, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 154, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 155, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 156, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 157, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 158, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 159, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 160, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 161, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [36 x i8] c"ab8500_chargalg_ex_ac_enable_toggle\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 558, i32 13 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 706, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 713, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 720, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 461, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 933, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 939, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 859, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 862, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 871, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 881, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 904, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1680, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant [22 x i8] c"ab8500_chargalg_props\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 277, i32 35 }
@___asan_gen_.437 = private unnamed_addr constant [22 x i8] c"ab8500_chargalg_ktype\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1880, i32 25 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1911, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [26 x i8] c"ab8500_chargalg_sysfs_ops\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1875, i32 31 }
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c"ab8500_chargalg_chg\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1869, i32 26 }
@___asan_gen_.452 = private unnamed_addr constant [27 x i8] c"ab8500_chargalg_en_charger\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1831, i32 43 }
@___asan_gen_.455 = private unnamed_addr constant [26 x i8] c"ab8500_chargalg_curr_step\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1835, i32 43 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1832, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1779, i32 22 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1823, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1836, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1767, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1965, i32 20 }
@___asan_gen_.488 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.495 = private constant [42 x i8] c"../drivers/power/supply/ab8500_chargalg.c\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1968, i32 3 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @ab8500_chargalg_algorithm._entry, ptr @ab8500_chargalg_algorithm._entry_ptr, ptr @ab8500_chargalg_bind._entry, ptr @ab8500_chargalg_bind._entry_ptr, ptr @ab8500_chargalg_curr_step_store._entry, ptr @ab8500_chargalg_curr_step_store._entry_ptr, ptr @ab8500_chargalg_en_store._entry, ptr @ab8500_chargalg_en_store._entry_ptr, ptr @ab8500_chargalg_probe._entry, ptr @ab8500_chargalg_probe._entry.17, ptr @ab8500_chargalg_probe._entry.20, ptr @ab8500_chargalg_probe._entry_ptr, ptr @ab8500_chargalg_probe._entry_ptr.19, ptr @ab8500_chargalg_probe._entry_ptr.23, ptr @ab8500_chargalg_safety_timer_expired._entry, ptr @ab8500_chargalg_safety_timer_expired._entry_ptr, ptr @ab8500_chargalg_start_charging._entry, ptr @ab8500_chargalg_start_charging._entry_ptr, ptr @ab8500_chargalg_start_safety_timer._entry, ptr @ab8500_chargalg_start_safety_timer._entry_ptr, ptr @ab8500_chargalg_sysfs_init._entry, ptr @ab8500_chargalg_sysfs_init._entry_ptr, ptr @ab8500_chargalg_wd_work._entry, ptr @ab8500_chargalg_wd_work._entry_ptr, ptr @handle_maxim_chg_curr._entry, ptr @handle_maxim_chg_curr._entry.81, ptr @handle_maxim_chg_curr._entry_ptr, ptr @handle_maxim_chg_curr._entry_ptr.82, ptr @.str, ptr @charger_notifier_list, ptr @.str.1, ptr @.str.2, ptr @ab8500_chargalg_match, ptr @ab8500_chargalg_pm_ops, ptr @ab8500_chargalg_driver, ptr @supply_interface, ptr @ab8500_chargalg_probe.__key, ptr @.str.3, ptr @ab8500_chargalg_probe.__key.4, ptr @.str.5, ptr @ab8500_chargalg_probe.__key.6, ptr @.str.7, ptr @ab8500_chargalg_probe.__key.8, ptr @.str.9, ptr @ab8500_chargalg_probe.__key.10, ptr @.str.11, ptr @ab8500_chargalg_desc, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @ab8500_chargalg_component_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @states, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @ab8500_chargalg_ac_en.ab8500_chargalg_ex_ac_enable_toggle, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @ab8500_chargalg_props, ptr @ab8500_chargalg_ktype, ptr @.str.91, ptr @ab8500_chargalg_sysfs_ops, ptr @ab8500_chargalg_chg, ptr @ab8500_chargalg_en_charger, ptr @ab8500_chargalg_curr_step, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_notifier_list to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supply_interface to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_safety_timer_expired._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_algorithm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @states to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_ac_en.ab8500_chargalg_ex_ac_enable_toggle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_start_charging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_start_safety_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_maxim_chg_curr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_maxim_chg_curr._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_wd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_chg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_en_charger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_curr_step to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_en_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_curr_step_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_chargalg_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 664, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bm = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 13
  %1 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ab8500_bm_data, ptr %bm, align 4
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
  %parent5 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent5, align 8
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %8 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @supply_interface, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %9 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %num_supplicants, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %10 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %drv_data, align 4
  %safety_timer = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 22
  tail call void @hrtimer_init(ptr noundef %safety_timer, i32 noundef 0, i32 noundef 0) #8
  %function = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 22, i32 2
  %11 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ab8500_chargalg_safety_timer_expired, ptr %function, align 8
  %maintenance_timer = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 23
  tail call void @hrtimer_init(ptr noundef %maintenance_timer, i32 noundef 0, i32 noundef 0) #8
  %function8 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 23, i32 2
  %12 = ptrtoint ptr %function8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ab8500_chargalg_maintenance_timer_expired, ptr %function8, align 8
  %chargalg_periodic_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 19
  tail call void @__init_work(ptr noundef %chargalg_periodic_work, i32 noundef 0) #8
  %13 = ptrtoint ptr %chargalg_periodic_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %chargalg_periodic_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 19, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @ab8500_chargalg_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry16 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 19, i32 0, i32 1
  %14 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 19, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 19, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ab8500_chargalg_periodic_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 19, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.5, ptr noundef nonnull @ab8500_chargalg_probe.__key.4) #8
  %chargalg_wd_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %chargalg_wd_work, i32 noundef 0) #8
  %17 = ptrtoint ptr %chargalg_wd_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %chargalg_wd_work, align 8
  %lockdep_map35 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 20, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35, ptr noundef nonnull @.str.7, ptr noundef nonnull @ab8500_chargalg_probe.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry38 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 20, i32 0, i32 1
  %18 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i133 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 20, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry38, ptr %prev.i133, align 4
  %func41 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 20, i32 0, i32 2
  %20 = ptrtoint ptr %func41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ab8500_chargalg_wd_work, ptr %func41, align 4
  %timer46 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 20, i32 1
  tail call void @init_timer_key(ptr noundef %timer46, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.9, ptr noundef nonnull @ab8500_chargalg_probe.__key.8) #8
  %chargalg_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %chargalg_work, i32 noundef 0) #8
  %21 = ptrtoint ptr %chargalg_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %chargalg_work, align 4
  %lockdep_map57 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map57, ptr noundef nonnull @.str.11, ptr noundef nonnull @ab8500_chargalg_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry59 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 21, i32 1
  %22 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i134 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 21, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry59, ptr %prev.i134, align 4
  %func61 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 21, i32 2
  %24 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ab8500_chargalg_work, ptr %func61, align 4
  %prev_conn_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %prev_conn_chg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %prev_conn_chg, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %call65 = call ptr @devm_power_supply_register(ptr noundef %27, ptr noundef nonnull @ab8500_chargalg_desc, ptr noundef nonnull %psy_cfg) #8
  %chargalg_psy = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 14
  %28 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call65, ptr %chargalg_psy, align 8
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12) #11
  %31 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chargalg_psy, align 8
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

if.end75:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %chargalg_kobject.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 24
  %call.i135 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %chargalg_kobject.i, ptr noundef nonnull @ab8500_chargalg_ktype, ptr noundef null, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp.i136 = icmp slt i32 %call.i135, 0
  br i1 %cmp.i136, label %ab8500_chargalg_sysfs_init.exit.thread, label %ab8500_chargalg_sysfs_init.exit

ab8500_chargalg_sysfs_init.exit.thread:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.18) #11
  br label %do.end81

ab8500_chargalg_sysfs_init.exit:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool77.not = icmp eq i32 %call.i135, 0
  br i1 %tobool77.not, label %if.end83, label %ab8500_chargalg_sysfs_init.exit.do.end81_crit_edge

ab8500_chargalg_sysfs_init.exit.do.end81_crit_edge: ; preds = %ab8500_chargalg_sysfs_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81

do.end81:                                         ; preds = %ab8500_chargalg_sysfs_init.exit.do.end81_crit_edge, %ab8500_chargalg_sysfs_init.exit.thread
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end83:                                         ; preds = %ab8500_chargalg_sysfs_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %curr_step_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %call.i, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %curr_step_ua to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 100000, ptr %curr_step_ua, align 4
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.21) #11
  %call88 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @ab8500_chargalg_component_ops) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end81, %do.end71, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %do.end71 ], [ %call.i135, %do.end81 ], [ %call88, %if.end83 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @ab8500_chargalg_component_ops) #8
  %chargalg_kobject.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 24
  tail call void @kobject_del(ptr noundef %chargalg_kobject.i) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_safety_timer_expired(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -432
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #11
  %safety_timer_expired = getelementptr i8, ptr %timer, i32 -257
  %2 = ptrtoint ptr %safety_timer_expired to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %safety_timer_expired, align 1
  %chargalg_wq = getelementptr i8, ptr %timer, i32 -248
  %3 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chargalg_wq, align 8
  %chargalg_work = getelementptr i8, ptr %timer, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %chargalg_work) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_maintenance_timer_expired(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_maintenance_timer_expired.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_maintenance_timer_expired, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %timer, i32 -480
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_maintenance_timer_expired.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.28) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %maintenance_timer_expired = getelementptr i8, ptr %timer, i32 -304
  %2 = ptrtoint ptr %maintenance_timer_expired to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %maintenance_timer_expired, align 4
  %chargalg_wq = getelementptr i8, ptr %timer, i32 -296
  %3 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chargalg_wq, align 8
  %chargalg_work = getelementptr i8, ptr %timer, i32 -92
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %chargalg_work) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_chargalg_periodic_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  tail call fastcc void @ab8500_chargalg_algorithm(ptr noundef %add.ptr)
  %chg_info = getelementptr i8, ptr %work, i32 -132
  %0 = ptrtoint ptr %chg_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chg_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %chargalg_wq1 = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %chargalg_wq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chargalg_wq1, align 8
  %bm3 = getelementptr i8, ptr %work, i32 -40
  %4 = ptrtoint ptr %bm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bm3, align 4
  %interval_not_charging = getelementptr inbounds %struct.ab8500_bm_data, ptr %5, i32 0, i32 16
  %interval_charging = getelementptr inbounds %struct.ab8500_bm_data, ptr %5, i32 0, i32 15
  %interval_not_charging.sink = select i1 %tobool.not, ptr %interval_not_charging, ptr %interval_charging
  %6 = ptrtoint ptr %interval_not_charging.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interval_not_charging.sink, align 4
  %mul4 = mul i32 %7, 100
  %call.i13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef %mul4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_chargalg_wd_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -288
  %ac_chg.i = getelementptr i8, ptr %work, i32 -132
  %0 = ptrtoint ptr %ac_chg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac_chg.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %kick_wd.i = getelementptr inbounds %struct.ux500_charger, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %kick_wd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kick_wd.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %online_chg.i = getelementptr i8, ptr %work, i32 -224
  %4 = ptrtoint ptr %online_chg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %online_chg.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true3.i.if.else.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  %external.i = getelementptr inbounds %struct.ux500_charger, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %external.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %external.i, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true7.i:                                 ; preds = %if.then.i
  %usb_chg.i = getelementptr i8, ptr %work, i32 -128
  %8 = ptrtoint ptr %usb_chg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_chg.i, align 8
  %tobool8.not.i = icmp eq ptr %9, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %kick_wd12.i = getelementptr inbounds %struct.ux500_charger, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %kick_wd12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kick_wd12.i, align 4
  %tobool13.not.i = icmp eq ptr %11, null
  br i1 %tobool13.not.i, label %land.lhs.true9.i.if.end.i_crit_edge, label %if.then14.i

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then14.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %11(ptr noundef nonnull %9) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i, %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true7.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %ac_chg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ac_chg.i, align 4
  %kick_wd21.i = getelementptr inbounds %struct.ux500_charger, ptr %13, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %kick_wd21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kick_wd21.i, align 4
  %call23.i = tail call i32 %15(ptr noundef %13) #8
  br label %ab8500_chargalg_kick_watchdog.exit

if.else.i:                                        ; preds = %land.lhs.true3.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %usb_chg24.i = getelementptr i8, ptr %work, i32 -128
  %16 = ptrtoint ptr %usb_chg24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_chg24.i, align 8
  %tobool25.not.i = icmp eq ptr %17, null
  br i1 %tobool25.not.i, label %if.else.i.do.end_crit_edge, label %land.lhs.true26.i

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true26.i:                                ; preds = %if.else.i
  %kick_wd29.i = getelementptr inbounds %struct.ux500_charger, ptr %17, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %kick_wd29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kick_wd29.i, align 4
  %tobool30.not.i = icmp eq ptr %19, null
  br i1 %tobool30.not.i, label %land.lhs.true26.i.do.end_crit_edge, label %land.lhs.true31.i

land.lhs.true26.i.do.end_crit_edge:               ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true31.i:                                ; preds = %land.lhs.true26.i
  %online_chg33.i = getelementptr i8, ptr %work, i32 -224
  %20 = ptrtoint ptr %online_chg33.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %online_chg33.i, align 8
  %and34.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true31.i.do.end_crit_edge, label %if.then36.i

land.lhs.true31.i.do.end_crit_edge:               ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then36.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = tail call i32 %19(ptr noundef nonnull %17) #8
  br label %ab8500_chargalg_kick_watchdog.exit

ab8500_chargalg_kick_watchdog.exit:               ; preds = %if.then36.i, %if.end.i
  %retval.0.i = phi i32 [ %call23.i, %if.end.i ], [ %call41.i, %if.then36.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ab8500_chargalg_kick_watchdog.exit.do.end_crit_edge, label %ab8500_chargalg_kick_watchdog.exit.if.end_crit_edge

ab8500_chargalg_kick_watchdog.exit.if.end_crit_edge: ; preds = %ab8500_chargalg_kick_watchdog.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ab8500_chargalg_kick_watchdog.exit.do.end_crit_edge: ; preds = %ab8500_chargalg_kick_watchdog.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %ab8500_chargalg_kick_watchdog.exit.do.end_crit_edge, %land.lhs.true31.i.do.end_crit_edge, %land.lhs.true26.i.do.end_crit_edge, %if.else.i.do.end_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.89) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %ab8500_chargalg_kick_watchdog.exit.if.end_crit_edge
  %chargalg_wq = getelementptr i8, ptr %work, i32 -104
  %24 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chargalg_wq, align 8
  %call.i5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work, i32 noundef 600) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_chargalg_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -388
  tail call fastcc void @ab8500_chargalg_algorithm(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_chargalg_algorithm(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bm = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 13
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @power_supply_class to i32))
  %4 = load ptr, ptr @power_supply_class, align 4
  %chargalg_psy = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 14
  %5 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chargalg_psy, align 8
  %call = tail call i32 @class_for_each_device(ptr noundef %4, ptr noundef null, ptr noundef %6, ptr noundef nonnull @ab8500_chargalg_get_ext_psy_data) #8
  tail call fastcc void @ab8500_chargalg_end_of_charge(ptr noundef %di)
  tail call fastcc void @ab8500_chargalg_check_temp(ptr noundef %di)
  %usb_volt_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %usb_volt_uv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_volt_uv.i, align 8
  %9 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bm, align 4
  %chg_params.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %chg_params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chg_params.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp.i = icmp sle i32 %8, %14
  %spec.select.i = zext i1 %cmp.i to i8
  %15 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select.i, ptr %15, align 4
  %ac_volt_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 9
  %17 = ptrtoint ptr %ac_volt_uv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ac_volt_uv.i, align 8
  %19 = ptrtoint ptr %chg_params.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chg_params.i, align 4
  %ac_volt_max_uv.i = getelementptr inbounds %struct.ab8500_bm_charger_parameters, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ac_volt_max_uv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ac_volt_max_uv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp7.i = icmp sle i32 %18, %22
  %.sink21.i = zext i1 %cmp7.i to i8
  %23 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 6
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink21.i, ptr %23, align 1
  %call2 = tail call fastcc i32 @ab8500_chargalg_check_charger_connection(ptr noundef %di)
  %curr_status.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 12
  %25 = ptrtoint ptr %curr_status.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %curr_status.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %entry.ab8500_chargalg_check_current_step_status.exit_crit_edge, label %if.then.i

entry.ab8500_chargalg_check_current_step_status.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_check_current_step_status.exit

if.then.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit.i)) #8
          to label %if.then.i.i [label %ab8500_chargalg_state_to.exit.i], !srcloc !258

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %di, align 8
  %charge_state.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %29 = ptrtoint ptr %charge_state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %charge_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 6
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.44, ptr @.str.45
  %arrayidx.i.i = getelementptr [28 x ptr], ptr @states, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %28, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i.i, i32 noundef %30, ptr noundef %32, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %ab8500_chargalg_state_to.exit.i

ab8500_chargalg_state_to.exit.i:                  ; preds = %if.then.i.i, %if.then.i
  %charge_state7.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %33 = ptrtoint ptr %charge_state7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %charge_state7.i.i, align 8
  br label %ab8500_chargalg_check_current_step_status.exit

ab8500_chargalg_check_current_step_status.exit:   ; preds = %ab8500_chargalg_state_to.exit.i, %entry.ab8500_chargalg_check_current_step_status.exit_crit_edge
  %34 = ptrtoint ptr %curr_status.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %curr_status.i, align 4
  %parent = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 11
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 8
  %version.i = getelementptr inbounds %struct.ab8500, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i512.not = icmp eq i32 %38, 0
  br i1 %cmp.i512.not, label %if.then, label %ab8500_chargalg_check_current_step_status.exit.if.end6_crit_edge

ab8500_chargalg_check_current_step_status.exit.if.end6_crit_edge: ; preds = %ab8500_chargalg_check_current_step_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %ab8500_chargalg_check_current_step_status.exit
  %39 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bm, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %charge_state.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %43 = ptrtoint ptr %charge_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %charge_state.i, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %if.then.if.end6_crit_edge [
    i32 7, label %if.then.sw.epilog.i_crit_edge
    i32 11, label %if.then.sw.epilog.i_crit_edge793
    i32 13, label %if.then.sw.epilog.i_crit_edge794
  ]

if.then.sw.epilog.i_crit_edge794:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge793:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

sw.epilog.i:                                      ; preds = %if.then.sw.epilog.i_crit_edge, %if.then.sw.epilog.i_crit_edge793, %if.then.sw.epilog.i_crit_edge794
  %charger_type.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %46 = ptrtoint ptr %charger_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %charger_type.i, align 8
  %and.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i514 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i514, label %if.else.i, label %if.then.i515

if.then.i515:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %usb_chg.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %48 = ptrtoint ptr %usb_chg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_chg.i, align 8
  br label %ab8500_chargalg_check_charger_enable.exit

if.else.i:                                        ; preds = %sw.epilog.i
  %and5.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.if.end6_crit_edge, label %land.lhs.true.i

if.else.i.if.end6_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.i:                                  ; preds = %if.else.i
  %ac_chg.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %50 = ptrtoint ptr %ac_chg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ac_chg.i, align 4
  %external.i = getelementptr inbounds %struct.ux500_charger, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %external.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %external.i, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool7.not.i = icmp eq i8 %53, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.ab8500_chargalg_check_charger_enable.exit_crit_edge, label %land.lhs.true.i.if.end6_crit_edge

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.i.ab8500_chargalg_check_charger_enable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_check_charger_enable.exit

ab8500_chargalg_check_charger_enable.exit:        ; preds = %land.lhs.true.i.ab8500_chargalg_check_charger_enable.exit_crit_edge, %if.then.i515
  %.sink31.i = phi ptr [ %49, %if.then.i515 ], [ %51, %land.lhs.true.i.ab8500_chargalg_check_charger_enable.exit_crit_edge ]
  %check_enable11.i = getelementptr inbounds %struct.ux500_charger, ptr %.sink31.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %check_enable11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %check_enable11.i, align 4
  %constant_charge_voltage_max_uv13.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %42, i32 0, i32 12
  %56 = ptrtoint ptr %constant_charge_voltage_max_uv13.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %constant_charge_voltage_max_uv13.i, align 4
  %constant_charge_current_max_ua14.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %42, i32 0, i32 11
  %58 = ptrtoint ptr %constant_charge_current_max_ua14.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %constant_charge_current_max_ua14.i, align 4
  %call15.i = tail call i32 %55(ptr noundef %.sink31.i, i32 noundef %57, i32 noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp = icmp slt i32 %call15.i, 0
  br i1 %cmp, label %do.end, label %ab8500_chargalg_check_charger_enable.exit.if.end6_crit_edge

ab8500_chargalg_check_charger_enable.exit.if.end6_crit_edge: ; preds = %ab8500_chargalg_check_charger_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %ab8500_chargalg_check_charger_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.29, i32 noundef %call15.i) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %ab8500_chargalg_check_charger_enable.exit.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge, %if.else.i.if.end6_crit_edge, %if.then.if.end6_crit_edge, %ab8500_chargalg_check_current_step_status.exit.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool7.not = icmp eq i32 %call2, 0
  br i1 %tobool7.not, label %if.end6.if.then11_crit_edge, label %lor.lhs.false

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  %events = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17
  %62 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %events, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool8.not = icmp eq i8 %63, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %64 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bm, align 4
  %chg_unknown_bat = getelementptr inbounds %struct.ab8500_bm_data, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %chg_unknown_bat to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %chg_unknown_bat, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool10.not = icmp eq i8 %67, 0
  br i1 %tobool10.not, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %land.lhs.true.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %charge_state = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %68 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %charge_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp12.not = icmp eq i32 %69, 1
  br i1 %cmp12.not, label %if.then11.do.body120_crit_edge, label %if.then13

if.then11.do.body120_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then13:                                        ; preds = %if.then11
  %safety_timer_expired = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 11
  %70 = ptrtoint ptr %safety_timer_expired to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %safety_timer_expired, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit)) #8
          to label %if.then.i519 [label %ab8500_chargalg_state_to.exit], !srcloc !258

if.then.i519:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %di, align 8
  %73 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %charge_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i518 = icmp eq i32 %74, 0
  %cond.i = select i1 %cmp.i518, ptr @.str.44, ptr @.str.45
  %arrayidx.i = getelementptr [28 x ptr], ptr @states, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %72, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i, i32 noundef %74, ptr noundef %76, i32 noundef 0, ptr noundef nonnull @.str.46) #8
  br label %ab8500_chargalg_state_to.exit

ab8500_chargalg_state_to.exit:                    ; preds = %if.then.i519, %if.then13
  %77 = ptrtoint ptr %charge_state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %charge_state, align 8
  br label %do.body120

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %charge_state16 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %78 = ptrtoint ptr %charge_state16 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %charge_state16, align 8
  %80 = and i32 %79, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %80)
  %switch = icmp eq i32 %80, 18
  br i1 %switch, label %if.else.do.body120_crit_edge, label %if.else22

if.else.do.body120_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.else22:                                        ; preds = %if.else
  %safety_timer_expired24 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 11
  %81 = ptrtoint ptr %safety_timer_expired24 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %safety_timer_expired24, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool25.not = icmp eq i8 %82, 0
  br i1 %tobool25.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %79)
  %cmp28.not = icmp eq i32 %79, 23
  br i1 %cmp28.not, label %if.then26.do.body120_crit_edge, label %if.then29

if.then26.do.body120_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then29:                                        ; preds = %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit526)) #8
          to label %if.then.i524 [label %ab8500_chargalg_state_to.exit526], !srcloc !258

if.then.i524:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %di, align 8
  %85 = ptrtoint ptr %charge_state16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %charge_state16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %86)
  %cmp.i521 = icmp eq i32 %86, 22
  %cond.i522 = select i1 %cmp.i521, ptr @.str.44, ptr @.str.45
  %arrayidx.i523 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx.i523 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i523, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %84, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i522, i32 noundef %86, ptr noundef %88, i32 noundef 22, ptr noundef nonnull @.str.68) #8
  br label %ab8500_chargalg_state_to.exit526

ab8500_chargalg_state_to.exit526:                 ; preds = %if.then.i524, %if.then29
  %89 = ptrtoint ptr %charge_state16 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 22, ptr %charge_state16, align 8
  br label %do.body120

if.else31:                                        ; preds = %if.else22
  %batt_rem = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 3
  %90 = ptrtoint ptr %batt_rem to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %batt_rem, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool33.not = icmp eq i8 %91, 0
  br i1 %tobool33.not, label %if.else39, label %if.then34

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %79)
  %cmp36.not = icmp eq i32 %79, 25
  br i1 %cmp36.not, label %if.then34.do.body120_crit_edge, label %if.then37

if.then34.do.body120_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then37:                                        ; preds = %if.then34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit533)) #8
          to label %if.then.i531 [label %ab8500_chargalg_state_to.exit533], !srcloc !258

if.then.i531:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %di, align 8
  %94 = ptrtoint ptr %charge_state16 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %charge_state16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %95)
  %cmp.i528 = icmp eq i32 %95, 24
  %cond.i529 = select i1 %cmp.i528, ptr @.str.44, ptr @.str.45
  %arrayidx.i530 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx.i530 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i530, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %93, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i529, i32 noundef %95, ptr noundef %97, i32 noundef 24, ptr noundef nonnull @.str.70) #8
  br label %ab8500_chargalg_state_to.exit533

ab8500_chargalg_state_to.exit533:                 ; preds = %if.then.i531, %if.then37
  %98 = ptrtoint ptr %charge_state16 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 24, ptr %charge_state16, align 8
  br label %do.body120

if.else39:                                        ; preds = %if.else31
  %mainextchnotok = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 1
  %99 = ptrtoint ptr %mainextchnotok to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %mainextchnotok, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool41.not = icmp eq i8 %100, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %if.else39.if.then45_crit_edge

if.else39.if.then45_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false42:                                  ; preds = %if.else39
  %usbchargernotok = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 10
  %101 = ptrtoint ptr %usbchargernotok to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %usbchargernotok, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool44.not = icmp eq i8 %102, 0
  br i1 %tobool44.not, label %if.else53, label %lor.lhs.false42.if.then45_crit_edge

lor.lhs.false42.if.then45_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false42.if.then45_crit_edge, %if.else39.if.then45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp47.not = icmp eq i32 %79, 3
  br i1 %cmp47.not, label %if.then45.do.body120_crit_edge, label %land.lhs.true48

if.then45.do.body120_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

land.lhs.true48:                                  ; preds = %if.then45
  %vbus_collapsed = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 17
  %103 = ptrtoint ptr %vbus_collapsed to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %vbus_collapsed, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool50.not = icmp eq i8 %104, 0
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true48.do.body120_crit_edge

land.lhs.true48.do.body120_crit_edge:             ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 2)
  br label %do.body120

if.else53:                                        ; preds = %lor.lhs.false42
  %vbus_ovv = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 9
  %105 = ptrtoint ptr %vbus_ovv to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %vbus_ovv, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool55.not = icmp eq i8 %106, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %if.else53.if.then67_crit_edge

if.else53.if.then67_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false56:                                  ; preds = %if.else53
  %main_ovv = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 8
  %107 = ptrtoint ptr %main_ovv to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %main_ovv, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool58.not = icmp eq i8 %108, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %lor.lhs.false56.if.then67_crit_edge

lor.lhs.false56.if.then67_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %batt_ovv = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 2
  %109 = ptrtoint ptr %batt_ovv to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %batt_ovv, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool61.not = icmp eq i8 %110, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %lor.lhs.false59.if.then67_crit_edge

lor.lhs.false59.if.then67_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %111 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %15, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool63.not = icmp eq i8 %112, 0
  br i1 %tobool63.not, label %lor.lhs.false62.if.then67_crit_edge, label %lor.lhs.false64

lor.lhs.false62.if.then67_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false64:                                  ; preds = %lor.lhs.false62
  %113 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %23, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool66.not = icmp eq i8 %114, 0
  br i1 %tobool66.not, label %lor.lhs.false64.if.then67_crit_edge, label %if.else72

lor.lhs.false64.if.then67_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false64.if.then67_crit_edge, %lor.lhs.false62.if.then67_crit_edge, %lor.lhs.false59.if.then67_crit_edge, %lor.lhs.false56.if.then67_crit_edge, %if.else53.if.then67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %79)
  %cmp69.not = icmp eq i32 %79, 21
  br i1 %cmp69.not, label %if.then67.do.body120_crit_edge, label %if.then70

if.then67.do.body120_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then70:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 20)
  br label %do.body120

if.else72:                                        ; preds = %lor.lhs.false64
  %main_thermal_prot = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 6
  %115 = ptrtoint ptr %main_thermal_prot to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %main_thermal_prot, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool74.not = icmp eq i8 %116, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %if.else72.if.then78_crit_edge

if.else72.if.then78_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false75:                                  ; preds = %if.else72
  %usb_thermal_prot = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 7
  %117 = ptrtoint ptr %usb_thermal_prot to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %usb_thermal_prot, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool77.not = icmp eq i8 %118, 0
  br i1 %tobool77.not, label %if.else83, label %lor.lhs.false75.if.then78_crit_edge

lor.lhs.false75.if.then78_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

if.then78:                                        ; preds = %lor.lhs.false75.if.then78_crit_edge, %if.else72.if.then78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %79)
  %cmp80.not = icmp eq i32 %79, 5
  br i1 %cmp80.not, label %if.then78.do.body120_crit_edge, label %if.then81

if.then78.do.body120_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then81:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 4)
  br label %do.body120

if.else83:                                        ; preds = %lor.lhs.false75
  %btemp_underover = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 4
  %119 = ptrtoint ptr %btemp_underover to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %btemp_underover, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool85.not = icmp eq i8 %120, 0
  br i1 %tobool85.not, label %if.else91, label %if.then86

if.then86:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %79)
  %cmp88.not = icmp eq i32 %79, 15
  br i1 %cmp88.not, label %if.then86.do.body120_crit_edge, label %if.then89

if.then86.do.body120_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 14)
  br label %do.body120

if.else91:                                        ; preds = %if.else83
  %ac_wd_expired = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 13
  %121 = ptrtoint ptr %ac_wd_expired to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ac_wd_expired, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool93.not = icmp eq i8 %122, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %if.else91.if.then97_crit_edge

if.else91.if.then97_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

lor.lhs.false94:                                  ; preds = %if.else91
  %usb_wd_expired = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 14
  %123 = ptrtoint ptr %usb_wd_expired to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %usb_wd_expired, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool96.not = icmp eq i8 %124, 0
  br i1 %tobool96.not, label %if.else102, label %lor.lhs.false94.if.then97_crit_edge

lor.lhs.false94.if.then97_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false94.if.then97_crit_edge, %if.else91.if.then97_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %79)
  %cmp99.not = icmp eq i32 %79, 27
  br i1 %cmp99.not, label %if.then97.do.body120_crit_edge, label %if.then100

if.then97.do.body120_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 26)
  br label %do.body120

if.else102:                                       ; preds = %lor.lhs.false94
  %btemp_lowhigh = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 5
  %125 = ptrtoint ptr %btemp_lowhigh to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %btemp_lowhigh, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool104.not = icmp eq i8 %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %79)
  %cmp107.not = icmp eq i32 %79, 17
  %or.cond = select i1 %tobool104.not, i1 true, i1 %cmp107.not
  br i1 %or.cond, label %if.else102.do.body120_crit_edge, label %if.then108

if.else102.do.body120_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then108:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 16)
  br label %do.body120

do.body120:                                       ; preds = %if.then108, %if.else102.do.body120_crit_edge, %if.then100, %if.then97.do.body120_crit_edge, %if.then89, %if.then86.do.body120_crit_edge, %if.then81, %if.then78.do.body120_crit_edge, %if.then70, %if.then67.do.body120_crit_edge, %if.then51, %land.lhs.true48.do.body120_crit_edge, %if.then45.do.body120_crit_edge, %ab8500_chargalg_state_to.exit533, %if.then34.do.body120_crit_edge, %ab8500_chargalg_state_to.exit526, %if.then26.do.body120_crit_edge, %if.else.do.body120_crit_edge, %ab8500_chargalg_state_to.exit, %if.then11.do.body120_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_algorithm.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %do.end158)) #8
          to label %if.then126 [label %do.end158], !srcloc !258

if.then126:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %di, align 8
  %batt_data = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9
  %volt_uv = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 1
  %129 = ptrtoint ptr %volt_uv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %volt_uv, align 4
  %avg_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 2
  %131 = ptrtoint ptr %avg_curr_ua to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %avg_curr_ua, align 8
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 3
  %133 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %inst_curr_ua, align 4
  %135 = ptrtoint ptr %batt_data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %batt_data, align 8
  %percent = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 4
  %137 = ptrtoint ptr %percent to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %percent, align 8
  %maintenance_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 3
  %139 = ptrtoint ptr %maintenance_chg to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %maintenance_chg, align 4, !range !259
  %141 = zext i8 %140 to i32
  %charge_state133 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %142 = ptrtoint ptr %charge_state133 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %charge_state133, align 8
  %arrayidx = getelementptr [28 x ptr], ptr @states, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx, align 4
  %chg_info134 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8
  %charger_type = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %146 = ptrtoint ptr %charger_type to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %charger_type, align 8
  %charge_status = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %148 = ptrtoint ptr %charge_status to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %charge_status, align 4
  %150 = ptrtoint ptr %chg_info134 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %chg_info134, align 8
  %and = and i32 %151, 1
  %and138 = and i32 %151, 2
  %online_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 2
  %152 = ptrtoint ptr %online_chg to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %online_chg, align 8
  %and140 = and i32 %153, 1
  %and143 = and i32 %153, 2
  %ac_cv_active = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 15
  %154 = ptrtoint ptr %ac_cv_active to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ac_cv_active, align 1, !range !259
  %156 = zext i8 %155 to i32
  %usb_cv_active = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 16
  %157 = ptrtoint ptr %usb_cv_active to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %usb_cv_active, align 4, !range !259
  %159 = zext i8 %158 to i32
  %ac_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 10
  %160 = ptrtoint ptr %ac_curr_ua to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ac_curr_ua, align 4
  %usb_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 8
  %162 = ptrtoint ptr %usb_curr_ua to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %usb_curr_ua, align 4
  %ac_vset_uv = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 13
  %164 = ptrtoint ptr %ac_vset_uv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ac_vset_uv, align 8
  %ac_iset_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %166 = ptrtoint ptr %ac_iset_ua to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ac_iset_ua, align 4
  %usb_vset_uv = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 11
  %168 = ptrtoint ptr %usb_vset_uv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %usb_vset_uv, align 8
  %usb_iset_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %170 = ptrtoint ptr %usb_iset_ua to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %usb_iset_ua, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_algorithm.__UNIQUE_ID_ddebug316, ptr noundef %128, ptr noundef nonnull @.str.31, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %141, ptr noundef %145, i32 noundef %147, i32 noundef %149, i32 noundef %and, i32 noundef %and138, i32 noundef %and140, i32 noundef %and143, i32 noundef %156, i32 noundef %159, i32 noundef %161, i32 noundef %163, i32 noundef %165, i32 noundef %167, i32 noundef %169, i32 noundef %171) #8
  br label %do.end158

do.end158:                                        ; preds = %if.then126, %do.body120
  %charge_state159 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %172 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %charge_state159, align 8
  %174 = zext i32 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %173, label %do.end158.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 15, label %do.end158.sw.bb314_crit_edge
    i32 18, label %sw.bb161
    i32 14, label %sw.bb313
    i32 24, label %sw.bb174
    i32 25, label %do.end158.sw.bb175_crit_edge
    i32 4, label %sw.bb181
    i32 5, label %do.end158.sw.bb182_crit_edge
    i32 20, label %sw.bb192
    i32 21, label %do.end158.sw.bb193_crit_edge
    i32 2, label %sw.bb217
    i32 3, label %do.end158.sw.bb218_crit_edge
    i32 22, label %sw.bb228
    i32 27, label %do.end158.sw.bb303_crit_edge
    i32 6, label %sw.bb229
    i32 7, label %sw.bb240
    i32 8, label %sw.bb255
    i32 9, label %do.end158.sw.bb256_crit_edge
    i32 10, label %sw.bb263
    i32 11, label %do.end158.sw.bb270_crit_edge
    i32 12, label %sw.bb275
    i32 13, label %do.end158.sw.bb283_crit_edge
    i32 16, label %sw.bb289
    i32 17, label %do.end158.sw.bb296_crit_edge
    i32 26, label %sw.bb302
  ]

do.end158.sw.bb296_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb296

do.end158.sw.bb283_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb283

do.end158.sw.bb270_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb270

do.end158.sw.bb256_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb256

do.end158.sw.bb303_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb303

do.end158.sw.bb218_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb218

do.end158.sw.bb193_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb193

do.end158.sw.bb182_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb182

do.end158.sw.bb175_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb175

do.end158.sw.bb314_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb314

do.end158.sw.epilog_crit_edge:                    ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  %charge_status160 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %175 = ptrtoint ptr %charge_status160 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 2, ptr %charge_status160, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit540)) #8
          to label %if.then.i538 [label %ab8500_chargalg_state_to.exit540], !srcloc !258

if.then.i538:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %di, align 8
  %178 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp.i535 = icmp eq i32 %179, 1
  %cond.i536 = select i1 %cmp.i535, ptr @.str.44, ptr @.str.45
  %arrayidx.i537 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %179
  %180 = ptrtoint ptr %arrayidx.i537 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i537, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %177, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i536, i32 noundef %179, ptr noundef %181, i32 noundef 1, ptr noundef nonnull @.str.47) #8
  br label %ab8500_chargalg_state_to.exit540

ab8500_chargalg_state_to.exit540:                 ; preds = %if.then.i538, %sw.bb
  %182 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %charge_state159, align 8
  br label %if.end333

sw.bb161:                                         ; preds = %do.end158
  %ac_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 1
  %183 = ptrtoint ptr %ac_suspended to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %ac_suspended, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool162.not = icmp eq i8 %184, 0
  br i1 %tobool162.not, label %sw.bb161.if.end165_crit_edge, label %if.then163

sw.bb161.if.end165_crit_edge:                     ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

if.then163:                                       ; preds = %sw.bb161
  %ac_chg.i541 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %185 = ptrtoint ptr %ac_chg.i541 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ac_chg.i541, align 4
  %tobool.not.i542 = icmp eq ptr %186, null
  br i1 %tobool.not.i542, label %if.then163.if.end165_crit_edge, label %lor.lhs.false.i

if.then163.if.end165_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

lor.lhs.false.i:                                  ; preds = %if.then163
  %ops.i = getelementptr inbounds %struct.ux500_charger, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops.i, align 4
  %tobool3.not.i = icmp eq ptr %188, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end165_crit_edge, label %if.end.i

lor.lhs.false.i.if.end165_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i = getelementptr inbounds %struct.ux500_charger, ptr %186, i32 0, i32 2
  %189 = ptrtoint ptr %max_out_volt_uv.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %max_out_volt_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool5.not.i = icmp eq i32 %190, 0
  %191 = tail call i32 @llvm.smin.i32(i32 %190, i32 0) #8
  %vset_uv.addr.0.i = select i1 %tobool5.not.i, i32 0, i32 %191
  %max_out_curr_ua.i = getelementptr inbounds %struct.ux500_charger, ptr %186, i32 0, i32 3
  %192 = ptrtoint ptr %max_out_curr_ua.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %max_out_curr_ua.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool11.not.i = icmp eq i32 %193, 0
  %194 = tail call i32 @llvm.smin.i32(i32 %193, i32 0) #8
  %iset_ua.addr.0.i = select i1 %tobool11.not.i, i32 0, i32 %194
  %ac_iset_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %195 = ptrtoint ptr %ac_iset_ua.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %iset_ua.addr.0.i, ptr %ac_iset_ua.i, align 4
  %ac_vset_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 13
  %196 = ptrtoint ptr %ac_vset_uv.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %vset_uv.addr.0.i, ptr %ac_vset_uv.i, align 8
  %197 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ops.i, align 4
  %call34.i = tail call i32 %198(ptr noundef nonnull %186, i32 noundef 0, i32 noundef %vset_uv.addr.0.i, i32 noundef %iset_ua.addr.0.i) #8
  br label %if.end165

if.end165:                                        ; preds = %if.end.i, %lor.lhs.false.i.if.end165_crit_edge, %if.then163.if.end165_crit_edge, %sw.bb161.if.end165_crit_edge
  %usb_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 2
  %199 = ptrtoint ptr %usb_suspended to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %usb_suspended, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool167.not = icmp eq i8 %200, 0
  br i1 %tobool167.not, label %if.end165.if.end170_crit_edge, label %if.then168

if.end165.if.end170_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then168:                                       ; preds = %if.end165
  %usb_chg.i543 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %201 = ptrtoint ptr %usb_chg.i543 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %usb_chg.i543, align 8
  %tobool.not.i544 = icmp eq ptr %202, null
  br i1 %tobool.not.i544, label %if.then168.if.end170_crit_edge, label %lor.lhs.false.i547

if.then168.if.end170_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

lor.lhs.false.i547:                               ; preds = %if.then168
  %ops.i545 = getelementptr inbounds %struct.ux500_charger, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %ops.i545 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ops.i545, align 4
  %tobool3.not.i546 = icmp eq ptr %204, null
  br i1 %tobool3.not.i546, label %lor.lhs.false.i547.if.end170_crit_edge, label %if.end.i554

lor.lhs.false.i547.if.end170_crit_edge:           ; preds = %lor.lhs.false.i547
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.end.i554:                                      ; preds = %lor.lhs.false.i547
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i548 = getelementptr inbounds %struct.ux500_charger, ptr %202, i32 0, i32 2
  %205 = ptrtoint ptr %max_out_volt_uv.i548 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %max_out_volt_uv.i548, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool5.not.i549 = icmp eq i32 %206, 0
  %207 = tail call i32 @llvm.smin.i32(i32 %206, i32 0) #8
  %vset_uv.addr.0.i550 = select i1 %tobool5.not.i549, i32 0, i32 %207
  %max_out_curr_ua.i551 = getelementptr inbounds %struct.ux500_charger, ptr %202, i32 0, i32 3
  %208 = ptrtoint ptr %max_out_curr_ua.i551 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %max_out_curr_ua.i551, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool11.not.i552 = icmp eq i32 %209, 0
  %210 = tail call i32 @llvm.smin.i32(i32 %209, i32 0) #8
  %iset_ua.addr.0.i553 = select i1 %tobool11.not.i552, i32 0, i32 %210
  %usb_iset_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %211 = ptrtoint ptr %usb_iset_ua.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %iset_ua.addr.0.i553, ptr %usb_iset_ua.i, align 4
  %usb_vset_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 11
  %212 = ptrtoint ptr %usb_vset_uv.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %vset_uv.addr.0.i550, ptr %usb_vset_uv.i, align 8
  %213 = ptrtoint ptr %ops.i545 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ops.i545, align 4
  %call.i = tail call i32 %214(ptr noundef nonnull %202, i32 noundef 0, i32 noundef %vset_uv.addr.0.i550, i32 noundef %iset_ua.addr.0.i553) #8
  br label %if.end170

if.end170:                                        ; preds = %if.end.i554, %lor.lhs.false.i547.if.end170_crit_edge, %if.then168.if.end170_crit_edge, %if.end165.if.end170_crit_edge
  %safety_timer.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 22
  %call.i555 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %safety_timer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i555)
  %cmp.i556 = icmp sgt i32 %call.i555, -1
  br i1 %cmp.i556, label %if.then.i557, label %if.end170.ab8500_chargalg_stop_safety_timer.exit_crit_edge

if.end170.ab8500_chargalg_stop_safety_timer.exit_crit_edge: ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_safety_timer.exit

if.then.i557:                                     ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %safety_timer_expired.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 11
  %215 = ptrtoint ptr %safety_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %safety_timer_expired.i, align 1
  br label %ab8500_chargalg_stop_safety_timer.exit

ab8500_chargalg_stop_safety_timer.exit:           ; preds = %if.then.i557, %if.end170.ab8500_chargalg_stop_safety_timer.exit_crit_edge
  %maintenance_timer.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %call.i559 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %maintenance_timer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i559)
  %cmp.i560 = icmp sgt i32 %call.i559, -1
  br i1 %cmp.i560, label %if.then.i561, label %ab8500_chargalg_stop_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit_crit_edge

ab8500_chargalg_stop_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit_crit_edge: ; preds = %ab8500_chargalg_stop_safety_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_maintenance_timer.exit

if.then.i561:                                     ; preds = %ab8500_chargalg_stop_safety_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %maintenance_timer_expired.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %216 = ptrtoint ptr %maintenance_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %maintenance_timer_expired.i, align 4
  br label %ab8500_chargalg_stop_maintenance_timer.exit

ab8500_chargalg_stop_maintenance_timer.exit:      ; preds = %if.then.i561, %ab8500_chargalg_stop_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit_crit_edge
  %charge_status171 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %217 = ptrtoint ptr %charge_status171 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 3, ptr %charge_status171, align 4
  %maintenance_chg172 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 3
  %218 = ptrtoint ptr %maintenance_chg172 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %maintenance_chg172, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit569)) #8
          to label %if.then.i567 [label %ab8500_chargalg_state_to.exit569], !srcloc !258

if.then.i567:                                     ; preds = %ab8500_chargalg_stop_maintenance_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %di, align 8
  %221 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %222)
  %cmp.i564 = icmp eq i32 %222, 19
  %cond.i565 = select i1 %cmp.i564, ptr @.str.44, ptr @.str.45
  %arrayidx.i566 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %222
  %223 = ptrtoint ptr %arrayidx.i566 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx.i566, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %220, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i565, i32 noundef %222, ptr noundef %224, i32 noundef 19, ptr noundef nonnull @.str.65) #8
  br label %ab8500_chargalg_state_to.exit569

ab8500_chargalg_state_to.exit569:                 ; preds = %if.then.i567, %ab8500_chargalg_stop_maintenance_timer.exit
  %225 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 19, ptr %charge_state159, align 8
  %226 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %227) #8
  br label %sw.epilogthread-pre-split

sw.bb174:                                         ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit576)) #8
          to label %if.then.i574 [label %ab8500_chargalg_state_to.exit576], !srcloc !258

if.then.i574:                                     ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #10
  %228 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %di, align 8
  %230 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %231)
  %cmp.i571 = icmp eq i32 %231, 25
  %cond.i572 = select i1 %cmp.i571, ptr @.str.44, ptr @.str.45
  %arrayidx.i573 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %231
  %232 = ptrtoint ptr %arrayidx.i573 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx.i573, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %229, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i572, i32 noundef %231, ptr noundef %233, i32 noundef 25, ptr noundef nonnull @.str.71) #8
  br label %ab8500_chargalg_state_to.exit576

ab8500_chargalg_state_to.exit576:                 ; preds = %if.then.i574, %sw.bb174
  %234 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 25, ptr %charge_state159, align 8
  br label %sw.bb175

sw.bb175:                                         ; preds = %ab8500_chargalg_state_to.exit576, %do.end158.sw.bb175_crit_edge
  %batt_rem177 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 3
  %235 = ptrtoint ptr %batt_rem177 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %batt_rem177, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool178.not = icmp eq i8 %236, 0
  br i1 %tobool178.not, label %if.then179, label %sw.bb175.sw.epilogthread-pre-split_crit_edge

sw.bb175.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then179:                                       ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %if.then331.sink.split)) #8
          to label %if.then.i581 [label %if.then331.sink.split], !srcloc !258

if.then.i581:                                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %di, align 8
  %239 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %240)
  %cmp.i578 = icmp eq i32 %240, 6
  %cond.i579 = select i1 %cmp.i578, ptr @.str.44, ptr @.str.45
  %arrayidx.i580 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %240
  %241 = ptrtoint ptr %arrayidx.i580 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i580, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %238, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i579, i32 noundef %240, ptr noundef %242, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %if.then331.sink.split

sw.bb181:                                         ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit590)) #8
          to label %if.then.i588 [label %ab8500_chargalg_state_to.exit590], !srcloc !258

if.then.i588:                                     ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #10
  %243 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %di, align 8
  %245 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %246)
  %cmp.i585 = icmp eq i32 %246, 5
  %cond.i586 = select i1 %cmp.i585, ptr @.str.44, ptr @.str.45
  %arrayidx.i587 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %246
  %247 = ptrtoint ptr %arrayidx.i587 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx.i587, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %244, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i586, i32 noundef %246, ptr noundef %248, i32 noundef 5, ptr noundef nonnull @.str.51) #8
  br label %ab8500_chargalg_state_to.exit590

ab8500_chargalg_state_to.exit590:                 ; preds = %if.then.i588, %sw.bb181
  %249 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 5, ptr %charge_state159, align 8
  br label %sw.bb182

sw.bb182:                                         ; preds = %ab8500_chargalg_state_to.exit590, %do.end158.sw.bb182_crit_edge
  %main_thermal_prot184 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 6
  %250 = ptrtoint ptr %main_thermal_prot184 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %main_thermal_prot184, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool185.not = icmp eq i8 %251, 0
  br i1 %tobool185.not, label %land.lhs.true186, label %sw.bb182.sw.epilogthread-pre-split_crit_edge

sw.bb182.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true186:                                 ; preds = %sw.bb182
  %usb_thermal_prot188 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 7
  %252 = ptrtoint ptr %usb_thermal_prot188 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %usb_thermal_prot188, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool189.not = icmp eq i8 %253, 0
  br i1 %tobool189.not, label %if.then190, label %land.lhs.true186.sw.epilogthread-pre-split_crit_edge

land.lhs.true186.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then190:                                       ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 6)
  br label %sw.epilogthread-pre-split

sw.bb192:                                         ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit597)) #8
          to label %if.then.i595 [label %ab8500_chargalg_state_to.exit597], !srcloc !258

if.then.i595:                                     ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #10
  %254 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %di, align 8
  %256 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %257)
  %cmp.i592 = icmp eq i32 %257, 21
  %cond.i593 = select i1 %cmp.i592, ptr @.str.44, ptr @.str.45
  %arrayidx.i594 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %257
  %258 = ptrtoint ptr %arrayidx.i594 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx.i594, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %255, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i593, i32 noundef %257, ptr noundef %259, i32 noundef 21, ptr noundef nonnull @.str.67) #8
  br label %ab8500_chargalg_state_to.exit597

ab8500_chargalg_state_to.exit597:                 ; preds = %if.then.i595, %sw.bb192
  %260 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 21, ptr %charge_state159, align 8
  br label %sw.bb193

sw.bb193:                                         ; preds = %ab8500_chargalg_state_to.exit597, %do.end158.sw.bb193_crit_edge
  %vbus_ovv195 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 9
  %261 = ptrtoint ptr %vbus_ovv195 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %vbus_ovv195, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool196.not = icmp eq i8 %262, 0
  br i1 %tobool196.not, label %land.lhs.true197, label %sw.bb193.sw.epilogthread-pre-split_crit_edge

sw.bb193.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true197:                                 ; preds = %sw.bb193
  %main_ovv199 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 8
  %263 = ptrtoint ptr %main_ovv199 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %main_ovv199, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool200.not = icmp eq i8 %264, 0
  br i1 %tobool200.not, label %land.lhs.true201, label %land.lhs.true197.sw.epilogthread-pre-split_crit_edge

land.lhs.true197.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true201:                                 ; preds = %land.lhs.true197
  %batt_ovv203 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 2
  %265 = ptrtoint ptr %batt_ovv203 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %batt_ovv203, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool204.not = icmp eq i8 %266, 0
  br i1 %tobool204.not, label %land.lhs.true205, label %land.lhs.true201.sw.epilogthread-pre-split_crit_edge

land.lhs.true201.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true205:                                 ; preds = %land.lhs.true201
  %267 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %15, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool208.not = icmp eq i8 %268, 0
  br i1 %tobool208.not, label %land.lhs.true205.sw.epilogthread-pre-split_crit_edge, label %land.lhs.true210

land.lhs.true205.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true210:                                 ; preds = %land.lhs.true205
  %269 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %23, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool213.not = icmp eq i8 %270, 0
  br i1 %tobool213.not, label %land.lhs.true210.sw.epilogthread-pre-split_crit_edge, label %if.then215

land.lhs.true210.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then215:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 6)
  br label %sw.epilogthread-pre-split

sw.bb217:                                         ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit604)) #8
          to label %if.then.i602 [label %ab8500_chargalg_state_to.exit604], !srcloc !258

if.then.i602:                                     ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #10
  %271 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %di, align 8
  %273 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %274)
  %cmp.i599 = icmp eq i32 %274, 3
  %cond.i600 = select i1 %cmp.i599, ptr @.str.44, ptr @.str.45
  %arrayidx.i601 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %274
  %275 = ptrtoint ptr %arrayidx.i601 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx.i601, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %272, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i600, i32 noundef %274, ptr noundef %276, i32 noundef 3, ptr noundef nonnull @.str.49) #8
  br label %ab8500_chargalg_state_to.exit604

ab8500_chargalg_state_to.exit604:                 ; preds = %if.then.i602, %sw.bb217
  %277 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 3, ptr %charge_state159, align 8
  br label %sw.bb218

sw.bb218:                                         ; preds = %ab8500_chargalg_state_to.exit604, %do.end158.sw.bb218_crit_edge
  %mainextchnotok220 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 1
  %278 = ptrtoint ptr %mainextchnotok220 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %mainextchnotok220, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool221.not = icmp eq i8 %279, 0
  br i1 %tobool221.not, label %land.lhs.true222, label %sw.bb218.sw.epilogthread-pre-split_crit_edge

sw.bb218.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb218
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true222:                                 ; preds = %sw.bb218
  %usbchargernotok224 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 10
  %280 = ptrtoint ptr %usbchargernotok224 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %usbchargernotok224, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool225.not = icmp eq i8 %281, 0
  br i1 %tobool225.not, label %if.then226, label %land.lhs.true222.sw.epilogthread-pre-split_crit_edge

land.lhs.true222.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then226:                                       ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 6)
  br label %sw.epilogthread-pre-split

sw.bb228:                                         ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit611)) #8
          to label %if.then.i609 [label %ab8500_chargalg_state_to.exit611], !srcloc !258

if.then.i609:                                     ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #10
  %282 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %di, align 8
  %284 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %285)
  %cmp.i606 = icmp eq i32 %285, 23
  %cond.i607 = select i1 %cmp.i606, ptr @.str.44, ptr @.str.45
  %arrayidx.i608 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %285
  %286 = ptrtoint ptr %arrayidx.i608 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i608, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %283, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i607, i32 noundef %285, ptr noundef %287, i32 noundef 23, ptr noundef nonnull @.str.69) #8
  br label %ab8500_chargalg_state_to.exit611

ab8500_chargalg_state_to.exit611:                 ; preds = %if.then.i609, %sw.bb228
  %288 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 23, ptr %charge_state159, align 8
  br label %if.end333

sw.bb229:                                         ; preds = %do.end158
  %curr_step_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 12, i32 1
  %289 = ptrtoint ptr %curr_step_ua to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %curr_step_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp230 = icmp eq i32 %290, 0
  br i1 %cmp230, label %if.then232, label %if.else233

if.then232:                                       ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  br label %if.end236

if.else233:                                       ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #10
  %constant_charge_current_max_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 11
  %291 = ptrtoint ptr %constant_charge_current_max_ua to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %constant_charge_current_max_ua, align 4
  %mul = mul i32 %292, %290
  %div = sdiv i32 %mul, 100000
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 12
  %293 = ptrtoint ptr %constant_charge_voltage_max_uv to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %constant_charge_voltage_max_uv, align 4
  tail call fastcc void @ab8500_chargalg_start_charging(ptr noundef %di, i32 noundef %294, i32 noundef %div)
  br label %if.end236

if.end236:                                        ; preds = %if.else233, %if.then232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit618)) #8
          to label %if.then.i616 [label %ab8500_chargalg_state_to.exit618], !srcloc !258

if.then.i616:                                     ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  %295 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %di, align 8
  %297 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %298)
  %cmp.i613 = icmp eq i32 %298, 7
  %cond.i614 = select i1 %cmp.i613, ptr @.str.44, ptr @.str.45
  %arrayidx.i615 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %298
  %299 = ptrtoint ptr %arrayidx.i615 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %arrayidx.i615, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %296, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i614, i32 noundef %298, ptr noundef %300, i32 noundef 7, ptr noundef nonnull @.str.53) #8
  br label %ab8500_chargalg_state_to.exit618

ab8500_chargalg_state_to.exit618:                 ; preds = %if.then.i616, %if.end236
  %301 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 7, ptr %charge_state159, align 8
  %charger_type.i619 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %302 = ptrtoint ptr %charger_type.i619 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %charger_type.i619, align 8
  %304 = zext i32 %303 to i64
  call void @__sanitizer_cov_trace_switch(i64 %304, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %303, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %ab8500_chargalg_state_to.exit618
  call void @__sanitizer_cov_trace_pc() #10
  %305 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %bm, align 4
  %main_safety_tmr_h.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %306, i32 0, i32 4
  %307 = ptrtoint ptr %main_safety_tmr_h.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %main_safety_tmr_h.i, align 4
  br label %ab8500_chargalg_start_safety_timer.exit

sw.bb1.i:                                         ; preds = %ab8500_chargalg_state_to.exit618
  call void @__sanitizer_cov_trace_pc() #10
  %309 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %bm, align 4
  %usb_safety_tmr_h.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %310, i32 0, i32 5
  %311 = ptrtoint ptr %usb_safety_tmr_h.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %usb_safety_tmr_h.i, align 4
  br label %ab8500_chargalg_start_safety_timer.exit

do.end.i:                                         ; preds = %ab8500_chargalg_state_to.exit618
  call void @__sanitizer_cov_trace_pc() #10
  %313 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %314, ptr noundef nonnull @.str.77) #11
  br label %ab8500_chargalg_start_safety_timer.exit

ab8500_chargalg_start_safety_timer.exit:          ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %timer_expiration.0.i = phi i32 [ 0, %do.end.i ], [ %312, %sw.bb1.i ], [ %308, %sw.bb.i ]
  %safety_timer_expired.i621 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 11
  %315 = ptrtoint ptr %safety_timer_expired.i621 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 0, ptr %safety_timer_expired.i621, align 1
  %safety_timer.i622 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 22
  %mul.i = mul i32 %timer_expiration.0.i, 3600
  %conv.i623 = sext i32 %mul.i to i64
  %mul.i.i = mul nsw i64 %conv.i623, 1000000000
  %_softexpires.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 22, i32 1
  %316 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 %mul.i.i, ptr %_softexpires.i.i, align 8
  %call.i.i = tail call i64 @ktime_add_safe(i64 noundef %mul.i.i, i64 noundef 300000000000) #8
  %expires.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 22, i32 0, i32 1
  %317 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 %call.i.i, ptr %expires.i.i, align 8
  %318 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %_softexpires.i.i, align 8
  %sub.i.i = sub i64 %call.i.i, %319
  tail call void @hrtimer_start_range_ns(ptr noundef %safety_timer.i622, i64 noundef %319, i64 noundef %sub.i.i, i32 noundef 1) #8
  %maintenance_timer.i625 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %call.i626 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %maintenance_timer.i625) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i626)
  %cmp.i627 = icmp sgt i32 %call.i626, -1
  br i1 %cmp.i627, label %if.then.i629, label %ab8500_chargalg_start_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit631_crit_edge

ab8500_chargalg_start_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit631_crit_edge: ; preds = %ab8500_chargalg_start_safety_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_maintenance_timer.exit631

if.then.i629:                                     ; preds = %ab8500_chargalg_start_safety_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %maintenance_timer_expired.i628 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %320 = ptrtoint ptr %maintenance_timer_expired.i628 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %maintenance_timer_expired.i628, align 4
  br label %ab8500_chargalg_stop_maintenance_timer.exit631

ab8500_chargalg_stop_maintenance_timer.exit631:   ; preds = %if.then.i629, %ab8500_chargalg_start_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit631_crit_edge
  %321 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %bm, align 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %322, align 4
  %constant_charge_current_max_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %324, i32 0, i32 11
  %325 = ptrtoint ptr %constant_charge_current_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %constant_charge_current_max_ua.i, align 4
  %ccm.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7
  %327 = ptrtoint ptr %ccm.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %ccm.i, align 4
  %328 = load i32, ptr %constant_charge_current_max_ua.i, align 4
  %current_iset_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 1
  %329 = ptrtoint ptr %current_iset_ua.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %current_iset_ua.i, align 4
  %maxi.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %322, i32 0, i32 19
  %330 = ptrtoint ptr %maxi.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %maxi.i, align 4
  %charger_curr_step_ua.i = getelementptr inbounds %struct.ab8500_maxim_parameters, ptr %331, i32 0, i32 3
  %332 = ptrtoint ptr %charger_curr_step_ua.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %charger_curr_step_ua.i, align 4
  %test_delta_i_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 2
  %334 = ptrtoint ptr %test_delta_i_ua.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %test_delta_i_ua.i, align 4
  %335 = load ptr, ptr %maxi.i, align 4
  %chg_curr_ua.i = getelementptr inbounds %struct.ab8500_maxim_parameters, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %chg_curr_ua.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %chg_curr_ua.i, align 4
  %max_current_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 4
  %338 = ptrtoint ptr %max_current_ua.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %max_current_ua.i, align 4
  %339 = load ptr, ptr %maxi.i, align 4
  %wait_cycles.i = getelementptr inbounds %struct.ab8500_maxim_parameters, ptr %339, i32 0, i32 2
  %340 = ptrtoint ptr %wait_cycles.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %wait_cycles.i, align 4
  %condition_cnt.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 3
  %342 = ptrtoint ptr %condition_cnt.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %condition_cnt.i, align 4
  %level.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 6
  %343 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 0, ptr %level.i, align 4
  %charge_status237 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %344 = ptrtoint ptr %charge_status237 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1, ptr %charge_status237, align 4
  %eoc_cnt = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 2
  %345 = ptrtoint ptr %eoc_cnt to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %eoc_cnt, align 8
  %maintenance_chg238 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 3
  %346 = ptrtoint ptr %maintenance_chg238 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 0, ptr %maintenance_chg238, align 4
  %347 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %348) #8
  br label %sw.epilogthread-pre-split

sw.bb240:                                         ; preds = %do.end158
  %349 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %bm, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %350, align 4
  %call.i634 = tail call fastcc i32 @ab8500_chargalg_chg_curr_maxim(ptr noundef %di) #8
  %353 = zext i32 %call.i634 to i64
  call void @__sanitizer_cov_trace_switch(i64 %353, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call.i634, label %sw.bb240.handle_maxim_chg_curr.exit_crit_edge [
    i32 1, label %sw.bb.i636
    i32 2, label %sw.bb3.i
  ]

sw.bb240.handle_maxim_chg_curr.exit_crit_edge:    ; preds = %sw.bb240
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_maxim_chg_curr.exit

sw.bb.i636:                                       ; preds = %sw.bb240
  %current_iset_ua.i635 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 1
  %354 = ptrtoint ptr %current_iset_ua.i635 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %current_iset_ua.i635, align 4
  %ac_chg.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %356 = ptrtoint ptr %ac_chg.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ac_chg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %357, null
  br i1 %tobool.not.i.i, label %sw.bb.i636.if.else.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.i636.if.else.i.i_crit_edge:                 ; preds = %sw.bb.i636
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i636
  %update_curr.i.i = getelementptr inbounds %struct.ux500_charger, ptr %357, i32 0, i32 1, i32 3
  %358 = ptrtoint ptr %update_curr.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %update_curr.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %359, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %charger_type.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %360 = ptrtoint ptr %charger_type.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %charger_type.i.i, align 8
  %and.i.i = and i32 %361, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.else.i.i_crit_edge, label %if.then.i.i638

land.lhs.true3.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.i638:                                   ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_curr_ua.i.i = getelementptr inbounds %struct.ux500_charger, ptr %357, i32 0, i32 3
  %362 = ptrtoint ptr %max_out_curr_ua.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %max_out_curr_ua.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %tobool6.not.i.i = icmp eq i32 %363, 0
  %364 = tail call i32 @llvm.smin.i32(i32 %363, i32 %355) #8
  %iset_ua.addr.0.i.i = select i1 %tobool6.not.i.i, i32 %355, i32 %364
  %ac_iset_ua.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %365 = ptrtoint ptr %ac_iset_ua.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %iset_ua.addr.0.i.i, ptr %ac_iset_ua.i.i, align 4
  %366 = ptrtoint ptr %update_curr.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %update_curr.i.i, align 4
  %call.i.i637 = tail call i32 %367(ptr noundef nonnull %357, i32 noundef %iset_ua.addr.0.i.i) #8
  br label %ab8500_chargalg_update_chg_curr.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true3.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %sw.bb.i636.if.else.i.i_crit_edge
  %usb_chg.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %368 = ptrtoint ptr %usb_chg.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %usb_chg.i.i, align 8
  %tobool15.not.i.i = icmp eq ptr %369, null
  br i1 %tobool15.not.i.i, label %if.else.i.i.sw.epilog.sink.split.i_crit_edge, label %land.lhs.true16.i.i

if.else.i.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

land.lhs.true16.i.i:                              ; preds = %if.else.i.i
  %update_curr19.i.i = getelementptr inbounds %struct.ux500_charger, ptr %369, i32 0, i32 1, i32 3
  %370 = ptrtoint ptr %update_curr19.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %update_curr19.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %371, null
  br i1 %tobool20.not.i.i, label %land.lhs.true16.i.i.sw.epilog.sink.split.i_crit_edge, label %land.lhs.true21.i.i

land.lhs.true16.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

land.lhs.true21.i.i:                              ; preds = %land.lhs.true16.i.i
  %charger_type23.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %372 = ptrtoint ptr %charger_type23.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %charger_type23.i.i, align 8
  %and24.i.i = and i32 %373, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true21.i.i.sw.epilog.sink.split.i_crit_edge, label %if.then26.i.i

land.lhs.true21.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.then26.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_curr_ua28.i.i = getelementptr inbounds %struct.ux500_charger, ptr %369, i32 0, i32 3
  %374 = ptrtoint ptr %max_out_curr_ua28.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %max_out_curr_ua28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %tobool29.not.i.i = icmp eq i32 %375, 0
  %376 = tail call i32 @llvm.smin.i32(i32 %375, i32 %355) #8
  %iset_ua.addr.1.i.i = select i1 %tobool29.not.i.i, i32 %355, i32 %376
  %usb_iset_ua.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %377 = ptrtoint ptr %usb_iset_ua.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %iset_ua.addr.1.i.i, ptr %usb_iset_ua.i.i, align 4
  %378 = ptrtoint ptr %update_curr19.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %update_curr19.i.i, align 4
  %call45.i.i = tail call i32 %379(ptr noundef nonnull %369, i32 noundef %iset_ua.addr.1.i.i) #8
  br label %ab8500_chargalg_update_chg_curr.exit.i

ab8500_chargalg_update_chg_curr.exit.i:           ; preds = %if.then26.i.i, %if.then.i.i638
  %retval.0.i.i = phi i32 [ %call.i.i637, %if.then.i.i638 ], [ %call45.i.i, %if.then26.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i639 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i639, label %ab8500_chargalg_update_chg_curr.exit.i.handle_maxim_chg_curr.exit_crit_edge, label %ab8500_chargalg_update_chg_curr.exit.i.sw.epilog.sink.split.i_crit_edge

ab8500_chargalg_update_chg_curr.exit.i.sw.epilog.sink.split.i_crit_edge: ; preds = %ab8500_chargalg_update_chg_curr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

ab8500_chargalg_update_chg_curr.exit.i.handle_maxim_chg_curr.exit_crit_edge: ; preds = %ab8500_chargalg_update_chg_curr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_maxim_chg_curr.exit

sw.bb3.i:                                         ; preds = %sw.bb240
  %constant_charge_current_max_ua.i640 = getelementptr inbounds %struct.power_supply_battery_info, ptr %352, i32 0, i32 11
  %380 = ptrtoint ptr %constant_charge_current_max_ua.i640 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %constant_charge_current_max_ua.i640, align 4
  %ac_chg.i20.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %382 = ptrtoint ptr %ac_chg.i20.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ac_chg.i20.i, align 4
  %tobool.not.i21.i = icmp eq ptr %383, null
  br i1 %tobool.not.i21.i, label %sw.bb3.i.if.else.i37.i_crit_edge, label %land.lhs.true.i24.i

sw.bb3.i.if.else.i37.i_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i37.i

land.lhs.true.i24.i:                              ; preds = %sw.bb3.i
  %update_curr.i22.i = getelementptr inbounds %struct.ux500_charger, ptr %383, i32 0, i32 1, i32 3
  %384 = ptrtoint ptr %update_curr.i22.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %update_curr.i22.i, align 4
  %tobool2.not.i23.i = icmp eq ptr %385, null
  br i1 %tobool2.not.i23.i, label %land.lhs.true.i24.i.if.else.i37.i_crit_edge, label %land.lhs.true3.i28.i

land.lhs.true.i24.i.if.else.i37.i_crit_edge:      ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i37.i

land.lhs.true3.i28.i:                             ; preds = %land.lhs.true.i24.i
  %charger_type.i25.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %386 = ptrtoint ptr %charger_type.i25.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %charger_type.i25.i, align 8
  %and.i26.i = and i32 %387, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i)
  %tobool4.not.i27.i = icmp eq i32 %and.i26.i, 0
  br i1 %tobool4.not.i27.i, label %land.lhs.true3.i28.i.if.else.i37.i_crit_edge, label %if.then.i34.i

land.lhs.true3.i28.i.if.else.i37.i_crit_edge:     ; preds = %land.lhs.true3.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i37.i

if.then.i34.i:                                    ; preds = %land.lhs.true3.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_curr_ua.i29.i = getelementptr inbounds %struct.ux500_charger, ptr %383, i32 0, i32 3
  %388 = ptrtoint ptr %max_out_curr_ua.i29.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %max_out_curr_ua.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %tobool6.not.i30.i = icmp eq i32 %389, 0
  %390 = tail call i32 @llvm.smin.i32(i32 %389, i32 %381) #8
  %iset_ua.addr.0.i31.i = select i1 %tobool6.not.i30.i, i32 %381, i32 %390
  %ac_iset_ua.i32.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %391 = ptrtoint ptr %ac_iset_ua.i32.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %iset_ua.addr.0.i31.i, ptr %ac_iset_ua.i32.i, align 4
  %392 = ptrtoint ptr %update_curr.i22.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %update_curr.i22.i, align 4
  %call.i33.i = tail call i32 %393(ptr noundef nonnull %383, i32 noundef %iset_ua.addr.0.i31.i) #8
  br label %ab8500_chargalg_update_chg_curr.exit52.i

if.else.i37.i:                                    ; preds = %land.lhs.true3.i28.i.if.else.i37.i_crit_edge, %land.lhs.true.i24.i.if.else.i37.i_crit_edge, %sw.bb3.i.if.else.i37.i_crit_edge
  %usb_chg.i35.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %394 = ptrtoint ptr %usb_chg.i35.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %usb_chg.i35.i, align 8
  %tobool15.not.i36.i = icmp eq ptr %395, null
  br i1 %tobool15.not.i36.i, label %if.else.i37.i.sw.epilog.sink.split.i_crit_edge, label %land.lhs.true16.i40.i

if.else.i37.i.sw.epilog.sink.split.i_crit_edge:   ; preds = %if.else.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

land.lhs.true16.i40.i:                            ; preds = %if.else.i37.i
  %update_curr19.i38.i = getelementptr inbounds %struct.ux500_charger, ptr %395, i32 0, i32 1, i32 3
  %396 = ptrtoint ptr %update_curr19.i38.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %update_curr19.i38.i, align 4
  %tobool20.not.i39.i = icmp eq ptr %397, null
  br i1 %tobool20.not.i39.i, label %land.lhs.true16.i40.i.sw.epilog.sink.split.i_crit_edge, label %land.lhs.true21.i44.i

land.lhs.true16.i40.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true16.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

land.lhs.true21.i44.i:                            ; preds = %land.lhs.true16.i40.i
  %charger_type23.i41.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %398 = ptrtoint ptr %charger_type23.i41.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %charger_type23.i41.i, align 8
  %and24.i42.i = and i32 %399, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i42.i)
  %tobool25.not.i43.i = icmp eq i32 %and24.i42.i, 0
  br i1 %tobool25.not.i43.i, label %land.lhs.true21.i44.i.sw.epilog.sink.split.i_crit_edge, label %if.then26.i50.i

land.lhs.true21.i44.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true21.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.then26.i50.i:                                  ; preds = %land.lhs.true21.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_curr_ua28.i45.i = getelementptr inbounds %struct.ux500_charger, ptr %395, i32 0, i32 3
  %400 = ptrtoint ptr %max_out_curr_ua28.i45.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %max_out_curr_ua28.i45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %tobool29.not.i46.i = icmp eq i32 %401, 0
  %402 = tail call i32 @llvm.smin.i32(i32 %401, i32 %381) #8
  %iset_ua.addr.1.i47.i = select i1 %tobool29.not.i46.i, i32 %381, i32 %402
  %usb_iset_ua.i48.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %403 = ptrtoint ptr %usb_iset_ua.i48.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %iset_ua.addr.1.i47.i, ptr %usb_iset_ua.i48.i, align 4
  %404 = ptrtoint ptr %update_curr19.i38.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %update_curr19.i38.i, align 4
  %call45.i49.i = tail call i32 %405(ptr noundef nonnull %395, i32 noundef %iset_ua.addr.1.i47.i) #8
  br label %ab8500_chargalg_update_chg_curr.exit52.i

ab8500_chargalg_update_chg_curr.exit52.i:         ; preds = %if.then26.i50.i, %if.then.i34.i
  %retval.0.i51.i = phi i32 [ %call.i33.i, %if.then.i34.i ], [ %call45.i49.i, %if.then26.i50.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i51.i)
  %tobool5.not.i641 = icmp eq i32 %retval.0.i51.i, 0
  br i1 %tobool5.not.i641, label %ab8500_chargalg_update_chg_curr.exit52.i.handle_maxim_chg_curr.exit_crit_edge, label %ab8500_chargalg_update_chg_curr.exit52.i.sw.epilog.sink.split.i_crit_edge

ab8500_chargalg_update_chg_curr.exit52.i.sw.epilog.sink.split.i_crit_edge: ; preds = %ab8500_chargalg_update_chg_curr.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

ab8500_chargalg_update_chg_curr.exit52.i.handle_maxim_chg_curr.exit_crit_edge: ; preds = %ab8500_chargalg_update_chg_curr.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_maxim_chg_curr.exit

sw.epilog.sink.split.i:                           ; preds = %ab8500_chargalg_update_chg_curr.exit52.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true21.i44.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true16.i40.i.sw.epilog.sink.split.i_crit_edge, %if.else.i37.i.sw.epilog.sink.split.i_crit_edge, %ab8500_chargalg_update_chg_curr.exit.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true21.i.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true16.i.i.sw.epilog.sink.split.i_crit_edge, %if.else.i.i.sw.epilog.sink.split.i_crit_edge
  %406 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %407, ptr noundef nonnull @.str.79) #11
  br label %handle_maxim_chg_curr.exit

handle_maxim_chg_curr.exit:                       ; preds = %sw.epilog.sink.split.i, %ab8500_chargalg_update_chg_curr.exit52.i.handle_maxim_chg_curr.exit_crit_edge, %ab8500_chargalg_update_chg_curr.exit.i.handle_maxim_chg_curr.exit_crit_edge, %sw.bb240.handle_maxim_chg_curr.exit_crit_edge
  %charge_status241 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %408 = ptrtoint ptr %charge_status241 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %charge_status241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %409)
  %cmp242 = icmp eq i32 %409, 4
  br i1 %cmp242, label %land.lhs.true244, label %handle_maxim_chg_curr.exit.sw.epilogthread-pre-split_crit_edge

handle_maxim_chg_curr.exit.sw.epilogthread-pre-split_crit_edge: ; preds = %handle_maxim_chg_curr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true244:                                 ; preds = %handle_maxim_chg_curr.exit
  %maintenance_chg245 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 3
  %410 = ptrtoint ptr %maintenance_chg245 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %maintenance_chg245, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %411)
  %tobool246.not = icmp eq i8 %411, 0
  br i1 %tobool246.not, label %land.lhs.true244.sw.epilogthread-pre-split_crit_edge, label %if.then248

land.lhs.true244.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then248:                                       ; preds = %land.lhs.true244
  %412 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %bm, align 4
  %no_maintenance = getelementptr inbounds %struct.ab8500_bm_data, ptr %413, i32 0, i32 8
  %414 = ptrtoint ptr %no_maintenance to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %no_maintenance, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool250.not = icmp eq i8 %415, 0
  br i1 %tobool250.not, label %if.else252, label %if.then251

if.then251:                                       ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 8)
  br label %sw.epilogthread-pre-split

if.else252:                                       ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 10)
  br label %sw.epilogthread-pre-split

sw.bb255:                                         ; preds = %do.end158
  %ac_chg.i.i643 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %416 = ptrtoint ptr %ac_chg.i.i643 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %ac_chg.i.i643, align 4
  %tobool.not.i.i644 = icmp eq ptr %417, null
  br i1 %tobool.not.i.i644, label %sw.bb255.ab8500_chargalg_ac_en.exit.i_crit_edge, label %lor.lhs.false.i.i

sw.bb255.ab8500_chargalg_ac_en.exit.i_crit_edge:  ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_ac_en.exit.i

lor.lhs.false.i.i:                                ; preds = %sw.bb255
  %ops.i.i = getelementptr inbounds %struct.ux500_charger, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %ops.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %419, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.ab8500_chargalg_ac_en.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.ab8500_chargalg_ac_en.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_ac_en.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i.i = getelementptr inbounds %struct.ux500_charger, ptr %417, i32 0, i32 2
  %420 = ptrtoint ptr %max_out_volt_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %max_out_volt_uv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %421)
  %tobool5.not.i.i = icmp eq i32 %421, 0
  %422 = tail call i32 @llvm.smin.i32(i32 %421, i32 0) #8
  %vset_uv.addr.0.i.i = select i1 %tobool5.not.i.i, i32 0, i32 %422
  %max_out_curr_ua.i.i645 = getelementptr inbounds %struct.ux500_charger, ptr %417, i32 0, i32 3
  %423 = ptrtoint ptr %max_out_curr_ua.i.i645 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %max_out_curr_ua.i.i645, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool11.not.i.i = icmp eq i32 %424, 0
  %425 = tail call i32 @llvm.smin.i32(i32 %424, i32 0) #8
  %iset_ua.addr.0.i.i646 = select i1 %tobool11.not.i.i, i32 0, i32 %425
  %ac_iset_ua.i.i647 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %426 = ptrtoint ptr %ac_iset_ua.i.i647 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %iset_ua.addr.0.i.i646, ptr %ac_iset_ua.i.i647, align 4
  %ac_vset_uv.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 13
  %427 = ptrtoint ptr %ac_vset_uv.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %vset_uv.addr.0.i.i, ptr %ac_vset_uv.i.i, align 8
  %428 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %ops.i.i, align 4
  %call34.i.i = tail call i32 %429(ptr noundef nonnull %417, i32 noundef 0, i32 noundef %vset_uv.addr.0.i.i, i32 noundef %iset_ua.addr.0.i.i646) #8
  br label %ab8500_chargalg_ac_en.exit.i

ab8500_chargalg_ac_en.exit.i:                     ; preds = %if.end.i.i, %lor.lhs.false.i.i.ab8500_chargalg_ac_en.exit.i_crit_edge, %sw.bb255.ab8500_chargalg_ac_en.exit.i_crit_edge
  %usb_chg.i.i648 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %430 = ptrtoint ptr %usb_chg.i.i648 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %usb_chg.i.i648, align 8
  %tobool.not.i10.i = icmp eq ptr %431, null
  br i1 %tobool.not.i10.i, label %ab8500_chargalg_ac_en.exit.i.ab8500_chargalg_usb_en.exit.i_crit_edge, label %lor.lhs.false.i13.i

ab8500_chargalg_ac_en.exit.i.ab8500_chargalg_usb_en.exit.i_crit_edge: ; preds = %ab8500_chargalg_ac_en.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_usb_en.exit.i

lor.lhs.false.i13.i:                              ; preds = %ab8500_chargalg_ac_en.exit.i
  %ops.i11.i = getelementptr inbounds %struct.ux500_charger, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %ops.i11.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %ops.i11.i, align 4
  %tobool3.not.i12.i = icmp eq ptr %433, null
  br i1 %tobool3.not.i12.i, label %lor.lhs.false.i13.i.ab8500_chargalg_usb_en.exit.i_crit_edge, label %if.end.i20.i

lor.lhs.false.i13.i.ab8500_chargalg_usb_en.exit.i_crit_edge: ; preds = %lor.lhs.false.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_usb_en.exit.i

if.end.i20.i:                                     ; preds = %lor.lhs.false.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i14.i = getelementptr inbounds %struct.ux500_charger, ptr %431, i32 0, i32 2
  %434 = ptrtoint ptr %max_out_volt_uv.i14.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %max_out_volt_uv.i14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %435)
  %tobool5.not.i15.i = icmp eq i32 %435, 0
  %436 = tail call i32 @llvm.smin.i32(i32 %435, i32 0) #8
  %vset_uv.addr.0.i16.i = select i1 %tobool5.not.i15.i, i32 0, i32 %436
  %max_out_curr_ua.i17.i = getelementptr inbounds %struct.ux500_charger, ptr %431, i32 0, i32 3
  %437 = ptrtoint ptr %max_out_curr_ua.i17.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %max_out_curr_ua.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %tobool11.not.i18.i = icmp eq i32 %438, 0
  %439 = tail call i32 @llvm.smin.i32(i32 %438, i32 0) #8
  %iset_ua.addr.0.i19.i = select i1 %tobool11.not.i18.i, i32 0, i32 %439
  %usb_iset_ua.i.i649 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %440 = ptrtoint ptr %usb_iset_ua.i.i649 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %iset_ua.addr.0.i19.i, ptr %usb_iset_ua.i.i649, align 4
  %usb_vset_uv.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 11
  %441 = ptrtoint ptr %usb_vset_uv.i.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %vset_uv.addr.0.i16.i, ptr %usb_vset_uv.i.i, align 8
  %442 = ptrtoint ptr %ops.i11.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %ops.i11.i, align 4
  %call.i.i650 = tail call i32 %443(ptr noundef nonnull %431, i32 noundef 0, i32 noundef %vset_uv.addr.0.i16.i, i32 noundef %iset_ua.addr.0.i19.i) #8
  br label %ab8500_chargalg_usb_en.exit.i

ab8500_chargalg_usb_en.exit.i:                    ; preds = %if.end.i20.i, %lor.lhs.false.i13.i.ab8500_chargalg_usb_en.exit.i_crit_edge, %ab8500_chargalg_ac_en.exit.i.ab8500_chargalg_usb_en.exit.i_crit_edge
  %safety_timer.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 22
  %call.i21.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %safety_timer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i21.i)
  %cmp.i.i651 = icmp sgt i32 %call.i21.i, -1
  br i1 %cmp.i.i651, label %if.then.i.i652, label %ab8500_chargalg_usb_en.exit.i.ab8500_chargalg_stop_safety_timer.exit.i_crit_edge

ab8500_chargalg_usb_en.exit.i.ab8500_chargalg_stop_safety_timer.exit.i_crit_edge: ; preds = %ab8500_chargalg_usb_en.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_safety_timer.exit.i

if.then.i.i652:                                   ; preds = %ab8500_chargalg_usb_en.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %safety_timer_expired.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 11
  %444 = ptrtoint ptr %safety_timer_expired.i.i to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 0, ptr %safety_timer_expired.i.i, align 1
  br label %ab8500_chargalg_stop_safety_timer.exit.i

ab8500_chargalg_stop_safety_timer.exit.i:         ; preds = %if.then.i.i652, %ab8500_chargalg_usb_en.exit.i.ab8500_chargalg_stop_safety_timer.exit.i_crit_edge
  %maintenance_timer.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %call.i23.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %maintenance_timer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i23.i)
  %cmp.i24.i = icmp sgt i32 %call.i23.i, -1
  br i1 %cmp.i24.i, label %if.then.i25.i, label %ab8500_chargalg_stop_safety_timer.exit.i.ab8500_chargalg_hold_charging.exit_crit_edge

ab8500_chargalg_stop_safety_timer.exit.i.ab8500_chargalg_hold_charging.exit_crit_edge: ; preds = %ab8500_chargalg_stop_safety_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_hold_charging.exit

if.then.i25.i:                                    ; preds = %ab8500_chargalg_stop_safety_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %maintenance_timer_expired.i.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %445 = ptrtoint ptr %maintenance_timer_expired.i.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 0, ptr %maintenance_timer_expired.i.i, align 4
  br label %ab8500_chargalg_hold_charging.exit

ab8500_chargalg_hold_charging.exit:               ; preds = %if.then.i25.i, %ab8500_chargalg_stop_safety_timer.exit.i.ab8500_chargalg_hold_charging.exit_crit_edge
  %charge_status.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %446 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 1, ptr %charge_status.i, align 4
  %maintenance_chg.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 3
  %447 = ptrtoint ptr %maintenance_chg.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 0, ptr %maintenance_chg.i, align 4
  %chargalg_wd_work.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 20
  %call2.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %chargalg_wd_work.i) #8
  %448 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %449) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit660)) #8
          to label %if.then.i657 [label %ab8500_chargalg_state_to.exit660], !srcloc !258

if.then.i657:                                     ; preds = %ab8500_chargalg_hold_charging.exit
  call void @__sanitizer_cov_trace_pc() #10
  %450 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %di, align 8
  %452 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %453)
  %cmp.i654 = icmp eq i32 %453, 9
  %cond.i655 = select i1 %cmp.i654, ptr @.str.44, ptr @.str.45
  %arrayidx.i656 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %453
  %454 = ptrtoint ptr %arrayidx.i656 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %arrayidx.i656, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %451, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i655, i32 noundef %453, ptr noundef %455, i32 noundef 9, ptr noundef nonnull @.str.55) #8
  br label %ab8500_chargalg_state_to.exit660

ab8500_chargalg_state_to.exit660:                 ; preds = %if.then.i657, %ab8500_chargalg_hold_charging.exit
  %456 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 9, ptr %charge_state159, align 8
  br label %sw.bb256

sw.bb256:                                         ; preds = %ab8500_chargalg_state_to.exit660, %do.end158.sw.bb256_crit_edge
  %percent258 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 4
  %457 = ptrtoint ptr %percent258 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %percent258, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %458)
  %cmp259 = icmp slt i32 %458, 96
  br i1 %cmp259, label %if.then261, label %sw.bb256.sw.epilogthread-pre-split_crit_edge

sw.bb256.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then261:                                       ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %if.then331.sink.split)) #8
          to label %if.then.i665 [label %if.then331.sink.split], !srcloc !258

if.then.i665:                                     ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #10
  %459 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %di, align 8
  %461 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %462)
  %cmp.i662 = icmp eq i32 %462, 6
  %cond.i663 = select i1 %cmp.i662, ptr @.str.44, ptr @.str.45
  %arrayidx.i664 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %462
  %463 = ptrtoint ptr %arrayidx.i664 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %arrayidx.i664, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %460, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i663, i32 noundef %462, ptr noundef %464, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %if.then331.sink.split

sw.bb263:                                         ; preds = %do.end158
  %safety_timer.i669 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 22
  %call.i670 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %safety_timer.i669) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i670)
  %cmp.i671 = icmp sgt i32 %call.i670, -1
  br i1 %cmp.i671, label %if.then.i673, label %sw.bb263.ab8500_chargalg_stop_safety_timer.exit675_crit_edge

sw.bb263.ab8500_chargalg_stop_safety_timer.exit675_crit_edge: ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_safety_timer.exit675

if.then.i673:                                     ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #10
  %safety_timer_expired.i672 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 11
  %465 = ptrtoint ptr %safety_timer_expired.i672 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 0, ptr %safety_timer_expired.i672, align 1
  br label %ab8500_chargalg_stop_safety_timer.exit675

ab8500_chargalg_stop_safety_timer.exit675:        ; preds = %if.then.i673, %sw.bb263.ab8500_chargalg_stop_safety_timer.exit675_crit_edge
  %466 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %bm, align 4
  %bat_type = getelementptr inbounds %struct.ab8500_bm_data, ptr %467, i32 0, i32 21
  %468 = ptrtoint ptr %bat_type to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %bat_type, align 4
  %maint_a_chg_timer_h = getelementptr inbounds %struct.ab8500_battery_type, ptr %469, i32 0, i32 4
  %470 = ptrtoint ptr %maint_a_chg_timer_h to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %maint_a_chg_timer_h, align 4
  %maintenance_timer.i676 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %mul.i677 = mul i32 %471, 3600
  %conv.i678 = sext i32 %mul.i677 to i64
  %mul.i.i679 = mul nsw i64 %conv.i678, 1000000000
  %_softexpires.i.i680 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23, i32 1
  %472 = ptrtoint ptr %_softexpires.i.i680 to i32
  call void @__asan_store8_noabort(i32 %472)
  store i64 %mul.i.i679, ptr %_softexpires.i.i680, align 8
  %call.i.i681 = tail call i64 @ktime_add_safe(i64 noundef %mul.i.i679, i64 noundef 300000000000) #8
  %expires.i.i682 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23, i32 0, i32 1
  %473 = ptrtoint ptr %expires.i.i682 to i32
  call void @__asan_store8_noabort(i32 %473)
  store i64 %call.i.i681, ptr %expires.i.i682, align 8
  %maintenance_timer_expired.i683 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %474 = ptrtoint ptr %maintenance_timer_expired.i683 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 0, ptr %maintenance_timer_expired.i683, align 4
  %475 = ptrtoint ptr %_softexpires.i.i680 to i32
  call void @__asan_load8_noabort(i32 %475)
  %476 = load i64, ptr %_softexpires.i.i680, align 8
  %sub.i.i684 = sub i64 %call.i.i681, %476
  tail call void @hrtimer_start_range_ns(ptr noundef %maintenance_timer.i676, i64 noundef %476, i64 noundef %sub.i.i684, i32 noundef 1) #8
  %477 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %bm, align 4
  %bat_type266 = getelementptr inbounds %struct.ab8500_bm_data, ptr %478, i32 0, i32 21
  %479 = ptrtoint ptr %bat_type266 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %bat_type266, align 4
  %maint_a_vol_lvl = getelementptr inbounds %struct.ab8500_battery_type, ptr %480, i32 0, i32 3
  %481 = ptrtoint ptr %maint_a_vol_lvl to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %maint_a_vol_lvl, align 4
  %maint_a_cur_lvl = getelementptr inbounds %struct.ab8500_battery_type, ptr %480, i32 0, i32 2
  %483 = ptrtoint ptr %maint_a_cur_lvl to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %maint_a_cur_lvl, align 4
  tail call fastcc void @ab8500_chargalg_start_charging(ptr noundef %di, i32 noundef %482, i32 noundef %484)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit692)) #8
          to label %if.then.i689 [label %ab8500_chargalg_state_to.exit692], !srcloc !258

if.then.i689:                                     ; preds = %ab8500_chargalg_stop_safety_timer.exit675
  call void @__sanitizer_cov_trace_pc() #10
  %485 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %di, align 8
  %487 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %488)
  %cmp.i686 = icmp eq i32 %488, 11
  %cond.i687 = select i1 %cmp.i686, ptr @.str.44, ptr @.str.45
  %arrayidx.i688 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %488
  %489 = ptrtoint ptr %arrayidx.i688 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %arrayidx.i688, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %486, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i687, i32 noundef %488, ptr noundef %490, i32 noundef 11, ptr noundef nonnull @.str.57) #8
  br label %ab8500_chargalg_state_to.exit692

ab8500_chargalg_state_to.exit692:                 ; preds = %if.then.i689, %ab8500_chargalg_stop_safety_timer.exit675
  %491 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 11, ptr %charge_state159, align 8
  %492 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %493) #8
  br label %sw.bb270

sw.bb270:                                         ; preds = %ab8500_chargalg_state_to.exit692, %do.end158.sw.bb270_crit_edge
  %maintenance_timer_expired = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %494 = ptrtoint ptr %maintenance_timer_expired to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %maintenance_timer_expired, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %495)
  %tobool272.not = icmp eq i8 %495, 0
  br i1 %tobool272.not, label %sw.bb270.sw.epilogthread-pre-split_crit_edge, label %if.then273

sw.bb270.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then273:                                       ; preds = %sw.bb270
  %maintenance_timer.i693 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %call.i694 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %maintenance_timer.i693) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i694)
  %cmp.i695 = icmp sgt i32 %call.i694, -1
  br i1 %cmp.i695, label %if.then.i697, label %if.then273.ab8500_chargalg_stop_maintenance_timer.exit699_crit_edge

if.then273.ab8500_chargalg_stop_maintenance_timer.exit699_crit_edge: ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_maintenance_timer.exit699

if.then.i697:                                     ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #10
  %496 = ptrtoint ptr %maintenance_timer_expired to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 0, ptr %maintenance_timer_expired, align 4
  br label %ab8500_chargalg_stop_maintenance_timer.exit699

ab8500_chargalg_stop_maintenance_timer.exit699:   ; preds = %if.then.i697, %if.then273.ab8500_chargalg_stop_maintenance_timer.exit699_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %if.then331.sink.split)) #8
          to label %if.then.i704 [label %if.then331.sink.split], !srcloc !258

if.then.i704:                                     ; preds = %ab8500_chargalg_stop_maintenance_timer.exit699
  call void @__sanitizer_cov_trace_pc() #10
  %497 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %di, align 8
  %499 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %500)
  %cmp.i701 = icmp eq i32 %500, 12
  %cond.i702 = select i1 %cmp.i701, ptr @.str.44, ptr @.str.45
  %arrayidx.i703 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %500
  %501 = ptrtoint ptr %arrayidx.i703 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %arrayidx.i703, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %498, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i702, i32 noundef %500, ptr noundef %502, i32 noundef 12, ptr noundef nonnull @.str.58) #8
  br label %if.then331.sink.split

sw.bb275:                                         ; preds = %do.end158
  %503 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %bm, align 4
  %bat_type277 = getelementptr inbounds %struct.ab8500_bm_data, ptr %504, i32 0, i32 21
  %505 = ptrtoint ptr %bat_type277 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %bat_type277, align 4
  %maint_b_chg_timer_h = getelementptr inbounds %struct.ab8500_battery_type, ptr %506, i32 0, i32 7
  %507 = ptrtoint ptr %maint_b_chg_timer_h to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %maint_b_chg_timer_h, align 4
  %maintenance_timer.i708 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %mul.i709 = mul i32 %508, 3600
  %conv.i710 = sext i32 %mul.i709 to i64
  %mul.i.i711 = mul nsw i64 %conv.i710, 1000000000
  %_softexpires.i.i712 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23, i32 1
  %509 = ptrtoint ptr %_softexpires.i.i712 to i32
  call void @__asan_store8_noabort(i32 %509)
  store i64 %mul.i.i711, ptr %_softexpires.i.i712, align 8
  %call.i.i713 = tail call i64 @ktime_add_safe(i64 noundef %mul.i.i711, i64 noundef 300000000000) #8
  %expires.i.i714 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23, i32 0, i32 1
  %510 = ptrtoint ptr %expires.i.i714 to i32
  call void @__asan_store8_noabort(i32 %510)
  store i64 %call.i.i713, ptr %expires.i.i714, align 8
  %maintenance_timer_expired.i715 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %511 = ptrtoint ptr %maintenance_timer_expired.i715 to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 0, ptr %maintenance_timer_expired.i715, align 4
  %512 = ptrtoint ptr %_softexpires.i.i712 to i32
  call void @__asan_load8_noabort(i32 %512)
  %513 = load i64, ptr %_softexpires.i.i712, align 8
  %sub.i.i716 = sub i64 %call.i.i713, %513
  tail call void @hrtimer_start_range_ns(ptr noundef %maintenance_timer.i708, i64 noundef %513, i64 noundef %sub.i.i716, i32 noundef 1) #8
  %514 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %bm, align 4
  %bat_type279 = getelementptr inbounds %struct.ab8500_bm_data, ptr %515, i32 0, i32 21
  %516 = ptrtoint ptr %bat_type279 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %bat_type279, align 4
  %maint_b_vol_lvl = getelementptr inbounds %struct.ab8500_battery_type, ptr %517, i32 0, i32 6
  %518 = ptrtoint ptr %maint_b_vol_lvl to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %maint_b_vol_lvl, align 4
  %maint_b_cur_lvl = getelementptr inbounds %struct.ab8500_battery_type, ptr %517, i32 0, i32 5
  %520 = ptrtoint ptr %maint_b_cur_lvl to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %maint_b_cur_lvl, align 4
  tail call fastcc void @ab8500_chargalg_start_charging(ptr noundef %di, i32 noundef %519, i32 noundef %521)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit724)) #8
          to label %if.then.i721 [label %ab8500_chargalg_state_to.exit724], !srcloc !258

if.then.i721:                                     ; preds = %sw.bb275
  call void @__sanitizer_cov_trace_pc() #10
  %522 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %di, align 8
  %524 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %525)
  %cmp.i718 = icmp eq i32 %525, 13
  %cond.i719 = select i1 %cmp.i718, ptr @.str.44, ptr @.str.45
  %arrayidx.i720 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %525
  %526 = ptrtoint ptr %arrayidx.i720 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %arrayidx.i720, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %523, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i719, i32 noundef %525, ptr noundef %527, i32 noundef 13, ptr noundef nonnull @.str.59) #8
  br label %ab8500_chargalg_state_to.exit724

ab8500_chargalg_state_to.exit724:                 ; preds = %if.then.i721, %sw.bb275
  %528 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 13, ptr %charge_state159, align 8
  %529 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %530) #8
  br label %sw.bb283

sw.bb283:                                         ; preds = %ab8500_chargalg_state_to.exit724, %do.end158.sw.bb283_crit_edge
  %maintenance_timer_expired285 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %531 = ptrtoint ptr %maintenance_timer_expired285 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %maintenance_timer_expired285, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %532)
  %tobool286.not = icmp eq i8 %532, 0
  br i1 %tobool286.not, label %sw.bb283.sw.epilogthread-pre-split_crit_edge, label %if.then287

sw.bb283.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then287:                                       ; preds = %sw.bb283
  %maintenance_timer.i725 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %call.i726 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %maintenance_timer.i725) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i726)
  %cmp.i727 = icmp sgt i32 %call.i726, -1
  br i1 %cmp.i727, label %if.then.i729, label %if.then287.ab8500_chargalg_stop_maintenance_timer.exit731_crit_edge

if.then287.ab8500_chargalg_stop_maintenance_timer.exit731_crit_edge: ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_maintenance_timer.exit731

if.then.i729:                                     ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  %533 = ptrtoint ptr %maintenance_timer_expired285 to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 0, ptr %maintenance_timer_expired285, align 4
  br label %ab8500_chargalg_stop_maintenance_timer.exit731

ab8500_chargalg_stop_maintenance_timer.exit731:   ; preds = %if.then.i729, %if.then287.ab8500_chargalg_stop_maintenance_timer.exit731_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %if.then331.sink.split)) #8
          to label %if.then.i736 [label %if.then331.sink.split], !srcloc !258

if.then.i736:                                     ; preds = %ab8500_chargalg_stop_maintenance_timer.exit731
  call void @__sanitizer_cov_trace_pc() #10
  %534 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %di, align 8
  %536 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %537)
  %cmp.i733 = icmp eq i32 %537, 6
  %cond.i734 = select i1 %cmp.i733, ptr @.str.44, ptr @.str.45
  %arrayidx.i735 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %537
  %538 = ptrtoint ptr %arrayidx.i735 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %arrayidx.i735, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %535, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i734, i32 noundef %537, ptr noundef %539, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %if.then331.sink.split

sw.bb289:                                         ; preds = %do.end158
  %540 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %bm, align 4
  %bat_type291 = getelementptr inbounds %struct.ab8500_bm_data, ptr %541, i32 0, i32 21
  %542 = ptrtoint ptr %bat_type291 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %bat_type291, align 4
  %low_high_vol_lvl = getelementptr inbounds %struct.ab8500_battery_type, ptr %543, i32 0, i32 9
  %544 = ptrtoint ptr %low_high_vol_lvl to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %low_high_vol_lvl, align 4
  %low_high_cur_lvl = getelementptr inbounds %struct.ab8500_battery_type, ptr %543, i32 0, i32 8
  %546 = ptrtoint ptr %low_high_cur_lvl to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %low_high_cur_lvl, align 4
  tail call fastcc void @ab8500_chargalg_start_charging(ptr noundef %di, i32 noundef %545, i32 noundef %547)
  %maintenance_timer.i740 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %call.i741 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %maintenance_timer.i740) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i741)
  %cmp.i742 = icmp sgt i32 %call.i741, -1
  br i1 %cmp.i742, label %if.then.i744, label %sw.bb289.ab8500_chargalg_stop_maintenance_timer.exit746_crit_edge

sw.bb289.ab8500_chargalg_stop_maintenance_timer.exit746_crit_edge: ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_maintenance_timer.exit746

if.then.i744:                                     ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #10
  %maintenance_timer_expired.i743 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %548 = ptrtoint ptr %maintenance_timer_expired.i743 to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 0, ptr %maintenance_timer_expired.i743, align 4
  br label %ab8500_chargalg_stop_maintenance_timer.exit746

ab8500_chargalg_stop_maintenance_timer.exit746:   ; preds = %if.then.i744, %sw.bb289.ab8500_chargalg_stop_maintenance_timer.exit746_crit_edge
  %charge_status294 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %549 = ptrtoint ptr %charge_status294 to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 1, ptr %charge_status294, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit754)) #8
          to label %if.then.i751 [label %ab8500_chargalg_state_to.exit754], !srcloc !258

if.then.i751:                                     ; preds = %ab8500_chargalg_stop_maintenance_timer.exit746
  call void @__sanitizer_cov_trace_pc() #10
  %550 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %di, align 8
  %552 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %553)
  %cmp.i748 = icmp eq i32 %553, 17
  %cond.i749 = select i1 %cmp.i748, ptr @.str.44, ptr @.str.45
  %arrayidx.i750 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %553
  %554 = ptrtoint ptr %arrayidx.i750 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx.i750, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %551, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i749, i32 noundef %553, ptr noundef %555, i32 noundef 17, ptr noundef nonnull @.str.63) #8
  br label %ab8500_chargalg_state_to.exit754

ab8500_chargalg_state_to.exit754:                 ; preds = %if.then.i751, %ab8500_chargalg_stop_maintenance_timer.exit746
  %556 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 17, ptr %charge_state159, align 8
  %557 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %558) #8
  br label %sw.bb296

sw.bb296:                                         ; preds = %ab8500_chargalg_state_to.exit754, %do.end158.sw.bb296_crit_edge
  %btemp_lowhigh298 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 5
  %559 = ptrtoint ptr %btemp_lowhigh298 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %btemp_lowhigh298, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %560)
  %tobool299.not = icmp eq i8 %560, 0
  br i1 %tobool299.not, label %if.then300, label %sw.bb296.sw.epilogthread-pre-split_crit_edge

sw.bb296.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb296
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then300:                                       ; preds = %sw.bb296
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %if.then331.sink.split)) #8
          to label %if.then.i759 [label %if.then331.sink.split], !srcloc !258

if.then.i759:                                     ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #10
  %561 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %di, align 8
  %563 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %564)
  %cmp.i756 = icmp eq i32 %564, 6
  %cond.i757 = select i1 %cmp.i756, ptr @.str.44, ptr @.str.45
  %arrayidx.i758 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %564
  %565 = ptrtoint ptr %arrayidx.i758 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %arrayidx.i758, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %562, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i757, i32 noundef %564, ptr noundef %566, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %if.then331.sink.split

sw.bb302:                                         ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit770)) #8
          to label %if.then.i767 [label %ab8500_chargalg_state_to.exit770], !srcloc !258

if.then.i767:                                     ; preds = %sw.bb302
  call void @__sanitizer_cov_trace_pc() #10
  %567 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %di, align 8
  %569 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %570)
  %cmp.i764 = icmp eq i32 %570, 27
  %cond.i765 = select i1 %cmp.i764, ptr @.str.44, ptr @.str.45
  %arrayidx.i766 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %570
  %571 = ptrtoint ptr %arrayidx.i766 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %arrayidx.i766, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %568, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i765, i32 noundef %570, ptr noundef %572, i32 noundef 27, ptr noundef nonnull @.str.73) #8
  br label %ab8500_chargalg_state_to.exit770

ab8500_chargalg_state_to.exit770:                 ; preds = %if.then.i767, %sw.bb302
  %573 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 27, ptr %charge_state159, align 8
  br label %sw.bb303

sw.bb303:                                         ; preds = %ab8500_chargalg_state_to.exit770, %do.end158.sw.bb303_crit_edge
  %ac_wd_expired305 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 13
  %574 = ptrtoint ptr %ac_wd_expired305 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %ac_wd_expired305, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %575)
  %tobool306.not = icmp eq i8 %575, 0
  br i1 %tobool306.not, label %land.lhs.true307, label %sw.bb303.sw.epilogthread-pre-split_crit_edge

sw.bb303.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb303
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

land.lhs.true307:                                 ; preds = %sw.bb303
  %usb_wd_expired309 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 14
  %576 = ptrtoint ptr %usb_wd_expired309 to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %usb_wd_expired309, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %577)
  %tobool310.not = icmp eq i8 %577, 0
  br i1 %tobool310.not, label %if.then311, label %land.lhs.true307.sw.epilogthread-pre-split_crit_edge

land.lhs.true307.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then311:                                       ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ab8500_chargalg_state_to(ptr noundef %di, i32 noundef 6)
  br label %sw.epilogthread-pre-split

sw.bb313:                                         ; preds = %do.end158
  tail call fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %ab8500_chargalg_state_to.exit778)) #8
          to label %if.then.i775 [label %ab8500_chargalg_state_to.exit778], !srcloc !258

if.then.i775:                                     ; preds = %sw.bb313
  call void @__sanitizer_cov_trace_pc() #10
  %578 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %di, align 8
  %580 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %581)
  %cmp.i772 = icmp eq i32 %581, 15
  %cond.i773 = select i1 %cmp.i772, ptr @.str.44, ptr @.str.45
  %arrayidx.i774 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %581
  %582 = ptrtoint ptr %arrayidx.i774 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %arrayidx.i774, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %579, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i773, i32 noundef %581, ptr noundef %583, i32 noundef 15, ptr noundef nonnull @.str.61) #8
  br label %ab8500_chargalg_state_to.exit778

ab8500_chargalg_state_to.exit778:                 ; preds = %if.then.i775, %sw.bb313
  %584 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 15, ptr %charge_state159, align 8
  br label %sw.bb314

sw.bb314:                                         ; preds = %ab8500_chargalg_state_to.exit778, %do.end158.sw.bb314_crit_edge
  %btemp_underover316 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 4
  %585 = ptrtoint ptr %btemp_underover316 to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %btemp_underover316, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %586)
  %tobool317.not = icmp eq i8 %586, 0
  br i1 %tobool317.not, label %if.then318, label %sw.bb314.sw.epilogthread-pre-split_crit_edge

sw.bb314.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb314
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.then318:                                       ; preds = %sw.bb314
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_algorithm, %if.then331.sink.split)) #8
          to label %if.then.i783 [label %if.then331.sink.split], !srcloc !258

if.then.i783:                                     ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #10
  %587 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %di, align 8
  %589 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %charge_state159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %590)
  %cmp.i780 = icmp eq i32 %590, 6
  %cond.i781 = select i1 %cmp.i780, ptr @.str.44, ptr @.str.45
  %arrayidx.i782 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %590
  %591 = ptrtoint ptr %arrayidx.i782 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %arrayidx.i782, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %588, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i781, i32 noundef %590, ptr noundef %592, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %if.then331.sink.split

sw.epilogthread-pre-split:                        ; preds = %sw.bb314.sw.epilogthread-pre-split_crit_edge, %if.then311, %land.lhs.true307.sw.epilogthread-pre-split_crit_edge, %sw.bb303.sw.epilogthread-pre-split_crit_edge, %sw.bb296.sw.epilogthread-pre-split_crit_edge, %sw.bb283.sw.epilogthread-pre-split_crit_edge, %sw.bb270.sw.epilogthread-pre-split_crit_edge, %sw.bb256.sw.epilogthread-pre-split_crit_edge, %if.else252, %if.then251, %land.lhs.true244.sw.epilogthread-pre-split_crit_edge, %handle_maxim_chg_curr.exit.sw.epilogthread-pre-split_crit_edge, %ab8500_chargalg_stop_maintenance_timer.exit631, %if.then226, %land.lhs.true222.sw.epilogthread-pre-split_crit_edge, %sw.bb218.sw.epilogthread-pre-split_crit_edge, %if.then215, %land.lhs.true210.sw.epilogthread-pre-split_crit_edge, %land.lhs.true205.sw.epilogthread-pre-split_crit_edge, %land.lhs.true201.sw.epilogthread-pre-split_crit_edge, %land.lhs.true197.sw.epilogthread-pre-split_crit_edge, %sw.bb193.sw.epilogthread-pre-split_crit_edge, %if.then190, %land.lhs.true186.sw.epilogthread-pre-split_crit_edge, %sw.bb182.sw.epilogthread-pre-split_crit_edge, %sw.bb175.sw.epilogthread-pre-split_crit_edge, %ab8500_chargalg_state_to.exit569
  %593 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_load4_noabort(i32 %593)
  %.pr = load i32, ptr %charge_state159, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %do.end158.sw.epilog_crit_edge
  %594 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %173, %do.end158.sw.epilog_crit_edge ]
  %595 = zext i32 %594 to i64
  call void @__sanitizer_cov_trace_switch(i64 %595, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %594, label %sw.epilog.if.end333_crit_edge [
    i32 6, label %sw.epilog.if.then331_crit_edge
    i32 10, label %sw.epilog.if.then331_crit_edge795
    i32 12, label %sw.epilog.if.then331_crit_edge796
  ]

sw.epilog.if.then331_crit_edge796:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then331

sw.epilog.if.then331_crit_edge795:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then331

sw.epilog.if.then331_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then331

sw.epilog.if.end333_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333

if.then331.sink.split:                            ; preds = %if.then.i783, %if.then318, %if.then.i759, %if.then300, %if.then.i736, %ab8500_chargalg_stop_maintenance_timer.exit731, %if.then.i704, %ab8500_chargalg_stop_maintenance_timer.exit699, %if.then.i665, %if.then261, %if.then.i581, %if.then179
  %.sink = phi i32 [ 6, %if.then179 ], [ 6, %if.then.i581 ], [ 6, %if.then261 ], [ 6, %if.then.i665 ], [ 12, %ab8500_chargalg_stop_maintenance_timer.exit699 ], [ 12, %if.then.i704 ], [ 6, %ab8500_chargalg_stop_maintenance_timer.exit731 ], [ 6, %if.then.i736 ], [ 6, %if.then300 ], [ 6, %if.then.i759 ], [ 6, %if.then318 ], [ 6, %if.then.i783 ]
  %596 = ptrtoint ptr %charge_state159 to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 %.sink, ptr %charge_state159, align 8
  br label %if.then331

if.then331:                                       ; preds = %if.then331.sink.split, %sw.epilog.if.then331_crit_edge, %sw.epilog.if.then331_crit_edge795, %sw.epilog.if.then331_crit_edge796
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 18
  %597 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %chargalg_wq, align 8
  %chargalg_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 21
  %call.i787 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %598, ptr noundef %chargalg_work) #8
  br label %if.end333

if.end333:                                        ; preds = %if.then331, %sw.epilog.if.end333_crit_edge, %ab8500_chargalg_state_to.exit611, %ab8500_chargalg_state_to.exit540
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_get_ext_psy_data(ptr nocapture noundef readonly %dev, ptr noundef %data) #0 align 64 {
entry:
  %ret = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supplied_to, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #8
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ret, align 4, !annotation !260
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %data) #8
  %num_supplicants = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_supplicants, align 8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call2 = tail call i32 @match_string(ptr noundef %3, i32 noundef %6, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup342_crit_edge, label %if.end

entry.cleanup342_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup342

if.end:                                           ; preds = %entry
  %call3 = call i32 @power_supply_get_property(ptr noundef %1, i32 noundef 47, ptr noundef nonnull %ret) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret, align 4
  %percent = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 9, i32 4
  %13 = ptrtoint ptr %percent to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %percent, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %num_properties471 = getelementptr inbounds %struct.power_supply_desc, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %num_properties471 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_properties471, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7472.not = icmp eq i32 %17, 0
  br i1 %cmp7472.not, label %if.end5.cleanup342_crit_edge, label %for.body.lr.ph

if.end5.cleanup342_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup342

for.body.lr.ph:                                   ; preds = %if.end5
  %ac_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 15
  %usb_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 16
  %percent338 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 9, i32 4
  %vbus_collapsed = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 17
  %avg_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 9, i32 2
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 9, i32 3
  %usb_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8, i32 8
  %ac_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8, i32 10
  %batt_data307 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 9
  %events299 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17
  %usb_cv_active = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 16
  %ac_cv_active = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 15
  %usb_volt_uv = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8, i32 7
  %ac_volt_uv = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8, i32 9
  %volt_uv = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 9, i32 1
  %main_thermal_prot206 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 6
  %mainextchnotok208 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 1
  %main_ovv210 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 8
  %ac_wd_expired212 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 13
  %usbchargernotok250 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 10
  %usb_thermal_prot252 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 7
  %vbus_ovv254 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 9
  %usb_wd_expired256 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 14
  %online_chg117 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8, i32 2
  %prev_online_chg124 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8, i32 3
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 18
  %chargalg_wd_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 20
  %chg_info83 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8
  %prev_conn_chg91 = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 8, i32 1
  %batt_rem = getelementptr inbounds %struct.ab8500_chargalg, ptr %call1, i32 0, i32 17, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %18 = phi ptr [ %15, %for.body.lr.ph ], [ %203, %cleanup.for.body_crit_edge ]
  %j.0473 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %properties, align 4
  %arrayidx = getelementptr i32, ptr %20, i32 %j.0473
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ac_chg, align 4
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp11 = icmp eq i32 %26, 3
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call ptr @power_supply_get_drvdata(ptr noundef %1) #8
  %27 = ptrtoint ptr %ac_chg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call13, ptr %ac_chg, align 4
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %28 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_chg, align 8
  %tobool15.not = icmp eq ptr %29, null
  br i1 %tobool15.not, label %land.lhs.true16, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true16:                                  ; preds = %if.else
  %type18 = getelementptr inbounds %struct.power_supply_desc, ptr %18, i32 0, i32 1
  %30 = ptrtoint ptr %type18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp19 = icmp eq i32 %31, 4
  br i1 %cmp19, label %if.then20, label %land.lhs.true16.if.end24_crit_edge

land.lhs.true16.if.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call ptr @power_supply_get_drvdata(ptr noundef %1) #8
  %32 = ptrtoint ptr %usb_chg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call21, ptr %usb_chg, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true16.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then12
  %call25 = call i32 @power_supply_get_property(ptr noundef %1, i32 noundef %22, ptr noundef nonnull %ret) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %33 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %22, label %if.end28.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb97
    i32 2, label %sw.bb168
    i32 12, label %sw.bb261
    i32 13, label %sw.bb272
    i32 6, label %sw.bb293
    i32 52, label %sw.bb306
    i32 17, label %sw.bb308
    i32 18, label %sw.bb319
    i32 47, label %sw.bb334
  ]

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end28
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %type30 = getelementptr inbounds %struct.power_supply_desc, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %type30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type30, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %37, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb31
    i32 3, label %sw.bb38
    i32 4, label %sw.bb65
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb31:                                          ; preds = %sw.bb
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool32.not = icmp eq i32 %40, 0
  br i1 %tobool32.not, label %if.else34, label %if.then33

if.then33:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %batt_rem to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %batt_rem, align 1
  br label %cleanup

if.else34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %batt_rem to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %batt_rem, align 1
  br label %cleanup

sw.bb38:                                          ; preds = %sw.bb
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool39.not = icmp eq i32 %44, 0
  %45 = ptrtoint ptr %chg_info83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chg_info83, align 8
  %and = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %land.lhs.true51

land.lhs.true40:                                  ; preds = %sw.bb38
  br i1 %tobool41.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then42

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %prev_conn_chg91 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %prev_conn_chg91, align 4
  %and48 = and i32 %46, -2
  %48 = ptrtoint ptr %chg_info83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and48, ptr %chg_info83, align 8
  br label %cleanup

land.lhs.true51:                                  ; preds = %sw.bb38
  br i1 %tobool41.not, label %if.then56, label %land.lhs.true51.cleanup_crit_edge

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then56:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %prev_conn_chg91 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %prev_conn_chg91, align 4
  %or = or i32 %46, 1
  %50 = ptrtoint ptr %chg_info83 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or, ptr %chg_info83, align 8
  br label %cleanup

sw.bb65:                                          ; preds = %sw.bb
  %51 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool66.not = icmp eq i32 %52, 0
  %53 = ptrtoint ptr %chg_info83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chg_info83, align 8
  %and70 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %land.lhs.true82

land.lhs.true67:                                  ; preds = %sw.bb65
  br i1 %tobool71.not, label %land.lhs.true67.cleanup_crit_edge, label %if.then72

land.lhs.true67.cleanup_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then72:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %prev_conn_chg91 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %prev_conn_chg91, align 4
  %and79 = and i32 %54, -3
  %56 = ptrtoint ptr %chg_info83 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and79, ptr %chg_info83, align 8
  br label %cleanup

land.lhs.true82:                                  ; preds = %sw.bb65
  br i1 %tobool71.not, label %if.then87, label %land.lhs.true82.cleanup_crit_edge

land.lhs.true82.cleanup_crit_edge:                ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then87:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %prev_conn_chg91 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %prev_conn_chg91, align 4
  %or94 = or i32 %54, 2
  %58 = ptrtoint ptr %chg_info83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or94, ptr %chg_info83, align 8
  br label %cleanup

sw.bb97:                                          ; preds = %if.end28
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %type99 = getelementptr inbounds %struct.power_supply_desc, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %type99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type99, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %62, label %sw.bb97.cleanup_crit_edge [
    i32 4, label %sw.bb131
    i32 3, label %sw.bb100
  ]

sw.bb97.cleanup_crit_edge:                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb100:                                         ; preds = %sw.bb97
  %64 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool101.not = icmp eq i32 %65, 0
  %66 = ptrtoint ptr %online_chg117 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %online_chg117, align 8
  %and104 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool101.not, label %land.lhs.true102, label %land.lhs.true115

land.lhs.true102:                                 ; preds = %sw.bb100
  br i1 %tobool105.not, label %land.lhs.true102.cleanup_crit_edge, label %if.then106

land.lhs.true102.cleanup_crit_edge:               ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then106:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %prev_online_chg124 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %prev_online_chg124, align 4
  %and112 = and i32 %67, -2
  %69 = ptrtoint ptr %online_chg117 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and112, ptr %online_chg117, align 8
  br label %cleanup

land.lhs.true115:                                 ; preds = %sw.bb100
  br i1 %tobool105.not, label %if.then120, label %land.lhs.true115.cleanup_crit_edge

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then120:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %prev_online_chg124 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %prev_online_chg124, align 4
  %or127 = or i32 %67, 1
  %71 = ptrtoint ptr %online_chg117 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or127, ptr %online_chg117, align 8
  %72 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chargalg_wq, align 8
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %chargalg_wd_work, i32 noundef 0) #8
  br label %cleanup

sw.bb131:                                         ; preds = %sw.bb97
  %74 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool132.not = icmp eq i32 %75, 0
  %76 = ptrtoint ptr %online_chg117 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %online_chg117, align 8
  %and136 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool132.not, label %land.lhs.true133, label %land.lhs.true148

land.lhs.true133:                                 ; preds = %sw.bb131
  br i1 %tobool137.not, label %land.lhs.true133.cleanup_crit_edge, label %if.then138

land.lhs.true133.cleanup_crit_edge:               ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then138:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %prev_online_chg124 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %prev_online_chg124, align 4
  %and145 = and i32 %77, -3
  %79 = ptrtoint ptr %online_chg117 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and145, ptr %online_chg117, align 8
  br label %cleanup

land.lhs.true148:                                 ; preds = %sw.bb131
  br i1 %tobool137.not, label %if.then153, label %land.lhs.true148.cleanup_crit_edge

land.lhs.true148.cleanup_crit_edge:               ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then153:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %prev_online_chg124 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %prev_online_chg124, align 4
  %or160 = or i32 %77, 2
  %81 = ptrtoint ptr %online_chg117 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or160, ptr %online_chg117, align 8
  %82 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chargalg_wq, align 8
  %call.i470 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %83, ptr noundef %chargalg_wd_work, i32 noundef 0) #8
  br label %cleanup

sw.bb168:                                         ; preds = %if.end28
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  %type170 = getelementptr inbounds %struct.power_supply_desc, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %type170 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type170, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %87, label %sw.bb168.cleanup_crit_edge [
    i32 4, label %sw.bb215
    i32 3, label %sw.bb171
  ]

sw.bb168.cleanup_crit_edge:                       ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb171:                                         ; preds = %sw.bb168
  %89 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ret, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %90, label %sw.bb171.cleanup_crit_edge [
    i32 5, label %sw.bb172
    i32 3, label %sw.bb177
    i32 6, label %sw.bb171.sw.bb186_crit_edge
    i32 2, label %sw.bb171.sw.bb186_crit_edge474
    i32 4, label %sw.bb195
    i32 1, label %sw.bb204
  ]

sw.bb171.sw.bb186_crit_edge474:                   ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb186

sw.bb171.sw.bb186_crit_edge:                      ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb186

sw.bb171.cleanup_crit_edge:                       ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb172:                                         ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %mainextchnotok208 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %mainextchnotok208, align 1
  %93 = ptrtoint ptr %main_thermal_prot206 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %main_thermal_prot206, align 2
  %94 = ptrtoint ptr %main_ovv210 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %main_ovv210, align 4
  %95 = ptrtoint ptr %ac_wd_expired212 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %ac_wd_expired212, align 1
  br label %cleanup

sw.bb177:                                         ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %ac_wd_expired212 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %ac_wd_expired212, align 1
  %97 = ptrtoint ptr %mainextchnotok208 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %mainextchnotok208, align 1
  %98 = ptrtoint ptr %main_ovv210 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %main_ovv210, align 4
  %99 = ptrtoint ptr %main_thermal_prot206 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %main_thermal_prot206, align 2
  br label %cleanup

sw.bb186:                                         ; preds = %sw.bb171.sw.bb186_crit_edge, %sw.bb171.sw.bb186_crit_edge474
  %100 = ptrtoint ptr %main_thermal_prot206 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %main_thermal_prot206, align 2
  %101 = ptrtoint ptr %mainextchnotok208 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %mainextchnotok208, align 1
  %102 = ptrtoint ptr %main_ovv210 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %main_ovv210, align 4
  %103 = ptrtoint ptr %ac_wd_expired212 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %ac_wd_expired212, align 1
  br label %cleanup

sw.bb195:                                         ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %main_ovv210 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %main_ovv210, align 4
  %105 = ptrtoint ptr %mainextchnotok208 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %mainextchnotok208, align 1
  %106 = ptrtoint ptr %main_thermal_prot206 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %main_thermal_prot206, align 2
  %107 = ptrtoint ptr %ac_wd_expired212 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %ac_wd_expired212, align 1
  br label %cleanup

sw.bb204:                                         ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %main_thermal_prot206 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %main_thermal_prot206, align 2
  %109 = ptrtoint ptr %mainextchnotok208 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %mainextchnotok208, align 1
  %110 = ptrtoint ptr %main_ovv210 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %main_ovv210, align 4
  %111 = ptrtoint ptr %ac_wd_expired212 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %ac_wd_expired212, align 1
  br label %cleanup

sw.bb215:                                         ; preds = %sw.bb168
  %112 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ret, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %113, label %sw.bb215.cleanup_crit_edge [
    i32 5, label %sw.bb216
    i32 3, label %sw.bb221
    i32 6, label %sw.bb215.sw.bb230_crit_edge
    i32 2, label %sw.bb215.sw.bb230_crit_edge475
    i32 4, label %sw.bb239
    i32 1, label %sw.bb248
  ]

sw.bb215.sw.bb230_crit_edge475:                   ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb230

sw.bb215.sw.bb230_crit_edge:                      ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb230

sw.bb215.cleanup_crit_edge:                       ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb216:                                         ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %usbchargernotok250 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %usbchargernotok250, align 2
  %116 = ptrtoint ptr %usb_thermal_prot252 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %usb_thermal_prot252, align 1
  %117 = ptrtoint ptr %vbus_ovv254 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %vbus_ovv254, align 1
  %118 = ptrtoint ptr %usb_wd_expired256 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %usb_wd_expired256, align 2
  br label %cleanup

sw.bb221:                                         ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %usb_wd_expired256 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %usb_wd_expired256, align 2
  %120 = ptrtoint ptr %usbchargernotok250 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %usbchargernotok250, align 2
  %121 = ptrtoint ptr %usb_thermal_prot252 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %usb_thermal_prot252, align 1
  %122 = ptrtoint ptr %vbus_ovv254 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %vbus_ovv254, align 1
  br label %cleanup

sw.bb230:                                         ; preds = %sw.bb215.sw.bb230_crit_edge, %sw.bb215.sw.bb230_crit_edge475
  %123 = ptrtoint ptr %usb_thermal_prot252 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %usb_thermal_prot252, align 1
  %124 = ptrtoint ptr %usbchargernotok250 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %usbchargernotok250, align 2
  %125 = ptrtoint ptr %vbus_ovv254 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %vbus_ovv254, align 1
  %126 = ptrtoint ptr %usb_wd_expired256 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %usb_wd_expired256, align 2
  br label %cleanup

sw.bb239:                                         ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %vbus_ovv254 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %vbus_ovv254, align 1
  %128 = ptrtoint ptr %usbchargernotok250 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %usbchargernotok250, align 2
  %129 = ptrtoint ptr %usb_thermal_prot252 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %usb_thermal_prot252, align 1
  %130 = ptrtoint ptr %usb_wd_expired256 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %usb_wd_expired256, align 2
  br label %cleanup

sw.bb248:                                         ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %usbchargernotok250 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %usbchargernotok250, align 2
  %132 = ptrtoint ptr %usb_thermal_prot252 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %usb_thermal_prot252, align 1
  %133 = ptrtoint ptr %vbus_ovv254 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %vbus_ovv254, align 1
  %134 = ptrtoint ptr %usb_wd_expired256 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %usb_wd_expired256, align 2
  br label %cleanup

sw.bb261:                                         ; preds = %if.end28
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 8
  %type263 = getelementptr inbounds %struct.power_supply_desc, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %type263 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type263, align 4
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %138, label %sw.bb261.cleanup_crit_edge [
    i32 1, label %sw.bb264
    i32 3, label %sw.bb266
    i32 4, label %sw.bb268
  ]

sw.bb261.cleanup_crit_edge:                       ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb264:                                         ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ret, align 4
  %142 = ptrtoint ptr %volt_uv to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %volt_uv, align 4
  br label %cleanup

sw.bb266:                                         ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ret, align 4
  %145 = ptrtoint ptr %ac_volt_uv to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %ac_volt_uv, align 8
  br label %cleanup

sw.bb268:                                         ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ret, align 4
  %148 = ptrtoint ptr %usb_volt_uv to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %usb_volt_uv, align 8
  br label %cleanup

sw.bb272:                                         ; preds = %if.end28
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 8
  %type274 = getelementptr inbounds %struct.power_supply_desc, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %type274 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %type274, align 4
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %152, label %sw.bb272.cleanup_crit_edge [
    i32 3, label %sw.bb275
    i32 4, label %sw.bb283
  ]

sw.bb272.cleanup_crit_edge:                       ; preds = %sw.bb272
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb275:                                         ; preds = %sw.bb272
  %154 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool276.not = icmp eq i32 %155, 0
  br i1 %tobool276.not, label %if.else279, label %if.then277

if.then277:                                       ; preds = %sw.bb275
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %ac_cv_active to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %ac_cv_active, align 1
  br label %cleanup

if.else279:                                       ; preds = %sw.bb275
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %ac_cv_active to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %ac_cv_active, align 1
  br label %cleanup

sw.bb283:                                         ; preds = %sw.bb272
  %158 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool284.not = icmp eq i32 %159, 0
  br i1 %tobool284.not, label %if.else287, label %if.then285

if.then285:                                       ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %usb_cv_active to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %usb_cv_active, align 4
  br label %cleanup

if.else287:                                       ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %usb_cv_active to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %usb_cv_active, align 4
  br label %cleanup

sw.bb293:                                         ; preds = %if.end28
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 8
  %type295 = getelementptr inbounds %struct.power_supply_desc, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %type295 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %type295, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %165)
  %cond = icmp eq i32 %165, 1
  br i1 %cond, label %sw.bb296, label %sw.bb293.cleanup_crit_edge

sw.bb293.cleanup_crit_edge:                       ; preds = %sw.bb293
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb296:                                         ; preds = %sw.bb293
  %166 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool297.not = icmp eq i32 %167, 0
  br i1 %tobool297.not, label %if.else300, label %if.then298

if.then298:                                       ; preds = %sw.bb296
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %events299 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %events299, align 4
  br label %cleanup

if.else300:                                       ; preds = %sw.bb296
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %events299 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %events299, align 4
  br label %cleanup

sw.bb306:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ret, align 4
  %div = sdiv i32 %171, 10
  %172 = ptrtoint ptr %batt_data307 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %div, ptr %batt_data307, align 8
  br label %cleanup

sw.bb308:                                         ; preds = %if.end28
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 8
  %type310 = getelementptr inbounds %struct.power_supply_desc, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %type310 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %type310, align 4
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %176, label %sw.bb308.cleanup_crit_edge [
    i32 3, label %sw.bb311
    i32 4, label %sw.bb313
    i32 1, label %sw.bb315
  ]

sw.bb308.cleanup_crit_edge:                       ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb311:                                         ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ret, align 4
  %180 = ptrtoint ptr %ac_curr_ua to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %ac_curr_ua, align 4
  br label %cleanup

sw.bb313:                                         ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ret, align 4
  %183 = ptrtoint ptr %usb_curr_ua to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %usb_curr_ua, align 4
  br label %cleanup

sw.bb315:                                         ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %ret, align 4
  %186 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %inst_curr_ua, align 4
  br label %cleanup

sw.bb319:                                         ; preds = %if.end28
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 8
  %type321 = getelementptr inbounds %struct.power_supply_desc, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %type321 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %type321, align 4
  %191 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %190, label %sw.bb319.cleanup_crit_edge [
    i32 1, label %sw.bb322
    i32 4, label %sw.bb324
  ]

sw.bb319.cleanup_crit_edge:                       ; preds = %sw.bb319
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb322:                                         ; preds = %sw.bb319
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ret, align 4
  %194 = ptrtoint ptr %avg_curr_ua to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %avg_curr_ua, align 8
  br label %cleanup

sw.bb324:                                         ; preds = %sw.bb319
  %195 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool325.not = icmp eq i32 %196, 0
  br i1 %tobool325.not, label %if.else328, label %if.then326

if.then326:                                       ; preds = %sw.bb324
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %vbus_collapsed to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %vbus_collapsed, align 1
  br label %cleanup

if.else328:                                       ; preds = %sw.bb324
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %vbus_collapsed to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %vbus_collapsed, align 1
  br label %cleanup

sw.bb334:                                         ; preds = %if.end28
  br i1 %tobool.not, label %sw.bb334.cleanup_crit_edge, label %if.then336

sw.bb334.cleanup_crit_edge:                       ; preds = %sw.bb334
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then336:                                       ; preds = %sw.bb334
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ret, align 4
  %201 = ptrtoint ptr %percent338 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %percent338, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then336, %sw.bb334.cleanup_crit_edge, %if.else328, %if.then326, %sw.bb322, %sw.bb319.cleanup_crit_edge, %sw.bb315, %sw.bb313, %sw.bb311, %sw.bb308.cleanup_crit_edge, %sw.bb306, %if.else300, %if.then298, %sw.bb293.cleanup_crit_edge, %if.else287, %if.then285, %if.else279, %if.then277, %sw.bb272.cleanup_crit_edge, %sw.bb268, %sw.bb266, %sw.bb264, %sw.bb261.cleanup_crit_edge, %sw.bb248, %sw.bb239, %sw.bb230, %sw.bb221, %sw.bb216, %sw.bb215.cleanup_crit_edge, %sw.bb204, %sw.bb195, %sw.bb186, %sw.bb177, %sw.bb172, %sw.bb171.cleanup_crit_edge, %sw.bb168.cleanup_crit_edge, %if.then153, %land.lhs.true148.cleanup_crit_edge, %if.then138, %land.lhs.true133.cleanup_crit_edge, %if.then120, %land.lhs.true115.cleanup_crit_edge, %if.then106, %land.lhs.true102.cleanup_crit_edge, %sw.bb97.cleanup_crit_edge, %if.then87, %land.lhs.true82.cleanup_crit_edge, %if.then72, %land.lhs.true67.cleanup_crit_edge, %if.then56, %land.lhs.true51.cleanup_crit_edge, %if.then42, %land.lhs.true40.cleanup_crit_edge, %if.else34, %if.then33, %sw.bb.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  %inc = add nuw i32 %j.0473, 1
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %203, i32 0, i32 5
  %204 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %num_properties, align 4
  %cmp7 = icmp ult i32 %inc, %205
  br i1 %cmp7, label %cleanup.for.body_crit_edge, label %cleanup.cleanup342_crit_edge

cleanup.cleanup342_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup342

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup342:                                       ; preds = %cleanup.cleanup342_crit_edge, %if.end5.cleanup342_crit_edge, %entry.cleanup342_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_chargalg_end_of_charge(ptr nocapture noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %charge_status = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %0 = ptrtoint ptr %charge_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %charge_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else48_crit_edge

entry.if.else48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

land.lhs.true:                                    ; preds = %entry
  %charge_state = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %2 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %charge_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp1 = icmp eq i32 %3, 7
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.else48_crit_edge

land.lhs.true.if.else48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

land.lhs.true2:                                   ; preds = %land.lhs.true
  %maintenance_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 3
  %4 = ptrtoint ptr %maintenance_chg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %maintenance_chg, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true2.if.else48_crit_edge

land.lhs.true2.if.else48_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %volt_uv = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %volt_uv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %volt_uv, align 4
  %bm = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 13
  %8 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bm, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %overvoltage_limit_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %overvoltage_limit_uv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overvoltage_limit_uv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp4.not = icmp slt i32 %7, %13
  br i1 %cmp4.not, label %lor.lhs.false, label %land.lhs.true3.land.lhs.true9_crit_edge

land.lhs.true3.land.lhs.true9_crit_edge:          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true9

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %usb_cv_active = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 16
  %14 = ptrtoint ptr %usb_cv_active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %usb_cv_active, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.land.lhs.true9_crit_edge

lor.lhs.false.land.lhs.true9_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true9

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %ac_cv_active = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 15
  %16 = ptrtoint ptr %ac_cv_active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ac_cv_active, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %lor.lhs.false6.if.else48_crit_edge, label %lor.lhs.false6.land.lhs.true9_crit_edge

lor.lhs.false6.land.lhs.true9_crit_edge:          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true9

lor.lhs.false6.if.else48_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

land.lhs.true9:                                   ; preds = %lor.lhs.false6.land.lhs.true9_crit_edge, %lor.lhs.false.land.lhs.true9_crit_edge, %land.lhs.true3.land.lhs.true9_crit_edge
  %avg_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %avg_curr_ua to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avg_curr_ua, align 8
  %charge_term_current_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %charge_term_current_ua to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %charge_term_current_ua, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp13 = icmp slt i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17 = icmp sgt i32 %19, 0
  %or.cond = and i1 %cmp17, %cmp13
  br i1 %or.cond, label %if.then, label %land.lhs.true9.if.else48_crit_edge

land.lhs.true9.if.else48_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

if.then:                                          ; preds = %land.lhs.true9
  %eoc_cnt = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 2
  %22 = ptrtoint ptr %eoc_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eoc_cnt, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %eoc_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp18 = icmp sgt i32 %inc, 9
  br i1 %cmp18, label %if.then19, label %do.body28

if.then19:                                        ; preds = %if.then
  %24 = ptrtoint ptr %eoc_cnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %eoc_cnt, align 8
  %25 = ptrtoint ptr %charge_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %charge_status, align 4
  %26 = ptrtoint ptr %maintenance_chg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %maintenance_chg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_end_of_charge, %do.end)) #8
          to label %if.then27 [label %do.end], !srcloc !258

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug309, ptr noundef %28, ptr noundef nonnull @.str.33) #8
  br label %do.end

do.end:                                           ; preds = %if.then27, %if.then19
  %chargalg_psy = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 14
  %29 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %30) #8
  br label %if.end50

do.body28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_end_of_charge, %if.end50)) #8
          to label %if.then42 [label %if.end50], !srcloc !258

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %di, align 8
  %33 = ptrtoint ptr %eoc_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eoc_cnt, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug310, ptr noundef %32, ptr noundef nonnull @.str.34, i32 noundef %34, i32 noundef 10) #8
  br label %if.end50

if.else48:                                        ; preds = %land.lhs.true9.if.else48_crit_edge, %lor.lhs.false6.if.else48_crit_edge, %land.lhs.true2.if.else48_crit_edge, %land.lhs.true.if.else48_crit_edge, %entry.if.else48_crit_edge
  %eoc_cnt49 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 2
  %35 = ptrtoint ptr %eoc_cnt49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %eoc_cnt49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then42, %do.body28, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_chargalg_check_temp(ptr nocapture noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bm = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 13
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %batt_data = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9
  %4 = ptrtoint ptr %batt_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %batt_data, align 8
  %temp_alert_min = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %temp_alert_min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp_alert_min, align 4
  %t_hyst_norm = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 4
  %8 = ptrtoint ptr %t_hyst_norm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_hyst_norm, align 8
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp = icmp sgt i32 %5, %add
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %temp_alert_max = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %temp_alert_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp_alert_max, align 4
  %sub = sub i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp5 = icmp slt i32 %5, %sub
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %btemp_underover = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 4
  %12 = ptrtoint ptr %btemp_underover to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %btemp_underover, align 4
  %btemp_lowhigh = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 5
  %13 = ptrtoint ptr %btemp_lowhigh to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %btemp_lowhigh, align 1
  %14 = ptrtoint ptr %t_hyst_norm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %t_hyst_norm, align 8
  %t_hyst_lowhigh = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 5
  %15 = ptrtoint ptr %t_hyst_lowhigh to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %t_hyst_lowhigh, align 4
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %temp_alert_max10 = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 18
  %16 = ptrtoint ptr %temp_alert_max10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp_alert_max10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %17)
  %cmp11.not = icmp slt i32 %5, %17
  br i1 %cmp11.not, label %if.else.lor.lhs.false_crit_edge, label %land.lhs.true12

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true12:                                  ; preds = %if.else
  %temp_max = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %temp_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp_max, align 4
  %t_hyst_lowhigh15 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 5
  %20 = ptrtoint ptr %t_hyst_lowhigh15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_hyst_lowhigh15, align 4
  %sub16 = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub16)
  %cmp17 = icmp slt i32 %5, %sub16
  br i1 %cmp17, label %land.lhs.true12.if.then28_crit_edge, label %land.lhs.true12.lor.lhs.false_crit_edge

land.lhs.true12.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true12.if.then28_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false:                                    ; preds = %land.lhs.true12.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  %temp_min = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %temp_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp_min, align 4
  %t_hyst_lowhigh20 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 5
  %24 = ptrtoint ptr %t_hyst_lowhigh20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_hyst_lowhigh20, align 4
  %add21 = add i32 %25, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add21)
  %cmp22 = icmp sle i32 %5, %add21
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp27.not = icmp sgt i32 %5, %7
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp27.not
  br i1 %or.cond, label %if.else36, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %land.lhs.true12.if.then28_crit_edge
  %btemp_underover30 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 4
  %26 = ptrtoint ptr %btemp_underover30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %btemp_underover30, align 4
  %btemp_lowhigh32 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 5
  %27 = ptrtoint ptr %btemp_lowhigh32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %btemp_lowhigh32, align 1
  %temp_hysteresis = getelementptr inbounds %struct.ab8500_bm_data, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %temp_hysteresis to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temp_hysteresis, align 4
  %30 = ptrtoint ptr %t_hyst_norm to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %t_hyst_norm, align 8
  %t_hyst_lowhigh35 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 5
  %31 = ptrtoint ptr %t_hyst_lowhigh35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %t_hyst_lowhigh35, align 4
  br label %if.end66

if.else36:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %23)
  %cmp40.not = icmp sgt i32 %5, %23
  br i1 %cmp40.not, label %lor.lhs.false41, label %if.else36.if.then46_crit_edge

if.else36.if.then46_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false41:                                  ; preds = %if.else36
  %temp_max44 = getelementptr inbounds %struct.power_supply_battery_info, ptr %3, i32 0, i32 20
  %32 = ptrtoint ptr %temp_max44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_max44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %33)
  %cmp45.not = icmp slt i32 %5, %33
  br i1 %cmp45.not, label %do.body, label %lor.lhs.false41.if.then46_crit_edge

lor.lhs.false41.if.then46_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false41.if.then46_crit_edge, %if.else36.if.then46_crit_edge
  %btemp_underover48 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 4
  %34 = ptrtoint ptr %btemp_underover48 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %btemp_underover48, align 4
  %btemp_lowhigh50 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 5
  %35 = ptrtoint ptr %btemp_lowhigh50 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %btemp_lowhigh50, align 1
  %36 = ptrtoint ptr %t_hyst_norm to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %t_hyst_norm, align 8
  %temp_hysteresis53 = getelementptr inbounds %struct.ab8500_bm_data, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %temp_hysteresis53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %temp_hysteresis53, align 4
  %39 = ptrtoint ptr %t_hyst_lowhigh20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %t_hyst_lowhigh20, align 4
  br label %if.end66

do.body:                                          ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_check_temp.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_temp, %if.end66)) #8
          to label %if.then59 [label %if.end66], !srcloc !258

if.then59:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %di, align 8
  %42 = ptrtoint ptr %batt_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %batt_data, align 8
  %44 = ptrtoint ptr %t_hyst_lowhigh20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %t_hyst_lowhigh20, align 4
  %46 = ptrtoint ptr %t_hyst_norm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %t_hyst_norm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_check_temp.__UNIQUE_ID_ddebug308, ptr noundef %41, ptr noundef nonnull @.str.36, i32 noundef %43, i32 noundef %45, i32 noundef %47) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %do.body, %if.then46, %if.then28, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_chargalg_check_charger_connection(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chg_info = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8
  %0 = ptrtoint ptr %chg_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chg_info, align 8
  %prev_conn_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev_conn_chg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev_conn_chg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %susp_status = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10
  %4 = ptrtoint ptr %susp_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %susp_status, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end110_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %ac_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %ac_suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ac_suspended, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %do.body, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %do.end)) #8
          to label %if.then12 [label %do.end], !srcloc !258

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug290, ptr noundef %9, ptr noundef nonnull @.str.38) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %charger_type = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %charger_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %charger_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp14.not = icmp eq i32 %11, 1
  br i1 %cmp14.not, label %do.end.if.end103_crit_edge, label %if.then15

do.end.if.end103_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %charger_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %charger_type, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %if.end103.sink.split)) #8
          to label %if.then.i [label %if.end103.sink.split], !srcloc !258

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di, align 8
  %charge_state.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %15 = ptrtoint ptr %charge_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %charge_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp.i = icmp eq i32 %16, 6
  %cond.i = select i1 %cmp.i, ptr @.str.44, ptr @.str.45
  %arrayidx.i = getelementptr [28 x ptr], ptr @states, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %14, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i, i32 noundef %16, ptr noundef %18, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %if.end103.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %and21 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else47, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else
  %usb_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %usb_suspended to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %usb_suspended, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not = icmp eq i8 %20, 0
  br i1 %tobool25.not, label %do.body27, label %land.lhs.true23.land.lhs.true51_crit_edge

land.lhs.true23.land.lhs.true51_crit_edge:        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true51

do.body27:                                        ; preds = %land.lhs.true23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %do.end44)) #8
          to label %if.then41 [label %do.end44], !srcloc !258

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug291, ptr noundef %22, ptr noundef nonnull @.str.39) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body27
  %charger_type46 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %charger_type46 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %charger_type46, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %if.end103.sink.split)) #8
          to label %if.then.i152 [label %if.end103.sink.split], !srcloc !258

if.then.i152:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %di, align 8
  %charge_state.i148 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %26 = ptrtoint ptr %charge_state.i148 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %charge_state.i148, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp.i149 = icmp eq i32 %27, 6
  %cond.i150 = select i1 %cmp.i149, ptr @.str.44, ptr @.str.45
  %arrayidx.i151 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i151, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %25, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i150, i32 noundef %27, ptr noundef %29, i32 noundef 6, ptr noundef nonnull @.str.52) #8
  br label %if.end103.sink.split

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool50.not = icmp eq i32 %1, 0
  br i1 %tobool50.not, label %if.else47.do.body81_crit_edge, label %if.else47.land.lhs.true51_crit_edge

if.else47.land.lhs.true51_crit_edge:              ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true51

if.else47.do.body81_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

land.lhs.true51:                                  ; preds = %if.else47.land.lhs.true51_crit_edge, %land.lhs.true23.land.lhs.true51_crit_edge
  %ac_suspended53 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %ac_suspended53 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ac_suspended53, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool54.not = icmp eq i8 %31, 0
  br i1 %tobool54.not, label %lor.lhs.false55, label %land.lhs.true51.do.body60_crit_edge

land.lhs.true51.do.body60_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body60

lor.lhs.false55:                                  ; preds = %land.lhs.true51
  %usb_suspended57 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 2
  %32 = ptrtoint ptr %usb_suspended57 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %usb_suspended57, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool58.not = icmp eq i8 %33, 0
  br i1 %tobool58.not, label %lor.lhs.false55.do.body81_crit_edge, label %lor.lhs.false55.do.body60_crit_edge

lor.lhs.false55.do.body60_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body60

lor.lhs.false55.do.body81_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

do.body60:                                        ; preds = %lor.lhs.false55.do.body60_crit_edge, %land.lhs.true51.do.body60_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %do.end77)) #8
          to label %if.then74 [label %do.end77], !srcloc !258

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug292, ptr noundef %35, ptr noundef nonnull @.str.40) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body60
  %charger_type79 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %36 = ptrtoint ptr %charger_type79 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %charger_type79, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %if.end103.sink.split)) #8
          to label %if.then.i159 [label %if.end103.sink.split], !srcloc !258

if.then.i159:                                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %di, align 8
  %charge_state.i155 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %39 = ptrtoint ptr %charge_state.i155 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %charge_state.i155, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %40)
  %cmp.i156 = icmp eq i32 %40, 18
  %cond.i157 = select i1 %cmp.i156, ptr @.str.44, ptr @.str.45
  %arrayidx.i158 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i158, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %38, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i157, i32 noundef %40, ptr noundef %42, i32 noundef 18, ptr noundef nonnull @.str.64) #8
  br label %if.end103.sink.split

do.body81:                                        ; preds = %lor.lhs.false55.do.body81_crit_edge, %if.else47.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %do.end98)) #8
          to label %if.then95 [label %do.end98], !srcloc !258

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug293, ptr noundef %44, ptr noundef nonnull @.str.41) #8
  br label %do.end98

do.end98:                                         ; preds = %if.then95, %do.body81
  %charger_type100 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %45 = ptrtoint ptr %charger_type100 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %charger_type100, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_check_charger_connection, %if.end103.sink.split)) #8
          to label %if.then.i166 [label %if.end103.sink.split], !srcloc !258

if.then.i166:                                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %di, align 8
  %charge_state.i162 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %48 = ptrtoint ptr %charge_state.i162 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %charge_state.i162, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i163 = icmp eq i32 %49, 0
  %cond.i164 = select i1 %cmp.i163, ptr @.str.44, ptr @.str.45
  %arrayidx.i165 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i165, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %47, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i164, i32 noundef %49, ptr noundef %51, i32 noundef 0, ptr noundef nonnull @.str.46) #8
  br label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %if.then.i166, %do.end98, %if.then.i159, %do.end77, %if.then.i152, %do.end44, %if.then.i, %if.then15
  %.sink = phi i32 [ 6, %if.then15 ], [ 6, %if.then.i ], [ 6, %do.end44 ], [ 6, %if.then.i152 ], [ 18, %do.end77 ], [ 18, %if.then.i159 ], [ 0, %do.end98 ], [ 0, %if.then.i166 ]
  %charge_state7.i153 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %52 = ptrtoint ptr %charge_state7.i153 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink, ptr %charge_state7.i153, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %do.end.if.end103_crit_edge
  %53 = ptrtoint ptr %chg_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chg_info, align 8
  %55 = ptrtoint ptr %prev_conn_chg to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %prev_conn_chg, align 4
  %susp_status108 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10
  %56 = ptrtoint ptr %susp_status108 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %susp_status108, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end103, %lor.lhs.false.if.end110_crit_edge
  %57 = ptrtoint ptr %chg_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chg_info, align 8
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_chargalg_state_to(ptr nocapture noundef %di, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_state_to, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di, align 8
  %charge_state = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %2 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %charge_state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp eq i32 %3, %state
  %cond = select i1 %cmp, ptr @.str.44, ptr @.str.45
  %arrayidx = getelementptr [28 x ptr], ptr @states, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr [28 x ptr], ptr @states, i32 0, i32 %state
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond, i32 noundef %3, ptr noundef %5, i32 noundef %state, ptr noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charge_state7 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 6
  %8 = ptrtoint ptr %charge_state7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %state, ptr %charge_state7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_chargalg_stop_charging(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_chg.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %0 = ptrtoint ptr %ac_chg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac_chg.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ab8500_chargalg_ac_en.exit_crit_edge, label %lor.lhs.false.i

entry.ab8500_chargalg_ac_en.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_ac_en.exit

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.ux500_charger, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.ab8500_chargalg_ac_en.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ab8500_chargalg_ac_en.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_ac_en.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i = getelementptr inbounds %struct.ux500_charger, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %max_out_volt_uv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_out_volt_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0) #8
  %vset_uv.addr.0.i = select i1 %tobool5.not.i, i32 0, i32 %6
  %max_out_curr_ua.i = getelementptr inbounds %struct.ux500_charger, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %max_out_curr_ua.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_out_curr_ua.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.i = icmp eq i32 %8, 0
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 0) #8
  %iset_ua.addr.0.i = select i1 %tobool11.not.i, i32 0, i32 %9
  %ac_iset_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %10 = ptrtoint ptr %ac_iset_ua.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %iset_ua.addr.0.i, ptr %ac_iset_ua.i, align 4
  %ac_vset_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 13
  %11 = ptrtoint ptr %ac_vset_uv.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %vset_uv.addr.0.i, ptr %ac_vset_uv.i, align 8
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %call34.i = tail call i32 %13(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %vset_uv.addr.0.i, i32 noundef %iset_ua.addr.0.i) #8
  br label %ab8500_chargalg_ac_en.exit

ab8500_chargalg_ac_en.exit:                       ; preds = %if.end.i, %lor.lhs.false.i.ab8500_chargalg_ac_en.exit_crit_edge, %entry.ab8500_chargalg_ac_en.exit_crit_edge
  %usb_chg.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %14 = ptrtoint ptr %usb_chg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_chg.i, align 8
  %tobool.not.i10 = icmp eq ptr %15, null
  br i1 %tobool.not.i10, label %ab8500_chargalg_ac_en.exit.ab8500_chargalg_usb_en.exit_crit_edge, label %lor.lhs.false.i13

ab8500_chargalg_ac_en.exit.ab8500_chargalg_usb_en.exit_crit_edge: ; preds = %ab8500_chargalg_ac_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_usb_en.exit

lor.lhs.false.i13:                                ; preds = %ab8500_chargalg_ac_en.exit
  %ops.i11 = getelementptr inbounds %struct.ux500_charger, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i11, align 4
  %tobool3.not.i12 = icmp eq ptr %17, null
  br i1 %tobool3.not.i12, label %lor.lhs.false.i13.ab8500_chargalg_usb_en.exit_crit_edge, label %if.end.i20

lor.lhs.false.i13.ab8500_chargalg_usb_en.exit_crit_edge: ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_usb_en.exit

if.end.i20:                                       ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i14 = getelementptr inbounds %struct.ux500_charger, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %max_out_volt_uv.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_out_volt_uv.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i15 = icmp eq i32 %19, 0
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 0) #8
  %vset_uv.addr.0.i16 = select i1 %tobool5.not.i15, i32 0, i32 %20
  %max_out_curr_ua.i17 = getelementptr inbounds %struct.ux500_charger, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %max_out_curr_ua.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_out_curr_ua.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool11.not.i18 = icmp eq i32 %22, 0
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 0) #8
  %iset_ua.addr.0.i19 = select i1 %tobool11.not.i18, i32 0, i32 %23
  %usb_iset_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %24 = ptrtoint ptr %usb_iset_ua.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %iset_ua.addr.0.i19, ptr %usb_iset_ua.i, align 4
  %usb_vset_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 11
  %25 = ptrtoint ptr %usb_vset_uv.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %vset_uv.addr.0.i16, ptr %usb_vset_uv.i, align 8
  %26 = ptrtoint ptr %ops.i11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i11, align 4
  %call.i = tail call i32 %27(ptr noundef nonnull %15, i32 noundef 0, i32 noundef %vset_uv.addr.0.i16, i32 noundef %iset_ua.addr.0.i19) #8
  br label %ab8500_chargalg_usb_en.exit

ab8500_chargalg_usb_en.exit:                      ; preds = %if.end.i20, %lor.lhs.false.i13.ab8500_chargalg_usb_en.exit_crit_edge, %ab8500_chargalg_ac_en.exit.ab8500_chargalg_usb_en.exit_crit_edge
  %safety_timer.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 22
  %call.i21 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %safety_timer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i21)
  %cmp.i = icmp sgt i32 %call.i21, -1
  br i1 %cmp.i, label %if.then.i, label %ab8500_chargalg_usb_en.exit.ab8500_chargalg_stop_safety_timer.exit_crit_edge

ab8500_chargalg_usb_en.exit.ab8500_chargalg_stop_safety_timer.exit_crit_edge: ; preds = %ab8500_chargalg_usb_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_safety_timer.exit

if.then.i:                                        ; preds = %ab8500_chargalg_usb_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  %safety_timer_expired.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 11
  %28 = ptrtoint ptr %safety_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %safety_timer_expired.i, align 1
  br label %ab8500_chargalg_stop_safety_timer.exit

ab8500_chargalg_stop_safety_timer.exit:           ; preds = %if.then.i, %ab8500_chargalg_usb_en.exit.ab8500_chargalg_stop_safety_timer.exit_crit_edge
  %maintenance_timer.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 23
  %call.i23 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %maintenance_timer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i23)
  %cmp.i24 = icmp sgt i32 %call.i23, -1
  br i1 %cmp.i24, label %if.then.i25, label %ab8500_chargalg_stop_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit_crit_edge

ab8500_chargalg_stop_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit_crit_edge: ; preds = %ab8500_chargalg_stop_safety_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_stop_maintenance_timer.exit

if.then.i25:                                      ; preds = %ab8500_chargalg_stop_safety_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %maintenance_timer_expired.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 12
  %29 = ptrtoint ptr %maintenance_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %maintenance_timer_expired.i, align 4
  br label %ab8500_chargalg_stop_maintenance_timer.exit

ab8500_chargalg_stop_maintenance_timer.exit:      ; preds = %if.then.i25, %ab8500_chargalg_stop_safety_timer.exit.ab8500_chargalg_stop_maintenance_timer.exit_crit_edge
  %charge_status = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 1
  %30 = ptrtoint ptr %charge_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %charge_status, align 4
  %maintenance_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 3
  %31 = ptrtoint ptr %maintenance_chg to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %maintenance_chg, align 4
  %chargalg_wd_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 20
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %chargalg_wd_work) #8
  %chargalg_psy = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 14
  %32 = ptrtoint ptr %chargalg_psy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chargalg_psy, align 8
  tail call void @power_supply_changed(ptr noundef %33) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_chargalg_start_charging(ptr nocapture noundef %di, i32 noundef %vset_uv, i32 noundef %iset_ua) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %charger_type = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %charger_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %charger_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %1, label %do.end28 [
    i32 1, label %do.body
    i32 2, label %do.body7
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_start_charging, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !258

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug306, ptr noundef %4, ptr noundef nonnull @.str.75, i32 noundef %vset_uv, i32 noundef %iset_ua) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %usb_chg.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %5 = ptrtoint ptr %usb_chg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_chg.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.ab8500_chargalg_usb_en.exit_crit_edge, label %lor.lhs.false.i

do.end.ab8500_chargalg_usb_en.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_usb_en.exit

lor.lhs.false.i:                                  ; preds = %do.end
  %ops.i = getelementptr inbounds %struct.ux500_charger, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.ab8500_chargalg_usb_en.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ab8500_chargalg_usb_en.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_usb_en.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i = getelementptr inbounds %struct.ux500_charger, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %max_out_volt_uv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_out_volt_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #8
  %vset_uv.addr.0.i = select i1 %tobool5.not.i, i32 0, i32 %11
  %max_out_curr_ua.i = getelementptr inbounds %struct.ux500_charger, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %max_out_curr_ua.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_out_curr_ua.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not.i = icmp eq i32 %13, 0
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0) #8
  %iset_ua.addr.0.i = select i1 %tobool11.not.i, i32 0, i32 %14
  %usb_iset_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %15 = ptrtoint ptr %usb_iset_ua.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %iset_ua.addr.0.i, ptr %usb_iset_ua.i, align 4
  %usb_vset_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 11
  %16 = ptrtoint ptr %usb_vset_uv.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %vset_uv.addr.0.i, ptr %usb_vset_uv.i, align 8
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %call.i = tail call i32 %18(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %vset_uv.addr.0.i, i32 noundef %iset_ua.addr.0.i) #8
  br label %ab8500_chargalg_usb_en.exit

ab8500_chargalg_usb_en.exit:                      ; preds = %if.end.i, %lor.lhs.false.i.ab8500_chargalg_usb_en.exit_crit_edge, %do.end.ab8500_chargalg_usb_en.exit_crit_edge
  %ac_chg.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %19 = ptrtoint ptr %ac_chg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac_chg.i, align 4
  %tobool.not.i46 = icmp eq ptr %20, null
  br i1 %tobool.not.i46, label %ab8500_chargalg_usb_en.exit.sw.epilog_crit_edge, label %lor.lhs.false.i49

ab8500_chargalg_usb_en.exit.sw.epilog_crit_edge:  ; preds = %ab8500_chargalg_usb_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i49:                                ; preds = %ab8500_chargalg_usb_en.exit
  %ops.i47 = getelementptr inbounds %struct.ux500_charger, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i47, align 4
  %tobool3.not.i48 = icmp eq ptr %22, null
  br i1 %tobool3.not.i48, label %lor.lhs.false.i49.sw.epilog_crit_edge, label %if.end.i56

lor.lhs.false.i49.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i56:                                       ; preds = %lor.lhs.false.i49
  %max_out_volt_uv.i50 = getelementptr inbounds %struct.ux500_charger, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %max_out_volt_uv.i50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_out_volt_uv.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.i51 = icmp eq i32 %24, 0
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %vset_uv) #8
  %vset_uv.addr.0.i52 = select i1 %tobool5.not.i51, i32 %vset_uv, i32 %25
  %max_out_curr_ua.i53 = getelementptr inbounds %struct.ux500_charger, ptr %20, i32 0, i32 3
  %26 = ptrtoint ptr %max_out_curr_ua.i53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_out_curr_ua.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool11.not.i54 = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %iset_ua) #8
  %iset_ua.addr.0.i55 = select i1 %tobool11.not.i54, i32 %iset_ua, i32 %28
  %ac_iset_ua.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %29 = ptrtoint ptr %ac_iset_ua.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %iset_ua.addr.0.i55, ptr %ac_iset_ua.i, align 4
  %ac_vset_uv.i = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 13
  %30 = ptrtoint ptr %ac_vset_uv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %vset_uv.addr.0.i52, ptr %ac_vset_uv.i, align 8
  %external.i = getelementptr inbounds %struct.ux500_charger, ptr %20, i32 0, i32 6
  %31 = ptrtoint ptr %external.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %external.i, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool25.not.i = icmp eq i8 %32, 0
  br i1 %tobool25.not.i, label %if.end.i56.if.end29.i_crit_edge, label %land.lhs.true26.i

if.end.i56.if.end29.i_crit_edge:                  ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

land.lhs.true26.i:                                ; preds = %if.end.i56
  %33 = load i32, ptr @ab8500_chargalg_ac_en.ab8500_chargalg_ex_ac_enable_toggle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool27.not.i = icmp eq i32 %33, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %land.lhs.true26.i.if.end29.i_crit_edge

land.lhs.true26.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %di, align 8
  %call.i57 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @charger_notifier_list, i32 noundef 0, ptr noundef %35) #8
  %36 = load i32, ptr @ab8500_chargalg_ac_en.ab8500_chargalg_ex_ac_enable_toggle, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr @ab8500_chargalg_ac_en.ab8500_chargalg_ex_ac_enable_toggle, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %land.lhs.true26.i.if.end29.i_crit_edge, %if.end.i56.if.end29.i_crit_edge
  %37 = ptrtoint ptr %ac_chg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac_chg.i, align 4
  %ops31.i = getelementptr inbounds %struct.ux500_charger, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ops31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops31.i, align 4
  %call34.i = tail call i32 %40(ptr noundef %38, i32 noundef 1, i32 noundef %vset_uv.addr.0.i52, i32 noundef %iset_ua.addr.0.i55) #8
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_start_charging, %do.end24)) #8
          to label %if.then21 [label %do.end24], !srcloc !258

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug307, ptr noundef %42, ptr noundef nonnull @.str.76, i32 noundef %vset_uv, i32 noundef %iset_ua) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body7
  %ac_chg.i58 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 15
  %43 = ptrtoint ptr %ac_chg.i58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ac_chg.i58, align 4
  %tobool.not.i59 = icmp eq ptr %44, null
  br i1 %tobool.not.i59, label %do.end24.ab8500_chargalg_ac_en.exit75_crit_edge, label %lor.lhs.false.i62

do.end24.ab8500_chargalg_ac_en.exit75_crit_edge:  ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_ac_en.exit75

lor.lhs.false.i62:                                ; preds = %do.end24
  %ops.i60 = getelementptr inbounds %struct.ux500_charger, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i60, align 4
  %tobool3.not.i61 = icmp eq ptr %46, null
  br i1 %tobool3.not.i61, label %lor.lhs.false.i62.ab8500_chargalg_ac_en.exit75_crit_edge, label %if.end.i71

lor.lhs.false.i62.ab8500_chargalg_ac_en.exit75_crit_edge: ; preds = %lor.lhs.false.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_chargalg_ac_en.exit75

if.end.i71:                                       ; preds = %lor.lhs.false.i62
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i63 = getelementptr inbounds %struct.ux500_charger, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %max_out_volt_uv.i63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_out_volt_uv.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool5.not.i64 = icmp eq i32 %48, 0
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 0) #8
  %vset_uv.addr.0.i65 = select i1 %tobool5.not.i64, i32 0, i32 %49
  %max_out_curr_ua.i66 = getelementptr inbounds %struct.ux500_charger, ptr %44, i32 0, i32 3
  %50 = ptrtoint ptr %max_out_curr_ua.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_out_curr_ua.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool11.not.i67 = icmp eq i32 %51, 0
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 0) #8
  %iset_ua.addr.0.i68 = select i1 %tobool11.not.i67, i32 0, i32 %52
  %ac_iset_ua.i69 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 14
  %53 = ptrtoint ptr %ac_iset_ua.i69 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %iset_ua.addr.0.i68, ptr %ac_iset_ua.i69, align 4
  %ac_vset_uv.i70 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 13
  %54 = ptrtoint ptr %ac_vset_uv.i70 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %vset_uv.addr.0.i65, ptr %ac_vset_uv.i70, align 8
  %55 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i60, align 4
  %call34.i73 = tail call i32 %56(ptr noundef nonnull %44, i32 noundef 0, i32 noundef %vset_uv.addr.0.i65, i32 noundef %iset_ua.addr.0.i68) #8
  br label %ab8500_chargalg_ac_en.exit75

ab8500_chargalg_ac_en.exit75:                     ; preds = %if.end.i71, %lor.lhs.false.i62.ab8500_chargalg_ac_en.exit75_crit_edge, %do.end24.ab8500_chargalg_ac_en.exit75_crit_edge
  %usb_chg.i76 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 16
  %57 = ptrtoint ptr %usb_chg.i76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_chg.i76, align 8
  %tobool.not.i77 = icmp eq ptr %58, null
  br i1 %tobool.not.i77, label %ab8500_chargalg_ac_en.exit75.sw.epilog_crit_edge, label %lor.lhs.false.i80

ab8500_chargalg_ac_en.exit75.sw.epilog_crit_edge: ; preds = %ab8500_chargalg_ac_en.exit75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i80:                                ; preds = %ab8500_chargalg_ac_en.exit75
  %ops.i78 = getelementptr inbounds %struct.ux500_charger, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i78, align 4
  %tobool3.not.i79 = icmp eq ptr %60, null
  br i1 %tobool3.not.i79, label %lor.lhs.false.i80.sw.epilog_crit_edge, label %if.end.i90

lor.lhs.false.i80.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i90:                                       ; preds = %lor.lhs.false.i80
  call void @__sanitizer_cov_trace_pc() #10
  %max_out_volt_uv.i81 = getelementptr inbounds %struct.ux500_charger, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %max_out_volt_uv.i81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_out_volt_uv.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool5.not.i82 = icmp eq i32 %62, 0
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 %vset_uv) #8
  %vset_uv.addr.0.i83 = select i1 %tobool5.not.i82, i32 %vset_uv, i32 %63
  %max_out_curr_ua.i84 = getelementptr inbounds %struct.ux500_charger, ptr %58, i32 0, i32 3
  %64 = ptrtoint ptr %max_out_curr_ua.i84 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_out_curr_ua.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool11.not.i85 = icmp eq i32 %65, 0
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 %iset_ua) #8
  %iset_ua.addr.0.i86 = select i1 %tobool11.not.i85, i32 %iset_ua, i32 %66
  %usb_iset_ua.i87 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 12
  %67 = ptrtoint ptr %usb_iset_ua.i87 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %iset_ua.addr.0.i86, ptr %usb_iset_ua.i87, align 4
  %usb_vset_uv.i88 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 8, i32 11
  %68 = ptrtoint ptr %usb_vset_uv.i88 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %vset_uv.addr.0.i83, ptr %usb_vset_uv.i88, align 8
  %69 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i78, align 4
  %call.i89 = tail call i32 %70(ptr noundef nonnull %58, i32 noundef 1, i32 noundef %vset_uv.addr.0.i83, i32 noundef %iset_ua.addr.0.i86) #8
  br label %sw.epilog

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.77) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %if.end.i90, %lor.lhs.false.i80.sw.epilog_crit_edge, %ab8500_chargalg_ac_en.exit75.sw.epilog_crit_edge, %if.end29.i, %lor.lhs.false.i49.sw.epilog_crit_edge, %ab8500_chargalg_usb_en.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_chargalg_chg_curr_maxim(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bm = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 13
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %maxi = getelementptr inbounds %struct.ab8500_bm_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %maxi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maxi, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ccm = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7
  %6 = ptrtoint ptr %ccm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ccm, align 4
  %inst_curr_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inst_curr_ua, align 4
  %sub = sub i32 %7, %9
  %vbus_collapsed = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 17, i32 17
  %10 = ptrtoint ptr %vbus_collapsed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vbus_collapsed, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.end69, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_chg_curr_maxim, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !258

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 8
  %wait_cnt = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %wait_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wait_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug311, ptr noundef %13, ptr noundef nonnull @.str.84, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %wait_cnt11 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %wait_cnt11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wait_cnt11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %do.body13, label %do.body46

do.body13:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_chg_curr_maxim, %do.end31)) #8
          to label %if.then27 [label %do.end31], !srcloc !258

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug312, ptr noundef %19, ptr noundef nonnull @.str.85) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body13
  %20 = ptrtoint ptr %wait_cnt11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wait_cnt11, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %wait_cnt11, align 4
  %22 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bm, align 4
  %maxi35 = getelementptr inbounds %struct.ab8500_bm_data, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %maxi35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %maxi35, align 4
  %wait_cycles = getelementptr inbounds %struct.ab8500_maxim_parameters, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %wait_cycles to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wait_cycles, align 4
  %condition_cnt = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %condition_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %condition_cnt, align 4
  %current_iset_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %current_iset_ua to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %current_iset_ua, align 4
  %test_delta_i_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %test_delta_i_ua to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %test_delta_i_ua, align 4
  %sub39 = sub i32 %30, %32
  %max_current_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 4
  %33 = ptrtoint ptr %max_current_ua to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub39, ptr %max_current_ua, align 4
  store i32 %sub39, ptr %current_iset_ua, align 4
  %level = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 6
  %34 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %level, align 4
  %dec = add i8 %35, -1
  store i8 %dec, ptr %level, align 4
  br label %cleanup

do.body46:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_chg_curr_maxim, %do.end64)) #8
          to label %if.then60 [label %do.end64], !srcloc !258

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %di, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug313, ptr noundef %37, ptr noundef nonnull @.str.86) #8
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body46
  %38 = ptrtoint ptr %wait_cnt11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wait_cnt11, align 4
  %add = add i32 %39, 1
  %rem = srem i32 %add, 3
  store i32 %rem, ptr %wait_cnt11, align 4
  br label %cleanup

if.end69:                                         ; preds = %if.end
  %wait_cnt71 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 5
  %40 = ptrtoint ptr %wait_cnt71 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %wait_cnt71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp76 = icmp slt i32 %7, %9
  br i1 %cmp76, label %do.body78, label %if.end121

do.body78:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_chg_curr_maxim, %do.end102)) #8
          to label %if.then92 [label %do.end102], !srcloc !258

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %di, align 8
  %43 = ptrtoint ptr %inst_curr_ua to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %inst_curr_ua, align 4
  %45 = ptrtoint ptr %ccm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ccm, align 4
  %current_iset_ua99 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %current_iset_ua99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %current_iset_ua99, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug314, ptr noundef %42, ptr noundef nonnull @.str.87, i32 noundef %44, i32 noundef %46, i32 noundef %48) #8
  br label %do.end102

do.end102:                                        ; preds = %if.then92, %do.body78
  %current_iset_ua104 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %current_iset_ua104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %current_iset_ua104, align 4
  %51 = ptrtoint ptr %ccm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ccm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp107 = icmp eq i32 %50, %52
  br i1 %cmp107, label %do.end102.cleanup_crit_edge, label %if.end109

do.end102.cleanup_crit_edge:                      ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end109:                                        ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bm, align 4
  %maxi111 = getelementptr inbounds %struct.ab8500_bm_data, ptr %54, i32 0, i32 19
  %55 = ptrtoint ptr %maxi111 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %maxi111, align 4
  %wait_cycles112 = getelementptr inbounds %struct.ab8500_maxim_parameters, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %wait_cycles112 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wait_cycles112, align 4
  %condition_cnt114 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 3
  %59 = ptrtoint ptr %condition_cnt114 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %condition_cnt114, align 4
  %60 = ptrtoint ptr %current_iset_ua104 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %52, ptr %current_iset_ua104, align 4
  %level120 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 6
  %61 = ptrtoint ptr %level120 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %level120, align 4
  br label %cleanup

if.end121:                                        ; preds = %if.end69
  %test_delta_i_ua123 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %test_delta_i_ua123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %test_delta_i_ua123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %63)
  %cmp124 = icmp sgt i32 %sub, %63
  br i1 %cmp124, label %land.lhs.true, label %if.end121.if.else180_crit_edge

if.end121.if.else180_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else180

land.lhs.true:                                    ; preds = %if.end121
  %current_iset_ua126 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %current_iset_ua126 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %current_iset_ua126, align 4
  %add129 = add i32 %65, %63
  %max_current_ua131 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 4
  %66 = ptrtoint ptr %max_current_ua131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_current_ua131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add129, i32 %67)
  %cmp132 = icmp slt i32 %add129, %67
  br i1 %cmp132, label %if.then133, label %land.lhs.true.if.else180_crit_edge

land.lhs.true.if.else180_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else180

if.then133:                                       ; preds = %land.lhs.true
  %condition_cnt135 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 3
  %68 = ptrtoint ptr %condition_cnt135 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %condition_cnt135, align 4
  %dec136 = add i32 %69, -1
  store i32 %dec136, ptr %condition_cnt135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp137 = icmp eq i32 %69, 0
  br i1 %cmp137, label %if.then138, label %if.then133.cleanup_crit_edge

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %maxi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %maxi, align 4
  %wait_cycles141 = getelementptr inbounds %struct.ab8500_maxim_parameters, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %wait_cycles141 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wait_cycles141, align 4
  %74 = ptrtoint ptr %condition_cnt135 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %condition_cnt135, align 4
  %75 = ptrtoint ptr %current_iset_ua126 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add129, ptr %current_iset_ua126, align 4
  %level150 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 6
  %76 = ptrtoint ptr %level150 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %level150, align 4
  %inc151 = add i8 %77, 1
  store i8 %inc151, ptr %level150, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_chargalg_chg_curr_maxim, %cleanup)) #8
          to label %if.then166 [label %cleanup], !srcloc !258

if.then166:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %di, align 8
  %80 = ptrtoint ptr %test_delta_i_ua123 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %test_delta_i_ua123, align 4
  %82 = ptrtoint ptr %current_iset_ua126 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %current_iset_ua126, align 4
  %84 = ptrtoint ptr %ccm to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ccm, align 4
  %86 = ptrtoint ptr %level150 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %level150, align 4
  %conv = zext i8 %87 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug315, ptr noundef %79, ptr noundef nonnull @.str.88, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %conv) #8
  br label %cleanup

if.else180:                                       ; preds = %land.lhs.true.if.else180_crit_edge, %if.end121.if.else180_crit_edge
  %88 = ptrtoint ptr %maxi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %maxi, align 4
  %wait_cycles183 = getelementptr inbounds %struct.ab8500_maxim_parameters, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %wait_cycles183 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wait_cycles183, align 4
  %condition_cnt185 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 7, i32 3
  %92 = ptrtoint ptr %condition_cnt185 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %condition_cnt185, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else180, %if.then166, %if.then138, %if.then133.cleanup_crit_edge, %if.end109, %do.end102.cleanup_crit_edge, %do.end64, %do.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end31 ], [ 0, %do.end64 ], [ 2, %if.end109 ], [ 0, %if.else180 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end102.cleanup_crit_edge ], [ 1, %if.then166 ], [ 0, %if.then133.cleanup_crit_edge ], [ 1, %if.then138 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %charge_status = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %charge_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %charge_status, align 4
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  %batt_ovv = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %batt_ovv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %batt_ovv, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %sw.bb1.cleanup.sink.split_crit_edge

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb1
  %btemp_underover = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 17, i32 4
  %5 = ptrtoint ptr %btemp_underover to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %btemp_underover, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.else7, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %batt_data = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 9
  %7 = ptrtoint ptr %batt_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %batt_data, align 8
  %bm = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bm, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %temp_min = getelementptr inbounds %struct.power_supply_battery_info, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %temp_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp.not = icmp sgt i32 %8, %14
  %. = select i1 %cmp.not, i32 2, i32 6
  br label %cleanup.sink.split

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %charge_state = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %charge_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %charge_state, align 8
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %17)
  %switch = icmp eq i32 %17, 22
  %.27 = select i1 %switch, i32 5, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else7, %if.then4, %sw.bb1.cleanup.sink.split_crit_edge, %sw.bb
  %.sink = phi i32 [ %2, %sw.bb ], [ 4, %sw.bb1.cleanup.sink.split_crit_edge ], [ %., %if.then4 ], [ %.27, %if.else7 ]
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_chargalg_external_power_changed(ptr noundef %psy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chargalg_wq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chargalg_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %call, i32 0, i32 21
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %1, ptr noundef %chargalg_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_sysfs_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.ab8500_chargalg_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -528
  %call = tail call i32 %1(ptr noundef %add.ptr4, ptr noundef %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_sysfs_charger(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.ab8500_chargalg_sysfs_entry, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -528
  %call = tail call i32 %1(ptr noundef %add.ptr4, ptr noundef %buf, i32 noundef %length) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_en_show(ptr nocapture noundef readonly %di, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %ac_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ac_suspended, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %usb_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_suspended, align 2, !range !259
  %tobool2 = zext i8 %3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.93, i32 noundef %4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_en_store(ptr noundef %di, ptr noundef %buf, i32 noundef %length) #0 align 64 {
entry:
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #8
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %param, align 4, !annotation !260
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %param, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %2, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %susp_status = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10
  %ac_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %ac_suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ac_suspended, align 1
  %usb_suspended = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %usb_suspended to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %usb_suspended, align 2
  %6 = ptrtoint ptr %susp_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %susp_status, align 4
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 18
  %7 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chargalg_wq, align 8
  %chargalg_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 21
  %call.i38 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %chargalg_work) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %susp_status5 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10
  %ac_suspended6 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %ac_suspended6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ac_suspended6, align 1
  %10 = ptrtoint ptr %susp_status5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %susp_status5, align 4
  %chargalg_wq9 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 18
  %11 = ptrtoint ptr %chargalg_wq9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chargalg_wq9, align 8
  %chargalg_work10 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 21
  %call.i39 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %chargalg_work10) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %susp_status13 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10
  %usb_suspended14 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %usb_suspended14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %usb_suspended14, align 2
  %14 = ptrtoint ptr %susp_status13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %susp_status13, align 4
  %chargalg_wq17 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 18
  %15 = ptrtoint ptr %chargalg_wq17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chargalg_wq17, align 8
  %chargalg_work18 = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 21
  %call.i40 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %chargalg_work18) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.94) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb12, %sw.bb4, %sw.bb
  %call20 = call i32 @strlen(ptr noundef %buf) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_curr_step_show(ptr nocapture noundef readonly %di, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_step_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %curr_step_ua to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_step_ua, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.93, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_curr_step_store(ptr noundef %di, ptr noundef %buf, i32 noundef %length) #0 align 64 {
entry:
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #8
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %param, align 4, !annotation !260
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %param, align 4
  %curr_step_ua = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %curr_step_ua to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %curr_step_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %2)
  %4 = icmp ult i32 %2, 100001
  br i1 %4, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %curr_status = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 12
  %5 = ptrtoint ptr %curr_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %curr_status, align 4
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 18
  %6 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chargalg_wq, align 8
  %chargalg_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %di, i32 0, i32 21
  %call.i21 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %chargalg_work) #8
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.97) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then7
  %call11 = call i32 @strlen(ptr noundef %buf) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.99, i32 noundef 655370, i32 noundef 1) #8
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %chargalg_wq, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.100) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chargalg_periodic_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 19
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %call1, ptr noundef %chargalg_periodic_work, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_chargalg_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %safety_timer = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 22
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef %safety_timer) #8
  %maintenance_timer = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 23
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %maintenance_timer) #8
  %chargalg_periodic_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 19
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %chargalg_periodic_work) #8
  %chargalg_wd_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 20
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %chargalg_wd_work) #8
  %chargalg_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 21
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %chargalg_work) #8
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chargalg_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %online_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %online_chg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %online_chg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chargalg_wd_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 20
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %chargalg_wd_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chargalg_periodic_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 19
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %chargalg_periodic_work) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_chargalg_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %online_chg = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %online_chg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %online_chg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chargalg_wq = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %chargalg_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chargalg_wq, align 8
  %chargalg_wd_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 20
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %chargalg_wd_work, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chargalg_wq2 = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %chargalg_wq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chargalg_wq2, align 8
  %chargalg_periodic_work = getelementptr inbounds %struct.ab8500_chargalg, ptr %1, i32 0, i32 19
  %call.i8 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %chargalg_periodic_work, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !183, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !201, !202, !204, !206, !208, !209, !210, !212, !214, !216, !218, !220, !222, !224, !225, !226, !227, !229, !231, !233, !234, !235, !236, !238, !240, !242, !243, !244, !245, !247}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 274, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @charger_notifier_list, !1, !"charger_notifier_list", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2089, i32 11}
!6 = !{ptr @ab8500_chargalg_driver, !7, !"ab8500_chargalg_driver", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2085, i32 24}
!8 = !{ptr @__UNIQUE_ID_file317, !9, !"__UNIQUE_ID_file317", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2094, i32 1}
!10 = !{ptr @__UNIQUE_ID_license318, !9, !"__UNIQUE_ID_license318", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author319, !12, !"__UNIQUE_ID_author319", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2095, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias320, !14, !"__UNIQUE_ID_alias320", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2096, i32 1}
!15 = !{ptr @__UNIQUE_ID_description321, !16, !"__UNIQUE_ID_description321", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2097, i32 1}
!17 = !{ptr @ab8500_chargalg_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2032, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ab8500_chargalg_probe.__key.4, !18, !"__key", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ab8500_chargalg_probe.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2034, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ab8500_chargalg_probe.__key.8, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ab8500_chargalg_probe.__key.10, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2038, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2048, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ab8500_chargalg_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @ab8500_chargalg_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2057, i32 3}
!40 = !{ptr @ab8500_chargalg_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ab8500_chargalg_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2062, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ab8500_chargalg_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ab8500_chargalg_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1947, i32 2}
!49 = !{ptr @supply_interface, !50, !"supply_interface", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1946, i32 14}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 300, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ab8500_chargalg_safety_timer_expired._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ab8500_chargalg_safety_timer_expired._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 324, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ab8500_chargalg_maintenance_timer_expired.__UNIQUE_ID_ddebug288, !57, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1321, i32 4}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ab8500_chargalg_algorithm._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ab8500_chargalg_algorithm._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1404, i32 2}
!67 = !{ptr @ab8500_chargalg_algorithm.__UNIQUE_ID_ddebug316, !66, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 814, i32 4}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug309, !69, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 817, i32 4}
!74 = !{ptr @ab8500_chargalg_end_of_charge.__UNIQUE_ID_ddebug310, !73, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 764, i32 4}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ab8500_chargalg_check_temp.__UNIQUE_ID_ddebug308, !76, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 396, i32 4}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug290, !80, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 403, i32 4}
!85 = !{ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug291, !84, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 409, i32 4}
!88 = !{ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug292, !87, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 413, i32 4}
!91 = !{ptr @ab8500_chargalg_check_charger_connection.__UNIQUE_ID_ddebug293, !90, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 342, i32 2}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ab8500_chargalg_state_to.__UNIQUE_ID_ddebug289, !93, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!96 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 134, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 135, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 136, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 137, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 138, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 139, i32 2}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 140, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 141, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 142, i32 2}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 143, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 144, i32 2}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 145, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 146, i32 2}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 147, i32 2}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 148, i32 2}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 149, i32 2}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 150, i32 2}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 151, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 152, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 153, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 154, i32 2}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 155, i32 2}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 156, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 157, i32 2}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 158, i32 2}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 159, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 160, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 161, i32 2}
!154 = !{ptr @states, !155, !"states", i1 false, i1 false}
!155 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 133, i32 27}
!156 = !{ptr @ab8500_chargalg_ac_en.ab8500_chargalg_ex_ac_enable_toggle, !157, !"ab8500_chargalg_ex_ac_enable_toggle", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 558, i32 13}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 706, i32 3}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug306, !159, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 713, i32 3}
!164 = !{ptr @ab8500_chargalg_start_charging.__UNIQUE_ID_ddebug307, !163, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 720, i32 3}
!167 = !{ptr @ab8500_chargalg_start_charging._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ab8500_chargalg_start_charging._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 461, i32 3}
!171 = !{ptr @ab8500_chargalg_start_safety_timer._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ab8500_chargalg_start_safety_timer._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 933, i32 4}
!175 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @handle_maxim_chg_curr._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @handle_maxim_chg_curr._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @handle_maxim_chg_curr._entry.81, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 939, i32 4}
!180 = !{ptr @handle_maxim_chg_curr._entry_ptr.82, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 859, i32 3}
!183 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug311, !182, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 862, i32 4}
!187 = !{ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug312, !186, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 871, i32 4}
!190 = !{ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug313, !189, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 881, i32 3}
!193 = !{ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug314, !192, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 904, i32 4}
!196 = !{ptr @ab8500_chargalg_chg_curr_maxim.__UNIQUE_ID_ddebug315, !195, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!197 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1680, i32 3}
!199 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @ab8500_chargalg_wd_work._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @ab8500_chargalg_wd_work._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @ab8500_chargalg_desc, !203, !"ab8500_chargalg_desc", i1 false, i1 false}
!203 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1950, i32 39}
!204 = !{ptr @ab8500_chargalg_props, !205, !"ab8500_chargalg_props", i1 false, i1 false}
!205 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 277, i32 35}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1911, i32 3}
!208 = !{ptr @ab8500_chargalg_sysfs_init._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @ab8500_chargalg_sysfs_init._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @ab8500_chargalg_ktype, !211, !"ab8500_chargalg_ktype", i1 false, i1 false}
!211 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1880, i32 25}
!212 = !{ptr @ab8500_chargalg_sysfs_ops, !213, !"ab8500_chargalg_sysfs_ops", i1 false, i1 false}
!213 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1875, i32 31}
!214 = !{ptr @ab8500_chargalg_chg, !215, !"ab8500_chargalg_chg", i1 false, i1 false}
!215 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1869, i32 26}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1832, i32 2}
!218 = !{ptr @ab8500_chargalg_en_charger, !219, !"ab8500_chargalg_en_charger", i1 false, i1 false}
!219 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1831, i32 43}
!220 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1779, i32 22}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1823, i32 3}
!224 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @ab8500_chargalg_en_store._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @ab8500_chargalg_en_store._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1836, i32 2}
!229 = !{ptr @ab8500_chargalg_curr_step, !230, !"ab8500_chargalg_curr_step", i1 false, i1 false}
!230 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1835, i32 43}
!231 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1767, i32 3}
!233 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @ab8500_chargalg_curr_step_store._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @ab8500_chargalg_curr_step_store._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @ab8500_chargalg_component_ops, !237, !"ab8500_chargalg_component_ops", i1 false, i1 false}
!237 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1996, i32 35}
!238 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1965, i32 20}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 1968, i32 3}
!242 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @ab8500_chargalg_bind._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @ab8500_chargalg_bind._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @ab8500_chargalg_match, !246, !"ab8500_chargalg_match", i1 false, i1 false}
!246 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2080, i32 34}
!247 = !{ptr @ab8500_chargalg_pm_ops, !248, !"ab8500_chargalg_pm_ops", i1 false, i1 false}
!248 = !{!"../drivers/power/supply/ab8500_chargalg.c", i32 2078, i32 8}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{i64 2149011964, i64 2149011969, i64 2149011982, i64 2149012026, i64 2149012060, i64 2149012081}
!259 = !{i8 0, i8 2}
!260 = !{!"auto-init"}
