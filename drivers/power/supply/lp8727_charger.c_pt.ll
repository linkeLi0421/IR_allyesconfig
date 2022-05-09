; ModuleID = '/llk/IR_all_yes/drivers/power/supply/lp8727_charger.c_pt.bc'
source_filename = "../drivers/power/supply/lp8727_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lp8727_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lp8727_chg_param = type { i32, i32 }
%struct.lp8727_chg = type { ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, %struct.delayed_work, i32 }
%struct.lp8727_psy = type { ptr, ptr, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lp8727_charger__288_623_lp8727_driver_init6 = internal global ptr @lp8727_driver_init, section ".initcall6.init", align 4
@lp8727_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp8727_probe, ptr @lp8727_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lp8727_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp8727_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp8727_driver_exit = internal global ptr @lp8727_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [75 x i8] c"lp8727_charger.description=TI/National Semiconductor LP8727 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [85 x i8] c"lp8727_charger.author=Milo Kim <milo.kim@ti.com>, Daniel Jeong <daniel.jeong@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [56 x i8] c"lp8727_charger.file=drivers/power/supply/lp8727_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"lp8727_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp8727\00", [25 x i8] zeroinitializer }, align 32
@lp8727_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8727\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lp8727_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp8727\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp8727_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pchg->xfer_lock\00", [47 x i8] zeroinitializer }, align 32
@lp8727_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 573, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c communication err: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8727_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/lp8727_charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8727_probe._entry_ptr = internal global ptr @lp8727_probe._entry, section ".printk_index", align 4
@lp8727_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 579, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"power supplies register err: %d\00", [32 x i8] zeroinitializer }, align 32
@lp8727_probe._entry_ptr.9 = internal global ptr @lp8727_probe._entry.7, section ".printk_index", align 4
@lp8727_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 585, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq handler err: %d\00", [44 x i8] zeroinitializer }, align 32
@lp8727_probe._entry_ptr.12 = internal global ptr @lp8727_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"debounce-ms\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"charger-type\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ac\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eoc-level\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"charging-current\00", [47 x i8] zeroinitializer }, align 32
@battery_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@lp8727_ac_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.15, i32 3, ptr null, i32 0, ptr @lp8727_charger_prop, i32 1, ptr @lp8727_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@lp8727_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.16, i32 4, ptr null, i32 0, ptr @lp8727_charger_prop, i32 1, ptr @lp8727_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@lp8727_batt_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.19, i32 1, ptr null, i32 0, ptr @lp8727_battery_prop, i32 6, ptr @lp8727_battery_get_property, ptr null, ptr null, ptr @lp8727_charger_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"main_batt\00", [22 x i8] zeroinitializer }, align 32
@lp8727_charger_prop = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@lp8727_battery_prop = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 2, i32 3, i32 12, i32 47, i32 52], [40 x i8] zeroinitializer }, align 32
@lp8727_setup_irq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&pchg->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@lp8727_setup_irq.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&pchg->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@lp8727_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 264, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid irq number: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8727_setup_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lp8727_setup_irq._entry_ptr = internal global ptr @lp8727_setup_irq._entry, section ".printk_index", align 4
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lp8727_irq\00", [21 x i8] zeroinitializer }, align 32
@lp8727_delayed_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can not read INT registers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lp8727_delayed_func\00", [44 x i8] zeroinitializer }, align 32
@lp8727_delayed_func._entry_ptr = internal global ptr @lp8727_delayed_func._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 12, i64 47, i64 52]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 4, i64 5, i64 11]
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"lp8727_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 614, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 616, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"lp8727_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 602, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"lp8727_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 608, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 569, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 573, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 579, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 585, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 518, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 525, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 527, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 530, i32 21 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 501, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 502, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"battery_supplied_to\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 302, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"lp8727_ac_desc\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 417, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"lp8727_usb_desc\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 425, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"lp8727_batt_desc\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 433, i32 39 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 303, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"lp8727_charger_prop\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 289, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"lp8727_battery_prop\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 293, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 261, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 264, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 270, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [41 x i8] c"../drivers/power/supply/lp8727_charger.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 231, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp8727_driver_exit, ptr @__initcall__kmod_lp8727_charger__288_623_lp8727_driver_init6, ptr @lp8727_delayed_func._entry, ptr @lp8727_delayed_func._entry_ptr, ptr @lp8727_driver_exit, ptr @lp8727_probe._entry, ptr @lp8727_probe._entry.10, ptr @lp8727_probe._entry.7, ptr @lp8727_probe._entry_ptr, ptr @lp8727_probe._entry_ptr.12, ptr @lp8727_probe._entry_ptr.9, ptr @lp8727_setup_irq._entry, ptr @lp8727_setup_irq._entry_ptr, ptr @lp8727_driver, ptr @.str, ptr @lp8727_dt_ids, ptr @lp8727_ids, ptr @lp8727_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @battery_supplied_to, ptr @lp8727_ac_desc, ptr @lp8727_usb_desc, ptr @lp8727_batt_desc, ptr @.str.19, ptr @lp8727_charger_prop, ptr @lp8727_battery_prop, ptr @lp8727_setup_irq.__key, ptr @.str.20, ptr @lp8727_setup_irq.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_ac_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_batt_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_charger_prop to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_battery_prop to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_setup_irq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_setup_irq.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8727_delayed_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8727_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp8727_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8727_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @lp8727_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8727_probe(ptr noundef %cl, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %psy_cfg.i = alloca %struct.power_supply_config, align 4
  %intstat.i = alloca [2 x i8], align 1
  %type.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326592
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %type.i, align 4, !annotation !90
  %call.i.i75 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i75, null
  br i1 %tobool.not.i, label %lp8727_parse_dt.exit.thread, label %if.end.i

lp8727_parse_dt.exit.thread:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  br label %if.then6

if.end.i:                                         ; preds = %if.then2
  %debounce_msec.i = getelementptr inbounds %struct.lp8727_platform_data, ptr %call.i.i75, i32 0, i32 6
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef %debounce_msec.i, i32 noundef 1, i32 noundef 0) #7
  %call.i38.i = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i38.i, null
  br i1 %cmp.not5.i.i, label %if.end.i.lp8727_parse_dt.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.lp8727_parse_dt.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_parse_dt.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i38.i, %if.end.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %cmp.i76 = icmp eq i32 %inc.i.i, 0
  br i1 %cmp.i76, label %of_get_child_count.exit.i.lp8727_parse_dt.exit_crit_edge, label %if.end5.i

of_get_child_count.exit.i.lp8727_parse_dt.exit_crit_edge: ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_parse_dt.exit

if.end5.i:                                        ; preds = %of_get_child_count.exit.i
  %call6.i = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #7
  %cmp7.not49.i = icmp eq ptr %call6.i, null
  br i1 %cmp7.not49.i, label %if.end5.i.lp8727_parse_dt.exit_crit_edge, label %for.body.lr.ph.i

if.end5.i.lp8727_parse_dt.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_parse_dt.exit

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %ac.i = getelementptr inbounds %struct.lp8727_platform_data, ptr %call.i.i75, i32 0, i32 4
  %usb.i = getelementptr inbounds %struct.lp8727_platform_data, ptr %call.i.i75, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.050.i = phi ptr [ %call6.i, %for.body.lr.ph.i ], [ %call19.i, %for.inc.i.for.body.i_crit_edge ]
  %call8.i = call i32 @of_property_read_string(ptr noundef nonnull %child.050.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %type.i) #7
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i, align 4
  %call9.i = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(3) @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %for.body.i.if.end13.i_crit_edge

for.body.i.if.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then11.i:                                      ; preds = %for.body.i
  %call.i.i39.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i39.i, null
  br i1 %tobool.not.i.i, label %if.then11.i.lp8727_parse_charge_pdata.exit.i_crit_edge, label %if.end.i.i

if.then11.i.lp8727_parse_charge_pdata.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_parse_charge_pdata.exit.i

if.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.050.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i.i39.i, i32 noundef 1, i32 noundef 0) #7
  %ichg.i.i = getelementptr inbounds %struct.lp8727_chg_param, ptr %call.i.i39.i, i32 0, i32 1
  %call.i.i7.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.050.i, ptr noundef nonnull @.str.18, ptr noundef %ichg.i.i, i32 noundef 1, i32 noundef 0) #7
  br label %lp8727_parse_charge_pdata.exit.i

lp8727_parse_charge_pdata.exit.i:                 ; preds = %if.end.i.i, %if.then11.i.lp8727_parse_charge_pdata.exit.i_crit_edge
  %13 = ptrtoint ptr %ac.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i39.i, ptr %ac.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %lp8727_parse_charge_pdata.exit.i, %for.body.i.if.end13.i_crit_edge
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %call14.i = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end13.i
  %call.i.i40.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not.i41.i = icmp eq ptr %call.i.i40.i, null
  br i1 %tobool.not.i41.i, label %if.then16.i.lp8727_parse_charge_pdata.exit46.i_crit_edge, label %if.end.i45.i

if.then16.i.lp8727_parse_charge_pdata.exit46.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_parse_charge_pdata.exit46.i

if.end.i45.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i42.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.050.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i.i40.i, i32 noundef 1, i32 noundef 0) #7
  %ichg.i43.i = getelementptr inbounds %struct.lp8727_chg_param, ptr %call.i.i40.i, i32 0, i32 1
  %call.i.i7.i44.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.050.i, ptr noundef nonnull @.str.18, ptr noundef %ichg.i43.i, i32 noundef 1, i32 noundef 0) #7
  br label %lp8727_parse_charge_pdata.exit46.i

lp8727_parse_charge_pdata.exit46.i:               ; preds = %if.end.i45.i, %if.then16.i.lp8727_parse_charge_pdata.exit46.i_crit_edge
  %16 = ptrtoint ptr %usb.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i40.i, ptr %usb.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %lp8727_parse_charge_pdata.exit46.i, %if.end13.i.for.inc.i_crit_edge
  %call19.i = call ptr @of_get_next_child(ptr noundef %9, ptr noundef nonnull %child.050.i) #7
  %cmp7.not.i = icmp eq ptr %call19.i, null
  br i1 %cmp7.not.i, label %for.inc.i.lp8727_parse_dt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.lp8727_parse_dt.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_parse_dt.exit

lp8727_parse_dt.exit:                             ; preds = %for.inc.i.lp8727_parse_dt.exit_crit_edge, %if.end5.i.lp8727_parse_dt.exit_crit_edge, %of_get_child_count.exit.i.lp8727_parse_dt.exit_crit_edge, %if.end.i.lp8727_parse_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  %cmp.i77 = icmp ugt ptr %call.i.i75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %lp8727_parse_dt.exit.if.then6_crit_edge, label %lp8727_parse_dt.exit.if.end11_crit_edge

lp8727_parse_dt.exit.if.end11_crit_edge:          ; preds = %lp8727_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

lp8727_parse_dt.exit.if.then6_crit_edge:          ; preds = %lp8727_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %lp8727_parse_dt.exit.if.then6_crit_edge, %lp8727_parse_dt.exit.thread
  %retval.0.i99 = phi ptr [ inttoptr (i32 -12 to ptr), %lp8727_parse_dt.exit.thread ], [ %call.i.i75, %lp8727_parse_dt.exit.if.then6_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i99 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 7
  %18 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %lp8727_parse_dt.exit.if.end11_crit_edge
  %pdata.0 = phi ptr [ %call.i.i75, %lp8727_parse_dt.exit.if.end11_crit_edge ], [ %19, %if.else ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 224, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %client = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cl, ptr %client, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %call.i, align 4
  %pdata19 = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %pdata19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pdata.0, ptr %pdata19, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %xfer_lock = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %xfer_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lp8727_probe.__key) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intstat.i) #7
  %24 = ptrtoint ptr %intstat.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %intstat.i, align 1, !annotation !90
  %25 = getelementptr inbounds [2 x i8], ptr %intstat.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %25, align 1, !annotation !90
  call void @mutex_lock_nested(ptr noundef %xfer_lock, i32 noundef 0) #7
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 4
  %call.i.i78 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %28, i8 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull %intstat.i) #7
  call void @mutex_unlock(ptr noundef %xfer_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i78)
  %cmp.not.i.i79 = icmp eq i32 %call.i.i78, 2
  br i1 %cmp.not.i.i79, label %if.end.i80, label %if.end16.lp8727_init_device.exit.thread_crit_edge

if.end16.lp8727_init_device.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_init_device.exit.thread

if.end.i80:                                       ; preds = %if.end16
  call void @mutex_lock_nested(ptr noundef %xfer_lock, i32 noundef 0) #7
  %29 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client, align 4
  %call.i16.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 1, i8 noundef zeroext 19) #7
  call void @mutex_unlock(ptr noundef %xfer_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool2.not.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool2.not.i, label %lp8727_init_device.exit, label %if.end.i80.lp8727_init_device.exit.thread_crit_edge

if.end.i80.lp8727_init_device.exit.thread_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_init_device.exit.thread

lp8727_init_device.exit.thread:                   ; preds = %if.end.i80.lp8727_init_device.exit.thread_crit_edge, %if.end16.lp8727_init_device.exit.thread_crit_edge
  %retval.0.i81.ph = phi i32 [ %call.i16.i, %if.end.i80.lp8727_init_device.exit.thread_crit_edge ], [ -5, %if.end16.lp8727_init_device.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intstat.i) #7
  br label %do.end25

lp8727_init_device.exit:                          ; preds = %if.end.i80
  call void @mutex_lock_nested(ptr noundef %xfer_lock, i32 noundef 0) #7
  %31 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client, align 4
  %call.i19.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 2, i8 noundef zeroext 66) #7
  call void @mutex_unlock(ptr noundef %xfer_lock) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intstat.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool21.not = icmp eq i32 %call.i19.i, 0
  br i1 %tobool21.not, label %if.end27, label %lp8727_init_device.exit.do.end25_crit_edge

lp8727_init_device.exit.do.end25_crit_edge:       ; preds = %lp8727_init_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end25:                                         ; preds = %lp8727_init_device.exit.do.end25_crit_edge, %lp8727_init_device.exit.thread
  %retval.0.i81102 = phi i32 [ %retval.0.i81.ph, %lp8727_init_device.exit.thread ], [ %call.i19.i, %lp8727_init_device.exit.do.end25_crit_edge ]
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i81102) #11
  br label %cleanup

if.end27:                                         ; preds = %lp8727_init_device.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg.i) #7
  %35 = call ptr @memset(ptr %psy_cfg.i, i32 0, i32 16)
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call.i.i82 = call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i83 = icmp eq ptr %call.i.i82, null
  br i1 %tobool.not.i83, label %if.end27.do.end33_crit_edge, label %if.end.i84

if.end27.do.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.end.i84:                                       ; preds = %if.end27
  %psy1.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %psy1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i82, ptr %psy1.i, align 4
  %supplied_to.i = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 4
  %39 = ptrtoint ptr %supplied_to.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @battery_supplied_to, ptr %supplied_to.i, align 4
  %num_supplicants.i = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 5
  %40 = ptrtoint ptr %num_supplicants.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %num_supplicants.i, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %call3.i = call ptr @power_supply_register(ptr noundef %42, ptr noundef nonnull @lp8727_ac_desc, ptr noundef nonnull %psy_cfg.i) #7
  %43 = ptrtoint ptr %call.i.i82 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call3.i, ptr %call.i.i82, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i84.do.end33_crit_edge, label %if.end7.i

if.end.i84.do.end33_crit_edge:                    ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.end7.i:                                        ; preds = %if.end.i84
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call9.i85 = call ptr @power_supply_register(ptr noundef %45, ptr noundef nonnull @lp8727_usb_desc, ptr noundef nonnull %psy_cfg.i) #7
  %usb.i86 = getelementptr inbounds %struct.lp8727_psy, ptr %call.i.i82, i32 0, i32 1
  %46 = ptrtoint ptr %usb.i86 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i85, ptr %usb.i86, align 4
  %cmp.i36.i = icmp ugt ptr %call9.i85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %if.end7.i.err_psy_usb.i_crit_edge, label %if.end13.i87

if.end7.i.err_psy_usb.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_psy_usb.i

if.end13.i87:                                     ; preds = %if.end7.i
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %call15.i = call ptr @power_supply_register(ptr noundef %48, ptr noundef nonnull @lp8727_batt_desc, ptr noundef null) #7
  %batt.i = getelementptr inbounds %struct.lp8727_psy, ptr %call.i.i82, i32 0, i32 2
  %49 = ptrtoint ptr %batt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call15.i, ptr %batt.i, align 4
  %cmp.i37.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37.i, label %err_psy_batt.i, label %if.end35

err_psy_batt.i:                                   ; preds = %if.end13.i87
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %usb.i86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb.i86, align 4
  call void @power_supply_unregister(ptr noundef %51) #7
  br label %err_psy_usb.i

err_psy_usb.i:                                    ; preds = %err_psy_batt.i, %if.end7.i.err_psy_usb.i_crit_edge
  %52 = ptrtoint ptr %call.i.i82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i.i82, align 4
  call void @power_supply_unregister(ptr noundef %53) #7
  br label %do.end33

do.end33:                                         ; preds = %err_psy_usb.i, %if.end.i84.do.end33_crit_edge, %if.end27.do.end33_crit_edge
  %retval.0.i88.ph = phi i32 [ -1, %err_psy_usb.i ], [ -1, %if.end.i84.do.end33_crit_edge ], [ -12, %if.end27.do.end33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #7
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i88.ph) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end13.i87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #7
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  %irq1.i = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq1.i, align 4
  %60 = ptrtoint ptr %pdata19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata19, align 4
  %tobool.not.i89 = icmp eq ptr %61, null
  br i1 %tobool.not.i89, label %if.end35.cond.end.i_crit_edge, label %cond.true.i

if.end35.cond.end.i_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %debounce_msec.i90 = getelementptr inbounds %struct.lp8727_platform_data, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %debounce_msec.i90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debounce_msec.i90, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end35.cond.end.i_crit_edge
  %cond.i = phi i32 [ %63, %cond.true.i ], [ 270, %if.end35.cond.end.i_crit_edge ]
  %work.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #7
  %64 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @lp8727_setup_irq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry11.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %65 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %67 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @lp8727_delayed_func, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @lp8727_setup_irq.__key.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i91 = icmp slt i32 %59, 1
  br i1 %cmp.i91, label %do.end22.i, label %if.end.i93

do.end22.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.23, i32 noundef %59) #11
  br label %cleanup

if.end.i93:                                       ; preds = %cond.end.i
  %call.i92 = call i32 @request_threaded_irq(i32 noundef %59, ptr noundef null, ptr noundef nonnull @lp8727_isr_func, i32 noundef 8194, ptr noundef nonnull @.str.26, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool23.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %do.end41

if.end25.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  %irq26.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 7
  %70 = ptrtoint ptr %irq26.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %59, ptr %irq26.i, align 4
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %cond.i) #7
  %debounce_jiffies.i = getelementptr inbounds %struct.lp8727_chg, ptr %call.i, i32 0, i32 9
  %71 = ptrtoint ptr %debounce_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call2.i.i, ptr %debounce_jiffies.i, align 4
  br label %cleanup

do.end41:                                         ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.11, i32 noundef %call.i92) #11
  call fastcc void @lp8727_unregister_psy(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end25.i, %do.end22.i, %do.end33, %do.end25, %if.end11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then6 ], [ %retval.0.i81102, %do.end25 ], [ %retval.0.i88.ph, %do.end33 ], [ %call.i92, %do.end41 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %do.end22.i ], [ 0, %if.end25.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8727_remove(ptr nocapture noundef readonly %cl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work.i = getelementptr inbounds %struct.lp8727_chg, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #7
  %irq.i = getelementptr inbounds %struct.lp8727_chg, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.lp8727_release_irq.exit_crit_edge, label %if.then.i

entry.lp8727_release_irq.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_release_irq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  br label %lp8727_release_irq.exit

lp8727_release_irq.exit:                          ; preds = %if.then.i, %entry.lp8727_release_irq.exit_crit_edge
  %psy1.i = getelementptr inbounds %struct.lp8727_chg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %psy1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psy1.i, align 4
  %tobool.not.i2 = icmp eq ptr %5, null
  br i1 %tobool.not.i2, label %lp8727_release_irq.exit.lp8727_unregister_psy.exit_crit_edge, label %if.end.i

lp8727_release_irq.exit.lp8727_unregister_psy.exit_crit_edge: ; preds = %lp8727_release_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lp8727_unregister_psy.exit

if.end.i:                                         ; preds = %lp8727_release_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @power_supply_unregister(ptr noundef %7) #7
  %usb.i = getelementptr inbounds %struct.lp8727_psy, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb.i, align 4
  tail call void @power_supply_unregister(ptr noundef %9) #7
  %batt.i = getelementptr inbounds %struct.lp8727_psy, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %batt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %batt.i, align 4
  tail call void @power_supply_unregister(ptr noundef %11) #7
  br label %lp8727_unregister_psy.exit

lp8727_unregister_psy.exit:                       ; preds = %if.end.i, %lp8727_release_irq.exit.lp8727_unregister_psy.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lp8727_unregister_psy(ptr nocapture noundef readonly %pchg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %psy1 = getelementptr inbounds %struct.lp8727_chg, ptr %pchg, i32 0, i32 3
  %0 = ptrtoint ptr %psy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psy1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #7
  %usb = getelementptr inbounds %struct.lp8727_psy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #7
  %batt = getelementptr inbounds %struct.lp8727_psy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %batt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %batt, align 4
  tail call void @power_supply_unregister(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lp8727_charger_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cmp.not = icmp eq i32 %psp, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psy, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %devid = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devid, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(3) @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %11 = icmp ult i32 %10, 2
  br label %lp8727_is_charger_attached.exit

if.else.i:                                        ; preds = %if.end
  %call2.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(4) @.str.16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp5.i = icmp eq i32 %9, 3
  br label %lp8727_is_charger_attached.exit

if.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %13 = icmp ult i32 %12, 3
  br label %lp8727_is_charger_attached.exit

lp8727_is_charger_attached.exit:                  ; preds = %if.end6.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i1 [ %13, %if.end6.i ], [ %cmp5.i, %if.then4.i ], [ %11, %if.then.i ]
  %conv = zext i1 %retval.0.i to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %lp8727_is_charger_attached.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lp8727_is_charger_attached.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8727_battery_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %read = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %pdata1 = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read) #7
  %6 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %read, align 1, !annotation !90
  %7 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb12
    i32 12, label %sw.bb21
    i32 47, label %sw.bb31
    i32 52, label %sw.bb41
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %8 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psy, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %devid = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devid, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(3) @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lp8727_is_charger_attached.exit, label %if.else.i

if.else.i:                                        ; preds = %sw.bb
  %call2.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(4) @.str.16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp5.i = icmp eq i32 %13, 3
  br i1 %cmp5.i, label %if.then4.i.if.end_crit_edge, label %if.then4.i.cleanup.sink.split_crit_edge

if.then4.i.cleanup.sink.split_crit_edge:          ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end6.i:                                        ; preds = %if.else.i
  %14 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %if.end6.i.if.end_crit_edge, label %if.end6.i.cleanup.sink.split_crit_edge

if.end6.i.cleanup.sink.split_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lp8727_is_charger_attached.exit:                  ; preds = %sw.bb
  %16 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %lp8727_is_charger_attached.exit.if.end_crit_edge, label %lp8727_is_charger_attached.exit.cleanup.sink.split_crit_edge

lp8727_is_charger_attached.exit.cleanup.sink.split_crit_edge: ; preds = %lp8727_is_charger_attached.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lp8727_is_charger_attached.exit.if.end_crit_edge: ; preds = %lp8727_is_charger_attached.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %lp8727_is_charger_attached.exit.if.end_crit_edge, %if.end6.i.if.end_crit_edge, %if.then4.i.if.end_crit_edge
  %xfer_lock.i.i = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %xfer_lock.i.i, i32 noundef 0) #7
  %client.i.i = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %19, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull %read) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i.i) #7
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %read, align 1
  %22 = and i8 %21, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %22)
  %cmp = icmp eq i8 %22, 48
  %cond = select i1 %cmp, i32 4, i32 1
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_lock.i.i79 = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %xfer_lock.i.i79, i32 noundef 0) #7
  %client.i.i80 = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %client.i.i80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i.i80, align 4
  %call.i.i81 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %24, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull %read) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i.i79) #7
  %25 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %read, align 1
  %27 = lshr i8 %26, 5
  %28 = and i8 %27, 3
  %29 = zext i8 %28 to i32
  %temp.off.i = add nsw i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %temp.off.i)
  %switch.i = icmp ult i32 %temp.off.i, 3
  %cond11 = select i1 %switch.i, i32 2, i32 1
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %sw.bb12.cleanup_crit_edge, label %if.end14

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %sw.bb12
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call zeroext i8 %31() #7
  %conv19 = zext i8 %call18 to i32
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %entry
  %tobool22.not = icmp eq ptr %5, null
  br i1 %tobool22.not, label %sw.bb21.cleanup_crit_edge, label %if.end24

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %sw.bb21
  %get_batt_level = getelementptr inbounds %struct.lp8727_platform_data, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %get_batt_level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_batt_level, align 4
  %tobool25.not = icmp eq ptr %33, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call zeroext i16 %33() #7
  %conv29 = zext i16 %call28 to i32
  br label %cleanup.sink.split

sw.bb31:                                          ; preds = %entry
  %tobool32.not = icmp eq ptr %5, null
  br i1 %tobool32.not, label %sw.bb31.cleanup_crit_edge, label %if.end34

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %sw.bb31
  %get_batt_capacity = getelementptr inbounds %struct.lp8727_platform_data, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %get_batt_capacity to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_batt_capacity, align 4
  %tobool35.not = icmp eq ptr %35, null
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.then36

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call zeroext i8 %35() #7
  %conv39 = zext i8 %call38 to i32
  br label %cleanup.sink.split

sw.bb41:                                          ; preds = %entry
  %tobool42.not = icmp eq ptr %5, null
  br i1 %tobool42.not, label %sw.bb41.cleanup_crit_edge, label %if.end44

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %sw.bb41
  %get_batt_temp = getelementptr inbounds %struct.lp8727_platform_data, ptr %5, i32 0, i32 3
  %36 = ptrtoint ptr %get_batt_temp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_batt_temp, align 4
  %tobool45.not = icmp eq ptr %37, null
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.then46

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call zeroext i8 %37() #7
  %conv49 = zext i8 %call48 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then46, %if.then36, %if.then26, %if.then16, %sw.bb5, %if.end, %lp8727_is_charger_attached.exit.cleanup.sink.split_crit_edge, %if.end6.i.cleanup.sink.split_crit_edge, %if.then4.i.cleanup.sink.split_crit_edge
  %cond.sink = phi i32 [ %cond, %if.end ], [ %cond11, %sw.bb5 ], [ %conv19, %if.then16 ], [ %conv29, %if.then26 ], [ %conv39, %if.then36 ], [ %conv49, %if.then46 ], [ 2, %if.then4.i.cleanup.sink.split_crit_edge ], [ 2, %if.end6.i.cleanup.sink.split_crit_edge ], [ 2, %lp8727_is_charger_attached.exit.cleanup.sink.split_crit_edge ]
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -22, %sw.bb41.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp8727_charger_changed(ptr nocapture noundef readonly %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psy, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %devid = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devid, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(3) @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lp8727_is_charger_attached.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  %call2.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(4) @.str.16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp5.i = icmp eq i32 %9, 3
  br i1 %cmp5.i, label %if.then4.i.if.end_crit_edge, label %if.then4.i.cleanup_crit_edge

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end6.i:                                        ; preds = %if.else.i
  %10 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %if.end6.i.if.end_crit_edge, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lp8727_is_charger_attached.exit:                  ; preds = %entry
  %12 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %lp8727_is_charger_attached.exit.if.end_crit_edge, label %lp8727_is_charger_attached.exit.cleanup_crit_edge

lp8727_is_charger_attached.exit.cleanup_crit_edge: ; preds = %lp8727_is_charger_attached.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lp8727_is_charger_attached.exit.if.end_crit_edge: ; preds = %lp8727_is_charger_attached.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %lp8727_is_charger_attached.exit.if.end_crit_edge, %if.end6.i.if.end_crit_edge, %if.then4.i.if.end_crit_edge
  %chg_param = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %chg_param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chg_param, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %ichg6 = getelementptr inbounds %struct.lp8727_chg_param, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %ichg6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ichg6, align 4
  %conv8 = shl i32 %19, 4
  %or = or i32 %conv8, %17
  %conv10 = trunc i32 %or to i8
  %xfer_lock.i = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %xfer_lock.i, i32 noundef 0) #7
  %client.i = getelementptr inbounds %struct.lp8727_chg, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %call.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 9, i8 noundef zeroext %conv10) #7
  tail call void @mutex_unlock(ptr noundef %xfer_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %lp8727_is_charger_attached.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp8727_delayed_func(ptr noundef %_work) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val.i42.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %intstat = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intstat) #7
  %0 = ptrtoint ptr %intstat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %intstat, align 1, !annotation !90
  %1 = getelementptr inbounds [2 x i8], ptr %intstat, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !90
  %xfer_lock.i = getelementptr i8, ptr %_work, i32 -112
  tail call void @mutex_lock_nested(ptr noundef %xfer_lock.i, i32 noundef 0) #7
  %client.i = getelementptr i8, ptr %_work, i32 -116
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %4, i8 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull %intstat) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %_work, i32 -120
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %intstat to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %intstat, align 1
  %9 = and i8 %8, 16
  %pdata1.i = getelementptr i8, ptr %_work, i32 -16
  %10 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata1.i, align 4
  %trunc = trunc i8 %8 to i4
  %12 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.29)
  switch i4 %trunc, label %sw.default.i [
    i4 5, label %sw.bb.i
    i4 -5, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %sw.bb.i.cond.end.i_crit_edge, label %cond.true.i

sw.bb.i.cond.end.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %ac.i = getelementptr inbounds %struct.lp8727_platform_data, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ac.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.bb.i.cond.end.i_crit_edge
  %cond.i18 = phi ptr [ %14, %cond.true.i ], [ null, %sw.bb.i.cond.end.i_crit_edge ]
  %chg_param.i = getelementptr i8, ptr %_work, i32 -8
  %15 = ptrtoint ptr %chg_param.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond.i18, ptr %chg_param.i, align 4
  br label %lp8727_id_detection.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %val.i.i, align 1, !annotation !90
  call void @mutex_lock_nested(ptr noundef %xfer_lock.i, i32 noundef 0) #7
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 4
  %call.i.i.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull %val.i.i) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i) #7
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool3.not.i = icmp sgt i8 %20, -1
  br i1 %tobool3.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb2.i
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %if.then.i.cond.end8.i_crit_edge, label %cond.true5.i

if.then.i.cond.end8.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end8.i

cond.true5.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ac6.i = getelementptr inbounds %struct.lp8727_platform_data, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %ac6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ac6.i, align 4
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true5.i, %if.then.i.cond.end8.i_crit_edge
  %cond9.i = phi ptr [ %22, %cond.true5.i ], [ null, %if.then.i.cond.end8.i_crit_edge ]
  %chg_param10.i = getelementptr i8, ptr %_work, i32 -8
  %23 = ptrtoint ptr %chg_param10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cond9.i, ptr %chg_param10.i, align 4
  br label %lp8727_id_detection.exit

if.else.i:                                        ; preds = %sw.bb2.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i42.i) #7
  %24 = ptrtoint ptr %val.i42.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %val.i42.i, align 1, !annotation !90
  call void @mutex_lock_nested(ptr noundef %xfer_lock.i, i32 noundef 0) #7
  %25 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i, align 4
  %call.i.i.i45.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %26, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull %val.i42.i) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i) #7
  %27 = ptrtoint ptr %val.i42.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val.i42.i, align 1
  %29 = and i8 %28, 64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i42.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not.i = icmp eq i8 %29, 0
  br i1 %tobool12.not.i, label %if.else20.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  %tobool14.not.i = icmp eq ptr %11, null
  br i1 %tobool14.not.i, label %if.then13.i.cond.end17.i_crit_edge, label %cond.true15.i

if.then13.i.cond.end17.i_crit_edge:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end17.i

cond.true15.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %usb.i = getelementptr inbounds %struct.lp8727_platform_data, ptr %11, i32 0, i32 5
  %30 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb.i, align 4
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.true15.i, %if.then13.i.cond.end17.i_crit_edge
  %cond18.i = phi ptr [ %31, %cond.true15.i ], [ null, %if.then13.i.cond.end17.i_crit_edge ]
  %chg_param19.i = getelementptr i8, ptr %_work, i32 -8
  %32 = ptrtoint ptr %chg_param19.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cond18.i, ptr %chg_param19.i, align 4
  br label %lp8727_id_detection.exit

if.else20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool21.not.i = icmp eq i8 %9, 0
  %33 = lshr exact i8 %9, 2
  %34 = zext i8 %33 to i32
  %spec.select41.i = select i1 %tobool21.not.i, i8 63, i8 0
  br label %lp8727_id_detection.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %chg_param25.i = getelementptr i8, ptr %_work, i32 -8
  %35 = ptrtoint ptr %chg_param25.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %chg_param25.i, align 4
  br label %lp8727_id_detection.exit

lp8727_id_detection.exit:                         ; preds = %sw.default.i, %if.else20.i, %cond.end17.i, %cond.end8.i, %cond.end.i
  %devid.0.i = phi i32 [ 0, %sw.default.i ], [ 2, %cond.end8.i ], [ 3, %cond.end17.i ], [ 1, %cond.end.i ], [ %34, %if.else20.i ]
  %swctrl.0.i = phi i8 [ 63, %sw.default.i ], [ 63, %cond.end8.i ], [ 0, %cond.end17.i ], [ 63, %cond.end.i ], [ %spec.select41.i, %if.else20.i ]
  %devid27.i = getelementptr i8, ptr %_work, i32 -12
  %36 = ptrtoint ptr %devid27.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %devid.0.i, ptr %devid27.i, align 4
  call void @mutex_lock_nested(ptr noundef %xfer_lock.i, i32 noundef 0) #7
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i, align 4
  %call.i.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 3, i8 noundef zeroext %swctrl.0.i) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %val.i, align 1, !annotation !90
  call void @mutex_lock_nested(ptr noundef %xfer_lock.i, i32 noundef 0) #7
  %40 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client.i, align 4
  %call.i.i.i21 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %41, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %val.i) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i) #7
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i, align 1
  %44 = or i8 %43, 2
  store i8 %44, ptr %val.i, align 1
  call void @mutex_lock_nested(ptr noundef %xfer_lock.i, i32 noundef 0) #7
  %45 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client.i, align 4
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 2, i8 noundef zeroext %44) #7
  call void @mutex_unlock(ptr noundef %xfer_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %psy = getelementptr i8, ptr %_work, i32 -20
  %47 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %psy, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  call void @power_supply_changed(ptr noundef %50) #7
  %51 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %psy, align 4
  %usb = getelementptr inbounds %struct.lp8727_psy, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %54) #7
  %55 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %psy, align 4
  %batt = getelementptr inbounds %struct.lp8727_psy, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %batt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %batt, align 4
  call void @power_supply_changed(ptr noundef %58) #7
  br label %cleanup

cleanup:                                          ; preds = %lp8727_id_detection.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intstat) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8727_isr_func(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.lp8727_chg, ptr %ptr, i32 0, i32 8
  %debounce_jiffies = getelementptr inbounds %struct.lp8727_chg, ptr %ptr, i32 0, i32 9
  %0 = ptrtoint ptr %debounce_jiffies to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debounce_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef %1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_lp8727_charger__288_623_lp8727_driver_init6, !1, !"__initcall__kmod_lp8727_charger__288_623_lp8727_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/lp8727_charger.c", i32 623, i32 1}
!2 = !{ptr @__exitcall_lp8727_driver_exit, !1, !"__exitcall_lp8727_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/lp8727_charger.c", i32 625, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/lp8727_charger.c", i32 626, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/lp8727_charger.c", i32 627, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/lp8727_charger.c", i32 616, i32 14}
!12 = !{ptr @lp8727_driver, !13, !"lp8727_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/lp8727_charger.c", i32 614, i32 26}
!14 = !{ptr @lp8727_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/lp8727_charger.c", i32 569, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/lp8727_charger.c", i32 573, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lp8727_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lp8727_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/lp8727_charger.c", i32 579, i32 3}
!27 = !{ptr @lp8727_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lp8727_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/lp8727_charger.c", i32 585, i32 3}
!31 = !{ptr @lp8727_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lp8727_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/lp8727_charger.c", i32 518, i32 27}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/lp8727_charger.c", i32 525, i32 34}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/lp8727_charger.c", i32 527, i32 21}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/lp8727_charger.c", i32 530, i32 21}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/lp8727_charger.c", i32 501, i32 26}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/lp8727_charger.c", i32 502, i32 26}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/lp8727_charger.c", i32 303, i32 2}
!47 = !{ptr @battery_supplied_to, !48, !"battery_supplied_to", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/lp8727_charger.c", i32 302, i32 14}
!49 = !{ptr @lp8727_ac_desc, !50, !"lp8727_ac_desc", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/lp8727_charger.c", i32 417, i32 39}
!51 = !{ptr @lp8727_charger_prop, !52, !"lp8727_charger_prop", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/lp8727_charger.c", i32 289, i32 35}
!53 = !{ptr @lp8727_usb_desc, !54, !"lp8727_usb_desc", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/lp8727_charger.c", i32 425, i32 39}
!55 = !{ptr @lp8727_batt_desc, !56, !"lp8727_batt_desc", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/lp8727_charger.c", i32 433, i32 39}
!57 = !{ptr @lp8727_battery_prop, !58, !"lp8727_battery_prop", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/lp8727_charger.c", i32 293, i32 35}
!59 = !{ptr @lp8727_setup_irq.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/lp8727_charger.c", i32 261, i32 2}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @lp8727_setup_irq.__key.21, !60, !"__key", i1 false, i1 false}
!63 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/lp8727_charger.c", i32 264, i32 3}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lp8727_setup_irq._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @lp8727_setup_irq._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/lp8727_charger.c", i32 270, i32 5}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/lp8727_charger.c", i32 231, i32 3}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @lp8727_delayed_func._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @lp8727_delayed_func._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @lp8727_dt_ids, !78, !"lp8727_dt_ids", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/lp8727_charger.c", i32 602, i32 34}
!79 = !{ptr @lp8727_ids, !80, !"lp8727_ids", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/lp8727_charger.c", i32 608, i32 35}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
