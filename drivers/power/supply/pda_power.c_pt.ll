; ModuleID = '/llk/IR_all_yes/drivers/power/supply/pda_power.c_pt.bc'
source_filename = "../drivers/power/supply/pda_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pda_power_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_pda_power__301_516_pda_power_pdrv_init6 = internal global ptr @pda_power_pdrv_init, section ".initcall6.init", align 4
@pda_power_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pda_power_probe, ptr @pda_power_remove, ptr null, ptr @pda_power_suspend, ptr @pda_power_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pda_power_pdrv_exit = internal global ptr @pda_power_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file302 = internal constant [46 x i8] c"pda_power.file=drivers/power/supply/pda_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [22 x i8] c"pda_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [48 x i8] c"pda_power.author=Anton Vorontsov <cbou@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [35 x i8] c"pda_power.alias=platform:pda-power\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pda-power\00", [22 x i8] zeroinitializer }, align 32
@dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pda_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"it's meaningless to register several pda_powers; use id = -1\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pda_power_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/power/supply/pda_power.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pda_power_probe._entry_ptr = internal global ptr @pda_power_probe._entry, section ".printk_index", align 4
@pdata = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ac_draw\00", [24 x i8] zeroinitializer }, align 32
@ac_draw = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pda_power_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pda_power\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't get ac_draw regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@pda_power_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@charger_work = internal global { %struct.delayed_work, [60 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&charger_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@pda_power_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&charger_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@pda_power_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@supply_work = internal global { %struct.delayed_work, [60 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&supply_work)->work)\00", [55 x i8] zeroinitializer }, align 32
@pda_power_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&supply_work)->timer\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ac\00", [29 x i8] zeroinitializer }, align 32
@ac_irq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@usb_irq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pda_power_supplied_to = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.42], [24 x i8] zeroinitializer }, align 32
@transceiver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pda_psy_ac_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.16, i32 3, ptr null, i32 0, ptr @pda_power_props, i32 1, ptr @pda_power_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pda_psy_ac = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pda_power_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register %s power supply\0A\00", [60 x i8] zeroinitializer }, align 32
@pda_power_probe._entry_ptr.20 = internal global ptr @pda_power_probe._entry.18, section ".printk_index", align 4
@pda_power_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request ac irq failed\0A\00", [41 x i8] zeroinitializer }, align 32
@pda_power_probe._entry_ptr.23 = internal global ptr @pda_power_probe._entry.21, section ".printk_index", align 4
@polling = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pda_psy_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.17, i32 4, ptr null, i32 0, ptr @pda_power_props, i32 1, ptr @pda_power_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pda_psy_usb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pda_power_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pda_power_probe._entry_ptr.25 = internal global ptr @pda_power_probe._entry.24, section ".printk_index", align 4
@pda_power_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request usb irq failed\0A\00", [40 x i8] zeroinitializer }, align 32
@pda_power_probe._entry_ptr.28 = internal global ptr @pda_power_probe._entry.26, section ".printk_index", align 4
@otg_nb = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@pda_power_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failure to register otg notifier\0A\00", [62 x i8] zeroinitializer }, align 32
@pda_power_probe._entry_ptr.31 = internal global ptr @pda_power_probe._entry.29, section ".printk_index", align 4
@pda_power_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.32, i8 0, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"will poll for status\0A\00", [42 x i8] zeroinitializer }, align 32
@pda_power_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@polling_work = internal global { %struct.delayed_work, [60 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&polling_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@pda_power_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&polling_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@new_ac_status = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@new_usb_status = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@update_charger.regulator_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@update_charger.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"update_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"charger on (AC)\0A\00", [47 x i8] zeroinitializer }, align 32
@update_charger.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.37, ptr @.str.3, ptr @.str.39, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"charger on (USB)\0A\00", [46 x i8] zeroinitializer }, align 32
@update_charger.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.37, ptr @.str.3, ptr @.str.40, i8 0, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"charger off\0A\00", [19 x i8] zeroinitializer }, align 32
@update_charger.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@update_charger.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.37, ptr @.str.3, ptr @.str.40, i8 0, i8 33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ac_status = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@usb_status = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main-battery\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"backup-battery\00", [17 x i8] zeroinitializer }, align 32
@pda_power_props = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@polling_work_func.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"polling_work_func\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"polling...\0A\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ac_wakeup_enabled = internal global { i32, [28 x i8] } zeroinitializer, align 32
@usb_wakeup_enabled = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"pda_power_pdrv\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 506, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 508, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 27, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 269, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"pdata\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 28, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 283, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"ac_draw\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 41, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 285, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"charger_work\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 30, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 304, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"supply_work\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 32, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 305, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 307, i32 62 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"ac_irq\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 29, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 308, i32 63 }
@___asan_gen_.126 = private unnamed_addr constant [8 x i8] c"usb_irq\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 29, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"pda_power_supplied_to\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 76, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"transceiver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 37, i32 24 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"pda_psy_ac_desc\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 81, i32 39 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"pda_psy_ac\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 34, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 332, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 343, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"pda_psy_usb_desc\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 89, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"pda_psy_usb\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 34, i32 42 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 356, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 367, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"otg_nb\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 38, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 380, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 388, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"polling_work\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 31, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 389, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"new_ac_status\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 48, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"new_usb_status\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 49, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [33 x i8] c"update_charger.regulator_enabled\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 113, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 116, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 119, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [10 x i8] c"ac_status\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 50, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant [11 x i8] c"usb_status\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 51, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 77, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 78, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"pda_power_props\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 72, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 196, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [18 x i8] c"ac_wakeup_enabled\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 465, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"usb_wakeup_enabled\00", align 1
@___asan_gen_.240 = private constant [36 x i8] c"../drivers/power/supply/pda_power.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 466, i32 12 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_pda_power_pdrv_exit, ptr @__initcall__kmod_pda_power__301_516_pda_power_pdrv_init6, ptr @pda_power_pdrv_exit, ptr @pda_power_probe._entry, ptr @pda_power_probe._entry.18, ptr @pda_power_probe._entry.21, ptr @pda_power_probe._entry.24, ptr @pda_power_probe._entry.26, ptr @pda_power_probe._entry.29, ptr @pda_power_probe._entry_ptr, ptr @pda_power_probe._entry_ptr.20, ptr @pda_power_probe._entry_ptr.23, ptr @pda_power_probe._entry_ptr.25, ptr @pda_power_probe._entry_ptr.28, ptr @pda_power_probe._entry_ptr.31, ptr @pda_power_pdrv, ptr @.str, ptr @dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pdata, ptr @.str.6, ptr @ac_draw, ptr @.str.7, ptr @.str.8, ptr @pda_power_probe.__key, ptr @charger_work, ptr @.str.9, ptr @pda_power_probe.__key.10, ptr @.str.11, ptr @pda_power_probe.__key.12, ptr @supply_work, ptr @.str.13, ptr @pda_power_probe.__key.14, ptr @.str.15, ptr @.str.16, ptr @ac_irq, ptr @.str.17, ptr @usb_irq, ptr @pda_power_supplied_to, ptr @transceiver, ptr @pda_psy_ac_desc, ptr @pda_psy_ac, ptr @.str.19, ptr @.str.22, ptr @polling, ptr @pda_psy_usb_desc, ptr @pda_psy_usb, ptr @.str.27, ptr @otg_nb, ptr @.str.30, ptr @.str.32, ptr @pda_power_probe.__key.33, ptr @polling_work, ptr @.str.34, ptr @pda_power_probe.__key.35, ptr @.str.36, ptr @new_ac_status, ptr @new_usb_status, ptr @update_charger.regulator_enabled, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @ac_status, ptr @usb_status, ptr @.str.41, ptr @.str.42, ptr @pda_power_props, ptr @.str.43, ptr @.str.44, ptr @ac_wakeup_enabled, ptr @usb_wakeup_enabled], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_draw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supply_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_supplied_to to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transceiver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_psy_ac_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_psy_ac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_psy_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_psy_usb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_ac_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_usb_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_charger.regulator_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_power_props to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_wakeup_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_wakeup_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pda_power_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pda_power_pdrv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pda_power_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pda_power_pdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pda_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr @dev, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not = icmp eq i32 %2, -1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data, align 8
  store ptr %4, ptr @pdata, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 %6(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %7 = load ptr, ptr @dev, align 4
  %call8 = tail call ptr @regulator_get(ptr noundef %7, ptr noundef nonnull @.str.6) #6
  store ptr %call8, ptr @ac_draw, align 4
  %cmp.i242 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %do.body11, label %if.end7.if.end21_crit_edge

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body11:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pda_power_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pda_power_probe, %do.end20)) #6
          to label %if.then17 [label %do.end20], !srcloc !148

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %8 = load ptr, ptr @dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pda_power_probe.__UNIQUE_ID_ddebug299, ptr noundef %8, ptr noundef nonnull @.str.8) #6
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body11
  store ptr null, ptr @ac_draw, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end7.if.end21_crit_edge
  %9 = load ptr, ptr @pdata, align 4
  %is_ac_online.i = getelementptr inbounds %struct.pda_power_pdata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %is_ac_online.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_ac_online.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end21.if.end.i244_crit_edge, label %if.then.i243

if.end21.if.end.i244_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i244

if.then.i243:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %11() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.i = icmp ne i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool2.i to i32
  store i32 %lnot.ext.i, ptr @new_ac_status, align 4
  br label %if.end.i244

if.end.i244:                                      ; preds = %if.then.i243, %if.end21.if.end.i244_crit_edge
  %12 = load ptr, ptr @pdata, align 4
  %is_usb_online.i = getelementptr inbounds %struct.pda_power_pdata, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %is_usb_online.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %is_usb_online.i, align 4
  %tobool4.not.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i, label %if.end.i244.update_status.exit_crit_edge, label %if.then5.i

if.end.i244.update_status.exit_crit_edge:         ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_status.exit

if.then5.i:                                       ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 %14() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.i = icmp ne i32 %call7.i, 0
  %lnot.ext12.i = zext i1 %tobool8.i to i32
  store i32 %lnot.ext12.i, ptr @new_usb_status, align 4
  br label %update_status.exit

update_status.exit:                               ; preds = %if.then5.i, %if.end.i244.update_status.exit_crit_edge
  tail call fastcc void @update_charger()
  %15 = load ptr, ptr @pdata, align 4
  %wait_for_status = getelementptr inbounds %struct.pda_power_pdata, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %wait_for_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wait_for_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %if.then23, label %update_status.exit.if.end25_crit_edge

update_status.exit.if.end25_crit_edge:            ; preds = %update_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %update_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %wait_for_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 500, ptr %wait_for_status, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %update_status.exit.if.end25_crit_edge
  %wait_for_charger = getelementptr inbounds %struct.pda_power_pdata, ptr %15, i32 0, i32 10
  %19 = ptrtoint ptr %wait_for_charger to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wait_for_charger, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.then27, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %wait_for_charger to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 500, ptr %wait_for_charger, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %polling_interval = getelementptr inbounds %struct.pda_power_pdata, ptr %15, i32 0, i32 11
  %22 = ptrtoint ptr %polling_interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %polling_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %polling_interval to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2000, ptr %polling_interval, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %ac_max_uA = getelementptr inbounds %struct.pda_power_pdata, ptr %15, i32 0, i32 12
  %25 = ptrtoint ptr %ac_max_uA to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ac_max_uA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool34.not = icmp eq i32 %26, 0
  br i1 %tobool34.not, label %if.then35, label %if.end33.do.body39_crit_edge

if.end33.do.body39_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %ac_max_uA to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 500000, ptr %ac_max_uA, align 4
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %if.end33.do.body39_crit_edge
  tail call void @__init_work(ptr noundef nonnull @charger_work, i32 noundef 0) #6
  store i32 -64, ptr @charger_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @charger_work, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.9, ptr noundef nonnull @pda_power_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @charger_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @charger_work, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @charger_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @charger_work, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @charger_work_func, ptr getelementptr inbounds (%struct.delayed_work, ptr @charger_work, i32 0, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @charger_work, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @pda_power_probe.__key.10) #6
  tail call void @__init_work(ptr noundef nonnull @supply_work, i32 noundef 0) #6
  store i32 -64, ptr @supply_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @supply_work, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.13, ptr noundef nonnull @pda_power_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @supply_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @supply_work, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @supply_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @supply_work, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @supply_work_func, ptr getelementptr inbounds (%struct.delayed_work, ptr @supply_work, i32 0, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @supply_work, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @pda_power_probe.__key.14) #6
  %call58 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.16) #6
  store ptr %call58, ptr @ac_irq, align 4
  %call59 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.17) #6
  store ptr %call59, ptr @usb_irq, align 4
  %28 = load ptr, ptr @pdata, align 4
  %supplied_to = getelementptr inbounds %struct.pda_power_pdata, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %supplied_to, align 4
  %tobool60.not = icmp eq ptr %30, null
  br i1 %tobool60.not, label %do.body39.if.end67_crit_edge, label %if.then61

do.body39.if.end67_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then61:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %num_supplicants = getelementptr inbounds %struct.pda_power_pdata, ptr %28, i32 0, i32 8
  %31 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_supplicants, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %do.body39.if.end67_crit_edge
  %.sink264 = phi ptr [ %30, %if.then61 ], [ @pda_power_supplied_to, %do.body39.if.end67_crit_edge ]
  %.sink = phi i32 [ %32, %if.then61 ], [ 2, %do.body39.if.end67_crit_edge ]
  %33 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.sink264, ptr %33, align 4
  %35 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %35, align 4
  %call68 = tail call ptr @usb_get_phy(i32 noundef 1) #6
  store ptr %call68, ptr @transceiver, align 4
  %tobool.not.i245 = icmp eq ptr %call68, null
  %cmp.i246 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i245, %cmp.i246
  br i1 %spec.select.i, label %if.end67.if.end79_crit_edge, label %if.then70

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then70:                                        ; preds = %if.end67
  %37 = load ptr, ptr @pdata, align 4
  %is_usb_online = getelementptr inbounds %struct.pda_power_pdata, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %is_usb_online to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %is_usb_online, align 4
  %tobool71.not = icmp eq ptr %39, null
  br i1 %tobool71.not, label %if.then72, label %if.then70.if.end74_crit_edge

if.then70.if.end74_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %is_usb_online to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @otg_is_usb_online, ptr %is_usb_online, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.then70.if.end74_crit_edge
  %is_ac_online = getelementptr inbounds %struct.pda_power_pdata, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %is_ac_online to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %is_ac_online, align 4
  %tobool75.not = icmp eq ptr %42, null
  br i1 %tobool75.not, label %if.then76, label %if.end74.if.end79_crit_edge

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %is_ac_online to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @otg_is_ac_online, ptr %is_ac_online, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end74.if.end79_crit_edge, %if.end67.if.end79_crit_edge
  %44 = load ptr, ptr @pdata, align 4
  %is_ac_online80 = getelementptr inbounds %struct.pda_power_pdata, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %is_ac_online80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %is_ac_online80, align 4
  %tobool81.not = icmp eq ptr %46, null
  br i1 %tobool81.not, label %if.end79.if.end104_crit_edge, label %if.then82

if.end79.if.end104_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then82:                                        ; preds = %if.end79
  %call84 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @pda_psy_ac_desc, ptr noundef nonnull %psy_cfg) #6
  store ptr %call84, ptr @pda_psy_ac, align 4
  %cmp.i247 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end89, label %if.end91

do.end89:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %47 = load ptr, ptr @dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #9
  %48 = load ptr, ptr @pda_psy_ac, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %ac_supply_failed

if.end91:                                         ; preds = %if.then82
  %50 = load ptr, ptr @ac_irq, align 4
  %tobool92.not = icmp eq ptr %50, null
  br i1 %tobool92.not, label %if.else102, label %if.then93

if.then93:                                        ; preds = %if.end91
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %54, 15
  %or.i = or i32 %and.i, 128
  %name = getelementptr inbounds %struct.resource, ptr %50, i32 0, i32 2
  %55 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name, align 4
  %call.i248 = call i32 @request_threaded_irq(i32 noundef %52, ptr noundef nonnull @power_changed_isr, ptr noundef null, i32 noundef %or.i, ptr noundef %56, ptr noundef %call84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool96.not = icmp eq i32 %call.i248, 0
  br i1 %tobool96.not, label %if.then93.if.end104_crit_edge, label %do.end100

if.then93.if.end104_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end100:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %57 = load ptr, ptr @dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.22) #9
  br label %ac_irq_failed

if.else102:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @polling, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.else102, %if.then93.if.end104_crit_edge, %if.end79.if.end104_crit_edge
  %58 = load ptr, ptr @pdata, align 4
  %is_usb_online105 = getelementptr inbounds %struct.pda_power_pdata, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %is_usb_online105 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %is_usb_online105, align 4
  %tobool106.not = icmp eq ptr %60, null
  br i1 %tobool106.not, label %if.end104.if.end131_crit_edge, label %if.then107

if.end104.if.end131_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then107:                                       ; preds = %if.end104
  %call109 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @pda_psy_usb_desc, ptr noundef nonnull %psy_cfg) #6
  store ptr %call109, ptr @pda_psy_usb, align 4
  %cmp.i249 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end114, label %if.end116

do.end114:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %61 = load ptr, ptr @dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #9
  %62 = load ptr, ptr @pda_psy_usb, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %usb_supply_failed

if.end116:                                        ; preds = %if.then107
  %64 = load ptr, ptr @usb_irq, align 4
  %tobool117.not = icmp eq ptr %64, null
  br i1 %tobool117.not, label %if.else129, label %if.then118

if.then118:                                       ; preds = %if.end116
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %flags.i250 = getelementptr inbounds %struct.resource, ptr %64, i32 0, i32 3
  %67 = ptrtoint ptr %flags.i250 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i250, align 4
  %and.i251 = and i32 %68, 15
  %or.i252 = or i32 %and.i251, 128
  %name121 = getelementptr inbounds %struct.resource, ptr %64, i32 0, i32 2
  %69 = ptrtoint ptr %name121 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name121, align 4
  %call.i253 = call i32 @request_threaded_irq(i32 noundef %66, ptr noundef nonnull @power_changed_isr, ptr noundef null, i32 noundef %or.i252, ptr noundef %70, ptr noundef %call109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool123.not = icmp eq i32 %call.i253, 0
  br i1 %tobool123.not, label %if.then118.if.end131_crit_edge, label %do.end127

if.then118.if.end131_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

do.end127:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  %71 = load ptr, ptr @dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.27) #9
  br label %usb_irq_failed

if.else129:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @polling, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else129, %if.then118.if.end131_crit_edge, %if.end104.if.end131_crit_edge
  %72 = load ptr, ptr @transceiver, align 4
  %tobool.not.i254 = icmp eq ptr %72, null
  %cmp.i255 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  %spec.select.i256 = or i1 %tobool.not.i254, %cmp.i255
  br i1 %spec.select.i256, label %if.end131.if.end142_crit_edge, label %land.lhs.true

if.end131.if.end142_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

land.lhs.true:                                    ; preds = %if.end131
  %73 = load ptr, ptr @pdata, align 4
  %use_otg_notifier = getelementptr inbounds %struct.pda_power_pdata, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %use_otg_notifier to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %use_otg_notifier, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool133.not = icmp eq i8 %75, 0
  br i1 %tobool133.not, label %land.lhs.true.if.end142_crit_edge, label %if.then134

land.lhs.true.if.end142_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then134:                                       ; preds = %land.lhs.true
  store ptr @otg_handle_notification, ptr @otg_nb, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %72, i32 0, i32 18
  %call.i257 = call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef nonnull @otg_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %tobool136.not = icmp eq i32 %call.i257, 0
  br i1 %tobool136.not, label %if.end142.thread, label %do.end140

do.end140:                                        ; preds = %if.then134
  %76 = load ptr, ptr @dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.30) #9
  %77 = load ptr, ptr @pdata, align 4
  %is_usb_online185 = getelementptr inbounds %struct.pda_power_pdata, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %is_usb_online185 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %is_usb_online185, align 4
  %tobool186.not = icmp eq ptr %79, null
  br i1 %tobool186.not, label %do.end140.usb_irq_failed_crit_edge, label %land.lhs.true187

do.end140.usb_irq_failed_crit_edge:               ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_irq_failed

if.end142.thread:                                 ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @polling, align 4
  br label %if.end178

if.end142:                                        ; preds = %land.lhs.true.if.end142_crit_edge, %if.end131.if.end142_crit_edge
  %.b.pr = load i1, ptr @polling, align 4
  br i1 %.b.pr, label %do.body145, label %if.end142.if.end178_crit_edge

if.end142.if.end178_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

do.body145:                                       ; preds = %if.end142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pda_power_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pda_power_probe, %do.body164)) #6
          to label %if.then159 [label %do.body164], !srcloc !148

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #8
  %80 = load ptr, ptr @dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pda_power_probe.__UNIQUE_ID_ddebug300, ptr noundef %80, ptr noundef nonnull @.str.32) #6
  br label %do.body164

do.body164:                                       ; preds = %if.then159, %do.body145
  call void @__init_work(ptr noundef nonnull @polling_work, i32 noundef 0) #6
  store i32 -64, ptr @polling_work, align 4
  call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @polling_work, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.34, ptr noundef nonnull @pda_power_probe.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @polling_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @polling_work, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @polling_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @polling_work, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @polling_work_func, ptr getelementptr inbounds (%struct.delayed_work, ptr @polling_work, i32 0, i32 0, i32 2), align 4
  call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @polling_work, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.36, ptr noundef nonnull @pda_power_probe.__key.35) #6
  %call174 = call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @polling_work) #6
  %81 = load ptr, ptr @pdata, align 4
  %polling_interval175 = getelementptr inbounds %struct.pda_power_pdata, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %polling_interval175 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %polling_interval175, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %83) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %84 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %84, ptr noundef nonnull @polling_work, i32 noundef %call2.i) #6
  br label %if.end178

if.end178:                                        ; preds = %do.body164, %if.end142.if.end178_crit_edge, %if.end142.thread
  %85 = load ptr, ptr @ac_irq, align 4
  %tobool179.not = icmp eq ptr %85, null
  br i1 %tobool179.not, label %lor.lhs.false, label %if.end178.if.then181_crit_edge

if.end178.if.then181_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

lor.lhs.false:                                    ; preds = %if.end178
  %86 = load ptr, ptr @usb_irq, align 4
  %tobool180.not = icmp eq ptr %86, null
  br i1 %tobool180.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then181_crit_edge

lor.lhs.false.if.then181_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then181:                                       ; preds = %lor.lhs.false.if.then181_crit_edge, %if.end178.if.then181_crit_edge
  %call183 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

land.lhs.true187:                                 ; preds = %do.end140
  %87 = load ptr, ptr @usb_irq, align 4
  %tobool188.not = icmp eq ptr %87, null
  br i1 %tobool188.not, label %land.lhs.true187.usb_irq_failed_crit_edge, label %if.then189

land.lhs.true187.usb_irq_failed_crit_edge:        ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_irq_failed

if.then189:                                       ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %90 = load ptr, ptr @pda_psy_usb, align 4
  %call191 = call ptr @free_irq(i32 noundef %89, ptr noundef %90) #6
  br label %usb_irq_failed

usb_irq_failed:                                   ; preds = %if.then189, %land.lhs.true187.usb_irq_failed_crit_edge, %do.end140.usb_irq_failed_crit_edge, %do.end127
  %ret.0 = phi i32 [ %call.i253, %do.end127 ], [ %call.i257, %if.then189 ], [ %call.i257, %land.lhs.true187.usb_irq_failed_crit_edge ], [ %call.i257, %do.end140.usb_irq_failed_crit_edge ]
  %91 = load ptr, ptr @pdata, align 4
  %is_usb_online193 = getelementptr inbounds %struct.pda_power_pdata, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %is_usb_online193 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %is_usb_online193, align 4
  %tobool194.not = icmp eq ptr %93, null
  br i1 %tobool194.not, label %usb_irq_failed.usb_supply_failed_crit_edge, label %if.then195

usb_irq_failed.usb_supply_failed_crit_edge:       ; preds = %usb_irq_failed
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_supply_failed

if.then195:                                       ; preds = %usb_irq_failed
  call void @__sanitizer_cov_trace_pc() #8
  %94 = load ptr, ptr @pda_psy_usb, align 4
  call void @power_supply_unregister(ptr noundef %94) #6
  br label %usb_supply_failed

usb_supply_failed:                                ; preds = %if.then195, %usb_irq_failed.usb_supply_failed_crit_edge, %do.end114
  %ret.1 = phi i32 [ %63, %do.end114 ], [ %ret.0, %if.then195 ], [ %ret.0, %usb_irq_failed.usb_supply_failed_crit_edge ]
  %95 = load ptr, ptr @pdata, align 4
  %is_ac_online197 = getelementptr inbounds %struct.pda_power_pdata, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %is_ac_online197 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %is_ac_online197, align 4
  %tobool198.not = icmp eq ptr %97, null
  br i1 %tobool198.not, label %usb_supply_failed.if.end204_crit_edge, label %land.lhs.true199

usb_supply_failed.if.end204_crit_edge:            ; preds = %usb_supply_failed
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204

land.lhs.true199:                                 ; preds = %usb_supply_failed
  %98 = load ptr, ptr @ac_irq, align 4
  %tobool200.not = icmp eq ptr %98, null
  br i1 %tobool200.not, label %land.lhs.true199.if.end204_crit_edge, label %if.then201

land.lhs.true199.if.end204_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204

if.then201:                                       ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %101 = load ptr, ptr @pda_psy_ac, align 4
  %call203 = call ptr @free_irq(i32 noundef %100, ptr noundef %101) #6
  br label %if.end204

if.end204:                                        ; preds = %if.then201, %land.lhs.true199.if.end204_crit_edge, %usb_supply_failed.if.end204_crit_edge
  %102 = load ptr, ptr @transceiver, align 4
  %tobool.not.i258 = icmp eq ptr %102, null
  %cmp.i259 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  %spec.select.i260 = or i1 %tobool.not.i258, %cmp.i259
  br i1 %spec.select.i260, label %if.end204.ac_irq_failed_crit_edge, label %if.then206

if.end204.ac_irq_failed_crit_edge:                ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #8
  br label %ac_irq_failed

if.then206:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb_put_phy(ptr noundef nonnull %102) #6
  br label %ac_irq_failed

ac_irq_failed:                                    ; preds = %if.then206, %if.end204.ac_irq_failed_crit_edge, %do.end100
  %ret.2 = phi i32 [ %call.i248, %do.end100 ], [ %ret.1, %if.end204.ac_irq_failed_crit_edge ], [ %ret.1, %if.then206 ]
  %103 = load ptr, ptr @pdata, align 4
  %is_ac_online208 = getelementptr inbounds %struct.pda_power_pdata, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %is_ac_online208 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %is_ac_online208, align 4
  %tobool209.not = icmp eq ptr %105, null
  br i1 %tobool209.not, label %ac_irq_failed.ac_supply_failed_crit_edge, label %if.then210

ac_irq_failed.ac_supply_failed_crit_edge:         ; preds = %ac_irq_failed
  call void @__sanitizer_cov_trace_pc() #8
  br label %ac_supply_failed

if.then210:                                       ; preds = %ac_irq_failed
  call void @__sanitizer_cov_trace_pc() #8
  %106 = load ptr, ptr @pda_psy_ac, align 4
  call void @power_supply_unregister(ptr noundef %106) #6
  br label %ac_supply_failed

ac_supply_failed:                                 ; preds = %if.then210, %ac_irq_failed.ac_supply_failed_crit_edge, %do.end89
  %ret.3 = phi i32 [ %49, %do.end89 ], [ %ret.2, %if.then210 ], [ %ret.2, %ac_irq_failed.ac_supply_failed_crit_edge ]
  %107 = load ptr, ptr @ac_draw, align 4
  %tobool212.not = icmp eq ptr %107, null
  br i1 %tobool212.not, label %ac_supply_failed.if.end214_crit_edge, label %if.then213

ac_supply_failed.if.end214_crit_edge:             ; preds = %ac_supply_failed
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

if.then213:                                       ; preds = %ac_supply_failed
  call void @__sanitizer_cov_trace_pc() #8
  call void @regulator_put(ptr noundef nonnull %107) #6
  store ptr null, ptr @ac_draw, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %ac_supply_failed.if.end214_crit_edge
  %108 = load ptr, ptr @pdata, align 4
  %exit = getelementptr inbounds %struct.pda_power_pdata, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %exit, align 4
  %tobool215.not = icmp eq ptr %110, null
  br i1 %tobool215.not, label %if.end214.cleanup_crit_edge, label %if.then216

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  %111 = load ptr, ptr @dev, align 4
  call void %110(ptr noundef %111) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then216, %if.end214.cleanup_crit_edge, %if.then181, %lor.lhs.false.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.then181 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end ], [ %call, %if.then2.cleanup_crit_edge ], [ %ret.3, %if.then216 ], [ %ret.3, %if.end214.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pda_power_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @transceiver, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @pdata, align 4
  %use_otg_notifier = getelementptr inbounds %struct.pda_power_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %use_otg_notifier to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_otg_notifier, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef nonnull @otg_nb) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load ptr, ptr @pdata, align 4
  %is_usb_online = getelementptr inbounds %struct.pda_power_pdata, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_usb_online to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is_usb_online, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %land.lhs.true2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true2:                                   ; preds = %if.end
  %7 = load ptr, ptr @usb_irq, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true2.if.end6_crit_edge, label %if.then4

land.lhs.true2.if.end6_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = load ptr, ptr @pda_psy_usb, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %10) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %11 = load ptr, ptr @pdata, align 4
  %is_ac_online = getelementptr inbounds %struct.pda_power_pdata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %is_ac_online to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %is_ac_online, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true8

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true8:                                   ; preds = %if.end6
  %14 = load ptr, ptr @ac_irq, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true8.if.end13_crit_edge, label %if.then10

land.lhs.true8.if.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = load ptr, ptr @pda_psy_ac, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %17) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true8.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %.b = load i1, ptr @polling, align 4
  br i1 %.b, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @polling_work) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %call18 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @charger_work) #6
  %call19 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @supply_work) #6
  %18 = load ptr, ptr @pdata, align 4
  %is_usb_online20 = getelementptr inbounds %struct.pda_power_pdata, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %is_usb_online20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %is_usb_online20, align 4
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %if.end17.if.end23_crit_edge, label %if.then22

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %21 = load ptr, ptr @pda_psy_usb, align 4
  tail call void @power_supply_unregister(ptr noundef %21) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17.if.end23_crit_edge
  %22 = load ptr, ptr @pdata, align 4
  %is_ac_online24 = getelementptr inbounds %struct.pda_power_pdata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %is_ac_online24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %is_ac_online24, align 4
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %if.end23.if.end27_crit_edge, label %if.then26

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %25 = load ptr, ptr @pda_psy_ac, align 4
  tail call void @power_supply_unregister(ptr noundef %25) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %26 = load ptr, ptr @transceiver, align 4
  %tobool.not.i41 = icmp eq ptr %26, null
  %cmp.i42 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %spec.select.i43 = or i1 %tobool.not.i41, %cmp.i42
  br i1 %spec.select.i43, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_put_phy(ptr noundef nonnull %26) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %27 = load ptr, ptr @ac_draw, align 4
  %tobool31.not = icmp eq ptr %27, null
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @regulator_put(ptr noundef nonnull %27) #6
  store ptr null, ptr @ac_draw, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %28 = load ptr, ptr @pdata, align 4
  %exit = getelementptr inbounds %struct.pda_power_pdata, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %exit, align 4
  %tobool34.not = icmp eq ptr %30, null
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %31 = load ptr, ptr @dev, align 4
  tail call void %30(ptr noundef %31) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pda_power_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pdata, align 4
  %suspend = getelementptr inbounds %struct.pda_power_pdata, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %2([1 x i32] %state.coerce) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %3 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end5.return_crit_edge, label %device_may_wakeup.exit

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

device_may_wakeup.exit:                           ; preds = %if.end5
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %4 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %5, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.return_crit_edge, label %if.then7

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then7:                                         ; preds = %device_may_wakeup.exit
  %6 = load ptr, ptr @ac_irq, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.then7.if.end12_crit_edge, label %if.then9

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  %lnot.ext = zext i1 %tobool11.not to i32
  store i32 %lnot.ext, ptr @ac_wakeup_enabled, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge
  %9 = load ptr, ptr @usb_irq, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end12.return_crit_edge, label %if.then14

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call.i25 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool17.not = icmp eq i32 %call.i25, 0
  %lnot.ext19 = zext i1 %tobool17.not to i32
  store i32 %lnot.ext19, ptr @usb_wakeup_enabled, align 4
  br label %return

return:                                           ; preds = %if.then14, %if.end12.return_crit_edge, %device_may_wakeup.exit.return_crit_edge, %if.end5.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ 0, %if.end12.return_crit_edge ], [ 0, %if.then14 ], [ 0, %device_may_wakeup.exit.return_crit_edge ], [ 0, %if.end5.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pda_power_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end11_crit_edge, label %device_may_wakeup.exit

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end11_crit_edge, label %if.then

device_may_wakeup.exit.if.end11_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %device_may_wakeup.exit
  %3 = load ptr, ptr @usb_irq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, ptr @usb_wakeup_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %7 = load ptr, ptr @ac_irq, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %land.lhs.true5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true5:                                   ; preds = %if.end
  %8 = load i32, ptr @ac_wakeup_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end11_crit_edge, label %if.then7

land.lhs.true5.if.end11_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %7, align 4
  %call.i19 = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true5.if.end11_crit_edge, %if.end.if.end11_crit_edge, %device_may_wakeup.exit.if.end11_crit_edge, %entry.if.end11_crit_edge
  %11 = load ptr, ptr @pdata, align 4
  %resume = getelementptr inbounds %struct.pda_power_pdata, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resume, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end11.return_crit_edge, label %if.then13

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 %13() #6
  br label %return

return:                                           ; preds = %if.then13, %if.end11.return_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then13 ], [ 0, %if.end11.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_charger() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pdata, align 4
  %ac_max_uA = getelementptr inbounds %struct.pda_power_pdata, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %ac_max_uA to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ac_max_uA, align 4
  %set_charge = getelementptr inbounds %struct.pda_power_pdata, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %set_charge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_charge, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else51, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, ptr @new_ac_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_charger.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_charger, %do.end)) #6
          to label %if.then6 [label %do.end], !srcloc !148

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load ptr, ptr @dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_charger.__UNIQUE_ID_ddebug293, ptr noundef %6, ptr noundef nonnull @.str.38) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %7 = load ptr, ptr @pdata, align 4
  %set_charge7 = getelementptr inbounds %struct.pda_power_pdata, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %set_charge7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_charge7, align 4
  tail call void %9(i32 noundef 1) #6
  br label %if.end165

if.else:                                          ; preds = %if.then
  %10 = load i32, ptr @new_usb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp sgt i32 %10, 0
  br i1 %cmp8, label %do.body10, label %do.body30

do.body10:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_charger.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_charger, %do.end27)) #6
          to label %if.then24 [label %do.end27], !srcloc !148

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load ptr, ptr @dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_charger.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.39) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body10
  %12 = load ptr, ptr @pdata, align 4
  %set_charge28 = getelementptr inbounds %struct.pda_power_pdata, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %set_charge28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_charge28, align 4
  tail call void %14(i32 noundef 2) #6
  br label %if.end165

do.body30:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_charger.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_charger, %do.end47)) #6
          to label %if.then44 [label %do.end47], !srcloc !148

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %15 = load ptr, ptr @dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_charger.__UNIQUE_ID_ddebug295, ptr noundef %15, ptr noundef nonnull @.str.40) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body30
  %16 = load ptr, ptr @pdata, align 4
  %set_charge48 = getelementptr inbounds %struct.pda_power_pdata, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %set_charge48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_charge48, align 4
  tail call void %18(i32 noundef 0) #6
  br label %if.end165

if.else51:                                        ; preds = %entry
  %19 = load ptr, ptr @ac_draw, align 4
  %tobool52.not = icmp eq ptr %19, null
  br i1 %tobool52.not, label %if.else51.if.end165_crit_edge, label %if.then53

if.else51.if.end165_crit_edge:                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then53:                                        ; preds = %if.else51
  %20 = load i32, ptr @new_ac_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp54 = icmp sgt i32 %20, 0
  br i1 %cmp54, label %if.then55, label %if.else109

if.then55:                                        ; preds = %if.then53
  %call56 = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %19, i32 noundef %2, i32 noundef %2) #6
  %.b169 = load i1, ptr @update_charger.regulator_enabled, align 4
  br i1 %.b169, label %if.then55.if.end165_crit_edge, label %do.body59

if.then55.if.end165_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

do.body59:                                        ; preds = %if.then55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_charger.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_charger, %do.end76)) #6
          to label %if.then73 [label %do.end76], !srcloc !148

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %21 = load ptr, ptr @dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_charger.__UNIQUE_ID_ddebug296, ptr noundef %21, ptr noundef nonnull @.str.38) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %do.body59
  %22 = load ptr, ptr @ac_draw, align 4
  %call77 = tail call i32 @regulator_enable(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.end76.if.end100_crit_edge, label %do.end94, !prof !150

do.end76.if.end100_crit_edge:                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.end94:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 127, i32 noundef 9, ptr noundef null) #6
  br label %if.end100

if.end100:                                        ; preds = %do.end94, %do.end76.if.end100_crit_edge
  store i1 true, ptr @update_charger.regulator_enabled, align 4
  br label %if.end165

if.else109:                                       ; preds = %if.then53
  %.b = load i1, ptr @update_charger.regulator_enabled, align 4
  br i1 %.b, label %do.body112, label %if.else109.if.end165_crit_edge

if.else109.if.end165_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

do.body112:                                       ; preds = %if.else109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_charger.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_charger, %do.end129)) #6
          to label %if.then126 [label %do.end129], !srcloc !148

if.then126:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #8
  %23 = load ptr, ptr @dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_charger.__UNIQUE_ID_ddebug297, ptr noundef %23, ptr noundef nonnull @.str.40) #6
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.body112
  %24 = load ptr, ptr @ac_draw, align 4
  %call131 = tail call i32 @regulator_disable(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %do.end129.if.end154_crit_edge, label %do.end148, !prof !150

do.end129.if.end154_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

do.end148:                                        ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 133, i32 noundef 9, ptr noundef null) #6
  br label %if.end154

if.end154:                                        ; preds = %do.end148, %do.end129.if.end154_crit_edge
  store i1 false, ptr @update_charger.regulator_enabled, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.end154, %if.else109.if.end165_crit_edge, %if.end100, %if.then55.if.end165_crit_edge, %if.else51.if.end165_crit_edge, %do.end47, %do.end27, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @charger_work_func(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pdata, align 4
  %is_ac_online.i = getelementptr inbounds %struct.pda_power_pdata, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %is_ac_online.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %is_ac_online.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %2() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.i = icmp ne i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool2.i to i32
  store i32 %lnot.ext.i, ptr @new_ac_status, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %3 = load ptr, ptr @pdata, align 4
  %is_usb_online.i = getelementptr inbounds %struct.pda_power_pdata, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %is_usb_online.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_usb_online.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %if.end.i.update_status.exit_crit_edge, label %if.then5.i

if.end.i.update_status.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_status.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 %5() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.i = icmp ne i32 %call7.i, 0
  %lnot.ext12.i = zext i1 %tobool8.i to i32
  store i32 %lnot.ext12.i, ptr @new_usb_status, align 4
  br label %update_status.exit

update_status.exit:                               ; preds = %if.then5.i, %if.end.i.update_status.exit_crit_edge
  tail call fastcc void @update_charger() #6
  %call.i1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @supply_work) #6
  %6 = load ptr, ptr @pdata, align 4
  %wait_for_charger.i = getelementptr inbounds %struct.pda_power_pdata, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %wait_for_charger.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wait_for_charger.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef nonnull @supply_work, i32 noundef %call2.i.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @supply_work_func(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ac_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load i32, ptr @new_ac_status, align 4
  store i32 %1, ptr @ac_status, align 4
  %2 = load ptr, ptr @pda_psy_ac, align 4
  tail call void @power_supply_changed(ptr noundef %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load i32, ptr @usb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load i32, ptr @new_usb_status, align 4
  store i32 %4, ptr @usb_status, align 4
  %5 = load ptr, ptr @pda_psy_usb, align 4
  tail call void @power_supply_changed(ptr noundef %5) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @otg_is_usb_online() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @transceiver, align 4
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp2 = icmp eq i32 %2, 4
  %narrow = or i1 %cmp, %cmp2
  %3 = zext i1 %narrow to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @otg_is_ac_online() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @transceiver, align 4
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_changed_isr(i32 noundef %irq, ptr nocapture noundef readnone %power_supply) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pda_psy_ac, align 4
  %cmp = icmp eq ptr %0, %power_supply
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr @pda_psy_usb, align 4
  %cmp1 = icmp eq ptr %1, %power_supply
  br i1 %cmp1, label %if.else.if.end4_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %usb_status.sink = phi ptr [ @ac_status, %entry.if.end4_crit_edge ], [ @usb_status, %if.else.if.end4_crit_edge ]
  %2 = ptrtoint ptr %usb_status.sink to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %usb_status.sink, align 4
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @charger_work) #6
  %3 = load ptr, ptr @pdata, align 4
  %wait_for_status = getelementptr inbounds %struct.pda_power_pdata, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %wait_for_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wait_for_status, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef nonnull @charger_work, i32 noundef %call2.i) #6
  br label %return

return:                                           ; preds = %if.end4, %if.else.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otg_handle_notification(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.return_crit_edge [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge5
    i32 0, label %sw.bb2
  ]

entry.sw.bb1_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 2, ptr @ac_status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %usb_status.sink = phi ptr [ @usb_status, %sw.bb2 ], [ @usb_status, %sw.bb1 ], [ @ac_status, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %usb_status.sink to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %usb_status.sink, align 4
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @charger_work) #6
  %2 = load ptr, ptr @pdata, align 4
  %wait_for_status = getelementptr inbounds %struct.pda_power_pdata, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %wait_for_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wait_for_status, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull @charger_work, i32 noundef %call2.i) #6
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @polling_work_func(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @polling_work_func.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@polling_work_func, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @polling_work_func.__UNIQUE_ID_ddebug298, ptr noundef %0, ptr noundef nonnull @.str.44) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @pdata, align 4
  %is_ac_online.i = getelementptr inbounds %struct.pda_power_pdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %is_ac_online.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_ac_online.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.if.end.i20_crit_edge, label %if.then.i19

do.end.if.end.i20_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i20

if.then.i19:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %3() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.i = icmp ne i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool2.i to i32
  store i32 %lnot.ext.i, ptr @new_ac_status, align 4
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i19, %do.end.if.end.i20_crit_edge
  %4 = load ptr, ptr @pdata, align 4
  %is_usb_online.i = getelementptr inbounds %struct.pda_power_pdata, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_usb_online.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is_usb_online.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %if.end.i20.update_status.exit_crit_edge, label %if.then5.i

if.end.i20.update_status.exit_crit_edge:          ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_status.exit

if.then5.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 %6() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.i = icmp ne i32 %call7.i, 0
  %lnot.ext12.i = zext i1 %tobool8.i to i32
  store i32 %lnot.ext12.i, ptr @new_usb_status, align 4
  br label %update_status.exit

update_status.exit:                               ; preds = %if.then5.i, %if.end.i20.update_status.exit_crit_edge
  %7 = load ptr, ptr @ac_irq, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true, label %update_status.exit.if.end6_crit_edge

update_status.exit.if.end6_crit_edge:             ; preds = %update_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %update_status.exit
  %8 = load i32, ptr @new_ac_status, align 4
  %9 = load i32, ptr @ac_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp.not = icmp eq i32 %8, %9
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  store i32 2, ptr @ac_status, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %update_status.exit.if.end6_crit_edge
  %tobool12.not = phi i1 [ false, %if.then5 ], [ true, %land.lhs.true.if.end6_crit_edge ], [ true, %update_status.exit.if.end6_crit_edge ]
  %10 = load ptr, ptr @usb_irq, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true8:                                   ; preds = %if.end6
  %11 = load i32, ptr @new_usb_status, align 4
  %12 = load i32, ptr @usb_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp9.not = icmp eq i32 %11, %12
  br i1 %cmp9.not, label %land.lhs.true8.if.end11_crit_edge, label %if.end11.thread

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11.thread:                                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  store i32 2, ptr @usb_status, align 4
  br label %if.then13

if.end11:                                         ; preds = %land.lhs.true8.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.end11.thread
  tail call fastcc void @update_charger() #6
  %call.i21 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @supply_work) #6
  %13 = load ptr, ptr @pdata, align 4
  %wait_for_charger.i = getelementptr inbounds %struct.pda_power_pdata, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %wait_for_charger.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wait_for_charger.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef nonnull @supply_work, i32 noundef %call2.i.i) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %call15 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @polling_work) #6
  %17 = load ptr, ptr @pdata, align 4
  %polling_interval = getelementptr inbounds %struct.pda_power_pdata, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %polling_interval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %polling_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef nonnull @polling_work, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pda_power_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond9 = icmp eq i32 %psp, 4
  br i1 %cond9, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psy, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  %4 = load ptr, ptr @pdata, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %is_ac_online = getelementptr inbounds %struct.pda_power_pdata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %is_ac_online to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is_ac_online, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.sw.epilog_crit_edge, label %if.then.sw.epilog.sink.split_crit_edge

if.then.sw.epilog.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %is_usb_online = getelementptr inbounds %struct.pda_power_pdata, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %is_usb_online to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %is_usb_online, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.else.sw.epilog_crit_edge, label %if.else.sw.epilog.sink.split_crit_edge

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.else.sw.epilog.sink.split_crit_edge, %if.then.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %6, %if.then.sw.epilog.sink.split_crit_edge ], [ %8, %if.else.sw.epilog.sink.split_crit_edge ]
  %call5 = tail call i32 %.sink() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %storemerge = phi i32 [ 0, %if.then.sw.epilog_crit_edge ], [ 0, %if.else.sw.epilog_crit_edge ], [ %call5, %sw.epilog.sink.split ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %val, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_pda_power__301_516_pda_power_pdrv_init6, !1, !"__initcall__kmod_pda_power__301_516_pda_power_pdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/pda_power.c", i32 516, i32 1}
!2 = !{ptr @__exitcall_pda_power_pdrv_exit, !1, !"__exitcall_pda_power_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file302, !4, !"__UNIQUE_ID_file302", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/pda_power.c", i32 518, i32 1}
!5 = !{ptr @__UNIQUE_ID_license303, !4, !"__UNIQUE_ID_license303", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author304, !7, !"__UNIQUE_ID_author304", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/pda_power.c", i32 519, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias305, !9, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/pda_power.c", i32 520, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/pda_power.c", i32 508, i32 11}
!12 = !{ptr @pda_power_pdrv, !13, !"pda_power_pdrv", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/pda_power.c", i32 506, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/pda_power.c", i32 269, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pda_power_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pda_power_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/pda_power.c", i32 283, i32 31}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/pda_power.c", i32 285, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pda_power_probe.__UNIQUE_ID_ddebug299, !25, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!28 = !{ptr @pda_power_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/pda_power.c", i32 304, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pda_power_probe.__key.10, !29, !"__key", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pda_power_probe.__key.12, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/pda_power.c", i32 305, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pda_power_probe.__key.14, !34, !"__key", i1 false, i1 false}
!37 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/pda_power.c", i32 307, i32 62}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/pda_power.c", i32 308, i32 63}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/pda_power.c", i32 332, i32 4}
!44 = !{ptr @pda_power_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pda_power_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/pda_power.c", i32 343, i32 5}
!48 = !{ptr @pda_power_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pda_power_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @pda_power_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/pda_power.c", i32 356, i32 4}
!52 = !{ptr @pda_power_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/pda_power.c", i32 367, i32 5}
!55 = !{ptr @pda_power_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pda_power_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/pda_power.c", i32 380, i32 4}
!59 = !{ptr @pda_power_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pda_power_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/pda_power.c", i32 388, i32 3}
!63 = !{ptr @pda_power_probe.__UNIQUE_ID_ddebug300, !62, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!64 = !{ptr @pda_power_probe.__key.33, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/pda_power.c", i32 389, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pda_power_probe.__key.35, !65, !"__key", i1 false, i1 false}
!68 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dev, !70, !"dev", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/pda_power.c", i32 27, i32 23}
!71 = !{ptr @pdata, !72, !"pdata", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/pda_power.c", i32 28, i32 32}
!73 = !{ptr @ac_draw, !74, !"ac_draw", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/pda_power.c", i32 41, i32 26}
!75 = !{ptr @new_ac_status, !76, !"new_ac_status", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/pda_power.c", i32 48, i32 12}
!77 = !{ptr @new_usb_status, !78, !"new_usb_status", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/pda_power.c", i32 49, i32 12}
!79 = distinct !{null, !80, !"regulator_enabled", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/pda_power.c", i32 108, i32 13}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/pda_power.c", i32 113, i32 4}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @update_charger.__UNIQUE_ID_ddebug293, !82, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/pda_power.c", i32 116, i32 4}
!87 = !{ptr @update_charger.__UNIQUE_ID_ddebug294, !86, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/pda_power.c", i32 119, i32 4}
!90 = !{ptr @update_charger.__UNIQUE_ID_ddebug295, !89, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!91 = !{ptr @update_charger.__UNIQUE_ID_ddebug296, !92, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/pda_power.c", i32 126, i32 5}
!93 = !{ptr @update_charger.__UNIQUE_ID_ddebug297, !94, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/pda_power.c", i32 132, i32 5}
!95 = !{ptr @charger_work, !96, !"charger_work", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/pda_power.c", i32 30, i32 28}
!97 = !{ptr @supply_work, !98, !"supply_work", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/pda_power.c", i32 32, i32 28}
!99 = !{ptr @ac_status, !100, !"ac_status", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/pda_power.c", i32 50, i32 12}
!101 = !{ptr @usb_status, !102, !"usb_status", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/pda_power.c", i32 51, i32 12}
!103 = !{ptr @ac_irq, !104, !"ac_irq", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/pda_power.c", i32 29, i32 25}
!105 = !{ptr @usb_irq, !106, !"usb_irq", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/pda_power.c", i32 29, i32 34}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/pda_power.c", i32 77, i32 2}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/pda_power.c", i32 78, i32 2}
!111 = !{ptr @pda_power_supplied_to, !112, !"pda_power_supplied_to", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/pda_power.c", i32 76, i32 14}
!113 = !{ptr @transceiver, !114, !"transceiver", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/pda_power.c", i32 37, i32 24}
!115 = !{ptr @pda_psy_ac_desc, !116, !"pda_psy_ac_desc", i1 false, i1 false}
!116 = !{!"../drivers/power/supply/pda_power.c", i32 81, i32 39}
!117 = !{ptr @pda_power_props, !118, !"pda_power_props", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/pda_power.c", i32 72, i32 35}
!119 = !{ptr @pda_psy_ac, !120, !"pda_psy_ac", i1 false, i1 false}
!120 = !{!"../drivers/power/supply/pda_power.c", i32 34, i32 29}
!121 = distinct !{null, !122, !"polling", i1 false, i1 false}
!122 = !{!"../drivers/power/supply/pda_power.c", i32 33, i32 12}
!123 = !{ptr @pda_psy_usb_desc, !124, !"pda_psy_usb_desc", i1 false, i1 false}
!124 = !{!"../drivers/power/supply/pda_power.c", i32 89, i32 39}
!125 = !{ptr @pda_psy_usb, !126, !"pda_psy_usb", i1 false, i1 false}
!126 = !{!"../drivers/power/supply/pda_power.c", i32 34, i32 42}
!127 = !{ptr @otg_nb, !128, !"otg_nb", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/pda_power.c", i32 38, i32 30}
!129 = !{ptr @polling_work, !130, !"polling_work", i1 false, i1 false}
!130 = !{!"../drivers/power/supply/pda_power.c", i32 31, i32 28}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/pda_power.c", i32 196, i32 2}
!133 = !{ptr @.str.44, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @polling_work_func.__UNIQUE_ID_ddebug298, !132, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!135 = !{ptr @ac_wakeup_enabled, !136, !"ac_wakeup_enabled", i1 false, i1 false}
!136 = !{!"../drivers/power/supply/pda_power.c", i32 465, i32 12}
!137 = !{ptr @usb_wakeup_enabled, !138, !"usb_wakeup_enabled", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/pda_power.c", i32 466, i32 12}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 2148963663, i64 2148963668, i64 2148963681, i64 2148963725, i64 2148963759, i64 2148963780}
!149 = !{i8 0, i8 2}
!150 = !{!"branch_weights", i32 2000, i32 1}
